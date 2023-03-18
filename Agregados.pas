unit Agregados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs;


type
  TFormAgregados = class(TForm)
    RxLabel29: TRxLabel;
    RxLabel31: TRxLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    RxLabel30: TRxLabel;
    Edit3: TEdit;
    RxLabel1: TRxLabel;
    suiButton1: TBitBtn;
    suiDBGrid1: TDBGrid;
    MsgErro: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    DBEdit1: TDBEdit;
    RxLabel2: TRxLabel;
    DBEdit2: TDBEdit;
    btnExcluir: TBitBtn;
    MsgConfirmacao: TsuiMessageDialog;
    btnSalvar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
 //   procedure AtualizaManutencao;
//    procedure HabilitaPanel;
//    procedure DesabilitaPanel;
//    procedure HabilitaNovo;
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormAgregados: TFormAgregados;

implementation

uses Produtos, ModulodeDados, Z_RotinasGerais, Principal, Acesso, Bancos;
{$R *.dfm}

procedure TFormAgregados.FormShow(Sender: TObject);
begin
  dm.SDS_PRODUTOS.active := True;
  DM.SDS_AGREGADOS.active := true;
  edit1.Text := FormProdutos.dbt_codigo.text;
  Edit3.text := formProdutos.db_nome.Text;
  edit4.text := formProdutos.DBEdit1.text;
  end;

procedure TFormAgregados.suiButton1Click(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin

Try
   DM.SPC_Agregados.ExecProc;
   Cod := (DM.SPC_Agregados.ParamByName('ATUAL').AsInteger);
   DM.SDS_Agregados.Insert;
   dbEDIT1.TEXT:=IntTostr(Cod);
   DM.SDS_AgregadosUSERCAD.Text := FormPrincipal.UserLogado;
   DM.SDS_AgregadosDATACAD.Text := datetostr(now);
//   HabilitaPanel;
//  AtualizaManutencao;
   edit3.Color:= clWhite;
   edit4.Color:= clWhite;
   DBEDIT2.Color:= clWhite;
   dbedit2.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;
procedure TFormAgregados.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
MsgConfirmacao.Text:= 'Confirma Exclusão?';
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM.SDS_AGREGADOS.Delete;
    DM.SDS_AGREGADOS.ApplyUpdates(0);
 end;
 if DM.SDS_AGREGADOS.RecordCount = 0 then
 //HabilitaNovo else AtualizaManutencao;
      Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
END;
procedure TFormAgregados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormAgregados:=nil;
end;

procedure TFormAgregados.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_agregados.State in [dsInsert, dsEdit, dsSetKey] then
  begin
     MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;


procedure TFormAgregados.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAgregados.btnSalvarClick(Sender: TObject);
begin
 Try
      begin

          DM.SDS_agregados.Post;
          DM.SDS_agregados.ApplyUpdates(0);
 //         AtualizaManutencao;
 //         DesabilitaPanel;
     dbedit2.Color:= $00E8E8E8;
 //    suiDBEdit2.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

end.
