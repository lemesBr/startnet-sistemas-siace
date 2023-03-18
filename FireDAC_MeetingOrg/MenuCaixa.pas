unit MenuCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls, SUIButton, Mylabel, DB, Menus, Buttons,
  sBitBtn, sLabel, sPanel;

type
  TFormMenuCaixa = class(TForm)
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    suiButton3: TsBitBtn;
    suiButton4: TsBitBtn;
    suiButton5: TsBitBtn;
    suiButton6: TsBitBtn;
    myLabel3d2: TsLabelFX;
    Panel1: TsPanel;
    PopupMenu1: TPopupMenu;
    registradora1: TMenuItem;
    ContasaReceber1: TMenuItem;
    CaixaGeral1: TMenuItem;
    Relatorio1: TMenuItem;
    Caixa1: TMenuItem;
    caixaEspec1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
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
  FormMenuCaixa: TFormMenuCaixa;

implementation

uses Principal, LancamentosCaixa, LancamentosCaixaSaida, CaixaAnalitico,
  CaixaEspecifico, MenuCR,
  CaixaRegistradora, CRCrediario, caixa, lista_caixa2, ModulodeDados,
  lista_caixa1;

{$R *.dfm}

procedure TFormMenuCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormMenuCaixa:=nil;
end;

procedure TFormMenuCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMenuCaixa.suiButton1Click(Sender: TObject);
begin
IF FormPrincipal.FEntradaCapital = 'S' THEN
BEGIN
{Try
if FormLancamentosCaixa=nil   then
    begin
  // FormMenuCaixa.Visible:=False;
     FormLancamentosCaixa:=TFormLancamentosCaixa.Create(self);
     FormLancamentosCaixa.Showmodal;
 // FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end; }
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;

end;

procedure TFormMenuCaixa.suiButton2Click(Sender: TObject);
begin
  IF FormPrincipal.FSaidaCapital = 'S' THEN
  BEGIN
    try
      FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
      FRMLISTA_CAIXA2.SHOWMODAL;
    finally
      FreeAndNil(FRMLISTA_CAIXA2);
    end;
  end
  else
    FormPrincipal.MSG_NOT.Execute;
end;

procedure TFormMenuCaixa.suiButton3Click(Sender: TObject);
begin
IF FormPrincipal.PCaixaAnalitico = 'S' THEN
BEGIN
Try
if FormCaixaAnalitico=nil   then
    begin
 //    FormMenuCaixa.Visible:=False;
     FormCaixaAnalitico:=TFormCaixaAnalitico.Create(self);
     FormCaixaAnalitico.ShowModal;
//     FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuCaixa.suiButton4Click(Sender: TObject);
begin
IF FormPrincipal.PCaixaEspecifico = 'S' THEN
BEGIN
Try
if FormCaixaEspecifico=nil   then
    begin
//     FormMenuCaixa.Visible:=False;
     FormCaixaEspecifico:=TFormCaixaEspecifico.Create(self);
     FormCaixaEspecifico.Showmodal;
//     FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormMenuCaixa.suiButton5Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',FormPrincipal.UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
begin
IF FormPrincipal.FCaixaReg = 'S' THEN
BEGIN
Try
if FormCaixaRegistradora=nil   then
    begin
 //    FormMenuCaixa.Visible:=False;
     FormCaixaRegistradora:=TFormCaixaRegistradora.Create(self);
     FormCaixaRegistradora.ShowModal;
//     FormMenuCaixa.Close;
      end;
      except
   //    ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;
end;

procedure TFormMenuCaixa.suiButton6Click(Sender: TObject);
begin
DM.SDS_USUARIOS.Locate('usuario',FormPrincipal.UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
end
else
if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
    application.MessageBox('A Data do Caixa está diferente da atual! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
   end
else
begin
IF FormPrincipal.FBaixaCred = 'S' THEN
BEGIN
Try
if FormCRCrediario=nil   then
    begin
 //    FormMenuCaixa.Visible:=False;
     FormCRCrediario:=TFormCRCrediario.Create(self);
      FormCRCrediario.ShowModal;
 //     FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;
end;

procedure TFormMenuCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
      if (Key=VK_F2) then
      begin
       suiButton5.Click;
      end;
        if (Key=VK_F2) then
      begin
       suiButton5.Click;
      end;
        if (Key=VK_F3) then
      begin
       suiButton6.Click;
      end;
        if (Key=VK_F4) then
      begin
       suiButton1.Click;
      end;
        if (Key=VK_F5) then
      begin
       suiButton2.Click;
      end;
        if (Key=VK_F6) then
      begin
       suiButton3.Click;
      end;
         if (Key=VK_F7) then
      begin
       suiButton4.Click;
      end;
end;


procedure TFormMenuCaixa.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0, SWP_NOMOVE+swp_nosize);
If FormPrincipal.PCaixaAnalitico = 'S' THEN
BEGIN
suiButton3.Enabled:= TRUE;
end else
begin
suiButton3.Enabled:= False;
end;

If FormPrincipal.PCaixaEspecifico = 'S' THEN
BEGIN
suiButton4.Enabled:= TRUE;
end else
begin
suiButton4.Enabled:= False;
end;
end;

end.
