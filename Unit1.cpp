//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
#include "Utils.h"
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	allBooks.push_back(Book{1, "", "", "Lifetime", "comedy", "A book about our lives", "John Smith", 2012, 4.2});
    allBooks.push_back(Book{2, "", "Harry Potter", "Harry Potter and the Prisoner of Azcaban", "thriller", "", "J. K. Rowling", 2012, 4.2});
    ApplyFilters();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ControlList1BeforeDrawItem(int AIndex, TCanvas *ACanvas, TRect &ARect,
		  TOwnerDrawState AState)
{
	Book currentBook = *filteredBooks[AIndex];
	UpdateCurrentListItem(currentBook);
}
//---------------------------------------------------------------------------
void TForm1::UpdateCurrentListItem(const Book &book)
{
	Label4->Caption = book.title;

	Label3->Caption = "No description";
	if(book.description != "") {
		Label3->Caption = book.description;
	}
}
//---------------------------------------------------------------------------
void TForm1::ApplyFilters()
{
	UnicodeString searchPhrase = Edit1->Text;
	UnicodeString genre = ComboBox1->Text;

	filteredBooks.clear();
	for(const Book &book : allBooks) {
		bool matchesGenre = (
			genre == "" || containsIgnoreCase(book.genre, genre)
		);
		bool matchesSearchPhrase = (
			containsIgnoreCase(book.title, searchPhrase) ||
			containsIgnoreCase(book.description, searchPhrase) ||
			containsIgnoreCase(book.author, searchPhrase)
		);

		if(matchesGenre && matchesSearchPhrase){
			filteredBooks.push_back(&book);
		}
	}
    ControlList1->ItemCount = filteredBooks.size();
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
