//---------------------------------------------------------------------------

#ifndef BookH
#define BookH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
//---------------------------------------------------------------------------
struct Book {
	int id;
   	UnicodeString coverImagePath;
    UnicodeString series;
	UnicodeString title;
  	UnicodeString genre;
	UnicodeString description;
	UnicodeString author;
	unsigned short releaseYear;
    float rating;
};
//---------------------------------------------------------------------------
#endif
