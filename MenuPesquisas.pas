unit MenuPesquisas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIButton, Buttons, sBitBtn,
  sPanel, sLabel;

type
  TFormMenuPesquisas = class(TForm)
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    suiButton3: TsBitBtn;
    suiButton4: TsBitBtn;
    suiButton5: TsBitBtn;
    suiButton6: TsBitBtn;
    myLabel3d2: TsLabelFX;
    Panel1: TsPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuPesquisas: TFormMenuPesquisas;

implementation

uses Principal, LancamentosCaixa, LancamentosCaixaSaida, CaixaAnalitico,
  CaixaEspecifico, MenuCR,
  CaixaRegistradora, ConsultaProdutos, ConsultaCrediario, ConsultaCheques,
  ConsultaPedidoDireto, ConsultaContasPagar, ConsultaComissaoPD;

{$R *.dfm}

procedure TFormMenuPesquisas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMenuPesquisas:=nil;
end;

procedure TFormMenuPesquisas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMenuPesquisas.suiButton5Click(Sender: TObject);
begin
IF FormPrincipal.PProdutos = 'S' THEN
BEGIN
Try
if FormConsultaProdutos=nil   then
    begin
   //  FormMenuPesquisas.Visible:=False;
     FormConsultaProdutos:=TFormConsultaProdutos.Create(self);
     FormConsultaProdutos.ShowModal;
//         FormMenuPesquisas.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuPesquisas.suiButton6Click(Sender: TObject);
begin
IF FormPrincipal.PCrediario = 'S' THEN
BEGIN
Try
if FormConsultaCrediario=nil   then
    begin
  //   FormMenuPesquisas.Visible:=False;
     FormConsultaCrediario:=TFormConsultaCrediario.Create(self);
     FormConsultaCrediario.ShowModal;
 //    FormMenuPesquisas.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuPesquisas.suiButton1Click(Sender: TObject);
begin
IF FormPrincipal.PChequesBaixar = 'S' THEN
BEGIN
Try
if FormConsultaCheques=nil   then
    begin
 //    FormMenuPesquisas.Visible:=False;
     FormConsultaCheques:=TFormConsultaCheques.Create(self);
     FormConsultaCheques.ShowModal;
 //    FormMenuPesquisas.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuPesquisas.suiButton2Click(Sender: TObject);
begin
IF FormPrincipal.PPedidoDireto = 'S' THEN
BEGIN
Try
if FormConsultaPedidoDireto=nil   then
    begin
 //    FormMenuPesquisas.Visible:=False;
     FormConsultaPedidoDireto:=TFormConsultaPedidoDireto.Create(self);
     FormConsultaPedidoDireto.ShowModal;
//     FormMenuPesquisas.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuPesquisas.suiButton3Click(Sender: TObject);
begin
IF FormPrincipal.PContasPagarGeral = 'S' THEN
BEGIN
Try
if FormConsultaContasPagar=nil   then
    begin
 //    FormMenuPesquisas.Visible:=False;
    FormConsultaContasPagar:=TFormConsultaContasPagar.Create(self);
    FormConsultaContasPagar.ShowModal;
 //        FormMenuPesquisas.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuPesquisas.suiButton4Click(Sender: TObject);
begin
IF FormPrincipal.PComissPDireto = 'S' THEN
BEGIN
Try
if FormConsultaComissaoPD=nil   then
    begin
//     FormMenuPesquisas.Visible:=False;
     FormConsultaComissaoPD:=TFormConsultaComissaoPD.Create(self);
     FormConsultaComissaoPD.ShowModal;
//         FormMenuPesquisas.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuPesquisas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
