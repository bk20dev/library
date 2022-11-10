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
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.SQLite.hpp>
#include <FireDAC.Phys.SQLiteDef.hpp>
#include <FireDAC.Phys.SQLiteWrapper.Stat.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.ExprFuncs.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Data.Bind.Components.hpp>
#include <Data.Bind.DBScope.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <Data.Bind.EngExt.hpp>
#include <System.Bindings.Outputs.hpp>
#include <System.Rtti.hpp>
#include <Vcl.Bind.DBEngExt.hpp>
#include <Vcl.Bind.Editors.hpp>
#include <Vcl.NumberBox.hpp>
#include <Vcl.Menus.hpp>
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
	TLabel *Label5;
	TLabel *Label8;
	TComboBox *ComboBox3;
	TLabel *Label2;
	TButton *Button1;
	TImage *Image1;
	TStackPanel *StackPanel2;
	TLabel *Actions;
	TButton *Save;
	TFDConnection *LibraryConnection;
	TFDTable *FDTable1;
	TBindSourceDB *BindSourceDB2;
	TBindingsList *BindingsList1;
	TNumberBox *NumberBox1;
	TEdit *Edit2;
	TFDTable *FDTable2;
	TBindSourceDB *BindSourceDB1;
	TLinkControlToField *LinkControlToField1;
	TLinkControlToField *LinkControlToField2;
	TLinkControlToField *LinkControlToField3;
	TLinkControlToField *LinkControlToField4;
	TButton *Button2;
	TLinkFillControlToField *LinkFillControlToField3;
	TFDQuery *FDQuery1;
	TBindSourceDB *BindSourceDB3;
	TLinkFillControlToField *LinkFillControlToField2;
	void __fastcall SaveClick(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall FDTable2AfterEdit(TDataSet *DataSet);
private:	// User declarations
    int itemId;
public:		// User declarations
	__fastcall TForm2(int itemId, TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
