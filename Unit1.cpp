//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
#include "FormUnit.h"
#include "DetailsUnit.h"
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
    SetupDatabase("");
}
//---------------------------------------------------------------------------
void TForm1::ApplyFilters()
{
	UnicodeString searchPhrase = Edit1->Text;
	UnicodeString genre = ComboBox1->Text;
	UnicodeString filter = "(\
		title LIKE '%" + searchPhrase + "%'\
		OR author LIKE '%" + searchPhrase + "%'\
		OR series LIKE '%" + searchPhrase + "%')";
	if(genre != "") {
		filter += " AND (genre_name LIKE '%" + genre + "%')";
	}
	FDQuery2->Filter = filter;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Edit1Change(TObject *Sender)
{
    ApplyFilters();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ComboBox1Change(TObject *Sender)
{
    ApplyFilters();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	Edit1->Clear();
    ComboBox1->Text = "";
	ApplyFilters();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ControlList1ItemDblClick(TObject *Sender)
{
	int itemId = FDQuery2->Fields->Fields[0]->AsInteger;
	TForm3 *detailsForm = new TForm3(itemId, this);
	detailsForm->Show();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Newbook1Click(TObject *Sender)
{
	TForm2* editForm = new TForm2(-1, this);
    editForm->OnClose = FormClose;
	editForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ControlListButton1Click(TObject *Sender)
{
	int itemId = FDQuery2->Fields->Fields[0]->AsInteger;
	TForm2 *editForm = new TForm2(itemId, this);
    editForm->OnClose = FormClose;
    editForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
	FDQuery2->Refresh();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Import1Click(TObject *Sender)
{
	bool success = OpenDialog1->Execute();
	if(!success) return;
	UnicodeString filePath = FileSaveDialog1->FileName;
	int replaceAction =
		MessageDlg("Replace current collection?", mtCustom, mbYesNoCancel, 0, mbNo);
	if(replaceAction == mrNo) {
		Import(filePath);
		return;
	}
	if(replaceAction == mrYes) {
		int confirmation =
			MessageDlg("Do you really want to replace your current collection?", mtConfirmation, mbYesNo, 0, mbNo);
		if(confirmation == mrYes) {
			ImportReplace(filePath);
        }
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Export1Click(TObject *Sender)
{
	bool success = FileSaveDialog1->Execute();
	if(!success) return;
	UnicodeString filePath = FileSaveDialog1->FileName;
    Export(filePath);
}
//---------------------------------------------------------------------------
void TForm1::SetupDatabase(UnicodeString dbName) {
	if(dbName != "" && *dbName.LastChar() != '.')
		dbName += ".";
	auto genre = dbName + "genre";
	auto book  = dbName + "book";
	S->ExecSQL("PRAGMA foreign_keys = OFF;");
	S->ExecSQL("DROP TABLE IF EXISTS " + genre + ";");
	S->ExecSQL(
	"CREATE TABLE IF NOT EXISTS " + genre + " (\n"
	"  id INTEGER NOT NULL\n"
	"    PRIMARY KEY AUTOINCREMENT,\n"
	"  name TEXT NOT NULL\n"
	");");
	std::vector<UnicodeString> genres = {
		"fantasy", "adventure", "romance", "contemporary",
		"dystopian", "mystery", "horror", "thriller", "paranormal",
		"historical fiction", "science fiction", "children's",
		"memoir", "cookbook", "art", "self-help", "development",
		"motivational", "health", "history", "travel", "guide",
		"families & relationships", "humor", "other"
	};
	for (const auto &_genre : genres) {
		S->ExecSQL("INSERT INTO " + genre + " (name) VALUES (\"" + _genre + "\")");
	}

	S->ExecSQL("PRAGMA foreign_keys = ON;");

	S->ExecSQL(
	"CREATE TABLE IF NOT EXISTS " + book + " (\n"
	"  id INTEGER NOT NULL\n"
	"    PRIMARY KEY AUTOINCREMENT,\n"
	"  series TEXT,\n"
	"  title TEXT NOT NULL,\n"
	"  genre INTEGER NOT NULL DEFAULT 1\n"
	"    REFERENCES genre(id),\n"
	"  description TEXT,\n"
	"  author TEXT,\n"
	"  release_year INTEGER,\n"
	"  rating REAL,\n"
	"  cover BLOB\n"
	");");
}
//---------------------------------------------------------------------------
void TForm1::CleanSetupDatabase(UnicodeString dbName) {
	if(dbName != "" && *dbName.LastChar() != '.')
		dbName += ".";

	auto genre = dbName + "genre";
	auto book  = dbName + "book";
	S->ExecSQL("DROP TABLE IF EXISTS " + book + ";");
	S->ExecSQL("VACUUM;");
    SetupDatabase(dbName);
}
//---------------------------------------------------------------------------
void TForm1::PrepareDatabase(UnicodeString filePath) {
	S->ExecSQL("ATTACH DATABASE \"" + filePath + "\" AS PreparedDatabase;");
	S->ExecSQL("VACUUM PreparedDatabase;");
}
//---------------------------------------------------------------------------
void TForm1::UnlinkPreparedDatabase() {
	S->ExecSQL("DETACH DATABASE PreparedDatabase;");
}
//---------------------------------------------------------------------------
void TForm1::Export(UnicodeString filePath)
{
//	ShowMessage("Export: " + filePath);
	PrepareDatabase(filePath);
	// important! the way i've done this... may? break when there is an update to the schema... but idc!
	// todo:
	//   - read tables
	//   - create them
	//   - insert data
	try {
		CleanSetupDatabase("PreparedDatabase");
		S->ExecSQL(
			"INSERT INTO PreparedDatabase.book SELECT * FROM book;"
		);
	} catch (...) {}
	UnlinkPreparedDatabase();
    Refresh();
}
//---------------------------------------------------------------------------
void TForm1::Import(UnicodeString filePath)
{
	PrepareDatabase(filePath);
    SetupDatabase("");
	S->ExecSQL(
		"INSERT INTO book "
		"(series, title, genre, description, author, release_year, rating, cover) "
		"SELECT series, title, genre, description, author, release_year, rating, cover FROM PreparedDatabase.book;"
	);
	UnlinkPreparedDatabase();
	Refresh();
}
//---------------------------------------------------------------------------
void TForm1::ImportReplace(UnicodeString filePath)
{
	// todo:
	// ! this may be implemented with a `DROP` into `Import`
	CleanSetupDatabase("");
	Import(filePath);
}
//---------------------------------------------------------------------------
void TForm1::Refresh()
{
	FDQuery1->Refresh();
    FDQuery2->Refresh();
}
//---------------------------------------------------------------------------
