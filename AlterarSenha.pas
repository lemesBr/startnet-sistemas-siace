unit AlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, StdCtrls, SUIEdit, RXCtrls, SUIDlg,
  DB, Buttons, sBitBtn, sEdit;

type
  TFormAlteraSenha = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Bevel1: TBevel;
    RxLabel4: TRxLabel;
    Edit1: TsEdit;
    Edit2: TsEdit;
    Bevel2: TBevel;
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    Edit3: TsEdit;
    RxLabel5: TRxLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraSenha: TFormAlteraSenha;


implementation

uses Principal, ModulodeDados, Z_CriptDecript, Z_RotinasGerais;

{$R *.dfm}

procedure TFormAlteraSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAlteraSenha.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormAlteraSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormAlteraSenha:=nil;
end;

procedure TFormAlteraSenha.FormShow(Sender: TObject);
begin
RxLabel4.Caption:= FormPrincipal.UserLogado;
Edit1.SetFocus;
end;

procedure TFormAlteraSenha.suiButton1Click(Sender: TObject);
var
SenhaAtual, NovaSenha, ConfNovaSenha, UsuarioLog: String;
begin
SenhaAtual:= Wcriptografar(Edit1.Text,5);
NovaSenha:= Edit2.Text;
ConfNovaSenha:= Edit3.Text;
UsuarioLog:= RxLabel4.Caption;
{if SenhaAtual='' then
  begin
    Informacao.Text:= 'Digite a Senha Atual !!!';
    Informacao.ShowModal;
    Edit1.SetFocus;
    end
    else}
    if NovaSenha ='' then
    begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Digite a Nova Senha!';
    FormPrincipal.MsgInformacao.Execute;
    Edit2.SetFocus;
    end
    else
    if ConfNovaSenha ='' then
    begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Repita a Nova Senha!';
    FormPrincipal.MsgInformacao.Execute;
    Edit3.SetFocus;
    end
    else
    if NovaSenha <> ConfNovaSenha then
    begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'A Confirmação da Nova Senha não Confere Com a Nova Senha!';
    FormPrincipal.MsgInformacao.Execute;
    Edit3.SetFocus;
    end
    else
 if DM.SDS_Usuarios.Locate('Usuario;senha',VarArrayOf([UsuarioLog,SenhaAtual]),[locaseInsensitive])then
 begin
   DM.SDS_Usuarios.Edit;
   NovaSenha:= Wcriptografar(Edit2.Text,5);
   DM.SDS_UsuariosSENHA.AsString:= NovaSenha;
   DM.SDS_Usuarios.Post;
   DM.SDS_Usuarios.ApplyUpdates(0);
   CLOSE;
 end
 else
   begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'A senha atual não confere!!!!';
    FormPrincipal.MsgInformacao.Execute;
    edit1.SetFocus;
    end;
end;

procedure TFormAlteraSenha.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAlteraSenha.Edit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAlteraSenha.Edit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAlteraSenha.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAlteraSenha.Edit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAlteraSenha.Edit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAlteraSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
