unit MenuBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIButton, Mylabel, Buttons, sBitBtn,
  sPanel, sLabel;

type
  TFormMenuBancos = class(TForm)
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    suiButton3: TsBitBtn;
    suiButton4: TsBitBtn;
    suiButton5: TsBitBtn;
    Panel1: TsPanel;
    suiButton6: TsBitBtn;
    myLabel3d2: TsLabelFX;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuBancos: TFormMenuBancos;

implementation

uses Principal,  BancoEspecifico, DepositosBanco,
  SaquesBanco, RetornoCheques, BaixaChequesRetornados, RecebeCheque;

{$R *.dfm}

procedure TFormMenuBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMenuBancos:=nil;
end;

procedure TFormMenuBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMenuBancos.suiButton1Click(Sender: TObject);
begin
IF FormPrincipal.FDepositos = 'S' THEN
BEGIN
Try
if FormDepositos=nil   then
    begin
//     FormMenuBancos.Visible:=False;
     FormDepositos:=TFormDepositos.Create(self);
     FormDepositos.ShowModal;
//     FormMenuBancos.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuBancos.suiButton3Click(Sender: TObject);
begin
{IF FormPrincipal.PBancoAnalitico = 'S' THEN
BEGIN
Try
if FormBancoAnalitico=nil   then
    begin
 //    FormMenuBancos.Visible:=False;
     FormBancoAnalitico:=TFormBancoAnalitico.Create(self);
     FormBancoAnalitico.ShowModal;
//     FormMenuBancos.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end; }
end;

procedure TFormMenuBancos.suiButton4Click(Sender: TObject);
begin
IF FormPrincipal.PBancoEspecifico = 'S' THEN
BEGIN
Try
if FormBancoEspecifico=nil   then
    begin
//     FormMenuBancos.Visible:=False;
     FormBancoEspecifico:=TFormBancoEspecifico.Create(self);
     FormBancoEspecifico.ShowModal;
 //    FormMenuBancos.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuBancos.suiButton5Click(Sender: TObject);
begin
IF FormPrincipal.FRetCheques = 'S' THEN
BEGIN
Try
if FormRetornoCheques=nil   then
    begin
//     FormMenuBancos.Visible:=False;
     FormRetornoCheques:=TFormRetornoCheques.Create(self);
     FormRetornoCheques.ShowModal;
//     FormMenuBancos.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuBancos.suiButton2Click(Sender: TObject);
begin
IF FormPrincipal.FSaques = 'S' THEN
BEGIN
Try
if FormSaques=nil   then
    begin
//     FormMenuBancos.Visible:=False;
     FormSaques:=TFormSaques.Create(self);
     FormSaques.ShowModal;
//     FormMenuBancos.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuBancos.suiButton6Click(Sender: TObject);
begin
IF FormPrincipal.FBaixaCheques = 'S' THEN
BEGIN
Try
if FormRecebeCheque=nil   then
    begin
//     FormMenuBancos.Visible:=False;
     FormRecebeCheque:=TFormRecebeCheque.Create(self);
     FormRecebeCheque.ShowModal;
//     FormMenuBancos.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
