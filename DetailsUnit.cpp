//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DetailsUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(int itemId, TComponent* Owner)
	: TForm(Owner)
{
	FDQuery1->Filter = "id=" + IntToStr(itemId);
}
//---------------------------------------------------------------------------
void __fastcall TForm3::LinkPropertyToFieldCaption2AssignedValue(TObject *Sender,
		  TBindingAssignValueRec &AssignValueRec, const TValue &Value)
{
	TValue seriesValue = Value;
	UnicodeString series = seriesValue.ToString();
	TLabel *seriesLabel = (TLabel*) AssignValueRec.OutObj;
	bool isSeriesEmpty = seriesLabel->Caption == "";
	seriesLabel->Height = isSeriesEmpty ? 0 : 32;
}
//---------------------------------------------------------------------------

