//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ControlList1BeforeDrawItem(int AIndex, TCanvas *ACanvas, TRect &ARect,
		  TOwnerDrawState AState)
{
	Book currentBook = *allBooks[AIndex];
	UpdateCurrentItem(currentBook);
}
//---------------------------------------------------------------------------
void TForm1::UpdateCurrentItem(const Book &book)
{
	Label4->Caption = book.title;

	Label3->Caption = "No description";
	if(book.description != "") {
        Label3->Caption = book.description;
	}
}
