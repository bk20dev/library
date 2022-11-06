//---------------------------------------------------------------------------

#ifndef DetailsUnitH
#define DetailsUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.Bind.Components.hpp>
#include <Data.Bind.DBScope.hpp>
#include <Data.Bind.EngExt.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
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
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <System.Bindings.Outputs.hpp>
#include <System.Rtti.hpp>
#include <Vcl.Bind.DBEngExt.hpp>
#include <Vcl.Bind.Editors.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.WinXPanels.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TFDConnection *LibraryConnection;
	TBindSourceDB *BindSourceDB1;
	TFDQuery *FDQuery1;
	TBindingsList *BindingsList1;
	TLabel *Label1;
	TStackPanel *StackPanel1;
	TLabel *Label2;
	TLabel *Label3;
	TLinkPropertyToField *LinkPropertyToFieldCaption;
	TLinkPropertyToField *LinkPropertyToFieldCaption2;
	TLinkPropertyToField *LinkPropertyToFieldCaption3;
	TStackPanel *StackPanel2;
	TImage *Image1;
	TLabel *Label4;
	TLabel *Label5;
	TLinkPropertyToField *LinkPropertyToFieldCaption4;
	TLinkPropertyToField *LinkPropertyToFieldCaption5;
	TLabel *Label6;
	TLinkPropertyToField *LinkPropertyToFieldCaption6;
	TGridPanel *GridPanel1;
	void __fastcall LinkPropertyToFieldCaption2AssignedValue(TObject *Sender, TBindingAssignValueRec &AssignValueRec,
          const TValue &Value);
private:	// User declarations
public:		// User declarations
	__fastcall TForm3(int itemId, TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
