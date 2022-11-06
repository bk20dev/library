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
	FDTable2->Filter = "id = " + IntToStr(itemId);
	if(itemId == -1) {
		Button2->Enabled = false;
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::SaveClick(TObject *Sender)
{
	bool isSaveModeEnabled = FDTable2->State == dsEdit
		|| FDTable2->State == dsInsert;

	if(isSaveModeEnabled) {
		FDTable2->Post();
	}

	Close();
}
//---------------------------------------------------------------------------


void __fastcall TForm2::Button2Click(TObject *Sender)
{
	if(itemId != -1) {
		FDTable1->Delete();
        Close();
	}
}
//---------------------------------------------------------------------------

