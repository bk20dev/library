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
