unit FrmConsultaPreVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxDesgn, frxClass, DB, IBCustomDataSet, DBClient, SimpleDS,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Menus, RDprint, SqlExpr, SUIDlg,
  ExtCtrls, SUIDBCtrls, StdCtrls, Mask, DBCtrls,
  RXCtrls, Grids, DBGrids, SUIButton, aDvPanel, frxDBSet, Data.DBXFirebird,
  RxToolEdit, RxCurrEdit;

type
  TFConsultaPreVenda = class(TForm)
    Memo1: TMemo;
    Panel: TAdvPanel;
    BitBtn3: TsuiButton;
    suiButton2: TsuiButton;
    suiButton3: TsuiButton;
    Panel4: TAdvPanel;
    suiDBGrid2: TDBGrid;
    Panel8: TAdvPanel;
    RxLabel41: TRxLabel;
    l_total: TRxLabel;
    RxLabel44: TRxLabel;
    RxLabel45: TRxLabel;
    L_prazo: TRxLabel;
    L_avista: TRxLabel;
    RxLabel9: TRxLabel;
    Panel11: TAdvPanel;
    Label9: TLabel;
    suiDBEdit43: TDBEdit;
    suiDBEdit44: TDBEdit;
    v_PRAZO: TRxCalcEdit;
    v_TOTAL: TRxCalcEdit;
    v_AVISTA: TRxCalcEdit;
    q_VENDAS: TRxCalcEdit;
    suiDBEdit10: TsuiDBEdit;
    Panel9: TAdvPanel;
    suiDBGrid1: TDBGrid;
    pnpesq: TAdvPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Cliente: TComboEdit;
    suiButton7: TsuiButton;
    Edit4: TEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    SPC_N_CUPOM: TSQLStoredProc;
    RDprint1: TRDprint;
    PopupMenu1: TPopupMenu;
    AlteradadosdoCliente1: TMenuItem;
    Action11: TMenuItem;
    D1: TMenuItem;
    I1: TMenuItem;
    qrCupom: TFDQuery;
    qrCupom_item: TFDQuery;
    qrecf_comando: TSimpleDataSet;
    qrecf_comandoCOMANDO: TStringField;
    qrecf_comandoNUMERO: TIntegerField;
    qrecf_comandoDESCONTO: TFMTBCDField;
    qrecf_comandoACRESCIMO: TFMTBCDField;
    qrecf_comandoDINHEIRO: TFMTBCDField;
    qrecf_comandoCHEQUEAV: TFMTBCDField;
    qrecf_comandoCHEQUEAP: TFMTBCDField;
    qrecf_comandoCARTAOCRED: TFMTBCDField;
    qrecf_comandoCARTAODEB: TFMTBCDField;
    qrecf_comandoPROMISSORIA: TFMTBCDField;
    qrecf_comandoCLIENTE: TStringField;
    qrecf_comandoENDERECO: TStringField;
    qrecf_comandoCIDADE: TStringField;
    qrecf_comandoCPF: TStringField;
    qrecf_comandoCONVENIO: TStringField;
    qrecf_comandoVENDEDOR: TStringField;
    qrecf_comandoSEQUENCIA: TIntegerField;
    qrecf_comandoRG_IE: TStringField;
    qrecf_comandoPRODUTOR_RURAL: TStringField;
    SPC_N_NFE: TSQLStoredProc;
    q_Cred_Rec: TFDQuery;
    QBuscaItens: TFDQuery;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TIBStringField;
    QBuscaItensDESCRICAO_PRODUTO: TIBStringField;
    QBuscaItensDESCONTO: TIBBCDField;
    QBuscaItensQUANTIDADE: TIBBCDField;
    QBuscaItensPRECO_TOTAL: TIBBCDField;
    QBuscaItensCOMISSAO: TIBBCDField;
    QBuscaItensDEV: TIBStringField;
    QBuscaItensQNT_DEV: TIBBCDField;
    QBuscaItensVAL_DEV: TIBBCDField;
    QBuscaItensENC_FINANCEIRO: TIBBCDField;
    QBuscaItensUNIDADE: TIBStringField;
    QBuscaItensSIT_TRIBUTARIA: TIBStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TIBStringField;
    QBuscaItensPROD_SERV: TIBStringField;
    QBuscaItensPERC_ISS: TIBBCDField;
    QBuscaItensBASE_ISS: TIBBCDField;
    QBuscaItensVL_ISS: TIBBCDField;
    QBuscaItensPERC_ICM: TIBBCDField;
    QBuscaItensBASE_ICMS: TIBBCDField;
    QBuscaItensVL_ICM: TIBBCDField;
    QBuscaItensPERC_IPI: TIBBCDField;
    QBuscaItensBASE_IPI: TIBBCDField;
    QBuscaItensVL_IPI: TIBBCDField;
    QBuscaItensPERC_COFINS: TIBBCDField;
    QBuscaItensBASE_COFINS: TIBBCDField;
    QBuscaItensVL_COFINS: TIBBCDField;
    QBuscaItensPERC_ICMS_SUBST: TIBBCDField;
    QBuscaItensBASE_ICMS_SUBST: TIBBCDField;
    QBuscaItensVL_ICMS_SUBST: TIBBCDField;
    QBuscaItensPERC_PIS: TIBBCDField;
    QBuscaItensBASE_PIS: TIBBCDField;
    QBuscaItensVL_PIS: TIBBCDField;
    QBuscaItensIMPRIME: TIBStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    QBuscaItensCFOP_EST_VENDA: TIBStringField;
    QBuscaItensCST_VENDA: TIBStringField;
    QBuscaItensNCM_SH: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItensCST_IPI_SAIDA: TIBStringField;
    QBuscaItensCFOP_INTER_VENDA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensCOD_ANP: TIBStringField;
    QBuscaItensCOMBUSTIVEL: TIBStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TIBStringField;
    QBuscaItensML_QUANT_BEB: TIBBCDField;
    QBuscaItensPERC_TRIBU: TIBBCDField;
    QBuscaItensFONTE: TIBStringField;
    QBuscaItensALIC_NAC: TIBBCDField;
    QBuscaItensALIC_IMP: TIBBCDField;
    QBuscaItensVEICULO: TIBStringField;
    QBuscaItensCHASSI: TIBStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TIBStringField;
    QBuscaItensN_MOTOR: TIBStringField;
    QBuscaItensANO_FAB: TIBStringField;
    QBuscaItensANO_MOD_FAB: TIBStringField;
    QBuscaItensTIPO_VEIC: TIBStringField;
    QBuscaItensN_SERIE: TIBStringField;
    QBuscaItensCOD_MODELO: TIBStringField;
    QBuscaItensESPECIE_VEICULO: TIBStringField;
    QBuscaItensCOD_COR_DENATRAN: TIBStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TIBStringField;
    QBuscaItensPESOBRUTO: TIBBCDField;
    QBuscaItensPESOLIQUIDO: TIBBCDField;
    QBuscaItensAPLICACAO: TIBStringField;
    QBuscaItensID_BICO: TIntegerField;
    QBuscaItensID_TANQUE: TStringField;
    QBuscaItensID_BOMBA: TStringField;
    QBuscaItensBICO: TStringField;
    QBuscaItensNCM_SH_1: TStringField;
    QBuscaItensPRECO_UNITARIO: TFloatField;
    DelItem: TFDQuery;
    Qrsoma: TFDQuery;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    qrPreVenda: TFDQuery;
    qrPreVendaCODIGO: TIntegerField;
    qrPreVendaVALOR_ITENS: TBCDField;
    qrPreVendaENC_FINANCEIRO: TBCDField;
    qrPreVendaVALOR_DESCONTO: TBCDField;
    qrPreVendaVALOR_TOTAL: TBCDField;
    qrPreVendaVALOR_COMISSAO: TBCDField;
    qrPreVendaUSUARIO: TStringField;
    qrPreVendaDATA_PEDIDO: TDateField;
    qrPreVendaDATA_ENTREGA: TDateField;
    qrPreVendaCODIGO_CLIENTE: TIntegerField;
    qrPreVendaNOME_CLIENTE: TStringField;
    qrPreVendaPAGAMENTO: TStringField;
    qrPreVendaSTATUS: TStringField;
    qrPreVendaSITUACAO: TStringField;
    qrPreVendaUSUARIO_ENTREGA: TStringField;
    qrPreVendaTP: TStringField;
    qrPreVendaOBSERVACOES: TStringField;
    qrPreVendaCOD_VENDEDOR: TIntegerField;
    qrPreVendaCOD_PAGTO: TIntegerField;
    qrPreVendaN_CUPOM: TStringField;
    qrPreVendaN_ECF: TStringField;
    qrPreVendaCOD_EMPRESA: TIntegerField;
    qrPreVendaHORA: TTimeField;
    qrPreVendaVALOR_ACRESCIMOS: TBCDField;
    qrPreVendaCOD_ORCAMENTO: TIntegerField;
    qrPreVendaCOD_PEDIDO: TIntegerField;
    qrPreVendaCOD_OS: TSmallintField;
    qrPreVendaNUM_NOTA: TIntegerField;
    qrPreVendaSERIE_NOTA: TStringField;
    qrPreVendaENDERECO: TStringField;
    qrPreVendaCPF_CNPJ: TStringField;
    qrPreVendaRG_IE: TStringField;
    qrPreVendaFONE: TStringField;
    qrPreVendaCIDADE: TStringField;
    qrPreVendaBAIRRO: TStringField;
    qrPreVendaN_PARTIDA: TStringField;
    qrPreVendaPROPRIEDADE: TStringField;
    qrPreVendaQUANT_VENDIDA: TBCDField;
    qrPreVendaSALDO_VENDIDO: TBCDField;
    qrPreVendaMED_VETERINARIO: TStringField;
    qrPreVendaDATA_VACINA: TDateField;
    qrPreVendaVALOR_AVISTA: TBCDField;
    qrPreVendaVALOR_PRAZO: TBCDField;
    qrPreVendaUF: TStringField;
    qrPreVendaCOD_IBGE: TStringField;
    qrPreVendaCEP: TStringField;
    qrPreVendaNUMERO: TStringField;
    qrPreVendaTIPO: TStringField;
    qrPreVendaVALOR_PAGO: TBCDField;
    qrPreVendaVALOR_TROCO: TBCDField;
    qrPreVendaENTREGADOR: TStringField;
    qrPreVendaTIPO_PEDIDO: TStringField;
    qrPreVendaFECHADO: TStringField;
    qrPreVendaMESA: TStringField;
    qrPreVendaREFERENCIA: TStringField;
    qrPreVendaCELULAR: TStringField;
    qrPreVendaPROD_RURAL: TStringField;
    qrPreVendaIE_PRODUTOR: TStringField;
    qrPreVendaVLR_PIS: TBCDField;
    qrPreVendaVLR_COFINS: TBCDField;
    qrPreVendaKM: TIntegerField;
    qrPreVendaCHAVE_FP: TStringField;
    qrPreVendaCHAVE_FP_CANCEL: TStringField;
    qrPreVendaCUPON_CANCELADO: TStringField;
    qrPreVendaCRZ: TIntegerField;
    qrPreVendaCHEK_BOX: TStringField;
    qrPreVendaANO: TIntegerField;
    qrPreVendaMODELO_NF: TStringField;
    qrPreVendaCFOP_NF: TStringField;
    qrPreVendaCOD_OS_AUTO: TIntegerField;
    dsPreVenda: TDataSource;
    qrPrevenda_Itens: TFDQuery;
    qrPrevenda_ItensCODIGO: TIntegerField;
    qrPrevenda_ItensCODIGO_ID: TIntegerField;
    qrPrevenda_ItensITEN: TIntegerField;
    qrPrevenda_ItensCODIGO_PROD: TIntegerField;
    qrPrevenda_ItensCODIGO_PRODUTO: TStringField;
    qrPrevenda_ItensDESCRICAO_PRODUTO: TStringField;
    qrPrevenda_ItensPRECO_UNITARIO: TFloatField;
    qrPrevenda_ItensDESCONTO: TBCDField;
    qrPrevenda_ItensQUANTIDADE: TBCDField;
    qrPrevenda_ItensPRECO_TOTAL: TBCDField;
    qrPrevenda_ItensCOMISSAO: TBCDField;
    qrPrevenda_ItensDEV: TStringField;
    qrPrevenda_ItensQNT_DEV: TBCDField;
    qrPrevenda_ItensVAL_DEV: TBCDField;
    qrPrevenda_ItensENC_FINANCEIRO: TBCDField;
    qrPrevenda_ItensUNIDADE: TStringField;
    qrPrevenda_ItensSIT_TRIBUTARIA: TStringField;
    qrPrevenda_ItensVENDEDOR: TIntegerField;
    qrPrevenda_ItensFRACAO: TIntegerField;
    qrPrevenda_ItensCOD_NCM: TStringField;
    qrPrevenda_ItensPROD_SERV: TStringField;
    qrPrevenda_ItensPERC_ISS: TBCDField;
    qrPrevenda_ItensBASE_ISS: TBCDField;
    qrPrevenda_ItensVL_ISS: TBCDField;
    qrPrevenda_ItensPERC_ICM: TBCDField;
    qrPrevenda_ItensBASE_ICMS: TBCDField;
    qrPrevenda_ItensVL_ICM: TBCDField;
    qrPrevenda_ItensPERC_IPI: TBCDField;
    qrPrevenda_ItensBASE_IPI: TBCDField;
    qrPrevenda_ItensVL_IPI: TBCDField;
    qrPrevenda_ItensPERC_COFINS: TBCDField;
    qrPrevenda_ItensBASE_COFINS: TBCDField;
    qrPrevenda_ItensVL_COFINS: TBCDField;
    qrPrevenda_ItensPERC_ICMS_SUBST: TBCDField;
    qrPrevenda_ItensBASE_ICMS_SUBST: TBCDField;
    qrPrevenda_ItensVL_ICMS_SUBST: TBCDField;
    qrPrevenda_ItensPERC_PIS: TBCDField;
    qrPrevenda_ItensBASE_PIS: TBCDField;
    qrPrevenda_ItensVL_PIS: TBCDField;
    qrPrevenda_ItensIMPRIME: TStringField;
    qrPrevenda_ItensCOD_EMPRESA: TIntegerField;
    qrPrevenda_ItensID_BICO: TIntegerField;
    qrPrevenda_ItensID_TANQUE: TStringField;
    qrPrevenda_ItensID_BOMBA: TStringField;
    qrPrevenda_ItensBICO: TStringField;
    dsPrevendaItens: TDataSource;
    Edit3: TEdit;
    qrPrevendaRel: TfrxDBDataset;
    qrPrevendaItemRel: TfrxDBDataset;
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton7Click(Sender: TObject);
    procedure suiDBGrid1CellClick(Column: TColumn);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure suiDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure AlteradadosdoCliente1Click(Sender: TObject);
    procedure Action11Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Selecao_Grade(Tipo : Integer);
  end;

var
  FConsultaPreVenda: TFConsultaPreVenda;

implementation

uses ModulodeDados, ConsClientes, Principal, ModulodeDadosConsultas3,
  Z_RotinasGerais, ClientesaddPedido;

{$R *.dfm}

procedure TFConsultaPreVenda.ClienteButtonClick(Sender: TObject);
begin
  DM.SDS_Clientes.Active:= False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
  DM.SDS_Clientes.Active:= True;

  FormConsClientes:=TFormConsClientes.Create(self);
  FormConsClientes.Edit1.Text := Cliente.Text;
  FormConsClientes.ShowModal;
  edit1.text   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Cliente.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFConsultaPreVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  FConsultaPreVenda:=nil;
end;

procedure TFConsultaPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_F1) then
  begin
    FormPrincipal.Calculator.Execute;
  end;
end;

procedure TFConsultaPreVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then close;
  if not (ActiveControl is TDBLookupComboBox) then
  If Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  End;
end;

procedure TFConsultaPreVenda.FormPaint(Sender: TObject);
begin
  Application.ProcessMessages;
  Application.ProcessMessages;
end;

procedure TFConsultaPreVenda.FormShow(Sender: TObject);
begin
  qrPreVenda.Close;
  qrPrevenda_Itens.Close;
  DateEdit1.SetFocus;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;

  suiDBGrid1.SetFocus;
  if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'N' then
  begin
    l_total.visible := False;
    V_total.visible := False;
    L_avista.visible := False;
    L_prazo.visible := false;
    V_avista.visible := false;
    V_prazo.visible := False;
  end else
  if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'S' then
  begin
    l_total.visible := True;
    L_avista.visible := True;
    L_prazo.visible := True;
    V_total.visible := True;
    V_avista.visible := True;
    V_prazo.visible := True;
  end;

  suiButton1Click(Sender);
end;

procedure TFConsultaPreVenda.suiButton1Click(Sender: TObject);
var
  inicio, final, periodo, cli, venda, user :string;
begin
  inicio:=datetostr(DATE);
  final:=datetostr(DATE);

  inicio:=dateedit1.TexT;
  final:=dateedit2.TexT;

  cli := cliente.Text;

  Venda := edit2.text;
  user :=   Edit4.text;

  qrPreVenda.Filtered := False;
  qrPreVenda.close;
  qrPreVenda.SQL.Clear;
  qrPreVenda.SQL.add('select * from PREVENDA where codigo >0' +'');
  if inicio >'  /  /    ' then
    qrPreVenda.SQL.add('and DATA_pedido >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+
    ' and DATA_PEDIDO<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
  if cli >'' then
    qrPreVenda.SQL.add('and CODIGO_CLIENTE ='+(cli)+'');
  if venda >'' then
    qrPreVenda.SQL.add('and codigo ='+(venda)+'');
  if user >'' then
    qrPreVenda.SQL.add('and USUARIO ='+QuotedStr(USER)+'');

  qrPreVenda.SQL.add('ORDER BY Codigo ASC');
  qrPreVenda.Open;
  qrPrevenda_Itens.Open;

  if DateEdit1.text <> '  /  /    ' then
    periodo := ' and data_pedido >= :datai and data_pedido <= :dataf ';

  if Cliente.TEXT = '' then
    cli := ''
  else
    cli := ' and codigo_cliente = ''' + Cliente.TEXT + '''';

  if edit2.TEXT = '' then
    VENDA := ''
  else
    VENDA := ' and codigo = ''' + Edit2.TEXT + '''';

  if edit4.TEXT = '' then
    user := ''
  else
    user := ' and USUARIO = ''' + Edit4.TEXT + '''';



  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR_TOTAL) valor_TOTAL, sum(VALOR_AVISTA) valor_AVISTA, sum(VALOR_PRAZO) valor_PRAZO ' + // sum_0 A VENCER
      'from prevenda where codigo is not null ' + periodo + cli + venda);
  if DateEdit1.text <> '  /  /    ' then
  BEGIN
    Qrsoma.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
    Qrsoma.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  end;
  Qrsoma.open;

  V_AVISTA.Value := Qrsoma.FieldByName('VALOR_AVISTA').asfloat;
  v_PRAZO.Value := Qrsoma.FieldByName('VALOR_PRAZO').asfloat;
  v_TOTAL.Value := Qrsoma.FieldByName('VALOR_TOTAL').asfloat;
  q_VENDAS.Text  := IntToStr(dm.sds_vendas.RecordCount);

  suiDBGrid1.refresh;
  qrPreVenda.Last;
end;

procedure TFConsultaPreVenda.ClienteChange(Sender: TObject);
begin
  if (Cliente.Text>='A') AND (Cliente.Text<='Z') then
    EDIT3.Text:='LETRAS';

  IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
    EDIT3.Text:='NUMEROS';

  IF Cliente.Text='' THEN
    EDIT3.Text:=''
end;

procedure TFConsultaPreVenda.ClienteExit(Sender: TObject);
begin
  DM.SDS_Clientes.Filtered := False;

  if edit3.Text='LETRAS' THEN
  begin
    dm.SDS_Clientes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
    dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
    dm.SDS_Clientes.Active := True;

    ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);


    IF ACHOU=FALSE THEN
    begin
      ClienteButtonClick(sender);
    end;

    IF ACHOU=TRUE THEN
    begin
      edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
     end;
  end
  else
  IF EDIT3.Text='NUMEROS' THEN
  BEGIN
    IF Cliente.text > '999999' then
    begin
      Cliente.Text := '';
      Cliente.SetFocus;
    end
    else
    dm.SDS_Clientes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
    dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
    dm.SDS_Clientes.Active := True;
    ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

    IF ACHOU=FALSE THEN
    begin
      SHOWMESSAGE('Codigo do Cliente Não Localizado');
      Cliente.SetFocus;
    end
    else
    IF ACHOU=TRUE THEN
    begin
      Edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
    end;
  end;
end;

procedure TFConsultaPreVenda.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF Key =#13 then
  BEGIN
    if edit3.Text='LETRAS' THEN
    BEGIN
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;

      ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

      IF ACHOU=FALSE THEN
      begin
        ClienteButtonClick(sender);
      end
      ELSE
      IF ACHOU=TRUE THEN
      BEGIN
        Cliente.Text := DM.SDS_ClientesCODIGO.Text;
        EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
      end;
    end
    else
    IF EDIT2.Text='NUMEROS' THEN
    BEGIN
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;

      ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

      IF ACHOU=FALSE THEN
        SHOWMESSAGE('Codigo do Cliente Não Localizado');

      IF ACHOU=TRUE THEN
        Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
    end;
  end;
end;

procedure TFConsultaPreVenda.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #8, #32]) then
    key := #0;
end;

procedure TFConsultaPreVenda.DateEdit1Enter(Sender: TObject);
begin
  CorEntrada(Sender);
end;

procedure TFConsultaPreVenda.DateEdit1Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFConsultaPreVenda.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z','a'..'z', #8, #32]) then
    key := #0;
end;

procedure TFConsultaPreVenda.suiButton7Click(Sender: TObject);
begin
  Cliente.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
  Edit1.Clear;
  Edit4.Clear;
end;

procedure TFConsultaPreVenda.suiDBGrid1CellClick(Column: TColumn);
begin
  suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TFConsultaPreVenda.suiDBGrid1DblClick(Sender: TObject);
begin
  selectnext(activecontrol,True,True);
end;

procedure TFConsultaPreVenda.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
VAR
  Check: Integer;
  R: TRect;
begin
  if not odd(DM.Sds_vendas.RecNo) then
  if not (gdselected in State) then
  begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;

  If DM.sds_vendasNUM_NOTA.AsInteger > 0 then
    SuiDbgrid1.Canvas.Font.Color:= clBlue;
  If DM.sds_vendasN_CUPOM.text > '' then
    SuiDbgrid1.Canvas.Font.Color:= clblue;
  If DM.sds_vendasSITUACAO.text = 'C' then
    SuiDbgrid1.Canvas.Font.Color:= clRed;
  suiDbgrid1.DefaultDrawDataCell(Rect, suidbgrid1.columns[datacol].field, State);

  if (Column.Field.FieldName = 'CHEK_BOX') and (not (gdFixed in State)) then
  begin
    // Desenha um campo em branco
    SuiDbgrid1.Canvas.FillRect(Rect);

    // Testa de a linha está selecionada ou não
    if SuiDbgrid1.SelectedRows.IndexOf(SuiDbgrid1.DataSource.DataSet.Bookmark) >= 0 then
      DrawFrameControl(SuiDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
    else
      DrawFrameControl(SuiDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;
end;

procedure TFConsultaPreVenda.suiDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_space then
  begin
    suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
  end;
end;

procedure TFConsultaPreVenda.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    selectnext(activecontrol,True,True);
    Close;
  end;
end;

procedure TFConsultaPreVenda.AlteradadosdoCliente1Click(Sender: TObject);
begin
  if DM.sds_vendasNUM_NOTA.Text > '' then
  begin
    ShowMessage('Nota fiscal ja emitida... Cliente não pode ser alterado.');
  end
  else
    DM.SDS_Clientes.Active:= False;

  DM.SDS_Clientes.Active:= True;
  FormAddClientesPedido:=TFormAddClientesPedido.Create(self);
  FormAddClientesPedido.ShowModal;
end;

procedure TFConsultaPreVenda.Action11Click(Sender: TObject);
begin
  Selecao_Grade(1);
end;

procedure TFConsultaPreVenda.D1Click(Sender: TObject);
begin
  Selecao_Grade(2);
end;

procedure TFConsultaPreVenda.I1Click(Sender: TObject);
begin
  Selecao_Grade(3);
end;

Procedure TFConsultaPreVenda.Selecao_Grade(Tipo : Integer);
Begin
  //DM.sds_vendas.DisableControls;
  DM.sds_vendas.First;
  While not DM.sds_vendas.Eof do
  Begin
    If Tipo = 1 then// Marcar todos
      suiDBGrid1.SelectedRows.CurrentRowSelected := True
    Else
    If Tipo = 2 then  // Desmarcar todas
      suiDBGrid1.SelectedRows.CurrentRowSelected := False
    Else
    If Tipo = 3 then  // Alternar seleção
      suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;

    DM.sds_vendas.Next;
  End;
  DM.sds_vendas.First;
  //DM.sds_vendas.EnableControls;
End;

procedure TFConsultaPreVenda.suiButton2Click(Sender: TObject);
var
  qrPrevenda,qrPrevendaItem: TFDQuery;
begin
  try
    frxReport.LoadFromFile('rel/ImpimirPrevendaConsulta.fr3');

    qrPrevenda:= TFDQuery.Create(nil);
    qrPrevenda.Connection:= DM.Coneccao;
    qrPrevenda.SQL.Add('SELECT '+
    'EP.NOME_FANTASIA AS NOME_EMPRESA,'+
    'PR.CODIGO AS CODIGO_PREVENDA, '+
    'CL.CODIGO AS CLIENTE_CODIGO,'+
    'CL.NOME_RS AS CLIENTE_NOME,'+
    'CL.CPF_CNPJ AS CLIENTE_CPF_CNPJ,'+
    'CL.RG_IE AS CLIENTE_RG,'+
    'PR.DATA_PEDIDO AS DATA_COMPRA,'+
    'CL.ENDERECO AS CLIENTE_ENDERECO,'+
    'CL.BAIRRO AS CLIENTE_BAIRRO,'+
    'CL.CIDADE AS CLIENTE_CIDADE,'+
    'CL.UF AS CLIENTE_UF,'+
    'CL.COMPLEMENTO AS CLIENTE_COMPLEMENTO, '+
    'CL.TELEFONE AS CLIENTE_TELEFONE1, '+
    'CL.TELEFONE2 AS CLIENTE_TELEFONE2, '+
    'CL.CELULAR AS CLIENTE_CELULAR, '+
    'US.USUARIO AS VENDEDOR, '+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 1)  AS DINHEIRO,'+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 7)  AS CHEQUE_VISTA,'+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 3)  AS CHEQUE_PRAZO, '+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 2)  AS CARTAO_DEBITO,'+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 13)  AS CARTAO_CREDITO, '+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 4)  AS CREDIARIO '+
    'FROM PREVENDA PR '+
    'INNER JOIN empresa EP ON EP.CODIGO = PR.COD_EMPRESA '+
    'INNER JOIN CLIENTES CL ON CL.CODIGO = PR.CODIGO_CLIENTE '+
    'INNER JOIN USUARIOS US ON US.CODIGO = PR.COD_VENDEDOR '+
    ' WHERE PR.CODIGO = ' + IntToStr(dsPreVenda.DataSet.fieldbyname('CODIGO').AsInteger));
    qrPrevenda.Open;
    qrPrevendaRel.DataSet:= qrPrevenda;

    qrPrevendaItem:= TFDQuery.Create(nil);
    qrPrevendaItem.Connection:= DM.Coneccao;
    qrPrevendaItem.SQL.Add('SELECT '+
    'PRI.CODIGO AS CODIGO_ITEM, '+
    'PRI.CODIGO_PRODUTO AS ITEM_CODIGO, '+
    'PR.DESCRICAO AS ITEM_NOME, '+
    'PR.UND_TRIB AS ITEM_UND, '+
    'PRI.QUANTIDADE AS ITEM_QUANTIDADE, '+
    'PRI.PRECO_UNITARIO AS ITEM_PRECO_UNITARIO, '+
    'PRI.PRECO_TOTAL AS ITEM_TOTAL, '+
    'PRI.DESCONTO AS ITEM_DESCONTO '+
    'FROM PREVENDA_ITENS PRI '+
    'INNER JOIN PRODUTOS PR ON PR.CODIGO = PRI.CODIGO_PROD '+
    ' WHERE PRI.CODIGO_ID = ' + IntToStr(qrPrevenda.fieldbyname('CODIGO_PREVENDA').AsInteger));

    qrPrevendaItem.Open;
    qrPrevendaItemRel.DataSet:= qrPrevendaItem;

    frxReport.ShowReport;
  except
    ShowMessage('Erro ao tentar Imprimir!');
  end;
end;

procedure TFConsultaPreVenda.suiButton3Click(Sender: TObject);
begin
  close;
end;

end.
