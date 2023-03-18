unit Agencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB,  Mask,
  DBCtrls, SUITabControl, RXCtrls, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  sDBEdit, sPanel, sDBNavigator, sBitBtn, RxToolEdit, AdvGlowButton;


  type
  TFormAgencias = class(TForm)
    Panel1: TPanel;
    btnNovo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    DBNavigator: TsDBNavigator;
    btnLocalizar: TAdvGlowButton;
    pnldados: TPanel;
    Panel2: TPanel;
    BANCO: TComboEdit;
    RxLabel4: TRxLabel;
    DBText4: TDBText;
    DBText2: TDBText;
    GroupBox1: TGroupBox;
    RxLabel1: TRxLabel;
    dbt_codigo: TsDBEdit;
    RxLabel3: TRxLabel;
    DBText3: TDBText;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel11: TRxLabel;
    db_nome: TDBEdit;
    suiDBEdit3: TDBEdit;
    suiDBEdit11: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit6: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit8: TDBEdit;
    suiDBComboBox5: TDBComboBox;
    suiDBEdit9: TDBEdit;
    suiDBEdit10: TDBEdit;
    suiDBEdit12: TDBEdit;
    suiDBEdit1: TDBEdit;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure LocalizarBanco(Sender: TObject);
    procedure db_nomeEnter(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure suiDBEdit2Enter(Sender: TObject);
    procedure suiDBEdit2Exit(Sender: TObject);
    procedure suiDBEdit3Enter(Sender: TObject);
    procedure suiDBEdit3Exit(Sender: TObject);
    procedure suiDBComboBox1Enter(Sender: TObject);
    procedure suiDBComboBox1Exit(Sender: TObject);
    procedure suiDBComboBox2Enter(Sender: TObject);
    procedure suiDBComboBox2Exit(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure suiDBComboBox3Enter(Sender: TObject);
    procedure suiDBComboBox3Exit(Sender: TObject);
    procedure suiDBEdit4Exit(Sender: TObject);
    procedure suiDBEdit4Enter(Sender: TObject);
    procedure suiDBEdit5Enter(Sender: TObject);
    procedure suiDBEdit5Exit(Sender: TObject);
    procedure suiDBEdit6Enter(Sender: TObject);
    procedure suiDBEdit6Exit(Sender: TObject);
    procedure cExit(Sender: TObject);
    procedure cEnter(Sender: TObject);
    procedure suiDBEdit8Enter(Sender: TObject);
    procedure suiDBEdit8Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure suiDBEdit9Enter(Sender: TObject);
    procedure suiDBEdit9Exit(Sender: TObject);
    procedure suiDBEdit10Enter(Sender: TObject);
    procedure suiDBEdit10Exit(Sender: TObject);
    procedure suiDBEdit11Enter(Sender: TObject);
    procedure suiDBEdit11Exit(Sender: TObject);
    procedure suiDBEdit12Enter(Sender: TObject);
    procedure suiDBEdit12Exit(Sender: TObject);
    procedure suiDBMemo1Enter(Sender: TObject);
    procedure suiDBMemo1Exit(Sender: TObject);
    procedure PageControl1Exit(Sender: TObject);
    procedure DBImage1Enter(Sender: TObject);
    procedure DBImage1Exit(Sender: TObject);
    procedure suiDBEdit14Enter(Sender: TObject);
    procedure suiDBEdit14Exit(Sender: TObject);
    procedure suiDBEdit15Enter(Sender: TObject);
    procedure suiDBEdit15Exit(Sender: TObject);
    procedure suiDBEdit13Enter(Sender: TObject);
    procedure suiDBEdit13Exit(Sender: TObject);
    procedure suiDBEdit16Enter(Sender: TObject);
    procedure suiDBEdit16Exit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure suiDBEdit25Enter(Sender: TObject);
    procedure suiDBEdit25Exit(Sender: TObject);
    procedure suiDBEdit26Enter(Sender: TObject);
    procedure suiDBEdit26Exit(Sender: TObject);
    procedure suiDBEdit17Enter(Sender: TObject);
    procedure suiDBEdit17Exit(Sender: TObject);
    procedure suiDBEdit18Enter(Sender: TObject);
    procedure suiDBEdit18Exit(Sender: TObject);
    procedure suiDBEdit19Enter(Sender: TObject);
    procedure suiDBEdit19Exit(Sender: TObject);
    procedure suiDBEdit20Enter(Sender: TObject);
    procedure suiDBEdit20Exit(Sender: TObject);
    procedure suiDBEdit30Enter(Sender: TObject);
    procedure suiDBEdit30Exit(Sender: TObject);
    procedure suiDBMemo3Enter(Sender: TObject);
    procedure suiDBMemo3Exit(Sender: TObject);
    procedure suiDBLookupComboBox1Enter(Sender: TObject);
    procedure suiDBLookupComboBox1Exit(Sender: TObject);
    procedure suiDBLookupComboBox2Enter(Sender: TObject);
    procedure suiDBLookupComboBox2Exit(Sender: TObject);
    procedure suiDBMemo2Enter(Sender: TObject);
    procedure suiDBMemo2Exit(Sender: TObject);
    procedure suiDBEdit23Enter(Sender: TObject);
    procedure suiDBEdit23Exit(Sender: TObject);
    procedure suiDBEdit24Enter(Sender: TObject);
    procedure suiDBEdit24Exit(Sender: TObject);
    procedure suiDBEdit27Enter(Sender: TObject);
    procedure suiDBEdit27Exit(Sender: TObject);
    procedure suiDBEdit28Enter(Sender: TObject);
    procedure suiDBEdit28Exit(Sender: TObject);
    procedure suiDBLookupComboBox3Enter(Sender: TObject);
    procedure suiDBLookupComboBox3Exit(Sender: TObject);
    procedure suiDBEdit29Enter(Sender: TObject);
    procedure suiDBEdit29Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure BANCOButtonClick(Sender: TObject);
    procedure BANCOExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBComboBox5Enter(Sender: TObject);
    procedure suiDBComboBox5Exit(Sender: TObject);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure BANCOEnter(Sender: TObject);
    procedure suiDBEdit7Enter(Sender: TObject);
    procedure suiDBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormAgencias: TFormAgencias;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsBancos,
  ConsAgencias;



{$R *.dfm}

procedure TFormAgencias.LocalizarBanco(Sender: TObject);
begin
Try
DM.SDS_Bancos.Open;
DM.SDS_Bancos.Refresh;
if (DM.SDS_Bancos.Locate('CODIGO',VarArrayOf([BANCO.Text]),[])) then
begin
IF DM.SDS_Agencias.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
end else begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Banco Inexistente!';
    FormPrincipal.MsgInformacao.Execute;
if FormConsBancos=nil   then
    begin
    FormConsBancos:=TFormConsBancos.Create(self);
      FormConsBancos.ShowModal;
      end;
IF DM.SDS_Agencias.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
BANCO.Text:= DM.SDS_BancosCodigo.AsString;
BTNNOvo.SetFocus;
end;
Except
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Erro ao Localizar Banco Cadastrado! Tente Novamente!';
    FormPrincipal.MsgInformacao.Execute;
Banco.Clear;
Banco.SetFocus;
end;
end;


Procedure TFormAgencias.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Agencias.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_Agencias.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_Agencias.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Agencias.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Agencias.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Agencias.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Agencias.State = dsBrowse);
end;


procedure TFormAgencias.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormAgencias.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormAgencias.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormAgencias.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormAgencias.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.DBDateEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.DBDateEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit4Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit4Enter(Sender: TObject);
begin
  inherited;

     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit6Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit6Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.cExit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.cEnter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit8Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit8Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit9Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit9Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit10Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit10Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit11Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit11Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit12Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit12Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.PageControl1Exit(Sender: TObject);
begin
Corsaida(Sender)
end;

procedure TFormAgencias.DBImage1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.DBImage1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit14Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit14Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit15Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit15Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit13Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit13Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit16Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit16Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.DBDateEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit25Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit25Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit26Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit26Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit17Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit17Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit18Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit18Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit19Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit19Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit20Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit20Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit30Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit30Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBMemo3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBMemo3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBMemo2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBMemo2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit23Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit23Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit24Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit24Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit27Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit27Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit28Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit28Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit29Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit29Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
 FormPrincipal.MsgInformacao.HTMLText.Text := 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM AGENCIAS');
                    DM.ProxCod.Open;

   Cod:= (DM.ProxCodN_CODIGO.ASINTEGER + 1);
   DM.SDS_Agencias.Insert;
   DM.SDS_AgenciasCODIGO.Text:=IntTostr(Cod);
   DM.SDS_AgenciasUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_AgenciasDATACAD.Text:= datetostr(now);
   DM.SDS_AgenciasBANCO.Text:= DBTExt4.Caption;
   HabilitaPanel;
   AtualizaManutencao;
   Banco.Enabled:= False;
   Banco.Color:= $00E8E8E8;
   db_nome.Color:= clWhite;
   suiDBEdit3.Color:= clWhite;
   suiDBEdit11.Color:= clWhite;
   suiDBEdit4.Color:= clWhite;
   suiDBEdit6.Color:= clWhite;
   suiDBEdit7.Color:= clWhite;
   suiDBEdit8.Color:= clWhite;
   suiDBComboBox5.Color:= clWhite;
   suiDBEdit9.Color:= clWhite;
   suiDBEdit10.Color:= clWhite;
   suiDBEdit12.Color:= clWhite;
   suiDBEdit1.Color:= clWhite;
   db_nome.SetFocus;
   Except
   FormPrincipal.MsgInformacao.HTMLText.Text := 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgInformacao.Execute;

   end;
end;
end;

procedure TFormAgencias.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
   FormPrincipal.MsgInformacao.HTMLText.Text := 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!!';
   FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Agencias.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     Banco.Enabled:= False;
     Banco.Color:= $00E8E8E8;
   db_nome.Color:= clWhite;
   suiDBEdit3.Color:= clWhite;
   suiDBEdit11.Color:= clWhite;
   suiDBEdit4.Color:= clWhite;
   suiDBEdit6.Color:= clWhite;
   suiDBEdit7.Color:= clWhite;
   suiDBEdit8.Color:= clWhite;
   suiDBComboBox5.Color:= clWhite;
   suiDBEdit9.Color:= clWhite;
   suiDBEdit10.Color:= clWhite;
   suiDBEdit12.Color:= clWhite;
   suiDBEdit1.Color:= clWhite;
     db_nome.SetFocus;
   Except
   FormPrincipal.MsgInformacao.HTMLText.Text := 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgInformacao.Execute;
   end;

end;
end;

procedure TFormAgencias.btnSalvarClick(Sender: TObject);
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
 Try
      begin

          DM.SDS_AgenciasFEBRABAN.Text := DM.SDS_BancosFEBRABAN.Text;
          DM.SDS_Agencias.Post;
          DM.SDS_Agencias.ApplyUpdates(0);
         // DM.SQLC.Commit(TD);
          AtualizaManutencao;
          DesabilitaPanel;
          Banco.Enabled:= True;
          Banco.Color:= clWhite;
   db_nome.Color:= $00E8E8E8;
   suiDBEdit3.Color:= $00E8E8E8;
   suiDBEdit11.Color:= $00E8E8E8;
   suiDBEdit4.Color:= $00E8E8E8;
   suiDBEdit6.Color:= $00E8E8E8;
   suiDBEdit7.Color:= $00E8E8E8;
   suiDBEdit8.Color:= $00E8E8E8;
   suiDBComboBox5.Color:= $00E8E8E8;
   suiDBEdit9.Color:= $00E8E8E8;
   suiDBEdit10.Color:= $00E8E8E8;
   suiDBEdit12.Color:= $00E8E8E8;
   suiDBEdit1.Color:= $00E8E8E8;
   Banco.SetFocus;
      end;
   Except
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Ocorreu um Erro. Reinicie o Sistema e tente novamente!';
    FormPrincipal.MsgInformacao.Execute;   end;

end;

procedure TFormAgencias.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Agencias.Cancel;
 if DM.SDS_Agencias.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     Banco.Enabled:= True;
     Banco.Color:= clWhite;
   db_nome.Color:= $00E8E8E8;
   suiDBEdit3.Color:= $00E8E8E8;
   suiDBEdit11.Color:= $00E8E8E8;
   suiDBEdit4.Color:= $00E8E8E8;
   suiDBEdit6.Color:= $00E8E8E8;
   suiDBEdit7.Color:= $00E8E8E8;
   suiDBEdit8.Color:= $00E8E8E8;
   suiDBComboBox5.Color:= $00E8E8E8;
   suiDBEdit9.Color:= $00E8E8E8;
   suiDBEdit10.Color:= $00E8E8E8;
   suiDBEdit12.Color:= $00E8E8E8;
   suiDBEdit1.Color:= $00E8E8E8;
   Banco.SetFocus;
   Except
   FormPrincipal.MsgInformacao.HTMLText.Text := 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgInformacao.Execute;
   end;
end;

procedure TFormAgencias.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
   FormPrincipal.MsgInformacao.HTMLText.Text := 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! ';
   FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exclusão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

begin

Try
 Begin
    DM.SDS_Agencias.Delete;
    DM.SDS_Agencias.ApplyUpdates(0);

 end;
 if DM.SDS_Agencias.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
   Except
   FormPrincipal.MsgInformacao.HTMLText.Text := 'Ocorreu um Erro. Reinicie o Sistema e tente novamente!!! ';
   FormPrincipal.MsgInformacao.Execute;
end;
end;
end;
END;

procedure TFormAgencias.FormShow(Sender: TObject);
begin
Banco.Clear;
DM.SDS_Agencias.Active:= False;
DM.SDS_Bancos.Active:=False;
DM.SDS_Bancos.Active:= True;
DM.SDS_Agencias.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Agencias.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
Banco.Enabled:= True;
Banco.SetFocus;
end;


procedure TFormAgencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormAgencias:=nil;
end;

procedure TFormAgencias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Agencias.State in [dsInsert, dsEdit, dsSetKey] then
  begin
   FormPrincipal.MsgInformacao.HTMLText.Text := 'Antes de Sair Você Deve Salvar ou Cancelar o Registro!!! ';
   FormPrincipal.MsgInformacao.Execute;
    CanClose := False;
  end;
end;


procedure TFormAgencias.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsAgencias=nil   then
    begin
    FormConsAgencias:=TFormConsAgencias.Create(self);
      FormConsAgencias.ShowModal;
      BANCO.Clear;
      BANCO.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormAgencias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F2) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;
end;

procedure TFormAgencias.DBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.DBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.BANCOButtonClick(Sender: TObject);
begin
Try
if FormConsBancos=nil   then
    begin
    FormConsBancos:=TFormConsBancos.Create(self);
      FormConsBancos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
IF DM.SDS_Agencias.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
BANCO.Text:= DM.SDS_BancosCodigo.AsString;
BTNNOvo.SetFocus;
end;

procedure TFormAgencias.BANCOExit(Sender: TObject);
begin
CorSaida(Sender);
if Banco.Text = '' then
begin
BTNNovo.SetFocus
end else begin
LocalizarBanco(Sender);
end;
end;

procedure TFormAgencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAgencias.suiDBComboBox5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBComboBox5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.suiDBEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormAgencias.BANCOEnter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit7Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormAgencias.suiDBEdit7Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

end.
