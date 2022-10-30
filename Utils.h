//---------------------------------------------------------------------------

#ifndef UtilsH
#define UtilsH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
//---------------------------------------------------------------------------
bool containsIgnoreCase(UnicodeString haystack, UnicodeString needle) {
	auto haystackUpper = haystack.UpperCase();
	auto needleUpper = needle.UpperCase();

	UnicodeString::iterator iter = std::search(
		haystackUpper.begin(), haystackUpper.end(),
		needleUpper.begin(), needleUpper.end()
	);
	return iter != haystackUpper.end();
}
//---------------------------------------------------------------------------
#endif