unit UResumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, Menus, Ubibli1,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmResumo = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CTRVenc: TFDQuery;
    CTR: TFDQuery;
    CTPVenc: TFDQuery;
    CTP: TFDQuery;
    SCTRVenc: TDataSource;
    SCTR: TDataSource;
    SCTPVenc: TDataSource;
    SCTP: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TCTRVenc: TLabel;
    TCTR: TLabel;
    TCTP: TLabel;
    TCTPVenc: TLabel;
    Totais: TFDQuery;
    Label9: TLabel;
    Sub1: TLabel;
    Label11: TLabel;
    Sub2: TLabel;
    PopCTRvenc: TPopupMenu;
    Abrircadastrodocliente1: TMenuItem;
    Abrircontasareceber1: TMenuItem;
    QConsCliente: TFDQuery;
    PopCTR: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    CTRCODIGO_CLIENTE: TIntegerField;
    QConsClienteCODIGO: TIntegerField;
    QConsClienteNOME_RS: TStringField;
    QConsClienteENDERECO: TStringField;
    QConsClienteCIDADE: TStringField;
    QConsClienteUF: TStringField;
    QConsClienteCEP: TStringField;
    QConsClienteTELEFONE: TStringField;
    QConsClienteTELEFONE2: TStringField;
    QConsClienteEMAIL: TStringField;
    QConsClienteNASCIMENTO_IA: TDateField;
    QConsClienteSEXO: TStringField;
    QConsClienteFOTO_LOGOMARCA: TBlobField;
    QConsClienteBAIRRO: TStringField;
    QConsClienteRG_IE: TStringField;
    QConsClienteFAX: TStringField;
    QConsClienteCELULAR: TStringField;
    QConsClienteUSERCAD: TStringField;
    QConsClienteDATACAD: TDateField;
    QConsClienteCPF_CNPJ: TStringField;
    QConsClienteOBSERVACOES: TBlobField;
    QConsClienteCREDIARIO: TStringField;
    QConsClienteESTADOCIVIL: TStringField;
    QConsClienteRESIDENCIA_SEDE: TStringField;
    QConsClientePAI: TStringField;
    QConsClienteMAE: TStringField;
    QConsClienteNOME_CONJUGE: TStringField;
    QConsClienteCPF_CONJUGE: TStringField;
    QConsClienteNASCIMENTO_CONJUGE: TDateField;
    QConsClienteTRABALHO_CONJUGE: TStringField;
    QConsClientePROFISSAO_CONJUGE: TStringField;
    QConsClienteLOCALTRABALHO: TStringField;
    QConsClientePROFISSAO_RA: TStringField;
    QConsClienteTELEFONE_TRABALHO: TStringField;
    QConsClienteFAX_TRABALHO: TStringField;
    QConsClienteOBSERVACOES_TRABALHO: TBlobField;
    QConsClienteBANCO: TStringField;
    QConsClienteNOME_AGENCIA: TStringField;
    QConsClienteNUMERO_AGENCIA: TStringField;
    QConsClienteCONTA_CORRENTE: TIntegerField;
    QConsClienteNOME1_REFERENCIA: TStringField;
    QConsClienteNOME2_REFERENCIA: TStringField;
    QConsClienteTELEFONE1_REFERENCIA: TStringField;
    QConsClienteTELEFONE2_REFERENCIA: TStringField;
    QConsClienteBANCO_REFERENCIA: TStringField;
    QConsClienteAPELIDO: TStringField;
    QConsClienteTIPO: TStringField;
    QConsClienteOBSERVACOES_COMERCIAIS: TBlobField;
    QConsClienteOBSERVACOES_BANCO: TBlobField;
    QConsClientePG_CREDIARIO: TStringField;
    QConsClientePG_CHEQUE: TStringField;
    QConsClientePG_FINANCEIRA: TStringField;
    QConsClienteREMUNERACAO: TFMTBCDField;
    QConsClienteNUMERO: TStringField;
    QConsClienteCOMPLEMENTO: TStringField;
    QConsClienteCOD_EMPRESA: TIntegerField;
    QConsClienteORGAO_EMISSOR: TStringField;
    QConsClienteDATA_EMISSAO_RG: TDateField;
    QConsClienteNATURALIDADE: TStringField;
    QConsClienteNATURALIDADE_UF: TStringField;
    QConsClienteCOD_CIDADE: TIntegerField;
    QConsClienteCOD_BAIRRO: TIntegerField;
    QConsClienteDATA_ALTERACAO: TDateField;
    QConsClienteCOD_ZONA: TIntegerField;
    QConsClientePONTO_REFERENCIA: TStringField;
    QConsClienteATIVO: TStringField;
    QConsClienteCONTATO1: TStringField;
    QConsClienteCONTATO2: TStringField;
    QConsClienteCX_POSTAL: TStringField;
    QConsClienteVALOR_ALUGUEL: TFMTBCDField;
    QConsClienteTEMPO_RESIDENCIA: TStringField;
    QConsClienteNUMERO_DEPENDENTES: TIntegerField;
    QConsClienteENDERECO_REFERENCIA1: TStringField;
    QConsClienteENDERECO_REFERENCIA2: TStringField;
    QConsClienteDATA_ADMISSAO_REFERENCIA1: TDateField;
    QConsClienteDATA_ADMISSAO_REFERENCIA2: TDateField;
    QConsClienteRG_CONJUGUE: TStringField;
    QConsClienteRENDA_CONJUGUE: TFMTBCDField;
    QConsClienteDATA_ADMINSSAO_CONJUGUE: TDateField;
    QConsClienteFONE_CONJUGUE: TStringField;
    QConsClienteENDERECO_COBRANCA: TStringField;
    QConsClienteCEP_COBRANCA: TStringField;
    QConsClienteCOD_CIDADE_COBRANCA: TIntegerField;
    QConsClienteCX_POSTAL_COBRANCA: TStringField;
    QConsClienteLIMITE_DE_CREDITO: TFMTBCDField;
    QConsClienteINSC_MUNICIPAL: TStringField;
    QConsClientePRODUTOR_RURAL: TStringField;
    QConsClienteINSC_PRODUTOR_RURAL: TStringField;
    QConsClienteCOD_BAIRRO_COBRANCA: TIntegerField;
    QConsClienteCIDADE_COBRANCA: TStringField;
    QConsClienteBAIRRO_COBRANCA: TStringField;
    QConsClienteUF_COBRANCA: TStringField;
    QConsClienteCONTA_BANCARIA: TStringField;
    QConsClienteNOME_PROPRIEDADE: TStringField;
    QConsClienteNOME_VETERINARIO: TStringField;
    QConsClienteSOCIO1: TStringField;
    QConsClienteCPFSOCIO1: TStringField;
    QConsClienteDATANASCSOCIO1: TDateField;
    QConsClienteSOCIO2: TStringField;
    QConsClienteCPFSOCIO2: TStringField;
    QConsClienteDATANASCSOCIO2: TDateField;
    QConsClienteSOCIO3: TStringField;
    QConsClienteCPFSOCIO3: TStringField;
    QConsClienteDATANASCSOCIO3: TDateField;
    QConsClienteSOCIO4: TStringField;
    QConsClienteCPFSOCIO4: TStringField;
    QConsClienteDATANASCSOCIO4: TDateField;
    QConsClienteDATAFUNDACAO: TDateField;
    QConsClienteCAPITALSOCIAL: TFMTBCDField;
    QConsClienteFATURAMENTOBRUTO: TFMTBCDField;
    QConsClienteREGJUNTACOM: TStringField;
    QConsClienteENDSOCIO1: TStringField;
    QConsClienteRGSOCIO1: TIntegerField;
    QConsClienteENDSOCIO2: TStringField;
    QConsClienteRGSOCIO2: TIntegerField;
    QConsClienteENDSOCIO3: TStringField;
    QConsClienteRGSOCIO3: TIntegerField;
    QConsClienteENDSOCIO4: TStringField;
    QConsClienteRGSOCIO4: TIntegerField;
    QConsClienteAUTORIZADO1: TStringField;
    QConsClienteAUTORIZADO2: TStringField;
    QConsClienteAUTORIZADO3: TStringField;
    QConsClienteCPF_AUT1: TStringField;
    QConsClienteCPF_AUT2: TStringField;
    QConsClienteCPF_AUT3: TStringField;
    QConsClienteFUNCIONARIO: TStringField;
    QConsClienteCTPS: TStringField;
    QConsClienteTESTA_CREDITO: TStringField;
    QConsClienteTESTA_LIMITE: TStringField;
    QConsClienteCOD_CONV: TIntegerField;
    QConsClienteFOTO: TStringField;
    QConsClienteDATA_ULTIMA_COMPRA: TDateField;
    QConsClienteFUNC_SALARIO: TFMTBCDField;
    QConsClienteFUNC_DATA_ADMISSAO: TDateField;
    QConsClienteFUNC_SITUACAO: TStringField;
    QConsClienteFUNC_DEMISSAO: TDateField;
    QConsClienteFUNC_CARGO: TStringField;
    QConsClienteDOCUMENTOS: TBlobField;
    QConsClienteIE: TStringField;
    QConsClientePARENTESCO_AUT1: TStringField;
    QConsClientePARENTESCO_AUT2: TStringField;
    QConsClientePARENTESCO_AUT3: TStringField;
    QConsClientePOSSUE_LAUDO: TStringField;
    QConsClienteVENCIMENTO_LAUDO: TDateField;
    QConsClienteNOME_CON: TStringField;
    CTRVencVALOR_PAGAR: TFMTBCDField;
    CTRVencNOME_RS: TStringField;
    CTRVALOR_PAGAR: TFMTBCDField;
    CTRNOME_RS: TStringField;
    CTPVencCODIGO: TIntegerField;
    CTPVencDATA_EMISSAO: TDateField;
    CTPVencDATA_VENCIMENTO: TDateField;
    CTPVencDATA_PAGAMENTO: TDateField;
    CTPVencCODCONTA: TIntegerField;
    CTPVencCODFORNECEDOR: TIntegerField;
    CTPVencVALOR: TFMTBCDField;
    CTPVencVALORPAGO: TFMTBCDField;
    CTPVencLIQUIDO: TFMTBCDField;
    CTPVencDESCONTO: TFMTBCDField;
    CTPVencACRESCIMO: TFMTBCDField;
    CTPVencDOCUMENTO: TStringField;
    CTPVencNOTAFISCAL: TStringField;
    CTPVencHISTORICO: TStringField;
    CTPVencC: TStringField;
    CTPVencE: TStringField;
    CTPVencFILTRO: TIntegerField;
    CTPVencESPECIE: TStringField;
    CTPVencSITUACAO: TIntegerField;
    CTPVencCODNOTA: TIntegerField;
    CTPVencMOVIMENTO: TIntegerField;
    CTPVencCODCAIXA: TIntegerField;
    CTPVencCOD_CENTRO_CUSTO: TIntegerField;
    CTPVencCOD_IMOVEL: TIntegerField;
    CTPVencCOD_EMPRESA: TIntegerField;
    CTPVencNOME: TStringField;
    CTPCODIGO: TIntegerField;
    CTPDATA_EMISSAO: TDateField;
    CTPDATA_VENCIMENTO: TDateField;
    CTPDATA_PAGAMENTO: TDateField;
    CTPCODCONTA: TIntegerField;
    CTPCODFORNECEDOR: TIntegerField;
    CTPVALOR: TFMTBCDField;
    CTPVALORPAGO: TFMTBCDField;
    CTPLIQUIDO: TFMTBCDField;
    CTPDESCONTO: TFMTBCDField;
    CTPACRESCIMO: TFMTBCDField;
    CTPDOCUMENTO: TStringField;
    CTPNOTAFISCAL: TStringField;
    CTPHISTORICO: TStringField;
    CTPC: TStringField;
    CTPE: TStringField;
    CTPFILTRO: TIntegerField;
    CTPESPECIE: TStringField;
    CTPSITUACAO: TIntegerField;
    CTPCODNOTA: TIntegerField;
    CTPMOVIMENTO: TIntegerField;
    CTPCODCAIXA: TIntegerField;
    CTPCOD_CENTRO_CUSTO: TIntegerField;
    CTPCOD_IMOVEL: TIntegerField;
    CTPCOD_EMPRESA: TIntegerField;
    CTPNOME: TStringField;
    CTRVencCODIGO_CLIENTE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Abrircadastrodocliente1Click(Sender: TObject);
    procedure Abrircontasareceber1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Total1, Total2, Total3, Total4: Double;
    SqlCli: String;
  public
    { Public declarations }

  end;

var
  frmResumo: TfrmResumo;

implementation

uses
 ModulodeDados;

{$R *.dfm}

procedure TfrmResumo.Abrircadastrodocliente1Click(Sender: TObject);
var
 I: integer;
begin
 {  if CTRvencCOD_CLI.IsNull then
      begin
         Exit;
      end;
   QconsCliente.Close;
   QConsCliente.SQL.Text := SqlCli + ' where C.COD_CLI=:CODCLI';
   QconsCliente.ParamByName('CODCLI').AsInteger := CTRvencCOD_CLI.AsInteger;
   QConsCliente.Open;
   if QConsCliente.IsEmpty then
      begin
         ShowMessage( 'Cliente não encontrado!' );
         QConsCliente.Close;
         exit;
      end;
   Application.CreateForm(TFrmCadCli, FrmCadCli);
            with FrmCadCli do
               begin
                  tag:= 1;
                  limpaedit(FrmCadCli);
                  ededit(FrmCadCli, false);
                  cod_cli.Text:= QConsClienteCOD_CLI.AsString;
                  if trim(QConsClienteFJ_CLI.AsString) = 'F' then
                     begin
                        ComboFJ.ItemIndex    := 0;
                        label11.Caption      := 'CPF';
                        label12.Caption      := 'Documento';
                        edtcnpj.EditMask     := '999.999.999-99;1;_';
                        label2.Caption       := 'Nome(*)';
                        label43.Caption      := 'Apelido';
                        edtprof.Enabled      := true;
                        edtemp.Enabled       := true;
                        edtpai.Enabled       := true;
                        edtmae.Enabled       := true;
                        edtrenda.Enabled     := true;
                        EdtContato.Visible   := false;
                        label45.Visible      := false;
                        EdtFant.Width        := 473;
                     end
                  else
                     begin
                        ComboFJ.ItemIndex    := 1;
                        label11.Caption      := 'CNPJ';
                        label12.Caption      := 'Insc.Estadual';
                        edtcnpj.EditMask     := '99.999.999/9999-99;1;_';
                        label2.Caption       := 'Razão Social(*)';
                        label43.Caption      := 'Nome Fantasia';
                        EdtNasc.Enabled      := false;
                        edtprof.Enabled      := false;
                        edtemp.Enabled       := false;
                        edtpai.Enabled       := false;
                        edtmae.Enabled       := false;
                        edtrenda.Enabled     := false;
                        EdtContato.Visible   := true;
                        label45.Visible      := true;
                        EdtFant.Width        := 233;
                     end;
                  edtnome.Text          := QConsClienteNOME_CLI.AsString;
                  cod_cla.Text          := QConsClienteCOD_CLA.AsString;
                  edtnomecla.Text       := QConsClienteNOME_CLA.AsString;
                  edtendres.Text        := QConsClienteENDRES_CLI.AsString;
                  edtbaires.Text        := QConsClienteBAIRES_CLI.AsString;
                  edtcidres.Text        := QConsClienteCIDRES_CLI.AsString;
                  for i:= 0 to 26 do
                     begin
                        if comboestres.Items[i] = QConsClienteESTRES_CLI.AsString then
                           comboestres.ItemIndex:= i;
                     end;
                  edtcepres.Text        := QConsClienteCEPRES_CLI.AsString;
                  edttelres.Text        := QConsClienteTELRES_CLI.AsString;
                  edtendcom.Text        := QConsClienteENDCOM_CLI.AsString;
                  edtbaicom.Text        := QConsClienteBAICOM_CLI.AsString;
                  edtcidcom.Text        := QConsClienteCIDCOM_CLI.AsString;
                  for i:= 0 to 26 do
                     begin
                        if comboestcom.Items[i] = QConsClienteESTCOM_CLI.AsString then
                           comboestcom.ItemIndex:= i;
                     end;
                  edtcepcom.Text        := QConsClienteCEPCOM_CLI.AsString;
                  edttelcom.Text        := QConsClienteTELCOM_CLI.AsString;
                  edtcnpj.Text          := QConsClienteCNPJ_CLI.AsString;

                  if trim(QConsClienteFJ_CLI.AsString) = 'F' then
                     edtdoc.Text:= QConsClienteDOC_CLI.AsString
                  else
                     EdtDoc.Text:= QConsClienteINSC_ESTADUAL.AsString;

                  edtpai.Text           := QConsClientePAI_CLI.AsString;
                  edtmae.Text           := QConsClienteMAE_CLI.AsString;
                  edtconjuge.Text       := QConsClienteCONJUGE_CLI.AsString;
                  if trim(QConsClienteESTCIVIL_CLI.AsString) = 'C' then
                     ComboCivil.ItemIndex := 0
                  else
                     if trim(QConsClienteESTCIVIL_CLI.AsString) = 'S' then
                        ComboCivil.ItemIndex:= 1
                     else
                        if trim(QConsClienteESTCIVIL_CLI.AsString) = 'O' then
                           ComboCivil.ItemIndex := 2
                        else
                           combocivil.ItemIndex:= -1;
                  edtrenda.Text         := QConsClienteRENDA_CLI.AsString;
                  EdtLimiteCredito.Text := QConsClienteLIMITE_CLI.AsString;
                  EdtLimiteCheque.Text  := QConsClienteLIMITE_CHEQUE.AsString;
                  edtprof.Text          := QConsClientePROFISSAO_CLI.AsString;
                  edtemp.Text           := QConsClienteEMPRESA_TRAB_CLI.AsString;
                  if trim(QConsClienteATIVO_CLI.AsString) = 'S' then
                     RDGAtivo.ItemIndex := 0
                  else
                     RDGAtivo.ItemIndex := 1;

                  EdtCodConvenio.Text   := QConsClienteCOD_CON.AsString;
                  EdtNomeConvenio.Text  := QConsClienteNOME_CON.AsString;

                  MemoObsVenda.Text     := QConsClienteOBS_VENDA.AsString;
                  MemoObsDiversos.Text  := QConsClienteOBS_CLI.AsString;
                  edtnasc.Text          := QConsClienteNASCIMENTO_CLI.AsString;
                  edtdatacadastro.Date  := QConsClienteDATACADASTRO_CLI.Value;
                  EdtAtrazoMaximo.Text  := QConsClienteATRAZO_MAXIMO_CLI.AsString;
                  edtcel.Text           := QConsClienteCELULAR_CLI.AsString;
                  if trim(QConsClienteIMP_SALDO_PENDENTE_CLI.AsString) = 'S' then
                     CheckImpSaldo.Checked:= true
                  else
                     CheckImpSaldo.Checked:= false;

                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'DN' then
                     ComboCredito.ItemIndex:= 0
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'PR' then
                     ComboCredito.ItemIndex:= 1
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'CH' then
                     ComboCredito.ItemIndex:= 2
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'PC' then
                     ComboCredito.ItemIndex:= 3
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'BO' then
                     ComboCredito.ItemIndex:= 4
                  else
                     ComboCredito.ItemIndex:= -1;

                  EdtConsSPC.Text     := QConsClienteDATA_CONSULTA_SPC.AsString;
                  EdtRegSPC.Text      := QConsClienteDATA_REGISTRO_SPC.AsString;
                  EdtReabSPC.text     := QConsClienteDATA_REABILITACAO_SPC.AsString;
                  EdtRendaConj.Text   := QConsClienteRENDA_CONJUGE.AsString;
                  EdtTrabalhoConj.Text:= QConsClienteTRABALHO_CONJUGE.AsString;
                  EdtProfConj.Text    := QConsClientePROF_CONJUGE.AsString;
                  EdtFant.Text        := QConsClienteNOME_FANTASIA.AsString;
                  EdtPR.Text          := QConsClientePONTO_REFERENCIA.AsString;
                  EdtContato.Text     := QConsClienteCONTATO_CLI.AsString;
                  if trim(QConsClienteCONTROLAR_LIMITE.AsString) = 'S' then
                     CheckControlarLimite.Checked:= true
                  else
                     CheckControlarLimite.Checked:= false;
                  EdtEndCob.Text      := QConsClienteENDCOB_CLI.AsString;
                  EdtBaiCob.Text      := QConsClienteBAICOB_CLI.AsString;
                  EdtCidCob.Text      := QConsClienteCIDCOB_CLI.AsString;

                  for i:= 0 to 26 do
                     begin
                        if ComboEstCob.Items[i] = QConsClienteESTCOB_CLI.AsString then
                           ComboEstCob.ItemIndex:= i;
                     end;
                  EdtCepCob.Text      := QConsClienteCEPCOB_CLI.AsString;
                  EdtTelCob.Text      := QConsClienteTELCOB_CLI.AsString;
                  if trim(QConsClienteBLOQUEADO_CLI.AsString) = 'S' then
                     RdgBloqueado.ItemIndex := 0
                  else
                     RdgBloqueado.ItemIndex := 1;

                  EdtIBGE.Text    := QConsClienteCODIGO_IBGE.AsString;
                  EdtNumRes.Text  := QConsClienteNUMRES_CLI.AsString;
                  EdtNumCom.Text  := QConsClienteNUMCOM_CLI.AsString;
                  EdtNumCob.Text  := QConsClienteNUMCOB_CLI.AsString;
                  EdtEmail.Text   := QConsClienteEMAIL_CLI.AsString;

                  FormShow(sender);
                  showmodal;
               end;
              close; }

end;

procedure TfrmResumo.Abrircontasareceber1Click(Sender: TObject);
begin
  { if CTRVencCOD_CLI.IsNull then
      exit;
  Application.CreateForm(TFrmContasRecRec, FrmContasRecRec);
  FrmContasRecRec.codcod := CTRVencCOD_CLI.AsInteger;
  FrmContasRecRec.Tag := 101;
  FrmContasRecRec.show;
  close;  }
end;

procedure TfrmResumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   CTR.Close;
   CTP.Close;
   CTRVenc.Close;
   CTPVenc.Close;
   if dm.IBTransaction.active then
      DM.IBTransaction.Commit;
   Action := caFree;
   frmResumo := NIL;

end;

procedure TfrmResumo.FormShow(Sender: TObject);
begin
 iEmp := dm.SDS_EmpresaCODIGO.AsInteger;
 
 {  if not DM.Acesso('M300','I') then
      begin
          Application.MessageBox('Você não tem permissão para efetuar esta operação.', 'Aviso', mb_ApplModal + mb_iconInformation + mb_OK + mb_DefButton1);
         DBGrid1.Visible := false;
         DBGrid2.Visible := FALSE;
         DBGrid3.Visible := FALSE;
         DBGrid4.Visible := FALSE;
         exit;
      end;   }

   SqlCli := QConsCliente.SQL.Text;
   if DM.IBTransaction.active then
      DM.IBTransaction.Commit;
   DM.IBTransaction.StartTransaction;
   CTRVenc.SQL.Text := 'select SUM(CTR.VALOR_PAGAR) AS VALOR_PAGAR, CTR.CODIGO_CLIENTE, CLI.nome_rs from CREDIARIO CTR INNER JOIN CLIENTES CLI ON (CTR.CODIGO_CLIENTE = CLI.CODIGO)' +
   ' where CTR.DATA_VENCIMENTO<=:DATA and SITUACAO=''A'' and CTR.COD_EMPRESA=:CODEMP GROUP BY  CTR.CODIGO_CLIENTE,  CLI.nome_rs';
   CTRVenc.ParamByName('DATA').AsDate := date;
   CTRVenc.ParamByName('CODEMP').AsInteger := iEmp;
   CTRvenc.Open;
   CTR.Close;
   CTR.SQL.Text := 'select SUM(CTR.VALOR_PAGAR) AS VALOR_PAGAR, CTR.CODIGO_CLIENTE, CLI.nome_rs from CREDIARIO CTR INNER JOIN CLIENTES CLI ON (CTR.CODIGO_CLIENTE = CLI.CODIGO)' +
   ' where CTR.DATA_VENCIMENTO BETWEEN :DATA1 and :DATA2 and SITUACAO=''A'' and CTR.COD_EMPRESA=:CODEMP GROUP BY  CTR.CODIGO_CLIENTE,  CLI.nome_rs';
   CTR.ParamByName('DATA1').AsDate := date + 1;
   CTR.ParamByName('DATA2').AsDate := date + 5;
   CTR.ParamByName('CODEMP').AsInteger := iEmp;
   CTR.Open;
   CTP.Close;
   CTP.SQL.Text := 'select c.*, f.nome from contas_apagar c, fornecedores f where c.codfornecedor = f.codigo and'+
   ' C.DATA_VENCIMENTO BETWEEN :DATA1 and :DATA2 and situacao = 1';
   CTP.ParamByName('DATA1').AsDate := date + 1;
   CTP.ParamByName('DATA2').AsDate := date + 5;
   // CTP.ParamByName('CODEMP').AsInteger := iEmp;

   CTP.Open;
   CTPVenc.Close;
   CTPVenc.SQL.Text := 'select c.*, f.nome from contas_apagar c, fornecedores f where c.codfornecedor = f.codigo and'+
   ' C.DATA_VENCIMENTO<=:DATA and situacao = 1 ';
   CTPVenc.ParamByName('DATA').AsDate := date;
  // CTPVenc.ParamByName('CODEMP').AsInteger := iEmp;
   CTPvenc.Open;

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_PAGAR) from CREDIARIO where DATA_VENCIMENTO<=:DATA and DATA_BAIXA is null and COD_EMPRESA=:CODEMP';
   Totais.ParamByName('DATA').AsDate := date;
   Totais.ParamByName('CODEMP').AsInteger := iEmp;
   Totais.Open;
   Total1 := Totais.FieldByName('SUM').AsFloat;

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_PAGAR) from CREDIARIO where DATA_VENCIMENTO BETWEEN :DATA1 and :DATA2 and DATA_BAIXA is null and COD_EMPRESA=:CODEMP';
   Totais.ParamByName('DATA1').AsDate := date + 1;
   Totais.ParamByName('DATA2').AsDate := date + 5;
   Totais.ParamByName('CODEMP').AsInteger := iEmp;
   Totais.Open;
   Total2 := Totais.FieldByName('SUM').AsFloat;

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR) from CONTAS_aPAGAR where DATA_VENCIMENTO<=:DATA and situacao = 1';
   Totais.ParamByName('DATA').AsDate := date;
   //Totais.ParamByName('CODEMP').AsInteger := iEmp;
   Totais.Open;
   Total3 := Totais.FieldByName('SUM').AsFloat;

   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR) from CONTAS_APAGAR where DATA_VENCIMENTO BETWEEN :DATA1 and :DATA2 and situacao = 1';
   Totais.ParamByName('DATA1').AsDate := date + 1;
   Totais.ParamByName('DATA2').AsDate := date + 5;
  // Totais.ParamByName('CODEMP').AsInteger := iEmp;
   Totais.Open;
   Total4 := Totais.FieldByName('SUM').AsFloat;
   Totais.Close;

   TCTRVenc.Caption := FormatFloat( 'R$ 0.00',  Total1 );
   TCTR.Caption := FormatFloat( 'R$ 0.00',  Total2 );
   TCTPVenc.Caption := FormatFloat( 'R$ 0.00',  Total3 );
   TCTP.Caption := FormatFloat( 'R$ 0.00',  Total4 );
   Sub1.Caption :=  FormatFloat( 'R$ 0.00',  Total1 - Total3 );
   Sub2.Caption :=  FormatFloat( 'R$ 0.00',  Total2 - Total4 );


end;

procedure TfrmResumo.MenuItem1Click(Sender: TObject);
var
 I: integer;
begin
{   if CTRCOD_CLI.IsNull then
      begin
         Exit;
      end;
   QconsCliente.Close;
   QConsCliente.SQL.Text := SqlCli + ' where C.COD_CLI=:CODCLI';
   QconsCliente.ParamByName('CODCLI').AsInteger := CTRCOD_CLI.AsInteger;
   QConsCliente.Open;
   if QConsCliente.IsEmpty then
      begin
         ShowMessage( 'Cliente não encontrado!' );
         QConsCliente.Close;
         exit;
      end;
   Application.CreateForm(TFrmCadCli, FrmCadCli);
            with FrmCadCli do
               begin
                  tag:= 1;
                  limpaedit(FrmCadCli);
                  ededit(FrmCadCli, false);
                  cod_cli.Text:= QConsClienteCOD_CLI.AsString;
                  if trim(QConsClienteFJ_CLI.AsString) = 'F' then
                     begin
                        ComboFJ.ItemIndex    := 0;
                        label11.Caption      := 'CPF';
                        label12.Caption      := 'Documento';
                        edtcnpj.EditMask     := '999.999.999-99;1;_';
                        label2.Caption       := 'Nome(*)';
                        label43.Caption      := 'Apelido';
                        edtprof.Enabled      := true;
                        edtemp.Enabled       := true;
                        edtpai.Enabled       := true;
                        edtmae.Enabled       := true;
                        edtrenda.Enabled     := true;
                        EdtContato.Visible   := false;
                        label45.Visible      := false;
                        EdtFant.Width        := 473;
                     end
                  else
                     begin
                        ComboFJ.ItemIndex    := 1;
                        label11.Caption      := 'CNPJ';
                        label12.Caption      := 'Insc.Estadual';
                        edtcnpj.EditMask     := '99.999.999/9999-99;1;_';
                        label2.Caption       := 'Razão Social(*)';
                        label43.Caption      := 'Nome Fantasia';
                        EdtNasc.Enabled      := false;
                        edtprof.Enabled      := false;
                        edtemp.Enabled       := false;
                        edtpai.Enabled       := false;
                        edtmae.Enabled       := false;
                        edtrenda.Enabled     := false;
                        EdtContato.Visible   := true;
                        label45.Visible      := true;
                        EdtFant.Width        := 233;
                     end;
                  edtnome.Text          := QConsClienteNOME_CLI.AsString;
                  cod_cla.Text          := QConsClienteCOD_CLA.AsString;
                  edtnomecla.Text       := QConsClienteNOME_CLA.AsString;
                  edtendres.Text        := QConsClienteENDRES_CLI.AsString;
                  edtbaires.Text        := QConsClienteBAIRES_CLI.AsString;
                  edtcidres.Text        := QConsClienteCIDRES_CLI.AsString;
                  for i:= 0 to 26 do
                     begin
                        if comboestres.Items[i] = QConsClienteESTRES_CLI.AsString then
                           comboestres.ItemIndex:= i;
                     end;
                  edtcepres.Text        := QConsClienteCEPRES_CLI.AsString;
                  edttelres.Text        := QConsClienteTELRES_CLI.AsString;
                  edtendcom.Text        := QConsClienteENDCOM_CLI.AsString;
                  edtbaicom.Text        := QConsClienteBAICOM_CLI.AsString;
                  edtcidcom.Text        := QConsClienteCIDCOM_CLI.AsString;
                  for i:= 0 to 26 do
                     begin
                        if comboestcom.Items[i] = QConsClienteESTCOM_CLI.AsString then
                           comboestcom.ItemIndex:= i;
                     end;
                  edtcepcom.Text        := QConsClienteCEPCOM_CLI.AsString;
                  edttelcom.Text        := QConsClienteTELCOM_CLI.AsString;
                  edtcnpj.Text          := QConsClienteCNPJ_CLI.AsString;

                  if trim(QConsClienteFJ_CLI.AsString) = 'F' then
                     edtdoc.Text:= QConsClienteDOC_CLI.AsString
                  else
                     EdtDoc.Text:= QConsClienteINSC_ESTADUAL.AsString;

                  edtpai.Text           := QConsClientePAI_CLI.AsString;
                  edtmae.Text           := QConsClienteMAE_CLI.AsString;
                  edtconjuge.Text       := QConsClienteCONJUGE_CLI.AsString;
                  if trim(QConsClienteESTCIVIL_CLI.AsString) = 'C' then
                     ComboCivil.ItemIndex := 0
                  else
                     if trim(QConsClienteESTCIVIL_CLI.AsString) = 'S' then
                        ComboCivil.ItemIndex:= 1
                     else
                        if trim(QConsClienteESTCIVIL_CLI.AsString) = 'O' then
                           ComboCivil.ItemIndex := 2
                        else
                           combocivil.ItemIndex:= -1;
                  edtrenda.Text         := QConsClienteRENDA_CLI.AsString;
                  EdtLimiteCredito.Text := QConsClienteLIMITE_CLI.AsString;
                  EdtLimiteCheque.Text  := QConsClienteLIMITE_CHEQUE.AsString;
                  edtprof.Text          := QConsClientePROFISSAO_CLI.AsString;
                  edtemp.Text           := QConsClienteEMPRESA_TRAB_CLI.AsString;
                  if trim(QConsClienteATIVO_CLI.AsString) = 'S' then
                     RDGAtivo.ItemIndex := 0
                  else
                     RDGAtivo.ItemIndex := 1;

                  EdtCodConvenio.Text   := QConsClienteCOD_CON.AsString;
                  EdtNomeConvenio.Text  := QConsClienteNOME_CON.AsString;

                  MemoObsVenda.Text     := QConsClienteOBS_VENDA.AsString;
                  MemoObsDiversos.Text  := QConsClienteOBS_CLI.AsString;
                  edtnasc.Text          := QConsClienteNASCIMENTO_CLI.AsString;
                  edtdatacadastro.Date  := QConsClienteDATACADASTRO_CLI.Value;
                  EdtAtrazoMaximo.Text  := QConsClienteATRAZO_MAXIMO_CLI.AsString;
                  edtcel.Text           := QConsClienteCELULAR_CLI.AsString;
                  if trim(QConsClienteIMP_SALDO_PENDENTE_CLI.AsString) = 'S' then
                     CheckImpSaldo.Checked:= true
                  else
                     CheckImpSaldo.Checked:= false;

                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'DN' then
                     ComboCredito.ItemIndex:= 0
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'PR' then
                     ComboCredito.ItemIndex:= 1
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'CH' then
                     ComboCredito.ItemIndex:= 2
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'PC' then
                     ComboCredito.ItemIndex:= 3
                  else
                  if trim(QConsClienteTIPO_CREDITO_CLI.AsString) = 'BO' then
                     ComboCredito.ItemIndex:= 4
                  else
                     ComboCredito.ItemIndex:= -1;

                  EdtConsSPC.Text     := QConsClienteDATA_CONSULTA_SPC.AsString;
                  EdtRegSPC.Text      := QConsClienteDATA_REGISTRO_SPC.AsString;
                  EdtReabSPC.text     := QConsClienteDATA_REABILITACAO_SPC.AsString;
                  EdtRendaConj.Text   := QConsClienteRENDA_CONJUGE.AsString;
                  EdtTrabalhoConj.Text:= QConsClienteTRABALHO_CONJUGE.AsString;
                  EdtProfConj.Text    := QConsClientePROF_CONJUGE.AsString;
                  EdtFant.Text        := QConsClienteNOME_FANTASIA.AsString;
                  EdtPR.Text          := QConsClientePONTO_REFERENCIA.AsString;
                  EdtContato.Text     := QConsClienteCONTATO_CLI.AsString;
                  if trim(QConsClienteCONTROLAR_LIMITE.AsString) = 'S' then
                     CheckControlarLimite.Checked:= true
                  else
                     CheckControlarLimite.Checked:= false;
                  EdtEndCob.Text      := QConsClienteENDCOB_CLI.AsString;
                  EdtBaiCob.Text      := QConsClienteBAICOB_CLI.AsString;
                  EdtCidCob.Text      := QConsClienteCIDCOB_CLI.AsString;

                  for i:= 0 to 26 do
                     begin
                        if ComboEstCob.Items[i] = QConsClienteESTCOB_CLI.AsString then
                           ComboEstCob.ItemIndex:= i;
                     end;
                  EdtCepCob.Text      := QConsClienteCEPCOB_CLI.AsString;
                  EdtTelCob.Text      := QConsClienteTELCOB_CLI.AsString;
                  if trim(QConsClienteBLOQUEADO_CLI.AsString) = 'S' then
                     RdgBloqueado.ItemIndex := 0
                  else
                     RdgBloqueado.ItemIndex := 1;

                  EdtIBGE.Text    := QConsClienteCODIGO_IBGE.AsString;
                  EdtNumRes.Text  := QConsClienteNUMRES_CLI.AsString;
                  EdtNumCom.Text  := QConsClienteNUMCOM_CLI.AsString;
                  EdtNumCob.Text  := QConsClienteNUMCOB_CLI.AsString;
                  EdtEmail.Text   := QConsClienteEMAIL_CLI.AsString;

                  FormShow(sender);
                  showmodal;
               end;
              close;  }

end;
procedure TfrmResumo.MenuItem2Click(Sender: TObject);
begin
 {  if CTRCOD_CLI.IsNull then
      exit;
  Application.CreateForm(TFrmContasRecRec, FrmContasRecRec);
  FrmContasRecRec.codcod := CTRCOD_CLI.AsInteger;
  FrmContasRecRec.Tag := 101;
  FrmContasRecRec.show;
  close;}
end;

procedure TfrmResumo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close; 
end;

end.
