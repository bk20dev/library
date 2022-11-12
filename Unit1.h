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
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.SQLite.hpp>
#include <FireDAC.Phys.SQLiteDef.hpp>
#include <FireDAC.Phys.SQLiteWrapper.Stat.hpp>
#include <FireDAC.Stan.ExprFuncs.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Datasnap.DBClient.hpp>
#include <Data.Bind.DBScope.hpp>
#include <Data.Bind.EngExt.hpp>
#include <Data.Bind.Grid.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <System.Bindings.Outputs.hpp>
#include <System.Rtti.hpp>
#include <Vcl.Bind.ControlList.hpp>
#include <Vcl.Bind.DBEngExt.hpp>
#include <Vcl.Bind.Editors.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.CategoryButtons.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
#include <vector>
#include <memory>
#include "Book.h"
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TGridPanel *GridPanel1;
	TButton *Button1;
	TEdit *Edit1;
	TComboBox *ComboBox1;
	TLabel *Label1;
	TLabel *Label2;
	TControlList *ControlList1;
	TLabel *Label3;
	TLabel *Label4;
	TImage *Image1;
	TBindingsList *BindingsList1;
	TFDConnection *S;
	TMainMenu *MainMenu1;
	TMenuItem *File1;
	TMenuItem *Newbook1;
	TControlListButton *ControlListButton1;
	TFDQuery *FDQuery1;
	TBindSourceDB *BindSourceDB1;
	TLinkFillControlToField *LinkFillControlToField1;
	TFDQuery *FDQuery2;
	TBindSourceDB *BindSourceDB2;
	TLinkPropertyToField *LinkPropertyToFieldCaption;
	TLinkPropertyToField *LinkPropertyToFieldCaption2;
	TLinkGridToDataSource *LinkGridToDataSourceBindSourceDB2;
	TLinkControlToField *LinkControlToField1;
	TMenuItem *Backup1;
	TMenuItem *Import1;
	TMenuItem *Export1;
	TFileSaveDialog *FileSaveDialog1;
	TOpenDialog *OpenDialog1;
//	void __fastcall Co(int AIndex, TCanvas *ACanvas, TRect &ARect,
//		  TOwnerDrawState AState);
	void __fastcall Edit1Change(TObject *Sender);
	void __fastcall ComboBox1Change(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall ControlList1ItemDblClick(TObject *Sender);
	void __fastcall Newbook1Click(TObject *Sender);
	void __fastcall ControlListButton1Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Import1Click(TObject *Sender);
	void __fastcall Export1Click(TObject *Sender);
private:	// User declarations
	void SetupDatabase(UnicodeString dbName);
	void CleanSetupDatabase(UnicodeString dbName);
	void ApplyFilters();
	void Export(UnicodeString filePath);
	void Import(UnicodeString filePath);
	void ImportReplace(UnicodeString filePath);
	void PrepareDatabase(UnicodeString filePath);
	void UnlinkPreparedDatabase();
    void Refresh();
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
