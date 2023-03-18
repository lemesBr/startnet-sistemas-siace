unit Partidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, rxToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls,
  RXCtrls, SUIButton, SUIDBCtrls, SUIDlg;

type
  TFormPartidas = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit7: TDBEdit;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel10: TRxLabel;
    DBDateEdit2: TDBDateEdit;
    RxLabel11: TRxLabel;
    DBDateEdit3: TDBDateEdit;
    btnSalvar: TsuiButton;
    btnEditar: TsuiButton;
    btnNovo: TsuiButton;
    btnCancelar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    MsgInformacao: TsuiMessageDialog;
    DBEdit9: TDBEdit;
    RxLabel12: TRxLabel;
    DBCheckBox1: TDBCheckBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPartidas: TFormPartidas;

implementation

uses Principal, ModulodeDados;

{$R *.dfm}

procedure TFormPartidas.btnNovoClick(Sender: TObject);
var
  cod : Integer;
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Showmodal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   DM.SPC_Partidas.ExecProc;
   Cod:= (DM.SPC_Partidas.ParamByName('CODIGO').AsInteger);
   DM.Sds_partidas.Insert;
   DBEdit1.Text:=IntTostr(Cod);
   DM.Sds_partidasCOD_EMPRESA.Text := dm.SDS_EmpresaCodigo.text;
   DM.Sds_partidasUSERCAD.Text := FormPrincipal.UserLogado;
   DM.Sds_partidasDATACAD.Text := datetostr(now);
   DM.Sds_partidasNOTA_COMPRA.Text := DM.SDS_NotasFiscaisNUM_NOTA.Text;
   DM.Sds_partidasNOME_EMPRESA_COMPRA.TEXT := DM.SDS_NotasFiscaisFORNECEDOR.TEXT;
   DM.Sds_partidasMUNICIPIO_COMPRA.Text := DM.SDS_FornecedoresCIDADE.Text;
   btnSalvar.Enabled := True;
   btnCancelar.Enabled := True;
   btnEditar.Enabled := False;
   btnNovo.Enabled := False;
   Except
  ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
end;
end;
end;

procedure TFormPartidas.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.Showmodal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.Sds_partidas.Edit;
     btnSalvar.Enabled := True;
    Except
  ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
end;
end;
end;

procedure TFormPartidas.btnCancelarClick(Sender: TObject);
begin
DM.Sds_partidas.CancelRange;
end;

procedure TFormPartidas.btnSalvarClick(Sender: TObject);
begin
if DBEdit3.Text = '' then
begin
ShowMessage('Informe a Partida da vacina');
DBEdit3.SetFocus;
end else
if DBEdit5.Text = '' then
begin
ShowMessage('Informe o nº da Nota Fiscal de Compra');
DBEdit5.SetFocus;
end else
if DBEdit4.Text = '' then
begin
ShowMessage('Informe a quantidade Comprada');
DBEdit4.SetFocus;
end else
if DBDateEdit3.Text = '  /  /    ' then
begin
ShowMessage('Informe a data da Validade');
DBDateEdit3.SetFocus;
end else
begin

  Try
          dm.Sds_partidasQUANT_VENDA.Text := '0';
          DM.Sds_partidas.Post;
          DM.Sds_partidas.ApplyUpdates(0);

         btnSalvar.Enabled := TRUE;
         btnCancelar.Enabled := TRUE;
         btnEditar.Enabled := False;
         btnNovo.Enabled := True;
      except
        ShowMessage('ocorreu um erro tente novamente');
      end;
end;
end;

procedure TFormPartidas.btnExcluirClick(Sender: TObject);
begin
DM.Sds_partidas.Delete;
end;

procedure TFormPartidas.FormShow(Sender: TObject);
begin
DM.SDS_Empresa.Active := False;
DM.SDS_Empresa.Active := True;
DM.Sds_partidas.Active := False;
DM.Sds_partidas.Active := True;
end;

procedure TFormPartidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
