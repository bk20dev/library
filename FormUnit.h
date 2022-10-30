//---------------------------------------------------------------------------

#ifndef FormUnitH
#define FormUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Vcl.WinXPanels.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TGridPanel *GridPanel1;
	TStackPanel *StackPanel1;
	TLabel *Label1;
	TEdit *Edit1;
	TStackPanel *StackPanel4;
	TLabel *Label4;
	TComboBox *ComboBox2;
	TLabel *Label6;
	TComboBox *ComboBox4;
	TLabel *Label7;
	TMemo *Memo2;
	TLabel *Label3;
	TEdit *Edit2;
	TLabel *Label5;
	TEdit *Edit3;
	TLabel *Label8;
	TComboBox *ComboBox3;
	TLabel *Label2;
	TButton *Button1;
	TImage *Image1;
	TStackPanel *StackPanel2;
	TLabel *Actions;
	TButton *Save;
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
