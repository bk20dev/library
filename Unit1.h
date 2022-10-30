//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ControlList.hpp>
#include <Vcl.WinXPanels.hpp>
#include <Data.Bind.Components.hpp>
#include <Data.Bind.ObjectScope.hpp>
#include <Vcl.VirtualImage.hpp>
#include <Vcl.Dialogs.hpp>
//---------------------------------------------------------------------------
#include <vector>
#include "Book.h"
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TGridPanel *GridPanel1;
	TButton *Button1;
	TEdit *Edit1;
	TComboBox *ComboBox1;
	TStatusBar *StatusBar1;
	TLabel *Label1;
	TLabel *Label2;
	TControlList *ControlList1;
	TLabel *Label3;
	TLabel *Label4;
	TControlListButton *ControlListButton1;
	TControlListButton *ControlListButton2;
	TImage *Image1;
	void __fastcall ControlList1BeforeDrawItem(int AIndex, TCanvas *ACanvas, TRect &ARect,
          TOwnerDrawState AState);
	void __fastcall Edit1Change(TObject *Sender);
	void __fastcall ComboBox1Change(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
	std::vector<const Book*> allBooks;
    std::vector <const Book*> filteredBooks;
	void UpdateCurrentListItem(const Book&);
	void ApplyFilters();
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
