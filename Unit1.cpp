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
	Book *book = new Book{10, "This is a title", "This is a description"};
	allBooks.push_back(book);
    ControlList1->ItemCount = allBooks.size();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ControlList1BeforeDrawItem(int AIndex, TCanvas *ACanvas, TRect &ARect,
          TOwnerDrawState AState)
{
    const Book *currentBook = allBooks[AIndex];
	Label4->Caption = currentBook->title;
	Label3->Caption = currentBook->description;
}
//---------------------------------------------------------------------------

