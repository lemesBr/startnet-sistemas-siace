unit CaixaEspecifico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, RXCtrls, ExtCtrls, 
  StdCtrls, Mask,  SUIButton, SUIDlg, SUIEdit, DBCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, TaskDialog,
  sLabel, acDBGrid, sDBNavigator, sDBLookupComboBox, sMaskEdit,
  sCustomComboEdit, sTooledit, sBitBtn, sPanel, sCheckBox, RxToolEdit,
  RxCurrEdit, AdvGlowButton;

type
  TFormCaixaEspecifico = class(TForm)
    Panel3: TsPanel;
    DBGrid1: TsDBGrid;
    Panel2: TsPanel;
    BTRelatorio: TAdvGlowButton;
    suiDBNavigator1: TsDBNavigator;
    Panel1: TsPanel;
    RxLabel6: TsLabel;
    RxLabel7: TsLabel;
    RxLabel9: TsLabel;
    BTVisualizar: TAdvGlowButton;
    DateEdit1: TsDateEdit;
    DateEdit2: TsDateEdit;
    myLabel3d1: TsLabel;
    Edit1: TsDBLookupComboBox;
    suiButton1: TAdvGlowButton;
    qry_ven: TSQLQuery;
    qry_venCODIGO: TIntegerField;
    qry_venDATA: TDateField;
    qry_venHISTORICO: TStringField;
    qry_venUSUARIO: TStringField;
    qry_venTIPO: TStringField;
    qry_venVALOR_ENTRADA: TFMTBCDField;
    qry_venVALOR_SAIDA: TFMTBCDField;
    qry_venORIGEM: TStringField;
    dsp_ven: TDataSetProvider;
    Cds_ven: TClientDataSet;
    Cds_venCODIGO: TIntegerField;
    Cds_venDATA: TDateField;
    Cds_venHISTORICO: TStringField;
    Cds_venUSUARIO: TStringField;
    Cds_venTIPO: TStringField;
    Cds_venVALOR_ENTRADA: TFMTBCDField;
    Cds_venVALOR_SAIDA: TFMTBCDField;
    Cds_venORIGEM: TStringField;
    Dts_ven: TDataSource;
    qry_rec: TSQLQuery;
    qry_recCODIGO: TIntegerField;
    qry_recDATA: TDateField;
    qry_recHISTORICO: TStringField;
    qry_recUSUARIO: TStringField;
    qry_recTIPO: TStringField;
    qry_recVALOR_ENTRADA: TFMTBCDField;
    qry_recVALOR_SAIDA: TFMTBCDField;
    qry_recORIGEM: TStringField;
    Dsp_rec: TDataSetProvider;
    cds_rec: TClientDataSet;
    cds_recCODIGO: TIntegerField;
    cds_recDATA: TDateField;
    cds_recHISTORICO: TStringField;
    cds_recUSUARIO: TStringField;
    cds_recTIPO: TStringField;
    cds_recVALOR_ENTRADA: TFMTBCDField;
    cds_recVALOR_SAIDA: TFMTBCDField;
    cds_recORIGEM: TStringField;
    dts_rec: TDataSource;
    qry_avu: TSQLQuery;
    qry_avuCODIGO: TIntegerField;
    qry_avuDATA: TDateField;
    qry_avuHISTORICO: TStringField;
    qry_avuUSUARIO: TStringField;
    qry_avuTIPO: TStringField;
    qry_avuVALOR_ENTRADA: TFMTBCDField;
    qry_avuVALOR_SAIDA: TFMTBCDField;
    qry_avuORIGEM: TStringField;
    dsp_avu: TDataSetProvider;
    cds_avu: TClientDataSet;
    cds_avuCODIGO: TIntegerField;
    cds_avuDATA: TDateField;
    cds_avuHISTORICO: TStringField;
    cds_avuUSUARIO: TStringField;
    cds_avuTIPO: TStringField;
    cds_avuVALOR_ENTRADA: TFMTBCDField;
    cds_avuVALOR_SAIDA: TFMTBCDField;
    cds_avuORIGEM: TStringField;
    dts_avu: TDataSource;
    QRY_FIN: TSQLQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    StringField4: TStringField;
    dsp_fin: TDataSetProvider;
    cds_fin: TClientDataSet;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    StringField8: TStringField;
    dts_fin: TDataSource;
    Qry_receber: TSQLQuery;
    dsp_receber: TDataSetProvider;
    cds_receber: TClientDataSet;
    dts_receber: TDataSource;
    Qry_receberCODIGO: TIntegerField;
    Qry_receberCODIGO_CLIENTE: TIntegerField;
    Qry_receberDATA_COMPRA: TDateField;
    Qry_receberDATA_VENCIMENTO: TDateField;
    Qry_receberDATA_BAIXA: TDateField;
    Qry_receberHISTORICO: TStringField;
    Qry_receberUSUARIO_VENDA: TStringField;
    Qry_receberUSUARIO_BAIXA: TStringField;
    Qry_receberSITUACAO: TStringField;
    Qry_receberVALOR_COMPRA: TFMTBCDField;
    Qry_receberVALOR_JUROS: TFMTBCDField;
    Qry_receberVALOR_ACRESCIMO: TFMTBCDField;
    Qry_receberVALOR_DESCONTO: TFMTBCDField;
    Qry_receberVALOR_PAGAR: TFMTBCDField;
    Qry_receberVALOR_PAGO: TFMTBCDField;
    Qry_receberVALOR_TOTAL: TFMTBCDField;
    Qry_receberCODIGO_COMPRA: TIntegerField;
    Qry_receberPARCELA: TStringField;
    Qry_receberNUMBOLETO: TStringField;
    Qry_receberBANCO_PORTADOR: TIntegerField;
    Qry_receberREMESSA: TStringField;
    Qry_receberDATACREDITO: TDateField;
    Qry_receberID_PORTADOR: TIntegerField;
    Qry_receberENVIADO: TStringField;
    Qry_receberCOD_EMPRESA: TIntegerField;
    Qry_receberNUMBOLETO1: TIntegerField;
    Qry_receberCODIGOCEDENTE: TStringField;
    Qry_receberTIPO: TStringField;
    Qry_receberCHEK_BOX: TStringField;
    Qry_receberNUM_NOTA: TIntegerField;
    Qry_receberSERIE_NOTA: TStringField;
    Qry_receberNOME_SACADO: TStringField;
    Qry_receberANO: TStringField;
    Qry_receberMES: TStringField;
    Qry_receberTP_BAIXA: TStringField;
    cds_receberCODIGO: TIntegerField;
    cds_receberCODIGO_CLIENTE: TIntegerField;
    cds_receberDATA_COMPRA: TDateField;
    cds_receberDATA_VENCIMENTO: TDateField;
    cds_receberDATA_BAIXA: TDateField;
    cds_receberHISTORICO: TStringField;
    cds_receberUSUARIO_VENDA: TStringField;
    cds_receberUSUARIO_BAIXA: TStringField;
    cds_receberSITUACAO: TStringField;
    cds_receberVALOR_COMPRA: TFMTBCDField;
    cds_receberVALOR_JUROS: TFMTBCDField;
    cds_receberVALOR_ACRESCIMO: TFMTBCDField;
    cds_receberVALOR_DESCONTO: TFMTBCDField;
    cds_receberVALOR_PAGAR: TFMTBCDField;
    cds_receberVALOR_PAGO: TFMTBCDField;
    cds_receberVALOR_TOTAL: TFMTBCDField;
    cds_receberCODIGO_COMPRA: TIntegerField;
    cds_receberPARCELA: TStringField;
    cds_receberNUMBOLETO: TStringField;
    cds_receberBANCO_PORTADOR: TIntegerField;
    cds_receberREMESSA: TStringField;
    cds_receberDATACREDITO: TDateField;
    cds_receberID_PORTADOR: TIntegerField;
    cds_receberENVIADO: TStringField;
    cds_receberCOD_EMPRESA: TIntegerField;
    cds_receberNUMBOLETO1: TIntegerField;
    cds_receberCODIGOCEDENTE: TStringField;
    cds_receberTIPO: TStringField;
    cds_receberCHEK_BOX: TStringField;
    cds_receberNUM_NOTA: TIntegerField;
    cds_receberSERIE_NOTA: TStringField;
    cds_receberNOME_SACADO: TStringField;
    cds_receberANO: TStringField;
    cds_receberMES: TStringField;
    cds_receberTP_BAIXA: TStringField;
    RxLabel2: TsLabel;
    CurrencyEdit3: TCurrencyEdit;
    RxLabel12: TsLabel;
    CurrencyEdit4: TCurrencyEdit;
    RxLabel16: TsLabel;
    CurrencyEdit5: TCurrencyEdit;
    RxLabel5: TsLabel;
    CurrencyEdit6: TCurrencyEdit;
    RxLabel8: TsLabel;
    CurrencyEdit7: TCurrencyEdit;
    RxLabel18: TsLabel;
    CurrencyEdit8: TCurrencyEdit;
    RxLabel10: TsLabel;
    CurrencyEdit9: TCurrencyEdit;
    RxLabel14: TsLabel;
    CurrencyEdit10: TCurrencyEdit;
    Cds_venSOMAVALOR_VENDA: TAggregateField;
    cds_recSOMAVALOR_REC: TAggregateField;
    cds_avuSOMAVALOR_SAIDA: TAggregateField;
    cds_avuSOMAVALOR_ENT: TAggregateField;
    cds_finSOMAVALOR_FIN: TAggregateField;
    cds_receberSOMAVALOR_RECEBER: TAggregateField;
    cds_receberCOUNT_RECEBER: TAggregateField;
    RxLabel19: TsLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel4: TsPanel;
    Cds_venSOMAVALOR_SAIDA: TAggregateField;
    RxLabel1: TsLabel;
    CurrencyEdit2: TCurrencyEdit;
    Qry_cheque: TSQLQuery;
    DSP_cheque: TDataSetProvider;
    cds_cheque: TClientDataSet;
    sds_chequeSOMAVALOR_CH: TAggregateField;
    Dts_cheques: TDataSource;
    Qry_chequeCODIGO: TIntegerField;
    Qry_chequeDATA: TDateField;
    Qry_chequeHISTORICO: TStringField;
    Qry_chequeUSUARIO: TStringField;
    Qry_chequeTIPO: TStringField;
    Qry_chequeVALOR_ENTRADA: TFMTBCDField;
    Qry_chequeVALOR_SAIDA: TFMTBCDField;
    Qry_chequeORIGEM: TStringField;
    cds_chequeCODIGO: TIntegerField;
    cds_chequeDATA: TDateField;
    cds_chequeHISTORICO: TStringField;
    cds_chequeUSUARIO: TStringField;
    cds_chequeTIPO: TStringField;
    cds_chequeVALOR_ENTRADA: TFMTBCDField;
    cds_chequeVALOR_SAIDA: TFMTBCDField;
    cds_chequeORIGEM: TStringField;
    Qry_Cartao: TSQLQuery;
    Qry_CartaoCODIGO: TIntegerField;
    Qry_CartaoCODIGO_BANDEIRA: TIntegerField;
    Qry_CartaoDOCUMENTO: TStringField;
    Qry_CartaoEMISSAO: TDateField;
    Qry_CartaoVENCIMENTO: TDateField;
    Qry_CartaoDATA_PAGAMENTO: TDateField;
    Qry_CartaoCOD_CAI: TIntegerField;
    Qry_CartaoCOD_EMP: TIntegerField;
    Qry_CartaoCOD_VEN: TIntegerField;
    Qry_CartaoVALOR: TFloatField;
    Qry_CartaoVALOR_PAGO: TFloatField;
    Qry_CartaoACRESCIMO: TFloatField;
    Qry_CartaoDESCONTO: TFloatField;
    Qry_CartaoTAXA: TFloatField;
    Qry_CartaoCODIGO_DUPLICATA: TIntegerField;
    Qry_CartaoCOD_CLI: TIntegerField;
    Qry_CartaoPARCELA: TIntegerField;
    Qry_CartaoUSUARIO: TStringField;
    Qry_CartaoNOME_RS: TStringField;
    Dsp_cartao: TDataSetProvider;
    cds_cartao: TClientDataSet;
    cds_cartaoCODIGO: TIntegerField;
    cds_cartaoCODIGO_BANDEIRA: TIntegerField;
    cds_cartaoDOCUMENTO: TStringField;
    cds_cartaoEMISSAO: TDateField;
    cds_cartaoVENCIMENTO: TDateField;
    cds_cartaoDATA_PAGAMENTO: TDateField;
    cds_cartaoCOD_CAI: TIntegerField;
    cds_cartaoCOD_EMP: TIntegerField;
    cds_cartaoCOD_VEN: TIntegerField;
    cds_cartaoVALOR: TFloatField;
    cds_cartaoVALOR_PAGO: TFloatField;
    cds_cartaoACRESCIMO: TFloatField;
    cds_cartaoDESCONTO: TFloatField;
    cds_cartaoTAXA: TFloatField;
    cds_cartaoCODIGO_DUPLICATA: TIntegerField;
    cds_cartaoCOD_CLI: TIntegerField;
    cds_cartaoPARCELA: TIntegerField;
    cds_cartaoUSUARIO: TStringField;
    cds_cartaoNOME_RS: TStringField;
    cds_cartaovalor_total: TAggregateField;
    Dts_cartao: TDataSource;
    RxLabel3: TsLabel;
    CurrencyEdit11: TCurrencyEdit;
    RxLabel4: TsLabel;
    CurrencyEdit12: TCurrencyEdit;
    Qry_cheques_emitidos: TSQLQuery;
    Dsp_cheques_emitidos: TDataSetProvider;
    Cds_cheques_emitidos: TClientDataSet;
    Cds_cheques_emitidosCOD_CHEQUE: TIntegerField;
    Cds_cheques_emitidosVALOR: TFMTBCDField;
    Cds_cheques_emitidosDATA_EMISSAO: TDateField;
    Cds_cheques_emitidosDATA_VENCIMENTO: TDateField;
    Cds_cheques_emitidosPAGO: TStringField;
    Cds_cheques_emitidosORIGEM: TStringField;
    Cds_cheques_emitidosDOCUMENTO_ORIGEM: TIntegerField;
    Cds_cheques_emitidosCOD_CONTA: TIntegerField;
    Cds_cheques_emitidosCOMP_NA_INCLUSAO: TStringField;
    Cds_cheques_emitidosDATA_COMPENSACAO: TDateField;
    Cds_cheques_emitidosHISTORICO: TStringField;
    Cds_cheques_emitidosNUMERO_CHEQUE: TIntegerField;
    Cds_cheques_emitidosCOD_USUARIO: TIntegerField;
    Cds_cheques_emitidosCOD_EMPRESA: TIntegerField;
    Cds_cheques_emitidosTROCO: TStringField;
    Cds_cheques_emitidosFAVORECIDO: TStringField;
    Cds_cheques_emitidosCOD_VENDA: TIntegerField;
    Cds_cheques_emitidosCOD_COMPRA: TIntegerField;
    Cds_cheques_emitidosOBSERVACAO: TStringField;
    Cds_cheques_emitidosValor_Total: TAggregateField;
    Dts_cheques_emitidos: TDataSource;
    Qry_cheques_emitidosCOD_CHEQUE: TIntegerField;
    Qry_cheques_emitidosVALOR: TFMTBCDField;
    Qry_cheques_emitidosDATA_EMISSAO: TDateField;
    Qry_cheques_emitidosDATA_VENCIMENTO: TDateField;
    Qry_cheques_emitidosPAGO: TStringField;
    Qry_cheques_emitidosORIGEM: TStringField;
    Qry_cheques_emitidosDOCUMENTO_ORIGEM: TIntegerField;
    Qry_cheques_emitidosCOD_CONTA: TIntegerField;
    Qry_cheques_emitidosCOMP_NA_INCLUSAO: TStringField;
    Qry_cheques_emitidosDATA_COMPENSACAO: TDateField;
    Qry_cheques_emitidosHISTORICO: TStringField;
    Qry_cheques_emitidosNUMERO_CHEQUE: TIntegerField;
    Qry_cheques_emitidosCOD_USUARIO: TIntegerField;
    Qry_cheques_emitidosCOD_EMPRESA: TIntegerField;
    Qry_cheques_emitidosTROCO: TStringField;
    Qry_cheques_emitidosFAVORECIDO: TStringField;
    Qry_cheques_emitidosCOD_VENDA: TIntegerField;
    Qry_cheques_emitidosCOD_COMPRA: TIntegerField;
    Qry_cheques_emitidosOBSERVACAO: TStringField;
    Qry_cheques_emitidosUSUARIO: TStringField;
    Cds_cheques_emitidosUSUARIO: TStringField;
    CheckBox1: TsCheckBox;
    RxLabel11: TsLabel;
    CurrencyEdit13: TCurrencyEdit;
    cds_chequeSOMAVALOR_SAIDA: TAggregateField;
    RxLabel13: TsLabel;
    CurrencyEdit14: TCurrencyEdit;
    MsgNenhumRegistro: TAdvTaskDialog;
    MsgData: TAdvTaskDialog;
    CurrencyEdit16: TCurrencyEdit;
    Qry_saldo: TSQLQuery;
    Qry_saldoCODIGO: TIntegerField;
    Qry_saldoDATA: TDateField;
    Qry_saldoHISTORICO: TStringField;
    Qry_saldoUSUARIO: TStringField;
    Qry_saldoTIPO: TStringField;
    Qry_saldoVALOR_ENTRADA: TFMTBCDField;
    Qry_saldoVALOR_SAIDA: TFMTBCDField;
    Qry_saldoORIGEM: TStringField;
    DSPSALDO: TDataSetProvider;
    cds_saldo: TClientDataSet;
    cds_saldoCODIGO: TIntegerField;
    cds_saldoDATA: TDateField;
    cds_saldoHISTORICO: TStringField;
    cds_saldoUSUARIO: TStringField;
    cds_saldoTIPO: TStringField;
    cds_saldoVALOR_ENTRADA: TFMTBCDField;
    cds_saldoVALOR_SAIDA: TFMTBCDField;
    cds_saldoORIGEM: TStringField;
    cds_saldoSOMAVALOR_SAIDA: TAggregateField;
    cds_saldoSOMAVALOR_ENTRADA: TAggregateField;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BTRelatorioClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BTVisualizarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     entrada, saida, saldo_ini : Real;
  end;

var
  FormCaixaEspecifico: TFormCaixaEspecifico;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, ModulodeDadosBaixas,
  ModulodeDadosRelatorios, ModulodeDados, Principal, RelatorioCaixaespecifico;

{$R *.dfm}

procedure TFormCaixaEspecifico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCaixaEspecifico:=nil;
end;

procedure TFormCaixaEspecifico.BTVisualizarClick(Sender: TObject);
var
ch, E, EA, S, TOTAL ,P ,SALDO, R, F, pag, cartao, che_emi: string;
  inicio, final, vendedor, troco :string;
  saldo1: Real;
  begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    vendedor := edit1.Text;
    troco := 'T';

If DateEdit2.Date < DateEdit1.Date then
begin
MsgData.Execute;
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
  if CheckBox1.Checked = True then
  begin
    DMC2.SQLD_MOV_CaixaEspecifico.Active:=False;
    DMC2.CDS_MOV_CaixaEspecifico.Active:=False;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[2].AsString:=Edit1.Text;
    DMC2.SQLD_MOV_CaixaEspecifico.Active:=True;
    DMC2.CDS_MOV_CaixaEspecifico.Active:=True;
    Cds_ven.Active :=FALSE;

    qry_ven.close;
    qry_ven.SQL.Clear;
    qry_ven.SQL.add('select * from V_MOVIMENTO_CAIXA_VEN where CODIGO >0'+'');
    qry_ven.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_ven.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_ven.Open;
    Cds_ven.Active :=TRUE;

    cds_rec.Active :=FALSE;
    qry_rec.close;
    qry_REC.SQL.Clear;
    qry_REC.SQL.add('select * from V_MOVIMENTO_CAIXA_REC where CODIGO >0'+'');
    qry_REC.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_REC.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_REC.Open;
    Cds_REC.Active :=TRUE;

    cds_avu.Active :=FALSE;
    qry_AVU.close;
    qry_AVU.SQL.Clear;
    qry_avu.SQL.add('select * from V_MOVIMENTO_CAIXA_avu where CODIGO >0'+'');
    qry_avu.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_avu.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_avu.Open;
    cds_avu.Active :=TRUE;

    cds_fin.Active :=FALSE;
    QRY_FIN.close;
    qry_fin.SQL.Clear;
    qry_fin.SQL.add('select * from V_MOVIMENTO_CAIXA_FIN where CODIGO >0'+'');
    qry_fin.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_fin.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_fin.Open;
    cds_fin.Active :=TRUE;

    cds_cheque.Active :=FALSE;
    Qry_cheque.close;
    Qry_cheque.SQL.Clear;
    Qry_cheque.SQL.add('select * from V_MOVIMENTO_CAIXA_CH where CODIGO >0'+'');
    Qry_cheque.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_cheque.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    Qry_cheque.Open;
    cds_cheque.Active :=TRUE;

    cds_receber.Active :=FALSE;
    Qry_receber.close;
    Qry_receber.SQL.Clear;
    Qry_receber.SQL.add('select * from CREDIARIO where CODIGO_COMPRA IS NOT NULL '+'');
    Qry_receber.SQL.add('and USUARIO_VENDA ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_receber.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_receber.SQL.add('ORDER BY CODIGO_COMPRA ASC');
    Qry_receber.Open;
    cds_receber.Active :=TRUE;

    cds_cartao.Active :=FALSE;
    Qry_cartao.close;
    Qry_cartao.SQL.Clear;
    Qry_cartao.SQL.add('SELECT A.*, C.NOME_RS FROM CONTAS_RECEBER_ADM_CARTAO A INNER JOIN CLIENTES C ON (A.COD_CLI=C.CODIGO) where COD_EMP >0'+'');
    Qry_cartao.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_cartao.SQL.add('and EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cartao.SQL.add('ORDER BY CODIGO ASC');
    Qry_cartao.Open;
    cds_cartao.Active :=TRUE;

    Cds_cheques_emitidos.Active :=FALSE;
    Qry_cheques_emitidos.close;
    Qry_cheques_emitidos.SQL.Clear;
    Qry_cheques_emitidos.SQL.add('SELECT C.*, USUARIOS.USUARIO FROM CHEQUES_EMITIDOS C INNER JOIN USUARIOS ON (C.COD_USUARIO=USUARIOS.CODIGO) where COD_EMPRESA > 0'+'');
    if inicio > ' / /   ' then
    Qry_cheques_emitidos.SQL.add('and DATA_EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cheques_emitidos.SQL.add('and TROCO ='+QuotedStr(troco)+'');
    Qry_cheques_emitidos.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    Qry_cheques_emitidos.SQL.add('ORDER BY COD_CHEQUE ASC');
    Qry_cheques_emitidos.Open;
    Cds_cheques_emitidos.Active :=TRUE;

    DMC2.QRY_SALDO_ANT_CAIXA.Active:=False;
    DMC2.CDS_SALDO_A_CAIXA.Active:=False;
    DMC2.QRY_SALDO_ANT_CAIXA.Params[0].AsDate:=DateEdit1.Date;
    DMC2.QRY_SALDO_ANT_CAIXA.Params[1].AsString := Edit1.Text;
    DMC2.QRY_SALDO_ANT_CAIXA.Active:=True;
    DMC2.cds_saldo_a_caixa.Active:=True;

SALDO1 := DMC2.CDS_SALDO_A_CAIXAENTRADA.asfloat - DMC2.CDS_SALDO_A_CAIXASAIDA.asfloat;


pag := cds_vensomavalor_saida.text;
E:= Cds_venSOMAVALOR_VENDA.Text;
S:= cds_avuSOMAVALOR_SAIDA.Text;
EA:= cds_avuSOMAVALOR_ENT.Text;
P:= cds_receberSOMAVALOR_RECEBER.Text;
R:= cds_recSOMAVALOR_REC.Text;
F:= cds_finSOMAVALOR_FIN.TEXT;
ch:= sds_chequeSOMAVALOR_CH.text;
cartao := cds_cartaovalor_total.Text;
che_emi := Cds_cheques_emitidosVALOR_total.Text;

CurrencyEdit3.Text :=E;
CurrencyEdit6.Text:= S;
CurrencyEdit5.Text:= EA;
CurrencyEdit4.Text:= R;
CurrencyEdit8.Text:= F;
CurrencyEdit9.Text:= P;
CurrencyEdit1.text:= pag;
CurrencyEdit2.text:= ch;
CurrencyEdit11.Text := Cartao;
CurrencyEdit12.Text := che_emi;
CurrencyEdit13.value := saldo1;
CurrencyEdit14.text := cds_chequeSOMAVALOR_SAIDA.Text;


CurrencyEdit7.VALUE:= ((saldo1 + CurrencyEdit3.Value + CurrencyEdit4.Value + CurrencyEdit5.Value) - (CurrencyEdit6.Value + CurrencyEdit1.Value));
CurrencyEdit10.VALUE := (CurrencyEdit7.VALUE + CurrencyEdit11.value + CurrencyEdit12.value + CurrencyEdit8.VALUE + CurrencyEdit9.VALUE + CurrencyEdit2.VALUE-CurrencyEdit14.Value);

BTRelatorio.Enabled:= True;
suiButton1.Enabled:= True;
end else
begin
    DMC2.SQLD_MOV_CaixaEspecifico.Active:=False;
    DMC2.CDS_MOV_CaixaEspecifico.Active:=False;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[2].AsString:=Edit1.Text;
    DMC2.SQLD_MOV_CaixaEspecifico.Active:=True;
    DMC2.CDS_MOV_CaixaEspecifico.Active:=True;
    Cds_ven.Active :=FALSE;

    qry_ven.close;
    qry_ven.SQL.Clear;
    qry_ven.SQL.add('select * from V_MOVIMENTO_CAIXA_VEN where CODIGO >0'+'');
    qry_ven.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_ven.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_ven.Open;
    Cds_ven.Active :=TRUE;

    cds_rec.Active :=FALSE;
    qry_rec.close;
    qry_REC.SQL.Clear;
    qry_REC.SQL.add('select * from V_MOVIMENTO_CAIXA_REC where CODIGO >0'+'');
    qry_REC.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_REC.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_REC.Open;
    Cds_REC.Active :=TRUE;

    cds_avu.Active :=FALSE;
    qry_AVU.close;
    qry_AVU.SQL.Clear;
    qry_avu.SQL.add('select * from V_MOVIMENTO_CAIXA_avu where CODIGO >0'+'');
    qry_avu.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_avu.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_avu.Open;
    cds_avu.Active :=TRUE;

    cds_fin.Active :=FALSE;
    QRY_FIN.close;
    qry_fin.SQL.Clear;
    qry_fin.SQL.add('select * from V_MOVIMENTO_CAIXA_FIN where CODIGO >0'+'');
    qry_fin.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_fin.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_fin.Open;
    cds_fin.Active :=TRUE;

    cds_cheque.Active :=FALSE;
    Qry_cheque.close;
    Qry_cheque.SQL.Clear;
    Qry_cheque.SQL.add('select * from V_MOVIMENTO_CAIXA_CH where CODIGO >0'+'');
    Qry_cheque.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_cheque.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    Qry_cheque.Open;
    cds_cheque.Active :=TRUE;

    cds_receber.Active :=FALSE;
    Qry_receber.close;
    Qry_receber.SQL.Clear;
    Qry_receber.SQL.add('select * from CREDIARIO where CODIGO_COMPRA IS NOT NULL'+'');
    Qry_receber.SQL.add('and USUARIO_VENDA ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_receber.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_receber.SQL.add('ORDER BY CODIGO_COMPRA ASC');
    Qry_receber.Open;
    cds_receber.Active :=TRUE;

    cds_cartao.Active :=FALSE;
    Qry_cartao.close;
    Qry_cartao.SQL.Clear;
    Qry_cartao.SQL.add('SELECT A.*, C.NOME_RS FROM CONTAS_RECEBER_ADM_CARTAO A INNER JOIN CLIENTES C ON (A.COD_CLI=C.CODIGO) where COD_EMP >0'+'');
    Qry_cartao.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_cartao.SQL.add('and EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cartao.SQL.add('ORDER BY CODIGO ASC');
    Qry_cartao.Open;
    cds_cartao.Active :=TRUE;

    Cds_cheques_emitidos.Active :=FALSE;
    Qry_cheques_emitidos.close;
    Qry_cheques_emitidos.SQL.Clear;
    Qry_cheques_emitidos.SQL.add('SELECT C.*, USUARIOS.USUARIO FROM CHEQUES_EMITIDOS C INNER JOIN USUARIOS ON (C.COD_USUARIO=USUARIOS.CODIGO) where COD_EMPRESA > 0'+'');
    if inicio > ' / /   ' then
    Qry_cheques_emitidos.SQL.add('and DATA_EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cheques_emitidos.SQL.add('and TROCO ='+QuotedStr(troco)+'');
    Qry_cheques_emitidos.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    Qry_cheques_emitidos.SQL.add('ORDER BY COD_CHEQUE ASC');
    Qry_cheques_emitidos.Open;
    Cds_cheques_emitidos.Active :=TRUE;

    
    cds_saldo.Active :=FALSE;
    Qry_saldo.close;
    Qry_saldo.SQL.Clear;
    Qry_saldo.SQL.add('select * from MOVIMENTO_DIARIO where SALDO_INICIAL >0'+'');
    Qry_cheque.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_saldo.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    Qry_saldo.Open;
    cds_saldo.Active :=TRUE;

pag := cds_vensomavalor_saida.text;
E:= Cds_venSOMAVALOR_VENDA.Text;
S:= cds_avuSOMAVALOR_SAIDA.Text;
EA:= cds_avuSOMAVALOR_ENT.Text;
P:= cds_receberSOMAVALOR_RECEBER.Text;
R:= cds_recSOMAVALOR_REC.Text;
F:= cds_finSOMAVALOR_FIN.TEXT;
ch:= sds_chequeSOMAVALOR_CH.TEXT;
cartao := cds_cartaovalor_total.Text;
che_emi := Cds_cheques_emitidosVALOR_total.Text;


CurrencyEdit3.Text :=E;
CurrencyEdit6.Text:= S;
CurrencyEdit5.Text:= EA;
CurrencyEdit4.Text:= R;
CurrencyEdit8.Text:= F;
CurrencyEdit9.Text:= P;
CurrencyEdit1.text:= pag;
CurrencyEdit2.text:= ch;
CurrencyEdit11.Text := Cartao;
CurrencyEdit12.Text := che_emi;
CurrencyEdit13.value := 0;
CurrencyEdit14.text := cds_chequeSOMAVALOR_SAIDA.Text;



CurrencyEdit16.Text := (cds_saldoSOMAVALOR_ENTRADA.TEXT);

saldo_ini := CurrencyEdit16.VALUE;
entrada := CurrencyEdit3.Value + CurrencyEdit5.Value - saldo_ini +  CurrencyEdit4.VALUE;
saida := CurrencyEdit6.Value + CurrencyEdit1.VALUE ;

CurrencyEdit7.VALUE:= ((CurrencyEdit3.Value + CurrencyEdit4.Value + CurrencyEdit5.Value) - (CurrencyEdit6.Value + CurrencyEdit1.Value));
CurrencyEdit10.VALUE := (CurrencyEdit7.VALUE + CurrencyEdit11.value + CurrencyEdit12.value + CurrencyEdit8.VALUE + CurrencyEdit9.VALUE + CurrencyEdit2.VALUE - CurrencyEdit14.Value);

BTRelatorio.Enabled:= True;
suiButton1.Enabled:= True;
end;
end;


procedure TFormCaixaEspecifico.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
DM.SDS_Usuarios.Active:= False;
DM.SDS_Usuarios.Active:= True;
DMC2.SQLD_MOV_CaixaEspecifico.Active:=False;
DMC2.CDS_MOV_CaixaEspecifico.Active:=False;
DateEdit1.Date := Date;
DateEdit2.Date := Date;
Edit1.SetFocus;
end;

procedure TFormCaixaEspecifico.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaEspecifico.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaEspecifico.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCaixaEspecifico.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCaixaEspecifico.BTRelatorioClick(Sender: TObject);
begin
IF FormPrincipal.RCAIXA = 'S' THEN
BEGIN
DMR.RvRelatorios.SetParam('datai',DateEdit1.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit2.Text);
DMR.RvRelatorios.SetParam('soma',CurrencyEdit7.Text);
DMR.RvRelatorios.SelectReport('Rp_CaixaEspecifico',False);
DMR.RvRelatorios.Execute;
end ELSE
BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;


procedure TFormCaixaEspecifico.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaEspecifico.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormCaixaEspecifico.BTVisualizarKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormCaixaEspecifico.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCaixaEspecifico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormCaixaEspecifico.suiButton1Click(Sender: TObject);
var
  inicio, final, vendedor, troco :string;
  begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    vendedor := edit1.Text;
     troco := 'T';

    Cds_ven.Active :=FALSE;
    qry_ven.close;
    qry_ven.SQL.Clear;
    qry_ven.SQL.add('select * from V_MOVIMENTO_CAIXA_VEN where CODIGO >0'+'');
    qry_ven.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_ven.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_ven.Open;
    Cds_ven.Active :=TRUE;

    cds_rec.Active :=FALSE;
    qry_rec.close;
    qry_REC.SQL.Clear;
    qry_REC.SQL.add('select * from V_MOVIMENTO_CAIXA_REC where CODIGO >0'+'');
    qry_REC.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_REC.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_REC.Open;
    Cds_REC.Active :=TRUE;

    cds_avu.Active :=FALSE;
    qry_AVU.close;
    qry_AVU.SQL.Clear;
    qry_avu.SQL.add('select * from V_MOVIMENTO_CAIXA_avu where CODIGO >0'+'');
    qry_avu.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_avu.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_avu.Open;
    cds_avu.Active :=TRUE;

    cds_fin.Active :=FALSE;
    QRY_FIN.close;
    qry_fin.SQL.Clear;
    qry_fin.SQL.add('select * from V_MOVIMENTO_CAIXA_FIN where CODIGO >0'+'');
    qry_fin.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    qry_fin.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_fin.Open;
    cds_fin.Active :=TRUE;

      cds_cheque.Active :=FALSE;
    Qry_cheque.close;
    Qry_cheque.SQL.Clear;
    Qry_cheque.SQL.add('select * from V_MOVIMENTO_CAIXA_CH where CODIGO >0'+'');
    Qry_cheque.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_cheque.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    Qry_cheque.Open;
    cds_cheque.Active :=TRUE;

    cds_receber.Active :=FALSE;
    Qry_receber.close;
    Qry_receber.SQL.Clear;
    Qry_receber.SQL.add('select * from CREDIARIO where CODIGO_COMPRA >0'+'');
    Qry_receber.SQL.add('and USUARIO_VENDA ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_receber.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_receber.SQL.add('ORDER BY CODIGO_COMPRA ASC');
    Qry_receber.Open;
    cds_receber.Active :=TRUE;

     cds_cartao.Active :=FALSE;
    Qry_cartao.close;
    Qry_cartao.SQL.Clear;
    Qry_cartao.SQL.add('SELECT A.*, C.NOME_RS FROM CONTAS_RECEBER_ADM_CARTAO A INNER JOIN CLIENTES C ON (A.COD_CLI=C.CODIGO) where COD_EMP >0'+'');
    Qry_cartao.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    if inicio > ' / /   ' then
    Qry_cartao.SQL.add('and EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cartao.SQL.add('ORDER BY CODIGO ASC');
    Qry_cartao.Open;
    cds_cartao.Active :=TRUE;

    Cds_cheques_emitidos.Active :=FALSE;
    Qry_cheques_emitidos.close;
    Qry_cheques_emitidos.SQL.Clear;
    Qry_cheques_emitidos.SQL.add('SELECT C.*, USUARIOS.USUARIO FROM CHEQUES_EMITIDOS C INNER JOIN USUARIOS ON (C.COD_USUARIO=USUARIOS.CODIGO) where COD_EMPRESA > 0'+'');
    if inicio > ' / /   ' then
    Qry_cheques_emitidos.SQL.add('and DATA_EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cheques_emitidos.SQL.add('and TROCO ='+QuotedStr(troco)+'');
    Qry_cheques_emitidos.SQL.add('and USUARIO ='+QuotedStr(vendedor)+'');
    Qry_cheques_emitidos.SQL.add('ORDER BY COD_CHEQUE ASC');
    Qry_cheques_emitidos.Open;
    Cds_cheques_emitidos.Active :=TRUE;

     dm.SDS_Empresa.Open;
    FormRelCaixaEsp := TFormRelCaixaEsp.Create(self);
    FormRelCaixaEsp.RLReport1.Prepare;
    FormRelCaixaEsp.RLReport1.PreviewModal;


end;

end.
