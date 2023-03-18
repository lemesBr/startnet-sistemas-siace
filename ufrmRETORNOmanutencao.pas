unit ufrmRETORNOmanutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, ufrmDefaultConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.DBCtrls, JvDBControls, JvLabel, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvExControls, JvSpeedButton,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvHint, JvExExtCtrls, JvImage,
  JvExStdCtrls, JvGroupBox, ACBrBoleto, Vcl.FileCtrl, ACBrEAD, JvComCtrls,
  JvRadioButton, Vcl.Tabs, Vcl.Buttons, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RxCtrls, RxToolEdit, sEdit, sLabel;

type
  TfrmRETORNOmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_EMPRESA: TIntegerField;
    qryDefaultID_CBR_RETORNO: TLargeintField;
    qryDefaultDTHORA_PROCESSAMENTO: TSQLTimeStampField;
    qryDefaultARQUIVO: TMemoField;
    qryDefaultARQUIVO_NOME: TStringField;
    qryDefaultARQUIVO_DATA: TSQLTimeStampField;
    qryDefaultARQUIVO_LOCAL: TStringField;
    insCBR_RETORNO: TFDQuery;
    flbListaArquivos: TFileListBox;
    qryDefaultARQUIVO_MD5: TStringField;
    locCTR_RETORNO_LOCATE: TFDQuery;
    locCTR_RETORNO_LOCATEID_EMPRESA: TIntegerField;
    locCTR_RETORNO_LOCATEID_CBR_RETORNO: TLargeintField;
    locCTR_RETORNO_LOCATEDTHORA_PROCESSAMENTO: TSQLTimeStampField;
    locCTR_RETORNO_LOCATEARQUIVO: TMemoField;
    locCTR_RETORNO_LOCATEARQUIVO_NOME: TStringField;
    locCTR_RETORNO_LOCATEARQUIVO_DATA: TSQLTimeStampField;
    locCTR_RETORNO_LOCATEARQUIVO_LOCAL: TStringField;
    locCTR_RETORNO_LOCATEARQUIVO_MD5: TStringField;
    qryDefaultDTHORA_ARQUIVAMENTO: TSQLTimeStampField;
    qryDefaultSITUACAO: TSmallintField;
    qryDefaultSITUACAO_DESCRICAO: TStringField;
    qryDefaultARQUIVO_NUMERO: TIntegerField;
    qryDefaultDTHORA_CADASTRO: TSQLTimeStampField;
    insCBR_RETORNO_TITULOS: TFDQuery;
    qryDefaultARQUIVO_QUANT_TITULOS: TIntegerField;
    qryTMP: TFDQuery;
    updLIQUIDA_TITULO: TFDQuery;
    qryDefaultTITULOS: TFDQuery;
    pagDefault: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    dtsqryDefaultTITULOS: TDataSource;
    qryDefaultTITULOSARQUIVO_LOCAL: TStringField;
    qryDefaultTITULOSARQUIVO_NOME: TStringField;
    qryDefaultTITULOSID_EMPRESA: TIntegerField;
    qryDefaultTITULOSID_CBR_RETORNO: TLargeintField;
    qryDefaultTITULOSID_CBR_RETORNO_TITULOS: TLargeintField;
    qryDefaultTITULOSTITULO: TLargeintField;
    qryDefaultTITULOSTITULO_LOCALIZADO: TStringField;
    qryDefaultTITULOSTITULO_JALIQUIDADO: TStringField;
    qryDefaultTITULOSTITULO_SEMREGISTRO: TStringField;
    qryDefaultTITULOSTITULO_LIQUIDADO_LIMITEP: TStringField;
    qryDefaultTITULOSTITULO_RECUSADO: TStringField;
    qryDefaultTITULOSSEU_NUMERO: TStringField;
    qryDefaultTITULOSNOSSO_NUMERO: TStringField;
    qryDefaultTITULOSVALOR_DOCUMENTO: TFMTBCDField;
    qryDefaultTITULOSVALOR_PAGO: TFMTBCDField;
    qryDefaultTITULOSVALOR_RECEBIDO: TFMTBCDField;
    qryDefaultTITULOSVALOR_JUROS: TFMTBCDField;
    qryDefaultTITULOSVALOR_DESCONTO: TFMTBCDField;
    qryDefaultTITULOSVALOR_DESPESA: TFMTBCDField;
    qryDefaultTITULOSDATA_OCORRENCIA: TDateField;
    qryDefaultTITULOSID_BANCO: TStringField;
    qryDefaultTITULOSID_AGENCIA: TStringField;
    qryDefaultTITULOSORIGEM: TStringField;
    qryDefaultTITULOSFORMA_PAGAMENTO: TStringField;
    qryDefaultTITULOSTIPO_OCORRENCIA: TIntegerField;
    qryDefaultTITULOSTIPO_OCORRENCIA_DESC: TStringField;
    qryDefaultTITULOSMOT_REJ_COMANDO: TStringField;
    qryDefaultTITULOSMOT_REJ_COMANDO_DESC: TStringField;
    qryDefaultTITULOSHISTORICO: TStringField;
    qryDefaultTITULOSFKCLIENTE: TIntegerField;
    qryDefaultTITULOSRAZAO: TStringField;
    TabSet1: TTabSet;
    ACBrEAD1: TACBrEAD;
    qryRecebimento: TFDQuery;
    btnVisualizar: TSpeedButton;
    qryRecebimentoCODIGO: TIntegerField;
    qryRecebimentoCOD_CREDIAIRIO: TIntegerField;
    qryRecebimentoCOD_EMPRESA: TIntegerField;
    qryRecebimentoPARCELA: TStringField;
    qryRecebimentoVALOR_PARCELA: TFMTBCDField;
    qryRecebimentoJUROS: TFMTBCDField;
    qryRecebimentoMULTA: TFMTBCDField;
    qryRecebimentoDESCONTO: TFMTBCDField;
    qryRecebimentoVALOR_TOTAL: TFMTBCDField;
    qryRecebimentoDATA_BAIXA: TDateField;
    qryRecebimentoUSUARIO: TStringField;
    qryRecebimentoCOD_CLIENTE: TIntegerField;
    qryRecebimentoNOME_CLIENTE: TStringField;
    qryRecebimentoCOD_COMPRA: TIntegerField;
    qryRecebimentoVALOR_PAGO: TFMTBCDField;
    qryRecebimentoSALDO_PAGAR: TFMTBCDField;
    qryRecebimentoDATA_VENCIMENTO: TDateField;
    qryRecebimentoDOC_REC_ADM: TIntegerField;
    qryRecebimentoJUROS_POSTERGADOS: TFMTBCDField;
    qryDefaultTITULOSCODIGO: TStringField;
    Panel2: TPanel;
    Label7: TLabel;
    Label35: TsLabel;
    Edit1: TEdit;
    Edit2: TsEdit;
    Edit3: TsEdit;
    Cliente: TComboEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    sEdit2: TsEdit;
    Label2: TLabel;
    Label3: TLabel;
    updLIQUIDA_TITULOCODIGO: TIntegerField;
    updLIQUIDA_TITULOCODIGO_CLIENTE: TIntegerField;
    updLIQUIDA_TITULODATA_COMPRA: TDateField;
    updLIQUIDA_TITULODATA_VENCIMENTO: TDateField;
    updLIQUIDA_TITULODATA_BAIXA: TDateField;
    updLIQUIDA_TITULOHISTORICO: TStringField;
    updLIQUIDA_TITULOUSUARIO_VENDA: TStringField;
    updLIQUIDA_TITULOUSUARIO_BAIXA: TStringField;
    updLIQUIDA_TITULOSITUACAO: TStringField;
    updLIQUIDA_TITULOVALOR_COMPRA: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_JUROS: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_ACRESCIMO: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_DESCONTO: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_PAGAR: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_PAGO: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_TOTAL: TFMTBCDField;
    updLIQUIDA_TITULOCODIGO_COMPRA: TIntegerField;
    updLIQUIDA_TITULOPARCELA: TStringField;
    updLIQUIDA_TITULONUMBOLETO: TStringField;
    updLIQUIDA_TITULOBANCO_PORTADOR: TIntegerField;
    updLIQUIDA_TITULOREMESSA: TStringField;
    updLIQUIDA_TITULODATACREDITO: TDateField;
    updLIQUIDA_TITULOID_PORTADOR: TIntegerField;
    updLIQUIDA_TITULOENVIADO: TStringField;
    updLIQUIDA_TITULOCOD_EMPRESA: TIntegerField;
    updLIQUIDA_TITULONUMBOLETO1: TIntegerField;
    updLIQUIDA_TITULOCODIGOCEDENTE: TStringField;
    updLIQUIDA_TITULOTIPO: TStringField;
    updLIQUIDA_TITULOCHEK_BOX: TStringField;
    updLIQUIDA_TITULONUM_NOTA: TIntegerField;
    updLIQUIDA_TITULOSERIE_NOTA: TStringField;
    updLIQUIDA_TITULONOME_SACADO: TStringField;
    updLIQUIDA_TITULOANO: TStringField;
    updLIQUIDA_TITULOMES: TStringField;
    updLIQUIDA_TITULOTP_BAIXA: TStringField;
    updLIQUIDA_TITULOID_CONTRATO: TIntegerField;
    updLIQUIDA_TITULONOME_ARQ: TStringField;
    updLIQUIDA_TITULOCOBRADOR: TIntegerField;
    updLIQUIDA_TITULOCOMISSAO: TFMTBCDField;
    updLIQUIDA_TITULODT_PREVISAO_PGTO: TDateField;
    updLIQUIDA_TITULODIAS_VENCIDO: TIntegerField;
    updLIQUIDA_TITULON_OS: TStringField;
    updLIQUIDA_TITULOVLR_GRAFICA: TFMTBCDField;
    updLIQUIDA_TITULOVALOR_COMISAO: TFMTBCDField;
    updLIQUIDA_TITULOCOD_ENTRADA: TStringField;
    updLIQUIDA_TITULOFILTRO: TIntegerField;
    updLIQUIDA_TITULOCOD_AVALISTA: TIntegerField;
    updLIQUIDA_TITULOCOD_FRETE: TIntegerField;
    updLIQUIDA_TITULOCOD_CONV: TIntegerField;
    updLIQUIDA_TITULOCOM_REGISTRO: TIntegerField;
    updLIQUIDA_TITULORECEBIVEL: TIntegerField;
    updLIQUIDA_TITULOID_CT_PARCELA: TIntegerField;
    updLIQUIDA_TITULOJUROS_POSTERGADOS: TFMTBCDField;
    updLIQUIDA_TITULOID_CBR_REMESSA_UUID: TStringField;
    qrcaixa_mov: TFDQuery;
    Cds_buscadataBaxia: TFDQuery;
    Cds_buscadataBaxiaCODIGO: TIntegerField;
    Cds_buscadataBaxiaCODIGO_CLIENTE: TIntegerField;
    Cds_buscadataBaxiaDATA_COMPRA: TDateField;
    Cds_buscadataBaxiaDATA_VENCIMENTO: TDateField;
    Cds_buscadataBaxiaDATA_BAIXA: TDateField;
    Cds_buscadataBaxiaHISTORICO: TStringField;
    Cds_buscadataBaxiaUSUARIO_VENDA: TStringField;
    Cds_buscadataBaxiaUSUARIO_BAIXA: TStringField;
    Cds_buscadataBaxiaSITUACAO: TStringField;
    Cds_buscadataBaxiaVALOR_COMPRA: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_JUROS: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_ACRESCIMO: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_DESCONTO: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_PAGAR: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_PAGO: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_TOTAL: TFMTBCDField;
    Cds_buscadataBaxiaCODIGO_COMPRA: TIntegerField;
    Cds_buscadataBaxiaPARCELA: TStringField;
    Cds_buscadataBaxiaNUMBOLETO: TStringField;
    Cds_buscadataBaxiaBANCO_PORTADOR: TIntegerField;
    Cds_buscadataBaxiaREMESSA: TStringField;
    Cds_buscadataBaxiaDATACREDITO: TDateField;
    Cds_buscadataBaxiaID_PORTADOR: TIntegerField;
    Cds_buscadataBaxiaENVIADO: TStringField;
    Cds_buscadataBaxiaCOD_EMPRESA: TIntegerField;
    Cds_buscadataBaxiaNUMBOLETO1: TIntegerField;
    Cds_buscadataBaxiaCODIGOCEDENTE: TStringField;
    Cds_buscadataBaxiaTIPO: TStringField;
    Cds_buscadataBaxiaCHEK_BOX: TStringField;
    Cds_buscadataBaxiaNUM_NOTA: TIntegerField;
    Cds_buscadataBaxiaSERIE_NOTA: TStringField;
    Cds_buscadataBaxiaNOME_SACADO: TStringField;
    Cds_buscadataBaxiaANO: TStringField;
    Cds_buscadataBaxiaMES: TStringField;
    Cds_buscadataBaxiaTP_BAIXA: TStringField;
    Cds_buscadataBaxiaID_CONTRATO: TIntegerField;
    Cds_buscadataBaxiaNOME_ARQ: TStringField;
    Cds_buscadataBaxiaCOBRADOR: TIntegerField;
    Cds_buscadataBaxiaCOMISSAO: TFMTBCDField;
    Cds_buscadataBaxiaDT_PREVISAO_PGTO: TDateField;
    Cds_buscadataBaxiaDIAS_VENCIDO: TIntegerField;
    Cds_buscadataBaxiaN_OS: TStringField;
    Cds_buscadataBaxiaVLR_GRAFICA: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_COMISAO: TFMTBCDField;
    Cds_buscadataBaxiaCOD_ENTRADA: TStringField;
    Cds_buscadataBaxiaFILTRO: TIntegerField;
    Cds_buscadataBaxiaCOD_AVALISTA: TIntegerField;
    Cds_buscadataBaxiaCOD_FRETE: TIntegerField;
    Cds_buscadataBaxiaCOD_CONV: TIntegerField;
    Cds_buscadataBaxiaCOM_REGISTRO: TIntegerField;
    Cds_buscadataBaxiaRECEBIVEL: TIntegerField;
    Cds_buscadataBaxiaID_CT_PARCELA: TIntegerField;
    Cds_buscadataBaxiaJUROS_POSTERGADOS: TFMTBCDField;
    Cds_buscadataBaxiaID_CBR_REMESSA_UUID: TStringField;
    Cds_buscadataBaxiaREMESSA_REENVIAR: TStringField;
    Cds_buscadataBaxiaREMESSA_DATA: TDateField;
    Cds_buscadataBaxiaREMESSA_ARQUIVO: TStringField;
    Cds_buscadataBaxiaREGISTRO_ID_CBR_RETORNO: TLargeintField;
    Cds_buscadataBaxiaREGISTRO_STATUS: TStringField;
    Cds_buscadataBaxiaREGISTRO_DATA: TSQLTimeStampField;
    Cds_buscadataBaxiaREGISTRO_ARQUIVO: TStringField;
    Cds_buscadataBaxiaRETORNO_ID_CBR_RETORNO: TIntegerField;
    Cds_buscadataBaxiaREGISTRO_HISTORICO: TStringField;
    Cds_buscadataBaxiaREGISTRO_SEM_REGISTRO: TStringField;
    Cds_buscadataBaxiaREGISTRO_LIMITE_PRAZO: TStringField;
    Cds_buscadataBaxiaRETORNO_HISTORICO: TStringField;
    Cds_buscadataBaxiaOBS: TStringField;
    Cds_buscadataBaxiaRETORNO_SEM_REGISTRO: TStringField;
    Cds_buscadataBaxiaRETORNO_LIMITE_PRAZO: TStringField;
    TabSheet3: TTabSheet;
    JvDBGrid3: TJvDBGrid;
    dts_buscadataBaxia: TDataSource;
    Cds_buscadataBaxiaVALOR_DESPESA: TFMTBCDField;
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure qryDefaultAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure TabSet1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnVisualizarClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ClienteButtonClick(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pagDefaultChange(Sender: TObject);
  private
    procedure SetDisplayFields(ADataSet: TDataSet);
    procedure ProcurarArquivos;
    procedure AtualizaTitulo(ALimitePrazo: Boolean = False;
      ARegistro: Boolean = False; ASemRegisro: Boolean = False;
      ARecusado: Boolean = False);
    procedure GerarCaixa(idCR: Integer; Valor: Extended);
    procedure BaixaCR(idCR: Integer; Valor: Extended);
    function GeraRecebimento(idCR, Empresa, Conta: Integer;
      Valor: Extended): Integer;
    procedure Botoes;

    var
    data_baixa : TDateTime;

  protected
    procedure AlinharControles; override;
    procedure AbrirConsulta; override;
  public
    procedure PosOnShow; override;


  end;

var
  frmRETORNOmanutencao: TfrmRETORNOmanutencao;

implementation

uses
  uffuncoes, System.DateUtils, Vcl.Forms, ACBrUtil, uclassCBR_RETORNO, System.TypInfo,
  ufrmRETORNOrelatorio, ModulodeDados, Principal, Udmcob, ConsLyBancos;

{$R *.dfm}

procedure TfrmRETORNOmanutencao.AbrirConsulta;
begin
  ParamSelecao.Clear;
  if TabSet1.TabIndex = 1 then
    ParamSelecao.Add(' (NOT DTHORA_PROCESSAMENTO IS NULL)')
  else if TabSet1.TabIndex = 2 then
    ParamSelecao.Add(' (DTHORA_PROCESSAMENTO IS NULL)')
  else if TabSet1.TabIndex = 3 then
    ParamSelecao.Add(' (NOT DTHORA_ARQUIVAMENTO IS NULL)');
  FSQLOrdem := ' ORDER BY ID_CBR_RETORNO DESC';
  inherited;
end;

procedure TfrmRETORNOmanutencao.AlinharControles;
begin
  // inherited;

  // Alinha
  pnlComandos.Align := alBottom;
  boxPesquisa.Align := alBottom;
  pagDefault.Align := alClient;

  dbGrid.Visible := False;

  // SQL Default
  FSQLPadrao := TFDQuery(dtsDefault.DataSet).SQL.Text;
  Application.ProcessMessages;
end;

procedure TfrmRETORNOmanutencao.AtualizaTitulo(ALimitePrazo: Boolean = False;
  ARegistro: Boolean = False; ASemRegisro: Boolean = False;
  ARecusado: Boolean = False);
begin
  try
    if qryDefaultTITULOS.FieldByName('TITULO_LOCALIZADO').AsString = 'N' then
      Exit;

    if not(qryDefaultTITULOS.FieldByName('VALOR_RECEBIDO').AsCurrency > 0) then
      Exit;

    with updLIQUIDA_TITULO do
    begin
      Close;
      ParamByName('CODIGO').Value := qryDefaultTITULOS.FieldByName('CODIGO').Value;

      ParamByName('FKEMPRESA').Value := iemp;
      Open;

      if not updLIQUIDA_TITULO.IsEmpty then
      begin

        Edit;

        if ALimitePrazo then
        begin
          FieldByName('RETORNO_ID_CBR_RETORNO').Value := qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').AsInteger;
          FieldByName('RETORNO_LIMITE_PRAZO').Value := 'S';
          FieldByName('REGISTRO_DATA').Value := qryDefaultTITULOS.FieldByName('DATA_OCORRENCIA').Value;
          FieldByName('REGISTRO_ARQUIVO').Value := qryDefaultTITULOS.FieldByName('ARQUIVO_NOME').Value;
          FieldByName('REGISTRO_HISTORICO').Value := 'LIMITE';
        end
        else if ARegistro then
        begin
          FieldByName('REGISTRO_ID_CBR_RETORNO').Value := qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').Value;
          FieldByName('REGISTRO_STATUS').Value := 'R';
          FieldByName('REGISTRO_DATA').Value := qryDefaultTITULOS.FieldByName('DATA_OCORRENCIA').Value;
          FieldByName('REGISTRO_ARQUIVO').Value := qryDefaultTITULOS.FieldByName('ARQUIVO_NOME').Value;
        end
        else if ASemRegisro then
        begin
          FieldByName('RETORNO_SEM_REGISTRO').Value := 'S';
          FieldByName('RETORNO_ID_CBR_RETORNO').Value := qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').AsInteger;
        end
        else if ARecusado then
        begin
          FieldByName('REGISTRO_ID_CBR_RETORNO').Value := qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').Value;
          FieldByName('REGISTRO_STATUS').Value := 'E';
          FieldByName('REGISTRO_DATA').Value := qryDefaultTITULOS.FieldByName('DATA_OCORRENCIA').Value;
          FieldByName('REGISTRO_ARQUIVO').Value := qryDefaultTITULOS.FieldByName('ARQUIVO_NOME').Value;
        end
        else
        begin
          FieldByName('RETORNO_ID_CBR_RETORNO').Value := qryDefaultTITULOS.FieldByName('ID_CBR_RETORNO').AsInteger;
        end;
        Post;
      end;
    end;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TfrmRETORNOmanutencao.BaixaCR(idCR: Integer; Valor: Extended);
begin
  if Valor > 0 then
  begin
    dm.FConsulta.Close;
    dm.FConsulta.CommandText.Text :=
    'update crediario set valor_pago=:VCEREBIDO, USUARIO_BAIXA=:USUARIO,  DATA_BAIXA=:DATA, SITUACAO=:SITUACAO WHERE NUMBOLETO1=:CODIGO';
    dm.FConsulta.Params[0].Value := Valor;
    dm.FConsulta.Params[1].Value := FORMPRINCIPAL.userlogado;
    dm.FConsulta.Params[2].AsDate := NOW;
    dm.FConsulta.Params[3].Value := 'F';
    dm.FConsulta.Params[4].Value := idCR;
    dm.FConsulta.Open;
  end;

  dm.Coneccao.CommitRetaining;

end;

procedure TfrmRETORNOmanutencao.btnAlterarClick(Sender: TObject);
var
  vTipo: TACBrTipoOcorrencia;

  vID_CBR_RETORNO: Integer;
  vDIR_RETORNO, vNOM_ARQUIVO: String;
begin
  if Application.MessageBox('Confirma processamento do Arquivo selecionado ?',
    'Confirmação!', MB_YESNO) = mrNo then
    Exit;

  vNOM_ARQUIVO := qryDefault.FieldByName('ARQUIVO_NOME').AsString;
  vDIR_RETORNO := qryDefault.FieldByName('ARQUIVO_LOCAL').AsString + '\';
  vID_CBR_RETORNO := qryDefault.FieldByName('ID_CBR_RETORNO').AsInteger;
  try
    qryDefaultTITULOS.First;
    while not qryDefaultTITULOS.Eof do
    begin
      vTipo := TACBrTipoOcorrencia
        (qryDefaultTITULOS.FieldByName('TIPO_OCORRENCIA').AsInteger);

      case vTipo of
        toRetornoDebitoTarifas                    :  AtualizaTitulo;
        toRetornoBaixadoViaArquivo                :  AtualizaTitulo;
        toRetornoLiquidado                        :  AtualizaTitulo;
        toRetornoBaixaSimples                     :  AtualizaTitulo;
        toRetornoBaixadoInstAgencia               :  AtualizaTitulo(True);
        toRetornoRegistroConfirmado               :  AtualizaTitulo(False, True);
        toRetornoLiquidadoAposBaixaOuNaoRegistro  :  AtualizaTitulo(False, False, True);
        toRetornoRegistroRecusado                 :  AtualizaTitulo(False, False, False, True);
      else
        raise Exception.Create
          ('Tipo de ocorrência do título de retorno não esperada, favor chamar suporte!');
      end;

      qryDefaultTITULOS.Next;
    end;

    qryDefault.Connection.ExecSQL
      (Format('UPDATE CBR_RETORNO SET SITUACAO = 1, DTHORA_PROCESSAMENTO = CURRENT_TIMESTAMP WHERE ID_EMPRESA = %d AND ID_CBR_RETORNO = %d',
      [IEMP, vID_CBR_RETORNO]));

    qryDefault.Connection.CommitRetaining;

    qryDefault.Close;
    qryDefault.Open;
    qryDefault.Locate('ID_CBR_RETORNO', vID_CBR_RETORNO, []);

  except
    on e: Exception do
    begin
      qryDefault.Connection.RollbackRetaining;
      raise Exception.Create('Erro no processamento do arquivo: ' + sLineBreak +
        sLineBreak + e.Message);
    end;
  end;
end;

procedure TfrmRETORNOmanutencao.btnDeletarClick(Sender: TObject);
var
  vID_CBR_RETORNO: Integer;
  vDIR_RETORNO, vNOM_ARQUIVO: String;
begin
  // inherited;

  if Application.MessageBox
    ('Atenção, esta opção não processa o Arquivo, apenas marca como Arquivado. Confirma mesmo assim ?',
    'Confirmação!', MB_YESNO) = mrNo then
    Exit;

  vNOM_ARQUIVO := qryDefault.FieldByName('ARQUIVO_NOME').AsString;
  vDIR_RETORNO := qryDefault.FieldByName('ARQUIVO_LOCAL').AsString + '\';
  vID_CBR_RETORNO := qryDefault.FieldByName('ID_CBR_RETORNO').AsInteger;

  try
    qryDefault.Connection.ExecSQL
      (Format('UPDATE CBR_RETORNO SET SITUACAO = 2, DTHORA_ARQUIVAMENTO = CURRENT_TIMESTAMP  WHERE ID_EMPRESA = %d AND ID_CBR_RETORNO = %d',
      [IEMP, vID_CBR_RETORNO]));

    qryDefault.Connection.CommitRetaining;

    qryDefault.Close;
    qryDefault.Open;
    qryDefault.Locate('ID_CBR_RETORNO', vID_CBR_RETORNO, []);

    if not DirectoryExists(vDIR_RETORNO + 'BKP') then
      MkDir(vDIR_RETORNO + 'BKP');

    if FileExists(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO) then
      RenameFile(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO,
        PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO +
        FormatDateTime('.zzz', NOW)));

    if FilesExists(vDIR_RETORNO + vNOM_ARQUIVO) then
      MoveFile(PWideChar(vDIR_RETORNO + vNOM_ARQUIVO),
        PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO));
  except
    on e: Exception do
    begin
      qryDefault.Connection.RollbackRetaining;

      raise Exception.Create('Erro no arquivamento do arquivo: ' + sLineBreak +
        sLineBreak + qryDefault.FieldByName('').AsString + e.Message);
    end;
  end;
end;

procedure TfrmRETORNOmanutencao.btnVisualizarClick(Sender: TObject);
begin
  TfrmRETORNOrelatorio.ShowRelatorio(qryDefault.FieldByName('ID_CBR_RETORNO')
    .AsInteger);
end;

procedure TfrmRETORNOmanutencao.ClienteButtonClick(Sender: TObject);
begin
  inherited;
  if Cliente.Text = '' then
    begin
    DM.sds_LyBancos.Active:= False;
   // DM.sds_LyBancos.DataSet.CommandText.Clear;
    DM.sds_LyBancos.DataSet.CommandText :=('select * from BOLETOS');
    DM.sds_LyBancos.Active:= True;
    end;

    if FormConsLyBancos=nil   then
    begin
     FormConsLyBancos:=TFormConsLyBancos.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsLyBancos.Edit1.Text := Cliente.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
     // FormConsClientes.Tag := 1;
      FormConsLyBancos.ShowModal;

      Cliente.Clear;
      Cliente.Text      := DM.sds_LyBancosCODIGO_BOLETO.Text;

      //ClienteChange(Sender);
      cod_cob   := DM.sds_LyBancosCODIGO_BOLETO.ASINTEGER;
      EDIT1.TEXT  := DM.sds_LyBancosBANCO_PORTADOR.Text;
      RXLabel6.Caption  := DM.sds_LyBancosNOMECEDENTE.Text;
      EDIT2.TEXT  := DM.sds_LyBancosNUMEROCONTA.Text;
      EDIT3.TEXT  := DM.sds_LyBancosDIGITOCONTA.Text;
    end;
end;

procedure TfrmRETORNOmanutencao.ClienteChange(Sender: TObject);
begin
  inherited;
   IF (Cliente.Text>='A') AND (Cliente.Text <='Z') THEN
begin
sEDIT2.Text :='LETRAS';
end else
IF (Cliente.Text>='0') AND (Cliente.Text <='9') THEN
begin
sEDIT2.Text:='NUMEROS';
end;
IF Cliente.Text='' THEN
begin
sEDIT2.Text:=''
end;
end;

procedure TfrmRETORNOmanutencao.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then
begin
   If  Cliente.Text >'' then
  BEGIN
   DM.SDS_lyBancos.Active := False;
   DM.SDS_lyBancos.Active := TRUE;
   Application.ProcessMessages;

 //suiButton4.Click;
 if sEDIT2.Text ='NUMEROS' then
 begin
    DM.SDS_lyBancos.Locate('CODIGO_BOLETO', Cliente.Text,[lopartialkey]);
 end;
  if sEDIT2.Text ='LETRAS' then
 begin
 DM.SDS_lyBancos.Locate('DESCRICAO', Cliente.Text,[lopartialkey]);
 end;

 if NOT  DM.sds_LyBancos.Eof then
 begin
      cod_cob   := DM.sds_LyBancosCODIGO_BOLETO.ASINTEGER;
      EDIT1.TEXT  := DM.sds_LyBancosBANCO_PORTADOR.Text;
      RXLabel6.Caption  := DM.sds_LyBancosNOMECEDENTE.Text;
      EDIT2.TEXT  := DM.sds_LyBancosNUMEROCONTA.Text;
      EDIT3.TEXT  := DM.sds_LyBancosDIGITOCONTA.Text;
 end;
 Application.ProcessMessages;

if  DM.sds_LyBancos.Eof then
begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Sem Registro para mostrar!';
    FormPrincipal.MsgInformacao.Execute;
Cliente.SetFocus;
end;
end;
end;
end;

procedure TfrmRETORNOmanutencao.GerarCaixa(idCR: Integer; Valor: Extended);
var
Contador, i :Integer;
begin
  //DADOS BANCARIOS


 { if dados.qryEmpresaID_PLANO_BOLETO.IsNull then
    raise Exception.Create('Informe o plano de contas da emissão de boletos!');

  dados.InsereCaixa(dados.qryempresaCodigo.Value, idCR,
    dados.qryEmpresaID_PLANO_BOLETO.Value, 1, dados.idUsuario, 'RE', '1',
    'REC.' + qryTMP.FieldByName('CODIGO').AsString, qryTMP.FieldByName('RAZAO')
    .AsString, '0', 'C', Valor);
     }

     DM.SDS_Conta_Bancaria.OPEN;
     DM.SDS_Conta_Bancaria.Locate('CONTA', edit2.text,[loCaseinSensitive]);

     Cds_buscadataBaxia.Close;
     Cds_buscadataBaxia.SQL.Clear;
     Cds_buscadataBaxia.SQL.add('select * from CREDIARIO where COD_EMPRESA =:COD_EMP AND NUMBOLETO1=:BOL');
     Cds_buscadataBaxia.parambyname('COD_EMP').AsInteger  := IEMP;
     Cds_buscadataBaxia.parambyname('BOL').AsInteger  :=  idCR;
     Cds_buscadataBaxia.Open;

   {  Cds_buscadataBaxia.First;
     Contador := Cds_buscadataBaxia.RecordCount;
     For I:=1 to Contador do
     begin }

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO, :CODIGO_CC, :NUMERO_CC)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := data_baixa;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := Cds_buscadataBaxiaVALOR_PAGO.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := Cds_buscadataBaxiaVALOR_PAGO.AsFloat ;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // CHEQUE PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Valor Ref. a Rec. titulos da Conta ' + edit2.text +'-'+ Edit3.text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'BOL';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := Cds_buscadataBaxiaCODIGO.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').AsInteger     := DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString      := edit2.text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

               //     Cds_buscadataBaxia.NEXT;
    //  end;

end;

procedure TfrmRETORNOmanutencao.btnNovoClick(Sender: TObject);
var
  vINSERIR, vTITULO_JALIQUIDADO, vTITULO_LOCALIZADO: Boolean;

  vDT_PAGAMENTO: TDate;
  vHISTORICO, vMD5_ARQUIVO, vDIR_RETORNO, vNOM_ARQUIVO: String;
  idRecebimento, i, X: Integer;
  SqlTemp: String;
  vID_CBR_RETORNO: Integer;

begin
  // SELECIONAR O BANCO ANTES DE CRIAR UM NOVO RETORNO
  if cliente.Text = '' then
  begin
    ShowMessage('Seleciono o Banco e conta para a baixa') ;
    Cliente.SetFocus;
    Exit;
    end;

 dmcob.ConfigurarBoleta;

  with dmcob.qryCBR_CONFIG do
  begin
         vDIR_RETORNO := FieldByName('DIRRECEBE').AsString.Trim + '\';

        // ShowMessage(FieldByName('DIRRECEBE').AsString.Trim + '\');
  end;

   if not DM.BuscaPlanoConta(dmcob.qryCBR_CONFIGCOD_PLANO.Value) then
    raise Exception.Create
      ('Plano de Contas de Recebimento de Boletos não configurado!');

  if not DirectoryExists(vDIR_RETORNO) then
    raise Exception.CreateFMT
      ('Aviso!!! Diretório "%s" configurado para retorno não existe, processo interronpido.',
      [vDIR_RETORNO]);

  flbListaArquivos.Directory := ExtractFilePath(Application.ExeName);
  flbListaArquivos.Refresh;

  //flbListaArquivos.Directory := vDIR_RETORNO;
  flbListaArquivos.ApplyFilePath(vDIR_RETORNO + '\*.CRT;*.RET');
 // flbListaArquivos.Mask := '*.CRT';
  flbListaArquivos.Refresh;
  flbListaArquivos.ItemIndex := flbListaArquivos.Count - 1;

  if flbListaArquivos.Count = 0 then
    raise Exception.Create
      ('Não foi encontrado nenhum arquivo para processamento!');

  for i := 0 to flbListaArquivos.Items.Count - 1 do
  begin
    vNOM_ARQUIVO := flbListaArquivos.Items[i];
    vMD5_ARQUIVO := ACBrEAD1.MD5FromFile(vDIR_RETORNO + '\' + vNOM_ARQUIVO);

    try
      locCTR_RETORNO_LOCATE.Close;
      locCTR_RETORNO_LOCATE.Params[0].AsString := vMD5_ARQUIVO;
      locCTR_RETORNO_LOCATE.Open;
      locCTR_RETORNO_LOCATE.FetchAll;

      if not locCTR_RETORNO_LOCATE.IsEmpty then
        vINSERIR := Application.MessageBox
          ('Atenção!!! Este arquivo já foi processado! Continua mesmo assim ?',
          'Confirmação!', MB_YESNO) = mrYes
      else
        vINSERIR := True;
    finally
      locCTR_RETORNO_LOCATE.Close;
    end;

    if not vINSERIR then
      Exit;

   // DMCOB.ConfigurarBoleta;
    DMCOB.ACBrBoleto.DirArqRetorno := vDIR_RETORNO;
    DMCOB.ACBrBoleto.NomeArqRetorno := vNOM_ARQUIVO;
    DMCOB.ACBrBoleto.LerRetorno;

    if DMCOB.ACBrBoleto.ListadeBoletos.Count > 0 then
    begin
      vID_CBR_RETORNO := oCbrRETORNO.GetNewIDCBR_RETORNO;

      try
        insCBR_RETORNO.ParamByName('ID_EMPRESA').Value :=  iemp;
        insCBR_RETORNO.ParamByName('ID_CBR_RETORNO').Value := vID_CBR_RETORNO;
        insCBR_RETORNO.ParamByName('DTHORA_CADASTRO').Value := NOW;
        insCBR_RETORNO.ParamByName('ARQUIVO').LoadFromFile(vDIR_RETORNO + vNOM_ARQUIVO, ftString);
        insCBR_RETORNO.ParamByName('ARQUIVO_NOME').Value := vNOM_ARQUIVO;
        insCBR_RETORNO.ParamByName('ARQUIVO_DATA').Value :=  DMCOB.ACBrBoleto.DataArquivo;
        insCBR_RETORNO.ParamByName('ARQUIVO_NUMERO').Value := DMCOB.ACBrBoleto.NumeroArquivo;
        insCBR_RETORNO.ParamByName('ARQUIVO_LOCAL').AsString := vDIR_RETORNO;
        insCBR_RETORNO.ParamByName('ARQUIVO_MD5').Value := vMD5_ARQUIVO;
        insCBR_RETORNO.ParamByName('ARQUIVO_QUANT_TITULOS').Value := DMCOB.ACBrBoleto.ListadeBoletos.Count;
        insCBR_RETORNO.ParamByName('SITUACAO').Value := 0;
        insCBR_RETORNO.Prepare;
        insCBR_RETORNO.ExecSQL;

        for X := 0 to DMCOB.ACBrBoleto.ListadeBoletos.Count - 1 do
        begin
          with DMCOB.ACBrBoleto do
          begin
            // pesquisa título
            try
             { SqlTemp :=
                ' select crt.id_cbr_titulos as codigo, crt.cli_razaosocial as razao,  crt.valor, cr.situacao from cbr_remessa_titulos crt '
                + ' left join crediario cr on cr.codigo=crt.id_cbr_titulos where ' +
                  ' (crt.nboleto is null) and (crt.id_cbr_titulos=:id) union all ' +
                ' select crt.nboleto as codigo, crt.cli_razaosocial as razao, crt.valor, cr.situacao from cbr_remessa_titulos crt '
                + ' left join crediario cr on cr.codigo=crt.id_cbr_titulos ' +
                ' where (not crt.nboleto is null) and(crt.nboleto=:id) '; }

                 SqlTemp :=
                'select crt.codigo as codigo, crt.noME_SACADO as razao,  crt.valor_compra as valor, crt.situacao from crediario crt '
                + ' where crt.numboleto1=:id ';

              if DMCOB.qryCBR_CONFIGCNAB.Value = 'CNAB 240' then
              begin
                qryTMP.Close;
                qryTMP.SQL.Text := SqlTemp;
                qryTMP.Params[0].Value :=  StrToIntDef(Trim(ListadeBoletos[X].NossoNumero), -1);
              //  qryTMP.Params[0].Value :=  ListadeBoletos[X].NossoNumero;
                qryTMP.Open
              end;

              if DMCOB.qryCBR_CONFIGCNAB.Value = 'CNAB 400' then
              begin
                qryTMP.Close;
                qryTMP.SQL.Text := SqlTemp;
                qryTMP.Params[0].Value := StrToIntDef(Trim(ListadeBoletos[X].NumeroDocumento), -1);
                qryTMP.Open
              end;


              vTITULO_LOCALIZADO := not qryTMP.IsEmpty;
              vTITULO_JALIQUIDADO := qryTMP.FieldByName('SITUACAO').AsString = 'F';

              if vTITULO_LOCALIZADO then
              begin

               // idRecebimento := GeraRecebimento(qryTMP.FieldByName('CODIGO').AsInteger, iemp,
               // dmcob.qryCBR_CONFIGCODIGO.AsInteger, qryTMP.FieldByName('VALOR').AsFloat);

               // if idRecebimento > 0 then
               // begin
                    if qryTMP.FieldByName('VALOR').AsFloat > 0 then
                    begin
                     if Integer(ListadeBoletos[X].OcorrenciaOriginal.Tipo) = 193 then
                      begin

                      if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      dm.FConsulta.Close;
                      dm.FConsulta.CommandText.Text :=
                      'update crediario set valor_pago=:VCEREBIDO, USUARIO_BAIXA=:USUARIO, DATA_BAIXA=:DATA, SITUACAO=:SITUACAO,'+
                      'valor_acrescimo =:multa, VALOR_JUROS =:juros, VALOR_DESCONTO =:desc,'+
                      'RETORNO_ID_CBR_RETORNO = :id_cbr, REGISTRO_ID_CBR_RETORNO =:reg, REGISTRO_DATA =:reg_data,' +
                      'VALOR_DESPESA =:vlr_desp, RETORNO_HISTORICO = :HIST  WHERE NUMBOLETO1=:CODIGO';
                      dm.FConsulta.ParamByName('VCEREBIDO').asfloat := ListadeBoletos[X].ValorRecebido;
                      dm.FConsulta.ParamByName('USUARIO').Value     := FORMPRINCIPAL.userlogado;
                      dm.FConsulta.ParamByName('DATA').AsDate       := ListadeBoletos[X].DataOcorrencia;
                      dm.FConsulta.ParamByName('SITUACAO').Value    := 'F';
                      dm.FConsulta.ParamByName('multa').asfloat     := ListadeBoletos[X].ValorOutrasDespesas;
                      dm.FConsulta.ParamByName('juros').AsFloat     := ListadeBoletos[X].ValorMoraJuros;
                      dm.FConsulta.ParamByName('desc').asfloat      := ListadeBoletos[X].ValorDesconto;
                      dm.FConsulta.ParamByName('id_cbr').asinteger  := vID_CBR_RETORNO;
                      dm.FConsulta.ParamByName('reg').asfloat       := DMCOB.ACBrBoleto.NumeroArquivo;
                      dm.FConsulta.ParamByName('reg_DATA').AsDate   := DMCOB.ACBrBoleto.DataArquivo;
                      dm.FConsulta.ParamByName('vlr_desp').asfloat  := ListadeBoletos[X].ValorDespesaCobranca;
                      dm.FConsulta.ParamByName('HIST').asSTRING     := ListadeBoletos[X].OcorrenciaOriginal.Descricao;
                      dm.FConsulta.ParamByName('CODIGO').asinteger  := StrToIntDef(Trim(ListadeBoletos[X].NossoNumero), -1);
                      dm.FConsulta.Open;
                      dm.IBTransaction.CommitRetaining;



                      // GerarCaixa(idRecebimento, qryTMP.FieldByName('VALOR').AsFloat);
                       DM.SDS_Conta_Bancaria.OPEN;
                       DM.SDS_Conta_Bancaria.Locate('CONTA', edit2.text,[loCaseinSensitive]);

                       Cds_buscadataBaxia.Close;
                       Cds_buscadataBaxia.SQL.Clear;
                       Cds_buscadataBaxia.SQL.add('select * from CREDIARIO where COD_EMPRESA =:COD_EMP AND NUMBOLETO1=:BOL');
                       Cds_buscadataBaxia.parambyname('COD_EMP').AsInteger  := IEMP;
                       Cds_buscadataBaxia.parambyname('BOL').AsInteger  :=  StrToIntDef(Trim(ListadeBoletos[X].NossoNumero), -1);
                       Cds_buscadataBaxia.Open;

                        showmessage('Baixou '+ Cds_buscadataBaxiaCODIGO.Text) ;

                      // LANÇAMENTO NO BANCO ENTRADA
                      dm.ProxCod.Close;
                      dm.ProxCod.SQL.Clear;
                      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                      DM.ProxCod.Open;

                      if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into movimento_diario');
                      qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO, CODIGO_CC, NUMERO_CC)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO, :CODIGO_CC, :NUMERO_CC)');

                      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                      qrcaixa_mov.parambyname('data').asdatetime      := ListadeBoletos[X].DataOcorrencia;
                      qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                      qrcaixa_mov.parambyname('valor_entrada').asfloat := Cds_buscadataBaxiaVALOR_PAGO.AsFloat;
                      qrcaixa_mov.parambyname('valor').asfloat := Cds_buscadataBaxiaVALOR_PAGO.AsFloat ;
                      qrcaixa_mov.parambyname('cod_plano').asstring := DM.SDS_Conta_BancariaCOD_PLANO.text;
                      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // CHEQUE PRAZO
                      qrcaixa_mov.parambyname('historico').asstring := 'Valor Ref. a Rec. titulos da Conta ' + edit2.text +'-'+ Edit3.text;
                      qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'BOL';
                      qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := Cds_buscadataBaxiaCODIGO.Text;
                      qrcaixa_mov.parambyname('CODIGO_CC').AsInteger     := DM.SDS_Conta_BancariaCODIGO.AsInteger;
                      qrcaixa_mov.parambyname('NUMERO_CC').AsString      := edit2.text;
                      qrcaixa_mov.ExecSQL;
                      dm.IBTransaction.CommitRetaining;



                      // LANÇAMENTO NO BANCO SAIDA TAXAS
                      dm.ProxCod.Close;
                      dm.ProxCod.SQL.Clear;
                      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                      DM.ProxCod.Open;

                      if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into movimento_diario');
                      qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO, CODIGO_CC, NUMERO_CC)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO, :CODIGO_CC, :NUMERO_CC)');

                      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                      qrcaixa_mov.parambyname('data').asdatetime      := ListadeBoletos[X].DataOcorrencia;
                      qrcaixa_mov.parambyname('Valor_saida').asfloat :=  ListadeBoletos[X].ValorDespesaCobranca;
                      qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                      qrcaixa_mov.parambyname('valor').asfloat := ListadeBoletos[X].ValorDespesaCobranca;
                      qrcaixa_mov.parambyname('cod_plano').asstring := DM.SDS_Conta_BancariaCOD_PLANO.text;
                      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 02; // VALOR OUTROS
                      qrcaixa_mov.parambyname('historico').asstring := 'Valor Ref. a tarifas ref. Rec. titulos da Conta ' + edit2.text +'-'+ Edit3.text;
                      qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'BOL';
                      qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := Cds_buscadataBaxiaCODIGO.Text;
                      qrcaixa_mov.parambyname('CODIGO_CC').AsInteger     := DM.SDS_Conta_BancariaCODIGO.AsInteger;
                      qrcaixa_mov.parambyname('NUMERO_CC').AsString      := edit2.text;
                      qrcaixa_mov.ExecSQL;
                      dm.IBTransaction.CommitRetaining;



                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                    with DM.FConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := Cds_buscadataBaxiaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger   := iemp;
                    parambyname('PARCELA').asString    := Cds_buscadataBaxiaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := Cds_buscadataBaxiaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat     := Cds_buscadataBaxiaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat     := Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat     := Cds_buscadataBaxiavalor_desconto.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := Cds_buscadataBaxiavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := ListadeBoletos[X].DataOcorrencia;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := Cds_buscadataBaxiaCodigo_Cliente.asinteger;
                    if Cds_buscadataBaxiaNome_sacado.text > ''  then
                    parambyname('NOME_CLIENTE').AsString   := Cds_buscadataBaxiaNome_sacado.Text
                    else
                    parambyname('NOME_CLIENTE').Value     :=null;
                    if Cds_buscadataBaxiaCODIGO_COMPRA.value > 0 then
                    parambyname('COD_COMPRA').AsString      := Cds_buscadataBaxiaCODIGO_COMPRA.Text
                    else
                    parambyname('COD_COMPRA').Value       :=null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := Cds_buscadataBaxiaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := Cds_buscadataBaxiaVALOR_pago.AsFloat;
                    parambyname('DOC_REC_ADM').Value      := -1;

                    open;
                    dm.IBTransaction.CommitRetaining;
                      end;
                    end;

                     if Integer(ListadeBoletos[X].OcorrenciaOriginal.Tipo) = 234 then
                      begin

                      if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      dm.FConsulta.Close;
                      dm.FConsulta.CommandText.Text :=
                      'update CREDIARIO SET RETORNO_ID_CBR_RETORNO = :id_cbr, REGISTRO_ID_CBR_RETORNO =:reg, REGISTRO_DATA =:reg_data,' +
                      'RETORNO_HISTORICO = :HIST   WHERE NUMBOLETO1=:CODIGO';
                      dm.FConsulta.ParamByName('HIST').ASString      := ListadeBoletos[X].OcorrenciaOriginal.Descricao;
                      dm.FConsulta.ParamByName('id_cbr').asinteger  := vID_CBR_RETORNO;
                      dm.FConsulta.ParamByName('reg').asfloat       := DMCOB.ACBrBoleto.NumeroArquivo;
                      dm.FConsulta.ParamByName('reg_DATA').AsDate   := DMCOB.ACBrBoleto.DataArquivo;
                      dm.FConsulta.ParamByName('CODIGO').asinteger  := StrToIntDef(Trim(ListadeBoletos[X].NossoNumero), -1);
                      dm.FConsulta.Open;
                      dm.IBTransaction.CommitRetaining;

                    end;

                 // BaixaCR(qryTMP.FieldByName('CODIGO').AsInteger, qryTMP.FieldByName('VALOR').AsFloat);

                //  GerarCaixa(idRecebimento, qryTMP.FieldByName('VALOR').AsFloat);
                end;
                end;

            finally
              qryTMP.Close;
            end;

            if vTITULO_LOCALIZADO then
            begin
              if vTITULO_JALIQUIDADO then
                vHISTORICO := 'Título já se encontrada Liquidado.'
              else
              begin
                vHISTORICO := 'Título Liquidado.';
              end;
            end
            else
              vHISTORICO := 'Título não Localizado.';

            insCBR_RETORNO_TITULOS.ParamByName('ID_EMPRESA').Value := iemp;
            insCBR_RETORNO_TITULOS.ParamByName('ID_CBR_RETORNO').Value :=
              vID_CBR_RETORNO;
            insCBR_RETORNO_TITULOS.ParamByName('ID_CBR_RETORNO_TITULOS').Value
              := oCbrRETORNO.GetNewIDCBR_RETORNO_TITULOS(vID_CBR_RETORNO);
            insCBR_RETORNO_TITULOS.ParamByName('TITULO').Value :=
              ListadeBoletos[X].NossoNumero;
            case vTITULO_LOCALIZADO.ToInteger of
              0:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_LOCALIZADO')
                  .Value := 'N';
              1:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_LOCALIZADO')
                  .Value := 'S';
            end;

            case vTITULO_JALIQUIDADO.ToInteger of
              0:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_JALIQUIDADO')
                  .Value := 'N';
              1:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_JALIQUIDADO')
                  .Value := 'S';
            end;

            insCBR_RETORNO_TITULOS.ParamByName('TITULO_SEMREGISTRO')
              .Value := 'N';
            case ListadeBoletos[X].OcorrenciaOriginal.Tipo of
              toRetornoLiquidadoAposBaixaOuNaoRegistro:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_SEMREGISTRO')
                  .Value := 'S';
            end;

            insCBR_RETORNO_TITULOS.ParamByName('TITULO_LIQUIDADO_LIMITEP')
              .Value := 'N';
            case ListadeBoletos[X].OcorrenciaOriginal.Tipo of
              toRetornoLiquidadoAposBaixaOuNaoRegistro:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_LIQUIDADO_LIMITEP')
                  .Value := 'S'
            end;

            insCBR_RETORNO_TITULOS.ParamByName('TITULO_RECUSADO').Value := 'N';
            case ListadeBoletos[X].OcorrenciaOriginal.Tipo of
              toRetornoRegistroRecusado:
                insCBR_RETORNO_TITULOS.ParamByName('TITULO_RECUSADO')
                  .Value := 'S';
            end;

            insCBR_RETORNO_TITULOS.ParamByName('SEU_NUMERO').Value :=
              ListadeBoletos[X].SeuNumero;
            insCBR_RETORNO_TITULOS.ParamByName('NOSSO_NUMERO').Value :=
              ListadeBoletos[X].NossoNumero;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_DOCUMENTO').Value :=
              ListadeBoletos[X].ValorDocumento;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_PAGO').Value :=
              ListadeBoletos[X].ValorPago;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_RECEBIDO').Value :=
              ListadeBoletos[X].ValorRecebido;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_DESCONTO').Value :=
              ListadeBoletos[X].ValorDesconto;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_JUROS').Value :=
              ListadeBoletos[X].ValorMoraJuros;
            insCBR_RETORNO_TITULOS.ParamByName('VALOR_DESPESA').Value :=
              ListadeBoletos[X].ValorDespesaCobranca;
            insCBR_RETORNO_TITULOS.ParamByName('DATA_OCORRENCIA').Value :=
              ListadeBoletos[X].DataOcorrencia;
            insCBR_RETORNO_TITULOS.ParamByName('ID_BANCO').Value :=
              ListadeBoletos[X].Liquidacao.Banco;
            insCBR_RETORNO_TITULOS.ParamByName('ID_AGENCIA').Value :=
              ListadeBoletos[X].Liquidacao.Agencia;
            insCBR_RETORNO_TITULOS.ParamByName('ORIGEM').Value :=
              ListadeBoletos[X].Liquidacao.Origem;
            insCBR_RETORNO_TITULOS.ParamByName('FORMA_PAGAMENTO').Value :=
              ListadeBoletos[X].Liquidacao.FormaPagto;
            insCBR_RETORNO_TITULOS.ParamByName('TIPO_OCORRENCIA').Value :=
              Integer(ListadeBoletos[X].OcorrenciaOriginal.Tipo);
            insCBR_RETORNO_TITULOS.ParamByName('TIPO_OCORRENCIA_DESC').Value :=
              ListadeBoletos[X].OcorrenciaOriginal.Descricao;
            insCBR_RETORNO_TITULOS.ParamByName('MOT_REJ_COMANDO').Value :=
              ListadeBoletos[X].MotivoRejeicaoComando.Text;
            insCBR_RETORNO_TITULOS.ParamByName('MOT_REJ_COMANDO_DESC').Value :=
              ListadeBoletos[X].DescricaoMotivoRejeicaoComando.Text;
            insCBR_RETORNO_TITULOS.ParamByName('HISTORICO').Value := vHISTORICO;
          end;
          insCBR_RETORNO_TITULOS.Prepare;
          insCBR_RETORNO_TITULOS.ExecSQL;
        end;

        qryDefault.Connection.CommitRetaining;

        qryDefault.Close;
        qryDefault.Open;

        if not DirectoryExists(vDIR_RETORNO + 'BKP') then
          MkDir(vDIR_RETORNO + 'BKP');

        if FileExists(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO) then
          RenameFile(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO,
            PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO +
            FormatDateTime('.zzz', NOW)));

        if FilesExists(vDIR_RETORNO + vNOM_ARQUIVO) then
          MoveFile(PWideChar(vDIR_RETORNO + vNOM_ARQUIVO),
            PWideChar(vDIR_RETORNO + 'BKP\' + vNOM_ARQUIVO));
      except
        on e: Exception do
        begin
          qryDefault.Connection.RollbackRetaining;
          raise Exception.Create('Erro ao processar os arquivos de retorno:' +
            sLineBreak + e.Message);
        end;
      end;
    end;
  end;
  btnAtualizarClick(self);
end;

procedure TfrmRETORNOmanutencao.dtsDefaultDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(qryDefault) then
  begin
    btnAlterar.Enabled := (dtsDefault.DataSet.FieldByName('SITUACAO')
      .AsInteger = 0) and (not dtsDefault.DataSet.IsEmpty);
    btnDeletar.Enabled := (dtsDefault.DataSet.FieldByName('SITUACAO')
      .AsInteger = 0) and (not dtsDefault.DataSet.IsEmpty);
    btnVisualizar.Enabled := not dtsDefault.DataSet.IsEmpty;
  end;
end;


procedure TfrmRETORNOmanutencao.Botoes;
begin
  btnNovo.Visible    := dm.SDS_UsuariosINSERIR.Value  = 'S';
  btnAlterar.Visible := dm.SDS_UsuariosEDITAR.Value   = 'S';
  btnDeletar.Visible := dm.SDS_UsuariosEXCLUIR.Value  = 'S';
end;


procedure TfrmRETORNOmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

//  FormCadastro  := TfrmREMESSAcadastro;

  TabelaNome    := 'CBR_RETORNO';
  TabelaCpChave := 'ID_CBR_RETORNO';
end;

procedure TfrmRETORNOmanutencao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f7 then
    btnVisualizarClick(self);
end;

procedure TfrmRETORNOmanutencao.FormShow(Sender: TObject);
begin
  // inherited;

  AlinharControles;
  AjustarControles;
  if Assigned(dtsDefault.DataSet) then
    TFDQuery(dtsDefault.DataSet).Close
  else
    raise Exception.Create('DataSet não foi assinalado, favor conferir!');

  if FAbrirQuery then
    AbrirConsulta;

   dm.sds_LyBancos.active := false;
   dm.sds_LyBancos.active := true;

  //Dados.Habilitacoes(Dados.aMenu, self.Name);
  pagDefault.ActivePage := TabSheet1;
  Botoes;
end;

procedure TfrmRETORNOmanutencao.PosOnShow;
begin
  inherited;

  pagDefault.TabIndex := 0;
end;

procedure TfrmRETORNOmanutencao.ProcurarArquivos;
begin

end;

procedure TfrmRETORNOmanutencao.qryDefaultAfterOpen(DataSet: TDataSet);
begin
  qryDefaultTITULOS.Active := DataSet.Active;
end;

procedure TfrmRETORNOmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  SetDisplayFields(dtstabDefault.DataSet);
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := iemp;
end;

function TfrmRETORNOmanutencao.GeraRecebimento(idCR, Empresa, Conta: Integer;
  Valor: Extended): Integer;
var
  aCodigo: Integer;
begin
  Result := -1;

  DM.qConsulta.Close;
  DM.qConsulta.SQL.Text :=
    'SELECT CODIGO FROM CREDIARIO WHERE NUMBOLETO1=:NBOLETO';
  DM.qConsulta.Params[0].Value := idCR;
  dM.qConsulta.Open;

  aCodigo := dM.qConsulta.FieldByName('CODIGO').AsInteger;
  if aCodigo > 0 then
  begin

    DM.FConsulta.Close;
    DM.FConsulta.CommandText.Text := 'delete from CREDIARIO_RECEBIDO where COD_CREDIAIRIO=:id';
    DM.FConsulta.Params[0].Value := aCodigo;
    DM.FConsulta.Open;
    dm.Coneccao.CommitRetaining;

    qryRecebimento.Close;
    qryRecebimento.Params[0].Value := aCodigo;
    qryRecebimento.Open;

    if not qryRecebimento.IsEmpty then
      qryRecebimento.Edit
    else
    begin
      qryRecebimento.Insert;
     // qryRecebimentoCODIGO.Value := dados.Numerador('CRRECEBIMENTO', 'CODIGO', 'N', '', '');
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
      DM.ProxCod.Open;
    end;

    qryRecebimentoCODIGO.Value := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    //  qryRecebimentoFK_FORMA_PGTO.Value := 1;
    // dinheiro
    qryRecebimentoCOD_CREDIAIRIO.Value       := aCodigo;
    qryRecebimentoDATA_BAIXA.Value           := date;
    qryRecebimentoVALOR_PARCELA.AsFloat      := Valor;
    qryRecebimentoJUROS.Value                := 0;
    qryRecebimentoMULTA.Value                := 0;
    qryRecebimentoDESCONTO.Value             := 0;
    qryRecebimentoDESCONTO.Value             := 0;
    qryRecebimentoVALOR_TOTAL.Value          := Valor;
    qryRecebimentoVALOR_PAGO.Value           := Valor;
    qryRecebimentoCOD_EMPRESA.Value          := iemp;

    qryRecebimentoPARCELA.asString           := dM.qConsulta.FieldByName('PARCELA').AsString;
    qryRecebimentoDATA_VENCIMENTO.AsDateTime := dM.qConsulta.FieldByName('DATA_VENCIMENTO').AsDateTime;
    qryRecebimentoCOD_CLIENTE.AsInteger      := dM.qConsulta.FieldByName('CODIGO_CLIENTE').AsInteger;
    if dM.qConsulta.FieldByName('NOME_SACADO').AsString  > '' then
    qryRecebimentoNOME_CLIENTE.AsString      :=  dM.qConsulta.FieldByName('NOME_SACADO').AsString
    else
    qryRecebimentoNOME_CLIENTE.Value         :=null;
    qryRecebimentoUSUARIO.AsString           := FormPrincipal.UserLogado;
    if dM.qConsulta.FieldByName('CODIGO_COMPRA').Value > 0 then
    qryRecebimentoCOD_COMPRA.AsString        := dM.qConsulta.FieldByName('CODIGO_COMPRA').AsString
    else
    qryRecebimentoCOD_COMPRA.value           := null;
    qryRecebimento.Post;

    Result := qryRecebimentoCODIGO.Value;

    dm.Coneccao.CommitRetaining;
  end;

end;

procedure TfrmRETORNOmanutencao.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if Key = VK_DELETE then
begin
  if Application.MESSAGEBOX('DESEJA REALMENTE EXCLUIR ESSE ARQUIVO DE RETORNO?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  BEGIN
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.FConsulta do
      begin
         close;
         COMMANDTEXT.Clear;
         COMMANDTEXT.Text:= 'delete from cbr_retorno where id_cbr_retorno =:cbr and id_empresa =:cod_emp';
            Parambyname('CBR').AsInteger    := qryDefaultID_CBR_RETORNO.AsInteger;
            Parambyname('COD_EMP').AsInteger    := IEMP;
         OPEN;
      end;
   dm.IBTransaction.Commit;
   dm.FConsulta.Close;

btnAtualizarClick(Sender);
END;
end;
end;

procedure TfrmRETORNOmanutencao.pagDefaultChange(Sender: TObject);
begin
  inherited;
      if pagDefault.ActivePage = TabSheet3 then
      begin
        Cds_buscadataBaxia.Close;
        Cds_buscadataBaxia.SQL.Clear;
        Cds_buscadataBaxia.SQL.add('select * from CREDIARIO where situacao ='+ '''F'''+ 'and COD_EMPRESA =:COD_EMP AND RETORNO_ID_CBR_RETORNO=:id_cbr');
        Cds_buscadataBaxia.parambyname('COD_EMP').AsInteger  := IEMP;
        Cds_buscadataBaxia.parambyname('ID_CBR').AsInteger  :=  qryDefault.FieldByName('ID_CBR_RETORNO').Value ;
        Cds_buscadataBaxia.Open;
      end;
end;

procedure TfrmRETORNOmanutencao.SetDisplayFields(ADataSet: TDataSet);
begin
  // ADataSet.FieldByName('').DisplayLabel := '';
end;

procedure TfrmRETORNOmanutencao.TabSet1Click(Sender: TObject);
begin
  if FAbrirQuery then
    AbrirConsulta;
end;

end.
