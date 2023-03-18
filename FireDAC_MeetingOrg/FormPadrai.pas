unit FormPadrai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus, ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, RxToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  TaskDialog, sDBNavigator, sPanel, sBitBtn,
  AdvSmoothMessageDialog;

type
  TFormPadrao = class(TForm)
    Panel1: TsPanel;
    Panel2: TsPanel;
    btnNovo: TsBitBtn;
    btnEditar: TsBitBtn;
    btnCancelar: TsBitBtn;
    btnSalvar: TsBitBtn;
    btnExcluir: TsBitBtn;
    DBNavigator: TsDBNavigator;
    btnLocalizar: TsBitBtn;
    MsgInformacao: TAdvSmoothMessageDialog;
    MsgAtencao: TAdvSmoothMessageDialog;
    MsgErro: TAdvSmoothMessageDialog;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadrao: TFormPadrao;

implementation

uses Principal;

{$R *.dfm}

procedure TFormPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

end;

procedure TFormPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.
