unit LancCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RXDBCtrl, StdCtrls, Mask, DBCtrls,
  DB, DBClient, SimpleDS, SUIDBCtrls, SUIButton, FMTBcd, SqlExpr, SUIDlg,
  RXCtrls, Grids, XDBGrids, ACBrBase, Data.DBXFirebird, RxToolEdit, sLabel;

type
  TFormLancCrediario = class(TForm)
    Sds_crediario: TSimpleDataSet;
    dts_crediario: TDataSource;
    Sds_crediarioCODIGO: TIntegerField;
    Sds_crediarioCODIGO_CLIENTE: TIntegerField;
    Sds_crediarioDATA_COMPRA: TDateField;
    Sds_crediarioDATA_VENCIMENTO: TDateField;
    Sds_crediarioDATA_BAIXA: TDateField;
    Sds_crediarioHISTORICO: TStringField;
    Sds_crediarioUSUARIO_VENDA: TStringField;
    Sds_crediarioUSUARIO_BAIXA: TStringField;
    Sds_crediarioSITUACAO: TStringField;
    Sds_crediarioVALOR_COMPRA: TFMTBCDField;
    Sds_crediarioVALOR_JUROS: TFMTBCDField;
    Sds_crediarioVALOR_ACRESCIMO: TFMTBCDField;
    Sds_crediarioVALOR_DESCONTO: TFMTBCDField;
    Sds_crediarioVALOR_PAGAR: TFMTBCDField;
    Sds_crediarioVALOR_PAGO: TFMTBCDField;
    Sds_crediarioVALOR_TOTAL: TFMTBCDField;
    Sds_crediarioCODIGO_COMPRA: TIntegerField;
    Sds_crediarioPARCELA: TStringField;
    Sds_crediarioNUMBOLETO: TStringField;
    Sds_crediarioBANCO_PORTADOR: TIntegerField;
    Sds_crediarioREMESSA: TStringField;
    Sds_crediarioDATACREDITO: TDateField;
    Sds_crediarioID_PORTADOR: TIntegerField;
    Sds_crediarioENVIADO: TStringField;
    Sds_crediarioCOD_EMPRESA: TIntegerField;
    Sds_crediarioNUMBOLETO1: TIntegerField;
    Sds_crediarioCODIGOCEDENTE: TStringField;
    Sds_crediarioTIPO: TStringField;
    Sds_crediarioCHEK_BOX: TStringField;
    Sds_crediarioNUM_NOTA: TIntegerField;
    Sds_crediarioSERIE_NOTA: TStringField;
    Sds_crediarioNOME_SACADO: TStringField;
    Sds_crediarioANO: TStringField;
    Sds_crediarioMES: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit32: TDBEdit;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboEdit1: TRxDBComboEdit;
    DBDateEdit2: TDBDateEdit;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    btnLocalizar: TsuiButton;
    SPC_CREDIARIO: TSQLStoredProc;
    MsgInformacao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    Label7: TLabel;
    Label8: TLabel;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    myLabel3d1: TsLabelFX;
    Cliente: TComboEdit;
    suiButton4: TsuiButton;
    Edit2: TEdit;
    Panel3: TPanel;
    Panel6: TPanel;
    RxLabel5: TRxLabel;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Panel8: TPanel;
    RxLabel7: TRxLabel;
    DBGrid1: TXDBGrid;
    MessageLocCli: TsuiMessageDialog;
    Label24: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton4Click(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure RxDBComboEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormLancCrediario: TFormLancCrediario;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, ConsCrediario, ConsClientes;

{$R *.dfm}

Procedure TFormLancCrediario.AtualizaManutencao;
begin
DBNavigator.Enabled:= (Sds_crediario.State = dsBrowse);
BTNNOVO.Enabled:= (SDS_crediario.State = dsBrowse);
BTNEXCLUIR.Enabled:= (SDS_crediario.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (SDS_Crediario.State = dsBrowse);
BTNSALVAR.Enabled:= (SDS_crediario.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (SDS_Crediario.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (SDS_crediario.State = dsBrowse);
end;


procedure TFormLancCrediario.HabilitaPanel;
begin
Panel1.Enabled:= True;
end;

procedure TFormLancCrediario.DesabilitaPanel;
begin
Panel1.Enabled:= False;

end;

procedure TFormLancCrediario.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormLancCrediario.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   SPC_Crediario.ExecProc;
   Cod:= (SPC_Crediario.ParamByName('ATUAL').AsInteger);
   SDS_crediario.Insert;
   Dbedit1.Text:=IntTostr(Cod);
   Sds_crediarioUSUARIO_VENDA.Text:= FormPrincipal.UserLogado;
   HabilitaPanel;
   AtualizaManutencao;
   DBDateEdit1.Color:= clWhite;
   DBDateEdit2.Color:= clWhite;
   DBDateEdit3.Color:= clWhite;
   RxDBComboEdit1.Color := clWhite;
   DBEdit6.Color:= clWhite;
   DBEdit9.Color:= clWhite;
   DBEdit10.Color:= clWhite;
   DBEdit11.Color:= clWhite;
   dBEdit12.Color:= clWhite;
   DBEdit13.Color:= clWhite;
   DBEdit14.Color:= clWhite;
   DBEdit15.Color:= clWhite;
   dBEdit16.Color:= clWhite;
   DBEdit17.Color:= clWhite;
   DBEdit18.Color:= clWhite;
   DBEdit28.Color:= clWhite;
   DBEdit32.Color:= clWhite;
   DBEdit33.Color:= clWhite;
   DBEdit34.Color:= clWhite;
   DBDateEdit1.SetFocus;
   DBEdit10.Text := '0,00';
   Sds_crediarioVALOR_JUROS.Text := '0,00';
   Sds_crediarioVALOR_ACRESCIMO.Text:= '0,00';
   Sds_crediarioVALOR_DESCONTO.Text := '0,00';
   Sds_crediarioVALOR_PAGO.text := '0,00';
   Sds_crediarioDATA_COMPRA.AsDateTime:= date;
   Sds_crediarioSITUACAO.Text :='A';
   Sds_crediarioPARCELA.TEXT:='1/1';

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormLancCrediario.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   SDS_crediario.edit;
   AtualizaManutencao;
   HabilitaPanel;
   DBDateEdit1.Color:= clWhite;
   DBDateEdit2.Color:= clWhite;
   DBDateEdit3.Color:= clWhite;
   RxDBComboEdit1.Color := clWhite;
   DBEdit6.Color:= clWhite;
   DBEdit9.Color:= clWhite;
   DBEdit10.Color:= clWhite;
   DBEdit11.Color:= clWhite;
   dBEdit12.Color:= clWhite;
   DBEdit13.Color:= clWhite;
   DBEdit14.Color:= clWhite;
   DBEdit15.Color:= clWhite;
   dBEdit16.Color:= clWhite;
   DBEdit17.Color:= clWhite;
   DBEdit18.Color:= clWhite;
   DBEdit28.Color:= clWhite;
   DBEdit32.Color:= clWhite;
   DBEdit33.Color:= clWhite;
   DBEdit34.Color:= clWhite;
   DBDateEdit1.SetFocus;
   Sds_crediario.Edit;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormLancCrediario.btnCancelarClick(Sender: TObject);
begin
Try
     Sds_crediario.Cancel;
 if Sds_crediario.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   DBDateEdit1.Color:= $00E8E8E8;
   DBDateEdit2.Color:= $00E8E8E8;
   DBDateEdit3.Color:= $00E8E8E8;
   RxDBComboEdit1.Color := $00E8E8E8;
   DBEdit6.Color:= $00E8E8E8;
   DBEdit9.Color:= $00E8E8E8;
   DBEdit10.Color:= $00E8E8E8;
   DBEdit11.Color:= $00E8E8E8;
   dBEdit12.Color:= $00E8E8E8;
   DBEdit13.Color:= $00E8E8E8;
   DBEdit14.Color:= $00E8E8E8;
   DBEdit15.Color:= $00E8E8E8;
   dBEdit16.Color:= $00E8E8E8;
   DBEdit17.Color:= $00E8E8E8;
   DBEdit18.Color:= $00E8E8E8;
   DBEdit28.Color:= $00E8E8E8;
   DBEdit32.Color:= $00E8E8E8;
   DBEdit33.Color:= $00E8E8E8;
   DBEdit34.Color:= $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormLancCrediario.btnSalvarClick(Sender: TObject);
var
  dtaux : TDateTime;
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);
 Sds_crediario.Edit;
 Try
      begin
          dtAux := (StrToDate (DBDateEdit1.Text));
          Sds_crediario.Edit;
          Sds_crediarioCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
          Sds_crediarioano.AsString := FormatDateTime('yyyy',dtAux);
          Sds_crediarioMES.AsString := FormatDateTime('mm',dtAux);

          sds_crediarioTipo.text :='AVU';
          Sds_crediarioNOME_SACADO.Text := RxLabel6.Caption;
          Sds_crediario.Post;
          SDS_crediario.ApplyUpdates(0);
         // DM.SQLC.Commit(TD);
          AtualizaManutencao;
          DesabilitaPanel;
          DBDateEdit1.Color:= $00E8E8E8;
          DBDateEdit2.Color:= $00E8E8E8;
          DBDateEdit3.Color:= $00E8E8E8;
          RxDBComboEdit1.Color := $00E8E8E8;
          DBEdit6.Color:= $00E8E8E8;
          DBEdit9.Color:= $00E8E8E8;
          DBEdit10.Color:= $00E8E8E8;
          DBEdit11.Color:= $00E8E8E8;
          dBEdit12.Color:= $00E8E8E8;
          DBEdit13.Color:= $00E8E8E8;
          DBEdit14.Color:= $00E8E8E8;
          DBEdit15.Color:= $00E8E8E8;
          dBEdit16.Color:= $00E8E8E8;
          DBEdit17.Color:= $00E8E8E8;
          DBEdit18.Color:= $00E8E8E8;
          DBEdit28.Color:= $00E8E8E8;
          DBEdit32.Color:= $00E8E8E8;
          DBEdit33.Color:= $00E8E8E8;
          DBEdit34.Color:= $00E8E8E8;
          //sds_crediario.active := false;
          //sds_crediario.active := true;
          Sds_crediario.Refresh;
          end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormLancCrediario.btnExcluirClick(Sender: TObject);
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
TD.TransactionID  := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    SDS_crediario.Delete;
    Sds_crediario.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if Sds_crediario.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
      Except
      DM.SQLC.Rollback(TD);
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;
procedure TFormLancCrediario.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsCrediario=nil   then
    begin
    FormConsCrediario:=TFormConsCrediario.Create(self);
      FormConsCrediario.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormLancCrediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormLancCrediario:=nil;
end;

procedure TFormLancCrediario.E(Sender: TObject);
begin
DM.SDS_Clientes.Filtered := False;
DesabilitaPanel;

Cliente.SetFocus;
end;

procedure TFormLancCrediario.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
      FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Sds_crediario.Edit;
      DBEdit32.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      RxDBComboEdit1.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;

end;

procedure TFormLancCrediario.RxDBComboEdit1Exit(Sender: TObject);
begin

  DM.SDS_Clientes.locate('CODIGO', RxDBComboEdit1.Text,[loCaseinSensitive]);
  Sds_crediario.Edit;
  Sds_crediarioNOME_SACADO.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  if not  DM.SDS_Clientes.locate('CODIGO', RxDBComboEdit1.Text,[loCaseinSensitive]) then
   begin
     //RxDBComboEdit1ButtonClick(sender);
     ShowMessage('Cliente não localizado...');
     RxDBComboEdit1.SetFocus;
   end;
end;

procedure TFormLancCrediario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Sds_crediario.State in [dsInsert, dsEdit, dsSetKey] then
 begin
  MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Lançamento !!!';
  MsgInformacao.Showmodal;
  CanClose := False;
end;
end;
procedure TFormLancCrediario.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
suiButton4Click(Sender);
AtualizaManutencao;
if  Sds_crediario.Eof then
begin
MessageLocCli.ShowModal;
Cliente.SetFocus;
end;
end;  
end;

procedure TFormLancCrediario.suiButton4Click(Sender: TObject);
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

//IF ACHOU=FALSE THEN
//begin
ClienteButtonClick(sender);
//end ELSE

{IF ACHOU=TRUE THEN
BEGIN
Cliente.Text := DM.SDS_ClientesCODIGO.Text;
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
end;}
end else
IF EDIT2.Text='NUMEROS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Codigo do Cliente Não Localizado');

IF ACHOU=TRUE THEN
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
end;

Sds_crediario.Active := False;
Sds_crediario.Active := True;
end;

procedure TFormLancCrediario.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormLancCrediario.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormLancCrediario.ClienteButtonClick(Sender: TObject);
begin
Try
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.ADD('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := Cliente.Text;
      end;
      FormConsClientes.ShowModal;
      ClienteChange(Sender);
      Cliente.Text := DM.SDS_ClientesCODIGO.Text;
      RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
      RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
      RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
     // suiButton4Click(Sender);
     // BTBaixaTotal.SetFocus;

     // keybd_event(VK_RETURN, 0, 0, 0);
      //ClienteExit(sender);
      Sds_crediario.Active := False;
      Sds_crediario.Active := True;
      suiButton4Click(Sender);
      AtualizaManutencao;
      end;

      except
    //   ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;

end;

procedure TFormLancCrediario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
 Var
  Check: Integer;
    R: TRect;
    DtVen: TDateTime;
begin


  if not odd(SDS_Crediario.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end;

end;

procedure TFormLancCrediario.RxDBComboEdit1Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBDateEdit1Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBDateEdit3Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBEdit6Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBEdit18Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBDateEdit2Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBEdit9Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.DBEdit10Enter(Sender: TObject);
begin
 SDS_crediario.edit;
end;

procedure TFormLancCrediario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;



end;

procedure TFormLancCrediario.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if  (ActiveControl is TComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormLancCrediario.DBDateEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if  (ActiveControl is TComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
