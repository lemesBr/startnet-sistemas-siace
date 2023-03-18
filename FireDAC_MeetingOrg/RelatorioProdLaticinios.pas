unit RelatorioProdLaticinios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIButton, Mask, RXCtrls,
  DBCtrls, FMTBcd, SqlExpr, DB, Provider, DBClient, SimpleDS, Data.DBXFirebird,
  RxToolEdit;

type
  TFormPordLaticinios = class(TForm)
    GroupBox2: TGroupBox;
    RxLabel2: TRxLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    RxLabel3: TRxLabel;
    ComboEdit1: TComboEdit;
    suiButton5: TsuiButton;
    suiButton6: TsuiButton;
    suiButton7: TsuiButton;
    Cds_laticinios: TClientDataSet;
    Dsp_Laticinios: TDataSetProvider;
    Dts_laticinios: TDataSource;
    QryLaticinios: TSQLQuery;
    ComboEdit2: TComboEdit;
    Panel2: TPanel;
    RxLabel1: TRxLabel;
    Label2: TLabel;
    SDS_CONTAS_PAGAS: TSimpleDataSet;
    DTS_CONTAS_PAGAS: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    SDS_CONTAS_PAGASFORNECEDOR: TStringField;
    SDS_CONTAS_PAGASCODIGO_FORNECEDOR: TIntegerField;
    SDS_CONTAS_PAGASAUTORIZACAO: TStringField;
    SDS_CONTAS_PAGASSOMADEVALOR_BAIXA: TFMTBCDField;
    SDS_CONTAS_PAGASMES: TStringField;
    SDS_CONTAS_PAGASANO: TStringField;
    sds_linhas_bx: TSimpleDataSet;
    dts_linhas_bx: TDataSource;
    QryLinhas: TSQLQuery;
    dsp_linhas: TDataSetProvider;
    cds_linhas: TClientDataSet;
    dts_linhas: TDataSource;
    QryLaticiniosCODIGO: TIntegerField;
    QryLaticiniosCOD_FORNECEDOR: TIntegerField;
    QryLaticiniosNOME_FORNECEDOR: TStringField;
    QryLaticiniosCOD_EMPRESA: TIntegerField;
    QryLaticiniosDATAI: TDateField;
    QryLaticiniosDATAF: TDateField;
    QryLaticiniosVALOR_TOTAL: TFMTBCDField;
    QryLaticiniosN_DOCUMENTO: TStringField;
    QryLaticiniosCODIGO_ID: TIntegerField;
    QryLaticiniosDATA_LANCAMENTO: TDateField;
    QryLaticiniosCOD_FORNECEDOR1: TIntegerField;
    QryLaticiniosNOME_FORNECEDOR1: TStringField;
    QryLaticiniosLINHA: TIntegerField;
    QryLaticiniosQUANTIDADE: TFMTBCDField;
    QryLaticiniosVALOR_LEITE: TFMTBCDField;
    QryLaticiniosVALOR_TOTAL1: TFMTBCDField;
    QryLaticiniosPRODUTO: TStringField;
    QryLaticiniosUNIDADE: TStringField;
    QryLaticiniosCODIGO1: TIntegerField;
    QryLaticiniosNOME: TStringField;
    QryLaticiniosENDERECO: TStringField;
    QryLaticiniosCIDADE: TStringField;
    QryLaticiniosESTADO: TStringField;
    QryLaticiniosCEP: TStringField;
    QryLaticiniosTELEFONE: TStringField;
    QryLaticiniosFAX: TStringField;
    QryLaticiniosEMAIL: TStringField;
    QryLaticiniosHOMEPAGE: TStringField;
    QryLaticiniosTIPO: TStringField;
    QryLaticiniosCNPJ: TStringField;
    QryLaticiniosIE: TStringField;
    QryLaticiniosBAIRRO: TStringField;
    QryLaticiniosREPRESCELULAR: TStringField;
    QryLaticiniosUSERCAD: TStringField;
    QryLaticiniosDATACADASTRO: TDateField;
    QryLaticiniosOBSERVACOES: TBlobField;
    QryLaticiniosREPRESNOME: TStringField;
    QryLaticiniosREPRESFONEFAX: TStringField;
    QryLaticiniosREPRESEMAIL: TStringField;
    QryLaticiniosREPRESOBSERVACOES: TBlobField;
    QryLaticiniosPRODUTOR_RURAL: TStringField;
    QryLaticiniosINSC_PRODUTOR: TStringField;
    QryLaticiniosCOD_LINHA: TIntegerField;
    QryLaticiniosLINHA1: TStringField;
    QryLaticiniosCOD_EMPRESA1: TIntegerField;
    QryLaticiniosVALOR_LEITE1: TFMTBCDField;
    Cds_laticiniosCODIGO: TIntegerField;
    Cds_laticiniosCOD_FORNECEDOR: TIntegerField;
    Cds_laticiniosNOME_FORNECEDOR: TStringField;
    Cds_laticiniosCOD_EMPRESA: TIntegerField;
    Cds_laticiniosDATAI: TDateField;
    Cds_laticiniosDATAF: TDateField;
    Cds_laticiniosVALOR_TOTAL: TFMTBCDField;
    Cds_laticiniosN_DOCUMENTO: TStringField;
    Cds_laticiniosCODIGO_ID: TIntegerField;
    Cds_laticiniosDATA_LANCAMENTO: TDateField;
    Cds_laticiniosCOD_FORNECEDOR1: TIntegerField;
    Cds_laticiniosNOME_FORNECEDOR1: TStringField;
    Cds_laticiniosLINHA: TIntegerField;
    Cds_laticiniosQUANTIDADE: TFMTBCDField;
    Cds_laticiniosVALOR_LEITE: TFMTBCDField;
    Cds_laticiniosVALOR_TOTAL1: TFMTBCDField;
    Cds_laticiniosPRODUTO: TStringField;
    Cds_laticiniosUNIDADE: TStringField;
    Cds_laticiniosCODIGO1: TIntegerField;
    Cds_laticiniosNOME: TStringField;
    Cds_laticiniosENDERECO: TStringField;
    Cds_laticiniosCIDADE: TStringField;
    Cds_laticiniosESTADO: TStringField;
    Cds_laticiniosCEP: TStringField;
    Cds_laticiniosTELEFONE: TStringField;
    Cds_laticiniosFAX: TStringField;
    Cds_laticiniosEMAIL: TStringField;
    Cds_laticiniosHOMEPAGE: TStringField;
    Cds_laticiniosTIPO: TStringField;
    Cds_laticiniosCNPJ: TStringField;
    Cds_laticiniosIE: TStringField;
    Cds_laticiniosBAIRRO: TStringField;
    Cds_laticiniosREPRESCELULAR: TStringField;
    Cds_laticiniosUSERCAD: TStringField;
    Cds_laticiniosDATACADASTRO: TDateField;
    Cds_laticiniosOBSERVACOES: TBlobField;
    Cds_laticiniosREPRESNOME: TStringField;
    Cds_laticiniosREPRESFONEFAX: TStringField;
    Cds_laticiniosREPRESEMAIL: TStringField;
    Cds_laticiniosREPRESOBSERVACOES: TBlobField;
    Cds_laticiniosPRODUTOR_RURAL: TStringField;
    Cds_laticiniosINSC_PRODUTOR: TStringField;
    Cds_laticiniosCOD_LINHA: TIntegerField;
    Cds_laticiniosLINHA1: TStringField;
    Cds_laticiniosCOD_EMPRESA1: TIntegerField;
    Cds_laticiniosVALOR_LEITE1: TFMTBCDField;
    QryLinhasCOD_FORNECEDOR: TIntegerField;
    QryLinhasSOMAQUANTIDADE: TFMTBCDField;
    QryLinhasSOMAVALOR_LEITE: TFMTBCDField;
    QryLinhasSOMAVALOR_TOTAL: TFMTBCDField;
    QryLinhasNOME: TStringField;
    QryLinhasMES: TStringField;
    QryLinhasANO: TStringField;
    QryLinhasCOD_LINHA: TIntegerField;
    cds_linhasCOD_FORNECEDOR: TIntegerField;
    cds_linhasSOMAQUANTIDADE: TFMTBCDField;
    cds_linhasSOMAVALOR_LEITE: TFMTBCDField;
    cds_linhasSOMAVALOR_TOTAL: TFMTBCDField;
    cds_linhasNOME: TStringField;
    cds_linhasMES: TStringField;
    cds_linhasANO: TStringField;
    cds_linhasCOD_LINHA: TIntegerField;
    sds_linhas_bxFORNECEDOR: TStringField;
    sds_linhas_bxCODIGO_FORNECEDOR: TIntegerField;
    sds_linhas_bxAUTORIZACAO: TStringField;
    sds_linhas_bxSOMADEVALOR_BAIXA: TFMTBCDField;
    sds_linhas_bxMES: TStringField;
    sds_linhas_bxANO: TStringField;
    QryLaticiniosANO: TStringField;
    QryLaticiniosMES: TStringField;
    Cds_laticiniosANO: TStringField;
    Cds_laticiniosMES: TStringField;
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure ComboEdit2ButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPordLaticinios: TFormPordLaticinios;
  inicio, final, codfor, linha :string;
  mes, ano :string;

implementation

uses ModulodeDados, RelatorioProducaoLaticinios,
  ConsultaZonas, Ubibli1, RelLaticiniosFornecedor, Principal, xloc_fornecedor;

{$R *.dfm}
 function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure TFormPordLaticinios.ComboEdit1ButtonClick(Sender: TObject);
begin
  dm.SDS_Fornecedores.Open;
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
       RxLabel3.Caption:=DM.SDS_Fornecedores.Fieldbyname('NOME').AsString;
       ComboEdit1.Text:=DM.SDS_Fornecedores.Fieldbyname('CODIGO').AsString;
end;

procedure TFormPordLaticinios.suiButton7Click(Sender: TObject);
begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final :=dateedit2.TexT;

    mes :=edit1.Text;
    ano :=edit2.Text;

    codFor:=ComboEdit1.text;
    linha :=ComboEdit2.text;

    if ComboEdit1.Text > '' then
    begin
   { If DateEdit2.Date < DateEdit1.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit2.Date := DateEdit1.Date;
    end
    Else
    begin }
    Cds_laticinios.Active :=FALSE;
    QryLaticinios.close;
    QryLaticinios.SQL.Clear;
    QryLaticinios.SQL.add('select * from v_produtos_laticinio where cod_fornecedor >0'+'');
    if codfor > '' then
    QryLaticinios.SQL.add('and cod_fornecedor ='+QuotedStr(codfor)+'');
    if linha > '' then
    QryLaticinios.SQL.add('and COD_LINHA ='+(linha)+'');
    if mes > '' then
    QryLaticinios.SQL.add('and MES ='+(MES)+' and ANO ='+(ANO)+'');
    if inicio > ' / /   ' then
    QryLaticinios.SQL.add('and DATA_LANCAMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_LANCAMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    QryLaticinios.SQL.add('ORDER BY DATA_LANCAMENTO ASC');
    QryLaticinios.Open;
    Cds_laticinios.Active :=TRUE;
    SDS_CONTAS_PAGAS.Active := True;
  //  end;
     FormRelProdLaticinios:=TFormRelProdLaticinios.Create(self);
     FormRelProdLaticinios.RLReport1.Prepare;
     FormRelProdLaticinios.RLReport1.PreviewModal;
    end else
    if ComboEdit2.Text >'' then
    begin
    Cds_linhas.Active :=FALSE;
    QryLinhas.close;
    QryLinhas.SQL.Clear;
    QryLinhas.SQL.add('select * from V_PRODUTOS_LAT_FORN_SUM where COD_LINHA >0'+'');
    if codfor > '' then
    QryLinhas.SQL.add('and cod_fornecedor ='+(codfor)+'');
    if linha > '' then
    QryLinhas.SQL.add('and COD_LINHA ='+(linha)+'');
    if mes > '' then
    QryLinhas.SQL.add('and MES ='+(MES)+' and ANO ='+(ANO)+'');
    //  if inicio > ' / /   ' then
    //QryLinhas.SQL.add('and DATA_EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    QryLinhas.SQL.add('ORDER BY NOME ASC');
    QryLinhas.Open;
    cds_linhas.Active :=TRUE;
    sds_linhas_bx.Active := True;

     FormRelLaticiniosLinhas:=TFormRelLaticiniosLinhas.Create(self);
     FormRelLaticiniosLinhas.RLReport1.Prepare;
     FormRelLaticiniosLinhas.RLReport1.PreviewModal;
     end;
end;

procedure TFormPordLaticinios.suiButton5Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFormPordLaticinios.suiButton6Click(Sender: TObject);
begin
ComboEdit1.Clear;
ComboEdit2.Clear;
RxLabel3.Caption := '';
RxLabel1.Caption := '';
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
Edit2.Clear;
end;

procedure TFormPordLaticinios.ComboEdit2ButtonClick(Sender: TObject);
begin
DM.SDS_zonas.Open;
 FormConsZonas:=TFormConsZonas.Create(self);
     FormConsZonas.ShowModal;
       RxLabel1.Caption:=DM.SDS_zonas.Fieldbyname('DESCRICAO').AsString;
       ComboEdit2.Text:=DM.SDS_zonas.Fieldbyname('COD_ZONA').AsString;
end;

procedure TFormPordLaticinios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormPordLaticinios:=nil;
end;

procedure TFormPordLaticinios.ComboEdit1Exit(Sender: TObject);
begin
   if ComboEdit1.Text > '' THEN
    BEGIN
       DM.SDS_Fornecedores.Open;
       DM.SDS_Fornecedores.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
       RxLabel3.Caption:=DM.SDS_Fornecedores.Fieldbyname('NOME').AsString;
       ComboEdit1.Text:=DM.SDS_Fornecedores.Fieldbyname('CODIGO').AsString;
       end;
       end;

procedure TFormPordLaticinios.ComboEdit2Exit(Sender: TObject);
begin
       DM.SDS_zonas.Open;
       DM.SDS_ZONAS.Locate('COD_ZONA',ComboEdit2.Text,[loCaseinSensitive]);
       RxLabel1.Caption:=DM.SDS_zonas.Fieldbyname('DESCRICAO').AsString;
       ComboEdit2.Text:=DM.SDS_zonas.Fieldbyname('COD_ZONA').AsString;
end;

procedure TFormPordLaticinios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
