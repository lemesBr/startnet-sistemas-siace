unit MenuCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls, SUIButton, Mylabel, Buttons, sBitBtn,
  sPanel, sLabel;

type
  TFormMenuCR = class(TForm)
    Panel1: TsPanel;
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    suiButton3: TsBitBtn;
    myLabel3d2: TsLabelFX;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuCR: TFormMenuCR;

implementation

uses Principal, BancoEspecifico, DepositosBanco,
  SaquesBanco, RetornoCheques, BaixaChequesRetornados, RecebeCheque,
  EntregadePedidos, DevolucaoPedido, compra_menu;

{$R *.dfm}

procedure TFormMenuCR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMenuCR:=nil;
end;

procedure TFormMenuCR.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMenuCR.suiButton1Click(Sender: TObject);
begin
IF FormPrincipal.FEntradas = 'S' THEN
BEGIN
     frmcompra_menu:=Tfrmcompra_menu.Create(self);
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuCR.suiButton2Click(Sender: TObject);
begin
IF FormPrincipal.FAEntregaPedido = 'S' THEN
BEGIN
Try
if FormEntregadePedidos=nil   then
    begin
  //   FormMenuCR.Visible:=False;
     FormEntregadePedidos:=TFormEntregadePedidos.Create(self);
      FormEntregadePedidos.ShowModal;
//         FormMenuCR.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuCR.suiButton3Click(Sender: TObject);
begin
IF FormPrincipal.FDevolPedidos = 'S' THEN
BEGIN
Try
if FormDevolucaoPedido=nil   then
    begin
//     FormMenuCR.Visible:=False;
     FormDevolucaoPedido:=TFormDevolucaoPedido.Create(self);
      FormDevolucaoPedido.ShowModal;
//         FormMenuCR.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuCR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
