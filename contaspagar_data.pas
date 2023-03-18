unit contaspagar_data;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RXDBCtrl, Buttons, DB,
  ExtCtrls, TFlatPanelUnit, Menus, RxToolEdit, AdvGroupBox,
  AdvGlowButton, AdvPanel ;

type
  Tfrmcontaspagar_data = class(TForm)
    dscontaspagar: TDataSource;
    GroupBox1: TAdvGroupBox;
    DBDateEdit1: TDBDateEdit;
    Bevel2: TBevel;
    pgravar: TAdvPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    FDvPanel1: TAdvPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_data: Tfrmcontaspagar_data;

implementation

uses contaspagar, Principal, ModulodeDados;

{$R *.dfm}

procedure Tfrmcontaspagar_data.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontaspagar_data.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontaspagar_data.BitBtn2Click(Sender: TObject);
begin
  frmcontaspagar.qrcontaspagar.cancel;
  //dm.conexao.Rollback;
  close;
end;

procedure Tfrmcontaspagar_data.FormShow(Sender: TObject);
begin
  frmcontaspagar.qrcontaspagar.edit;
  DBDateEdit1.SetFocus;
end;

procedure Tfrmcontaspagar_data.BitBtn1Click(Sender: TObject);
begin
  frmcontaspagar.qrcontaspagar.post;
  //dm.conexao.commit;
  close;
end;

end.
