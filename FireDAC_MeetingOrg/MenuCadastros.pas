unit MenuCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls, StdCtrls, Mylabel, Buttons;

type
  TFormCadastros = class(TForm)
    suiButton1: TBitBtn;
    suiButton2: TBitBtn;
    suiButton3: TBitBtn;
    suiButton4: TBitBtn;
    suiButton5: TBitBtn;
    suiButton6: TBitBtn;
    Panel1: TPanel;
    myLabel3d2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastros: TFormCadastros;

implementation

uses Fornecedores, Principal, clientes, Produtos, Usuarios, Agencias,
  Bancos;

{$R *.dfm}

procedure TFormCadastros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCadastros:=nil;
end;

procedure TFormCadastros.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormCadastros.suiButton2Click(Sender: TObject);
begin
IF FormPrincipal.CFornecedores = 'S' THEN
BEGIN
Try
if FormFornecedores=nil   then
    begin
  //   FormCadastros.Visible:=False;
     FormFornecedores:=TFormFornecedores.Create(self);
     FormFornecedores.Show;
 //    FormCadastros.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormCadastros.suiButton3Click(Sender: TObject);
begin
IF FormPrincipal.CClientes = 'S' THEN
BEGIN
Try
if FormClientes=nil   then
    begin
     FormClientes:=TFormClientes.Create(self);
    //  FormClientes.Show;
      end;
  except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormCadastros.suiButton1Click(Sender: TObject);
begin
IF FormPrincipal.CProdutos = 'S' THEN
BEGIN
Try
if FormProdutos=nil   then
    begin
     FormProdutos:=TFormProdutos.Create(self);
   //  FormProdutos.Show;
 //    FormCadastros.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormCadastros.suiButton5Click(Sender: TObject);
begin
IF FormPrincipal.CUsuarios = 'S' THEN
BEGIN
Try
if FormUsuarios=nil   then
    begin
  //   FormCadastros.Visible:=False;
     FormUsuarios:=TFormUsuarios.Create(self);
     FormUsuarios.ShowModal;
//     FormCadastros.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormCadastros.suiButton4Click(Sender: TObject);
begin
IF FormPrincipal.CAgencias = 'S' THEN
BEGIN
Try
if FormAgencias=nil   then
    begin
  //   FormCadastros.Visible:=False;
     FormAgencias:=TFormAgencias.Create(self);
     FormAgencias.ShowModal;
//     FormCadastros.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormCadastros.suiButton6Click(Sender: TObject);
begin
IF FormPrincipal.CBancos = 'S' THEN
BEGIN
Try
if FormBancos=nil   then
    begin
  //   FormCadastros.Visible:=False;
     FormBancos:=TFormBancos.Create(self);
     FormBancos.ShowModal;
//     FormCadastros.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormCadastros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormCadastros.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
SetWindowPos(Handle,HWND_TOP,200,100,0,0,SWP_NOSIZE);
end;

end.
