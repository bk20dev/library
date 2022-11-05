//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
#include "DetailsUnit.h"
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
//	LibraryConnection->Open();
//	LibraryConnection->ExecSQL("SELECT * FROM book;", ClientDataSet1);
//
//    LibraryConnection->Open();
//	ApplyFilters();
}
//---------------------------------------------------------------------------
//void __fastcall TForm1::ControlList1BeforeDrawItem(int AIndex, TCanvas *ACanvas, TRect &ARect,
//		  TOwnerDrawState AState)
//{
//	Book currentBook = *filteredBooks[AIndex];
//	UpdateCurrentListItem(currentBook);
//}

//---------------------------------------------------------------------------
//void TForm1::UpdateCurrentListItem(const Book &book)
//{
//	Label4->Caption = book.title;
//
//	Label3->Caption = "No description";
//	if(book.description != "") {
//		Label3->Caption = book.description;
//	}
//}
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
		filter += " AND (genre LIKE '%" + genre + "%')";
	}

	FDTablebook->Filter = filter;
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
    ComboBox1->Clear();
	ApplyFilters();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::LinkPropertyToFieldCaption2AssigningValue(TObject *Sender,
          TBindingAssignValueRec &AssignValueRec, TValue &Value, bool &Handled)

{
	TValue descriptionValue = Value;
	UnicodeString description = descriptionValue.ToString();
	if(description == "") {
		TLabel *label = (TLabel*) AssignValueRec.OutObj;
		label->Caption = "No description";
		Handled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ControlList1ItemDblClick(TObject *Sender)
{
	int itemId = FDTablebook ->Fields->Fields[0]->AsInteger;
	TForm3 *detailsForm = new TForm3(itemId, this);
	detailsForm->Show();
}
//---------------------------------------------------------------------------

