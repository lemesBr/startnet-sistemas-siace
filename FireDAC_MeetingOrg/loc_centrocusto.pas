unit loc_centrocusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, Buttons, Menus, ComCtrls, XDBGrids, AdvGlowButton;

type
  Tfrmloc_centro = class(TForm)
    PopupMenu1: TPopupMenu;
    Cadastrar1: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    XDBGrid1: TXDBGrid;
    LOC: TEdit;
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_centro: Tfrmloc_centro;

implementation

uses ModuleDados1, Centro_Custo;

{$R *.dfm}

procedure Tfrmloc_centro.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  BEGIN
    DM1.Dts_centro_Custo.DataSet.Filtered:= False;
    DM1.Dts_centro_Custo.DataSet.Filter:= 'DESCRICAO LIKE ' + QuotedStr('%'+loc.Text+'%');
    DM1.Dts_centro_Custo.DataSet.Filtered:= True;

    if DM1.Dts_centro_Custo.DataSet.IsEmpty then
      DM1.Dts_centro_Custo.DataSet.Filtered:= False;
  end;

  if (key = #27) then close;
end;

procedure Tfrmloc_centro.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_centro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_centro.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_centro.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_centro.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN XDBGRID1.SETFOCUS;
end;

procedure Tfrmloc_centro.FormShow(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmloc_centro.BitBtn1Click(Sender: TObject);
begin
  FormCentroCusto := tFormCentroCusto.create(self);
  FormCentroCusto.showmodal;
end;

procedure Tfrmloc_centro.Cadastrar1Click(Sender: TObject);
begin
{  FormCentroCusto := tFormCentroCusto.create(self);
  FormCentroCusto.showmodal; }
end;

procedure Tfrmloc_centro.XDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmloc_centro.XDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then close;
  IF (KEY = #27) THEN LOC.SETFOCUS;
end;

end.
