//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FormUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(int itemId, TComponent* Owner)
	: itemId(itemId), TForm(Owner)
{
	FDTable2->Filter = "id=" + IntToStr(itemId);
	if(itemId == -1) {
		FDTable2->Insert();
   		Button2->Enabled = false;
        ComboBox3->ItemIndex = 0;
	} else {
		FDTable2->Edit();
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SaveClick(TObject *Sender)
{
	bool isSaveModeEnabled = FDTable2->State == dsEdit
		|| FDTable2->State == dsInsert;

	if(isSaveModeEnabled) {
   		FDTable2->FieldByName("series")->AsString = ComboBox4->Text;
		FDTable2->FieldByName("author")->AsString = ComboBox2->Text;
		FDTable2->Post();
	}

	Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
	if(itemId != -1) {
        FDTable1->ExecSQL("DELETE FROM book WHERE id=" + IntToStr(itemId));
		Close();
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::FDTable2AfterEdit(TDataSet *DataSet)
{
	UnicodeString series = DataSet->FieldByName("series")->AsString;
	UnicodeString author = DataSet->FieldByName("author")->AsString;
	ComboBox4->Text = series;
    ComboBox2->Text = author;
}
//---------------------------------------------------------------------------

