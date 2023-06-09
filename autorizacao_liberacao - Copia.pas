unit autorizacao_liberacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, Buttons, DB, DBCtrls, SUIEdit, Mylabel,
  RXCtrls, ExtCtrls;

type
  TFormAtutoriza = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Bevel2: TBevel;
    myLabel3d1: TmyLabel3d;
    Edit1: TsuiEdit;
    Edit11: TDBLookupComboBox;
    Confirma: TBitBtn;
    XDBGrid1: TXDBGrid;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    procedure ConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtutoriza: TFormAtutoriza;
  senhaatual, user : string ;
  
implementation

uses ModulodeDadosConsultas, ModulodeDados, Z_CriptDecript, Z_RotinasGerais;

{$R *.dfm}

procedure TFormAtutoriza.ConfirmaClick(Sender: TObject);
begin
SenhaAtual:= Wcriptografar(Edit1.Text,5);
USER:=(edit11.Text);

 if not DM.SDS_Usuarios.Locate('Usuario;senha',VarArrayOf([user,SenhaAtual]),[locaseInsensitive])then
 begin
  ShowMessage('Usu�rio ou senha n�o Confere, Tente Novamente....');
  edit1.setfocus;
   end else

 if DM.SDS_UsuariosAUTORIZA.Text = '' then
 begin
  ShowMessage('Usu�rio n�o Est� autorizado a fornecer autoriaza��o para Compras a Prazo...');
  edit1.setfocus;
 end else

 if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,SenhaAtual]),[locaseInsensitive])then
 if DM.SDS_UsuariosAUTORIZA.Text = 'S' then
 begin
 dmc.sds_libera.Edit;
 DMC.sds_liberaLIBERA.Text := 'S';
 DMC.sds_libera.Post;
 DMC.sds_libera.ApplyUpdates(0);
 close;
 end;
end;

procedure TFormAtutoriza.FormShow(Sender: TObject);
begin
       DMC.sds_libera.Active := False;
       DMC.sds_libera.Active := True;

       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DMC.sds_liberaCOD_CLIENTE.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;


       if DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO EXCEDIDO EM R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITELIMITE_DIPONIVEL.AsCurrency) + ' !!! ')
       end;
       if DMC.CDS_LIMITELIMITE_DE_CREDITO.AsFloat < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITELIMITE_DE_CREDITO.AsCurrency) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! D�BITOS VENCIDOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CRED_VENCIDO.AsCurrency) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! CHEQUES VENCIDOS N�O COMPENSADOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsCurrency) + ' !!! ')
       end;
end;

procedure TFormAtutoriza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
FormAtutoriza := nil;
end;

procedure TFormAtutoriza.FormKeyPress(Sender: TObject; var Key: Char);
begin
//if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
