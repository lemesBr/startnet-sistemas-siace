unit SubGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls, StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, Mask,
  DBCtrls, SUITabControl, RXCtrls, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  RxToolEdit;


  type
  TFormSubGrupos = class(TForm)
    Panel1: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    btnLocalizar: TsuiButton;
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    dbt_codigo: TsuiDBEdit;
    RxLabel5: TRxLabel;
    Panel2: TPanel;
    BANCO: TComboEdit;
    RxLabel4: TRxLabel;
    DBText4: TDBText;
    DBText2: TDBText;
    MsgInformacao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    db_nome: TDBEdit;
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
    procedure suiDBEdit7Exit(Sender: TObject);
    procedure suiDBEdit7Enter(Sender: TObject);
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
    procedure BANCOEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormSubGrupos: TFormSubGrupos;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsSubGrupos,
  ConsGrupos;



{$R *.dfm}

procedure TFormSubGrupos.LocalizarBanco(Sender: TObject);
begin
Try
DM.SDS_Grupos.Open;
DM.SDS_Grupos.Refresh;
if (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([BANCO.Text]),[])) then
begin
IF DM.SDS_SubGrupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
end else begin
MsgAtencao.Text:= 'Grupo Inexistente !!!';
MsgAtencao.ShowModal;
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
IF DM.SDS_SubGrupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
BANCO.Text:= DM.SDS_GruposCodigo.AsString;
BTNNOvo.SetFocus;
end;
Except
MsgErro.Text:= 'Erro ao Localizar Sub-Grupo de Produtos! Tente Novamente!';
MsgErro.ShowModal;
Banco.Clear;
Banco.SetFocus;
end;
end;


Procedure TFormSubGrupos.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_SubGrupos.State = dsBrowse);
//Editar1.Enabled:=(DM.SDS_SubGrupos.State = dsBrowse);
//Localizar1.Enabled:=(DM.SDS_SubGrupos.State = dsBrowse);
//Salvar1.Enabled:= (DM.SDS_SubGrupos.State in [dsInsert, dsEdit]);
//Cancelar1.Enabled:=(DM.SDS_SubGrupos.State in [dsInsert, dsEdit]);
BTNNOVO.Enabled:= (DM.SDS_SubGrupos.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_SubGrupos.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_SubGrupos.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_SubGrupos.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_SubGrupos.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_SubGrupos.State = dsBrowse);
//Excluir1.Enabled:=(DM.SDS_SubGrupos.State = dsBrowse)
end;


procedure TFormSubGrupos.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormSubGrupos.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormSubGrupos.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormSubGrupos.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.db_nomeExit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.DBDateEdit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.DBDateEdit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit4Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit4Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit5Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit5Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit6Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit6Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit7Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit7Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit8Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit8Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit9Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit9Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit10Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit10Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit11Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit11Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit12Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit12Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.PageControl1Exit(Sender: TObject);
begin
Corsaida(Sender)
end;

procedure TFormSubGrupos.DBImage1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.DBImage1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit14Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit14Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit15Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit15Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit13Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit13Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit16Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit16Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.DBDateEdit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit25Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit25Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit26Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit26Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit17Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit17Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit18Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit18Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit19Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit19Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit20Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit20Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit30Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit30Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBMemo3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBMemo3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBMemo2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBMemo2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit23Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit23Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit24Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit24Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit27Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit27Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit28Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit28Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBLookupComboBox3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.suiDBEdit29Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.suiDBEdit29Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM subgrupos');
   DM.ProxCod.Open;
   DM.SDS_SubGrupos.Insert;
   DM.SDS_SubGruposCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
   DM.SDS_SubGruposUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_SubGruposDATACAD.Text:= datetostr(now);
   DM.SDS_SubGruposGRUPO.Text:= DBTEXT4.Caption;
   HabilitaPanel;
   AtualizaManutencao;
   Banco.Enabled:= False;
   Banco.Color:= $00E8E8E8;
   db_nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormSubGrupos.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_SubGrupos.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     Banco.Enabled:= False;
     Banco.Color:= $00E8E8E8;
     db_nome.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormSubGrupos.btnSalvarClick(Sender: TObject);
begin

 Try
      begin
   {dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM subgrupos');
   DM.ProxCod.Open;
   DM.SDS_SubGrupos.edit;
   DM.SDS_SubGruposCODIGO.ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1; }
   
          DM.SDS_SubGrupos.Post;
          DM.SDS_SubGrupos.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
          Banco.Enabled:= True;
          Banco.Color:= clWindow;
          db_nome.Color:= $00E8E8E8;
          Banco.SetFocus;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormSubGrupos.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_SubGrupos.Cancel;
 if DM.SDS_SubGrupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     Banco.Enabled:= True;
     Banco.Color:= clWindow;
     db_nome.Color:= $00E8E8E8;
     Banco.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormSubGrupos.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin

Try
 Begin
    DM.SDS_SubGrupos.Delete;
    DM.SDS_SubGrupos.ApplyUpdates(0);
 end;
 if DM.SDS_SubGrupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
END;

procedure TFormSubGrupos.FormShow(Sender: TObject);
begin
Banco.Clear;
DM.SDS_Grupos.Active:= False;
DM.SDS_SubGrupos.Active:= False;
DM.SDS_Grupos.Active:= True;
DM.SDS_SubGrupos.Active:= True;
DESABILITAPANEL;
IF DM.SDS_SubGrupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
Banco.Enabled:= True;
Banco.SetFocus;
end;


procedure TFormSubGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormSubGrupos:=nil;
end;

procedure TFormSubGrupos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_SubGrupos.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
  MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;


procedure TFormSubGrupos.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsSubGrupos=nil   then
    begin
    FormConsSubGrupos:=TFormConsSubGrupos.Create(self);
      FormConsSubGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormSubGrupos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormSubGrupos.DBMemo1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormSubGrupos.DBMemo1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormSubGrupos.BANCOButtonClick(Sender: TObject);
begin
Try
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
IF DM.SDS_SubGrupos.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
BANCO.Text:= DM.SDS_GruposCodigo.AsString;
BTNNOvo.SetFocus;
end;

procedure TFormSubGrupos.BANCOExit(Sender: TObject);
begin
   CorSaida(Sender);
if Banco.Text = '' then
begin
BTNNOVO.SetFocus
end else begin
LocalizarBanco(Sender);
end;
end;

procedure TFormSubGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormSubGrupos.BANCOEnter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

end.
