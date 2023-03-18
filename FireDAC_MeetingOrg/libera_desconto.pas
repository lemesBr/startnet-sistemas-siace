unit libera_desconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, SUIEdit, Mylabel, RXCtrls, DB, ExtCtrls;

type
  TFormLiberaDesconto = class(TForm)
    Panel2: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Bevel2: TBevel;
    myLabel3d1: TmyLabel3d;
    Edit1: TsuiEdit;
    Edit11: TDBLookupComboBox;
    Confirma: TBitBtn;
    btn_Cancelar: TBitBtn;
    procedure ConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLiberaDesconto: TFormLiberaDesconto;
   senhaatual, user : string ;

implementation

uses ModulodeDados, Z_CriptDecript, Z_RotinasGerais, VendasParcelamento;

{$R *.dfm}

procedure TFormLiberaDesconto.ConfirmaClick(Sender: TObject);
begin
  SenhaAtual:= Wcriptografar(Edit1.Text,5);
  USER:= (edit11.Text);

  if not DM.SDS_Usuarios.Locate('Usuario;senha',VarArrayOf([user,SenhaAtual]),[locaseInsensitive])then
  begin
    ShowMessage('Usuário ou senha não Confere, Tente Novamente....');
    edit1.setfocus;
  end else

  if DM.SDS_UsuariosAUTORIZA.Text = '' then
  begin
    ShowMessage('Usuário não Está autorizado a fornecer autoriazação para Compras a Prazo...');
    edit1.setfocus;
  end else

  if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,SenhaAtual]),[locaseInsensitive])then
  if DM.SDS_UsuariosAUTORIZA.Text = 'S' then
  begin
    Self.Tag:= 1;
    Close;
  end;
end;

procedure TFormLiberaDesconto.FormShow(Sender: TObject);
begin
  Self.Tag:= 0;
  if not dm.SDS_Usuarios.Active then
    dm.SDS_Usuarios.Active:= True;
end;

procedure TFormLiberaDesconto.btn_CancelarClick(Sender: TObject);
begin
  Self.Tag:= 0;
  Close;
end;

procedure TFormLiberaDesconto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
    Key:= #0;
    Perform(WM_NextDlgCtl, 0, 0);
  End;
end;

end.
