unit RelatorioComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, SUIButton, Mask,  ExtCtrls,
  DBCtrls, SUIDlg, FMTBcd, DB, DBClient, Provider, SqlExpr,
  aDvReflectionImage, aDvGroupBox, RxCurrEdit,
  RxToolEdit;

type
  TFormRelatorioComissao = class(TForm)
    Label13: TLabel;
    Label14: TLabel;
    RxLabel1: TRxLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton10: TsuiButton;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Edit1: TDBLookupComboBox;
    Dts_Comissao: TDataSource;
    edit2: TDBLookupComboBox;
    Label2: TLabel;
    GroupBox1: TAdvGroupBox;
    GroupBox2: TAdvGroupBox;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Edit3: TEdit;
    GroupBox3: TAdvGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    suiButton1: TsuiButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    CurrencyEdit2: TCurrencyEdit;
    RadioButton1: TRadioButton;
    Label10: TLabel;
    SQLD_com_avista: TSQLDataSet;
    dsp_com_avista: TDataSetProvider;
    cds_com_avista: TClientDataSet;
    Dts_com_avista: TDataSource;
    SQLD_com_prazo: TSQLDataSet;
    Dsp_com_prazo: TDataSetProvider;
    Cds_com_prazo: TClientDataSet;
    dts_com_prazo: TDataSource;
    Edit4: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    Label9: TLabel;
    Label11: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Edit5: TEdit;
    Dts_Comissao1: TDataSource;
    suiButton3: TsuiButton;
    Cds_comissao: TClientDataSet;
    dsp_comissao: TDataSetProvider;
    Cds_comissaoDATA_PEDIDO: TDateField;
    Cds_comissaoCODIGO_PROD: TIntegerField;
    Cds_comissaoDESCRICAO_PRODUTO: TStringField;
    Cds_comissaoVENDEDOR: TIntegerField;
    Cds_comissaoUSUARIO: TStringField;
    Cds_comissaoPROD_SERV: TStringField;
    cds_comissao1: TClientDataSet;
    dsp_comissao1: TDataSetProvider;
    cds_comissao1DATA_PEDIDO: TDateField;
    cds_comissao1CODIGO_PROD: TIntegerField;
    cds_comissao1DESCRICAO_PRODUTO: TStringField;
    cds_comissao1VENDEDOR: TIntegerField;
    cds_comissao1USUARIO: TStringField;
    Cds_comissaoPRECO_UNITARIO: TFMTBCDField;
    Cds_comissaoDESCONTO: TFMTBCDField;
    Cds_comissaoPRECO_TOTAL: TFMTBCDField;
    Cds_comissaoCOMISSAO_REC: TFMTBCDField;
    Cds_comissaoVALOR_BASE: TFMTBCDField;
    cds_comissao1PRECO_UNITARIO: TFMTBCDField;
    cds_comissao1DESCONTO: TFMTBCDField;
    cds_comissao1PRECO_TOTAL: TFMTBCDField;
    cds_comissao1COMISSAO_REC: TFMTBCDField;
    cds_comissao1VALOR_BASE: TFMTBCDField;
    Qry_comissao: TSQLDataSet;
    Qry_comissaoDATA_PEDIDO: TDateField;
    Qry_comissaoCODIGO_PROD: TIntegerField;
    Qry_comissaoDESCRICAO_PRODUTO: TStringField;
    Qry_comissaoVENDEDOR: TIntegerField;
    Qry_comissaoUSUARIO: TStringField;
    Qry_comissaoPRECO_UNITARIO: TFMTBCDField;
    Qry_comissaoDESCONTO: TFMTBCDField;
    Qry_comissaoPRECO_TOTAL: TFMTBCDField;
    Qry_comissaoCOMISSAO_REC: TFMTBCDField;
    Qry_comissaoVALOR_BASE: TFMTBCDField;
    Qry_comissaoPROD_SERV: TStringField;
    Qry_comissao1: TSQLDataSet;
    DateField3: TDateField;
    IntegerField5: TIntegerField;
    StringField1: TStringField;
    IntegerField6: TIntegerField;
    StringField2: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    StringField3: TStringField;
    Qry_comissaoN_VENDA: TIntegerField;
    Qry_comissaoNOME_CLIENTE: TStringField;
    Cds_comissaoN_VENDA: TIntegerField;
    Cds_comissaoNOME_CLIENTE: TStringField;
    Qry_comissao1N_VENDA: TIntegerField;
    Qry_comissao1NOME_CLIENTE: TStringField;
    cds_comissao1N_VENDA: TIntegerField;
    cds_comissao1NOME_CLIENTE: TStringField;
    img: TAdvReflectionImage;
    CheckBox1: TCheckBox;
    Qry_Comissao_r: TSQLDataSet;
    dsp_comissao_r: TDataSetProvider;
    Cds_comissao_r: TClientDataSet;
    dts_comissao_r: TDataSource;
    Qry_Comissao_S: TSQLDataSet;
    dsp_comissao_S: TDataSetProvider;
    Cds_comissao_S: TClientDataSet;
    Dts_comissao_S: TDataSource;
    Qry_Comissao_rDATA_PEDIDO: TDateField;
    Qry_Comissao_rVENDEDOR: TIntegerField;
    Qry_Comissao_rUSUARIO: TStringField;
    Qry_Comissao_rPRECO_UNITARIO: TFMTBCDField;
    Qry_Comissao_rDESCONTO: TFMTBCDField;
    Qry_Comissao_rPRECO_TOTAL: TFMTBCDField;
    Qry_Comissao_rCOMISSAO_REC: TFMTBCDField;
    Qry_Comissao_rVALOR_BASE: TFMTBCDField;
    Qry_Comissao_rN_VENDA: TIntegerField;
    Qry_Comissao_rNOME_CLIENTE: TStringField;
    Cds_comissao_rDATA_PEDIDO: TDateField;
    Cds_comissao_rVENDEDOR: TIntegerField;
    Cds_comissao_rUSUARIO: TStringField;
    Cds_comissao_rPRECO_UNITARIO: TFMTBCDField;
    Cds_comissao_rDESCONTO: TFMTBCDField;
    Cds_comissao_rPRECO_TOTAL: TFMTBCDField;
    Cds_comissao_rCOMISSAO_REC: TFMTBCDField;
    Cds_comissao_rVALOR_BASE: TFMTBCDField;
    Cds_comissao_rN_VENDA: TIntegerField;
    Cds_comissao_rNOME_CLIENTE: TStringField;
    Qry_Comissao_SDATA_PEDIDO: TDateField;
    Qry_Comissao_SVENDEDOR: TIntegerField;
    Qry_Comissao_SUSUARIO: TStringField;
    Qry_Comissao_SPRECO_UNITARIO: TFMTBCDField;
    Qry_Comissao_SDESCONTO: TFMTBCDField;
    Qry_Comissao_SPRECO_TOTAL: TFMTBCDField;
    Qry_Comissao_SCOMISSAO_REC: TFMTBCDField;
    Qry_Comissao_SVALOR_BASE: TFMTBCDField;
    Qry_Comissao_SN_VENDA: TIntegerField;
    Qry_Comissao_SNOME_CLIENTE: TStringField;
    Cds_comissao_SDATA_PEDIDO: TDateField;
    Cds_comissao_SVENDEDOR: TIntegerField;
    Cds_comissao_SUSUARIO: TStringField;
    Cds_comissao_SPRECO_UNITARIO: TFMTBCDField;
    Cds_comissao_SDESCONTO: TFMTBCDField;
    Cds_comissao_SPRECO_TOTAL: TFMTBCDField;
    Cds_comissao_SCOMISSAO_REC: TFMTBCDField;
    Cds_comissao_SVALOR_BASE: TFMTBCDField;
    Cds_comissao_SN_VENDA: TIntegerField;
    Cds_comissao_SNOME_CLIENTE: TStringField;
    SQLD_com_prazoVENDA_ID: TIntegerField;
    SQLD_com_prazoVALOR_ITEM: TFMTBCDField;
    SQLD_com_prazoVENDA_DATA: TDateField;
    SQLD_com_prazoCLIENTE_ID: TIntegerField;
    SQLD_com_prazoCLIENTE_NOME: TStringField;
    SQLD_com_prazoVENDEDOR_ID: TIntegerField;
    SQLD_com_prazoVALOR_BASE: TFMTBCDField;
    SQLD_com_prazoVALOR_COMISSAO: TFMTBCDField;
    Cds_com_prazoVENDA_ID: TIntegerField;
    Cds_com_prazoVALOR_ITEM: TFMTBCDField;
    Cds_com_prazoVENDA_DATA: TDateField;
    Cds_com_prazoCLIENTE_ID: TIntegerField;
    Cds_com_prazoCLIENTE_NOME: TStringField;
    Cds_com_prazoVENDEDOR_ID: TIntegerField;
    Cds_com_prazoVALOR_BASE: TFMTBCDField;
    Cds_com_prazoVALOR_COMISSAO: TFMTBCDField;
    SQLD_com_avistaVENDA_ID: TIntegerField;
    SQLD_com_avistaVALOR_ITEM: TFMTBCDField;
    SQLD_com_avistaVENDA_DATA: TDateField;
    SQLD_com_avistaCLIENTE_ID: TIntegerField;
    SQLD_com_avistaCLIENTE_NOME: TStringField;
    SQLD_com_avistaVENDEDOR_ID: TIntegerField;
    SQLD_com_avistaVALOR_BASE: TFMTBCDField;
    SQLD_com_avistaVALOR_COMISSAO: TFMTBCDField;
    cds_com_avistaVENDA_ID: TIntegerField;
    cds_com_avistaVALOR_ITEM: TFMTBCDField;
    cds_com_avistaVENDA_DATA: TDateField;
    cds_com_avistaCLIENTE_ID: TIntegerField;
    cds_com_avistaCLIENTE_NOME: TStringField;
    cds_com_avistaVENDEDOR_ID: TIntegerField;
    cds_com_avistaVALOR_BASE: TFMTBCDField;
    cds_com_avistaVALOR_COMISSAO: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit5Enter(Sender: TObject);
    procedure DateEdit6Enter(Sender: TObject);
    procedure DateEdit7Enter(Sender: TObject);
    procedure DateEdit8Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure DateEdit3Enter(Sender: TObject);
    procedure DateEdit4Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DateEdit5Exit(Sender: TObject);
    procedure DateEdit6Exit(Sender: TObject);
    procedure DateEdit7Exit(Sender: TObject);
    procedure DateEdit8Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DateEdit3Exit(Sender: TObject);
    procedure DateEdit4Exit(Sender: TObject);
    procedure suiButton10Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  total1, total2, total3, total4, total5, total6 : Currency;
  end;

var
  FormRelatorioComissao: TFormRelatorioComissao;

implementation

uses ModulodeDados, ModulodeDadosConsultas3, ModulodeDadosRelatorios,
  Z_RotinasGerais, Principal, Relcomissao, Udmcob, Comissaocobrador,
  ComissaoRec, Ucomissao_resumo;

{$R *.dfm}

procedure TFormRelatorioComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRelatorioComissao:=nil;
end;

procedure TFormRelatorioComissao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioComissao.suiButton3Click(Sender: TObject);
var
inicio, final,  produto_tp: String;
Vendedor :Integer;
begin
if DateEdit5.Text= '  /  /    ' then
begin
    ShowMessage('Digite a Data inicial');
end else
if DateEdit6.Text= '  /  /    ' then
begin
    ShowMessage('Digite a Data Final');
end else
IF CurrencyEdit3.Value = 0 then
begin
  ShowMessage('Digite o Percentual de Comissão dos Produtos');
end else
IF CurrencyEdit4.Value = 0 then
begin
  ShowMessage('Digite o Percentual de Comissão dos Serviços');
end else

if CheckBox1.Checked = True then
begin
Vendedor:=StrToInt(Edit5.Text);
cds_comissao_r.Active :=False;
Qry_comissao_r.close;
Qry_comissao_r.ParamByName('VEND').AsInteger         := Vendedor;
Qry_comissao_r.ParamByName('PROD_TP').AsString       := 'P';
Qry_comissao_r.ParamByName('DATAI').AsDate           := DateEdit5.Date;
Qry_Comissao_r.ParamByName('DATAF').AsDate           := DateEdit6.Date;
Qry_comissao_r.ParamByName('PERC_COMISSAO').AsCurrency  := StrToCurr(CurrencyEdit3.Text);
Qry_Comissao_r.Open;
cds_comissao_r.Active :=TRUE;

cds_comissao_r.First;
total1 := 0;
total2 := 0;
total1:= total1 + Cds_comissao_RVALOR_BASE.AsFloat;
total2:= total2 + Cds_comissao_RCOMISSAO_REC.AsFloat;
cds_comissao_r.Next;
While not cds_comissao_r.Eof do
begin
total1:= total1 + cds_comissao_rVALOR_base.AsFloat;
total2:= total2 + Cds_comissao_rCOMISSAO_REC.AsFloat;
cds_comissao_r.Next;
end;
cds_comissao_r.last;


cds_comissao_s.Active :=false;
Qry_comissao_s.close;
Qry_comissao_s.ParamByName('VEND').AsInteger         := Vendedor;
Qry_comissao_s.ParamByName('PROD_TP').AsString       := 'S';
Qry_comissao_s.ParamByName('DATAI').AsDate           := DateEdit5.Date;
Qry_comissao_s.ParamByName('DATAF').AsDate           := DateEdit6.Date;
Qry_comissao_s.ParamByName('PERC_COMISSAO').AsCurrency  := StrToCurr(CurrencyEdit4.Text);
Qry_comissao_s.Open;
cds_comissao_s.Active :=TRUE;

cds_comissao_s.First;
total3 := 0;
total4 := 0;
total3:= total3 + Cds_comissao_sVALOR_BASE.AsFloat;
total4:= total4 + Cds_comissao_sCOMISSAO_REC.AsFloat;
cds_comissao_s.Next;
While not cds_comissao_s.Eof do
begin
total3:= total3 + cds_comissao_sVALOR_base.AsFloat;
total4:= total4 + Cds_comissao_sCOMISSAO_REC.AsFloat;
cds_comissao_s.Next;
end;
cds_comissao_s.Last;

total5 := (total1 + total3);
total6 := (total2 + total4);

If (Cds_comissao_r.RecordCount > 0) OR (Cds_comissao_s.RecordCount > 0) then
 begin
FormRel_Comissao_resumo := TFormRel_Comissao_resumo.Create(self);
FormRel_Comissao_resumo.RLReport1.Prepare;
FormRel_Comissao_resumo.RLReport1.PreviewModal;
END ELSE
ShowMessage('Não ha dados a serem impressos');
end else

begin
Vendedor:=StrToInt(Edit5.Text);
cds_comissao.Active :=False;
Qry_comissao.close;
Qry_comissao.ParamByName('VEND').AsInteger         := Vendedor;
Qry_comissao.ParamByName('PROD_TP').AsString       := 'P';
Qry_comissao.ParamByName('DATAI').AsDate           := DateEdit5.Date;
Qry_comissao.ParamByName('DATAF').AsDate           := DateEdit6.Date;
Qry_comissao.ParamByName('PERC_COMISSAO').AsCurrency  := StrToCurr(CurrencyEdit3.Text);
Qry_comissao.Open;
cds_comissao.Active :=TRUE;


cds_comissao1.Active :=false;
Qry_comissao1.close;
Qry_comissao1.ParamByName('VEND').AsInteger         := Vendedor;
Qry_comissao1.ParamByName('PROD_TP').AsString       := 'S';
Qry_comissao1.ParamByName('DATAI').AsDate           := DateEdit5.Date;
Qry_comissao1.ParamByName('DATAF').AsDate           := DateEdit6.Date;
Qry_comissao1.ParamByName('PERC_COMISSAO').AsCurrency  := StrToCurr(CurrencyEdit4.Text);
Qry_comissao1.Open;
cds_comissao1.Active :=TRUE;

cds_comissao.First;
total1 := 0;
total2 := 0;
total1:= total1 + Cds_comissaoVALOR_BASE.AsFloat;
total2:= total2 + Cds_comissaoCOMISSAO_REC.AsFloat;
cds_comissao.Next;
While not cds_comissao.Eof do
begin
total1:= total1 + cds_comissaoVALOR_base.AsFloat;
total2:= total2 + Cds_comissaoCOMISSAO_REC.AsFloat;
cds_comissao.Next;
end;
cds_comissao.last;

cds_comissao1.First;
total3 := 0;
total4 := 0;
total3:= total3 + Cds_comissao1VALOR_BASE.AsFloat;
total4:= total4 + Cds_comissao1COMISSAO_REC.AsFloat;
cds_comissao1.Next;
While not cds_comissao1.Eof do
begin
total3:= total3 + cds_comissao1VALOR_base.AsFloat;
total4:= total4 + Cds_comissao1COMISSAO_REC.AsFloat;
cds_comissao1.Next;
end;
cds_comissao1.Last;

total5 := (total1 + total3);
total6 := (total2 + total4);

If (Cds_comissao.RecordCount > 0) OR (Cds_comissao1.RecordCount > 0) then
 begin
FormComissaoRel := TFormComissaoRel.Create(self);
FormComissaoRel.RLReport1.Prepare;
FormComissaoRel.RLReport1.PreviewModal;
END ELSE
ShowMessage('Não ha dados a serem impressos');
end;
{cds_comissao.Active :=FALSE;
Qry_comissao.close;
Qry_comissao.SQL.Clear;
Qry_comissao.SQL.add('select * from V_Comissao_Vendedor where CODIGO >0'+'');
if Vendedor > '' then
Qry_comissao.SQL.add('and USUARIO ='+QuotedStr(Vendedor)+'');
if inicio > ' / /   ' then
Qry_comissao.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
Qry_comissao.SQL.add('ORDER BY CODIGO1 ASC');
Qry_comissao.Open;
cds_comissao.Active :=TRUE;}
{if produtos.Checked then
begin
  produto_tp :='P';
cds_comissao.Active :=FALSE;
Qry_comissao.close;
Qry_comissao.SQL.Clear;
Qry_comissao.SQL.add('select * from V_Comissao_Vendedor where COMISSAO1 >0'+'');
if Vendedor > '' then
Qry_comissao.SQL.add('and USUARIO ='+QuotedStr(Vendedor)+'');
if produto_tp > '' then
Qry_comissao.SQL.add('and PROD_SERV='+QuotedStr(produto_tp)+'');
if inicio > ' / /   ' then
Qry_comissao.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
Qry_comissao.SQL.add('ORDER BY CODIGO1 ASC');
Qry_comissao.Open;
cds_comissao.Active :=TRUE;
if cds_comissao.RecordCount > 0 then
 begin
FormComissaoRel := TFormComissaoRel.Create(self);
FormComissaoRel.RLReport1.Prepare;
FormComissaoRel.RLReport1.PreviewModal();
end else
ShowMessage('Não ha dados a serem impressos');
end ELSE
 if servicos.Checked then
begin
   produto_tp :='S';
cds_comissao.Active :=FALSE;
Qry_comissao.close;
Qry_comissao.SQL.Clear;
Qry_comissao.SQL.add('select * from V_Comissao_Vendedor where COMISSAO1 >0'+'');
if Vendedor > '' then
Qry_comissao.SQL.add('and USUARIO ='+QuotedStr(Vendedor)+'');
if produto_tp > '' then
Qry_comissao.SQL.add('and PROD_SERV='+QuotedStr(produto_tp)+'');
if inicio > ' / /   ' then
Qry_comissao.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
Qry_comissao.SQL.add('ORDER BY CODIGO1 ASC');
Qry_comissao.Open;
cds_comissao.Active :=TRUE;
if cds_comissao.RecordCount > 0 then
 begin
FormComissaoRel := TFormComissaoRel.Create(self);
FormComissaoRel.RLReport1.Prepare;
FormComissaoRel.RLReport1.PreviewModal();
end else
ShowMessage('Não ha dados a serem impressos');
 end;  }
 
end;

procedure TFormRelatorioComissao.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit5Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit6Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit7Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit8Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioComissao.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
Edit5.Text := dm.SDS_UsuariosCODIGO.Text;
end;

procedure TFormRelatorioComissao.DateEdit5Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.DateEdit6Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.DateEdit7Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.DateEdit8Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
Edit3.Text := dm.SDS_UsuariosCODIGO.Text;
end;

procedure TFormRelatorioComissao.DateEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.DateEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioComissao.suiButton10Click(Sender: TObject);
var
DI, DF: String;
inicio, final, Cobrador, produto_tp: String;
begin
  Edit1Exit(Sender);

  IF CurrencyEdit1.Value = 0 then
  begin
   Application.MESSAGEBOX('Favor preencha o campo Percentual de comissão?', 'Aviso', MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
  end else

   begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    Cobrador:=Edit3.Text;

    //DM.SDS_Clientes.Open;
    dmcob.CDS_Cobranca1.Active :=FALSE;
    dmcob.QRYcobranca1.close;
    dmcob.QRYcobranca1.SQL.Clear;
    dmcob.QRYcobranca1.SQL.add('select * from CREDIARIO where CODIGO >0'+'');
    if Cobrador > '' then
    dmcob.QRYcobranca1.SQL.add('and COBRADOR ='+(cobrador)+'');
    if inicio > ' / /   ' then
    dmcob.QRYcobranca1.SQL.add('and DATA_BAIXA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_BAIXA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    dmcob.QRYcobranca1.SQL.add('ORDER BY NOME_SACADO ASC');
    dmcob.QRYcobranca1.Open;
    dmcob.CDS_Cobranca1.Active :=TRUE;
    dmcob.CDS_Cobranca1.Filtered := false;

    try
    //dbgrid1.cursor:=crhourglass;
    dmcob.CDS_Cobranca1.first;
    repeat
      dmcob.CDS_Cobranca1.edit;
      dmcob.CDS_COBRANCA1COMISSAO.text:=CurrencyEdit1.Text;
      dmcob.CDS_Cobranca1.Post;
      dmcob.CDS_Cobranca1.ApplyUpdates(0);
    dmcob.CDS_Cobranca1.Next;
    until dmcob.CDS_Cobranca1.eof;
    //dmcob.CDS_Cobranca1.refresh;
    //dbgrid1.refresh;
    dmcob.CDS_Cobranca1.first;
    //dbgrid1.cursor:=crdefault;
    except
    dmcob.CDS_Cobranca1.cancel;
    end;
   // dmcob.CDS_CobrancA1.refresh;
    //dmcob.CDS_Cobranca2.Refresh;
    dmcob.CDS_Cobranca1.First;
    //end;


    FormComCobrador := TFormComCobrador.Create(self);
    FormComCobrador.RLReport1.Prepare;
    FormComCobrador.RLReport1.PreviewModal();
{Try
    DMC3.SQLD_PedidosGeral.Active:=False;
    DMC3.CDS_PedidosGeral.Active:=False;
    DMC3.SQLD_PedidosGeral.Params[0].AsDate:=DateEdit1.Date;
    DMC3.SQLD_PedidosGeral.Params[1].AsDate:=DateEdit2.Date;
    DMC3.SQLD_PedidosGeral.Active:=True;
    DMC3.CDS_PedidosGeral.Active:=True;
    If  DMC3.CDS_PedidosGeral.EOF then
Begin
      Msgi.Text:= 'Não Há Comissões No Período Informado!';
      Msgi.ShowModal;
    end
  else
  begin
    DI:= DateEdit1.Text;
    DF:= DateEdit2.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ComissaoGeral',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     Msge.ShowModal;
   end; }



end;
end;

procedure TFormRelatorioComissao.suiButton2Click(Sender: TObject);
var
DI, DF: String;
begin
{Try
    DMC3.SQLD_ExtComissaoGeral.Active:=False;
    DMC3.CDS_ExtComissaoGeral.Active:=False;
    DMC3.SQLD_ExtComissaoGeral.Params[0].AsDate:=DateEdit7.Date;
    DMC3.SQLD_ExtComissaoGeral.Params[1].AsDate:=DateEdit8.Date;
    DMC3.SQLD_ExtComissaoGeral.Active:=True;
    DMC3.CDS_ExtComissaoGeral.Active:=True;
    If  DMC3.CDS_ExtComissaoGeral.EOF then
Begin
      Msgi.Text:= 'Não Há Extorno de Comissão no Período Informado!';
      Msgi.ShowModal;
    end
  else
  begin
    DI:= DateEdit7.Text;
    DF:= DateEdit8.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ExtComissaoGeral',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     Msge.ShowModal;
   end;}
end;

procedure TFormRelatorioComissao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F1) then
    FormPrincipal.Calculator.Execute;
end;

procedure TFormRelatorioComissao.suiButton1Click(Sender: TObject);
begin
  cds_com_avista.Active:= False;
  cds_com_prazo.Active:= False;

  if RadioButton3.Checked then
  begin
    cds_com_avista.Params[0].AsInteger:= StrToIntDef(Edit4.Text, 0);
    cds_com_avista.Params[1].AsDate:= DateEdit3.Date;
    cds_com_avista.Params[2].AsDate:= DateEdit4.Date;
    cds_com_avista.Params[3].AsFloat:= CurrencyEdit2.Value;
    cds_com_avista.Active:= True;
  end
  else
  if RadioButton2.Checked then
  begin
    cds_com_prazo.Params[0].AsInteger:= StrToIntDef(Edit4.Text, 0);
    cds_com_prazo.Params[1].AsDate:= DateEdit3.Date;
    cds_com_prazo.Params[2].AsDate:= DateEdit4.Date;
    cds_com_prazo.Params[3].AsFloat:= CurrencyEdit2.Value;
    cds_com_prazo.Active:= True;
  end
  else
  if RadioButton1.Checked then
  begin
    cds_com_avista.Params[0].AsInteger:= StrToIntDef(Edit4.Text, 0);
    cds_com_avista.Params[1].AsDate:= DateEdit3.Date;
    cds_com_avista.Params[2].AsDate:= DateEdit4.Date;
    cds_com_avista.Params[3].AsFloat:= CurrencyEdit2.Value;
    cds_com_avista.Active:= True;

    cds_com_prazo.Params[0].AsInteger:= StrToIntDef(Edit4.Text, 0);
    cds_com_prazo.Params[1].AsDate:= DateEdit3.Date;
    cds_com_prazo.Params[2].AsDate:= DateEdit4.Date;
    cds_com_prazo.Params[3].AsFloat:= CurrencyEdit2.Value;
    cds_com_prazo.Active:= True;
  end;

  if (cds_com_avista.Active) and (cds_com_avista.RecordCount > 0) or
    (cds_com_prazo.Active) and (cds_com_prazo.RecordCount > 0)
  then
  begin
    try
      FormComissaoRecebida:= TFormComissaoRecebida.Create(nil);
      FormComissaoRecebida.RLReport1.Prepare;
      FormComissaoRecebida.RLReport1.PreviewModal();
    finally
      FreeAndNil(FormComissaoRecebida);
    end;
  end
  else
    ShowMessage('Não ha dados a serem impressos');
end;


procedure TFormRelatorioComissao.DBLookupComboBox1Exit(Sender: TObject);
begin
  CorSaida(Sender);
  Edit4.Text := dm.SDS_UsuariosCODIGO.Text;
end;

end.
