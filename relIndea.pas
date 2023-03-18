unit relIndea;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, RXCtrls, DBCtrls, ExtCtrls, 
  SimpleDS, Provider, DBClient, StdCtrls, Buttons, Mask, Data.DBXFirebird,
  RxToolEdit;

type
  TFormRelIndea = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    RxLabel1: TRxLabel;
    qry_venda: TSQLQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cds_venda: TClientDataSet;
    dts_venda: TDataSource;
    Dsp_venda: TDataSetProvider;
    Sds_partidas: TSimpleDataSet;
    Dts_partidas: TDataSource;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    qry_vendaCODIGO: TIntegerField;
    qry_vendaVALOR_ITENS: TFMTBCDField;
    qry_vendaENC_FINANCEIRO: TFMTBCDField;
    qry_vendaVALOR_DESCONTO: TFMTBCDField;
    qry_vendaVALOR_TOTAL: TFMTBCDField;
    qry_vendaVALOR_COMISSAO: TFMTBCDField;
    qry_vendaUSUARIO: TStringField;
    qry_vendaDATA_PEDIDO: TDateField;
    qry_vendaDATA_ENTREGA: TDateField;
    qry_vendaCODIGO_CLIENTE: TIntegerField;
    qry_vendaNOME_CLIENTE: TStringField;
    qry_vendaPAGAMENTO: TStringField;
    qry_vendaSTATUS: TStringField;
    qry_vendaSITUACAO: TStringField;
    qry_vendaUSUARIO_ENTREGA: TStringField;
    qry_vendaTP: TStringField;
    qry_vendaOBSERVACOES: TStringField;
    qry_vendaCOD_VENDEDOR: TIntegerField;
    qry_vendaCOD_PAGTO: TIntegerField;
    qry_vendaN_CUPOM: TStringField;
    qry_vendaN_ECF: TStringField;
    qry_vendaCOD_EMPRESA: TIntegerField;
    qry_vendaHORA: TTimeField;
    qry_vendaVALOR_ACRESCIMOS: TFMTBCDField;
    qry_vendaCOD_ORCAMENTO: TIntegerField;
    qry_vendaCOD_PEDIDO: TIntegerField;
    qry_vendaCOD_OS: TSmallintField;
    qry_vendaNUM_NOTA: TIntegerField;
    qry_vendaSERIE_NOTA: TStringField;
    qry_vendaENDERECO: TStringField;
    qry_vendaCPF_CNPJ: TStringField;
    qry_vendaRG_IE: TStringField;
    qry_vendaFONE: TStringField;
    qry_vendaCIDADE: TStringField;
    qry_vendaBAIRRO: TStringField;
    qry_vendaN_PARTIDA: TStringField;
    qry_vendaPROPRIEDADE: TStringField;
    qry_vendaQUANT_VENDIDA: TFMTBCDField;
    qry_vendaSALDO_VENDIDO: TFMTBCDField;
    qry_vendaMED_VETERINARIO: TStringField;
    qry_vendaDATA_VACINA: TDateField;
    qry_vendaVALOR_AVISTA: TFMTBCDField;
    qry_vendaVALOR_PRAZO: TFMTBCDField;
    qry_vendaUF: TStringField;
    qry_vendaCOD_IBGE: TStringField;
    qry_vendaCEP: TStringField;
    qry_vendaNUMERO: TStringField;
    qry_vendaTIPO: TStringField;
    qry_vendaVALOR_PAGO: TFMTBCDField;
    qry_vendaVALOR_TROCO: TFMTBCDField;
    qry_vendaENTREGADOR: TStringField;
    qry_vendaTIPO_PEDIDO: TStringField;
    qry_vendaFECHADO: TStringField;
    qry_vendaMESA: TStringField;
    qry_vendaREFERENCIA: TStringField;
    cds_vendaCODIGO: TIntegerField;
    cds_vendaVALOR_ITENS: TFMTBCDField;
    cds_vendaENC_FINANCEIRO: TFMTBCDField;
    cds_vendaVALOR_DESCONTO: TFMTBCDField;
    cds_vendaVALOR_TOTAL: TFMTBCDField;
    cds_vendaVALOR_COMISSAO: TFMTBCDField;
    cds_vendaUSUARIO: TStringField;
    cds_vendaDATA_PEDIDO: TDateField;
    cds_vendaDATA_ENTREGA: TDateField;
    cds_vendaCODIGO_CLIENTE: TIntegerField;
    cds_vendaNOME_CLIENTE: TStringField;
    cds_vendaPAGAMENTO: TStringField;
    cds_vendaSTATUS: TStringField;
    cds_vendaSITUACAO: TStringField;
    cds_vendaUSUARIO_ENTREGA: TStringField;
    cds_vendaTP: TStringField;
    cds_vendaOBSERVACOES: TStringField;
    cds_vendaCOD_VENDEDOR: TIntegerField;
    cds_vendaCOD_PAGTO: TIntegerField;
    cds_vendaN_CUPOM: TStringField;
    cds_vendaN_ECF: TStringField;
    cds_vendaCOD_EMPRESA: TIntegerField;
    cds_vendaHORA: TTimeField;
    cds_vendaVALOR_ACRESCIMOS: TFMTBCDField;
    cds_vendaCOD_ORCAMENTO: TIntegerField;
    cds_vendaCOD_PEDIDO: TIntegerField;
    cds_vendaCOD_OS: TSmallintField;
    cds_vendaNUM_NOTA: TIntegerField;
    cds_vendaSERIE_NOTA: TStringField;
    cds_vendaENDERECO: TStringField;
    cds_vendaCPF_CNPJ: TStringField;
    cds_vendaRG_IE: TStringField;
    cds_vendaFONE: TStringField;
    cds_vendaCIDADE: TStringField;
    cds_vendaBAIRRO: TStringField;
    cds_vendaN_PARTIDA: TStringField;
    cds_vendaPROPRIEDADE: TStringField;
    cds_vendaQUANT_VENDIDA: TFMTBCDField;
    cds_vendaSALDO_VENDIDO: TFMTBCDField;
    cds_vendaMED_VETERINARIO: TStringField;
    cds_vendaDATA_VACINA: TDateField;
    cds_vendaVALOR_AVISTA: TFMTBCDField;
    cds_vendaVALOR_PRAZO: TFMTBCDField;
    cds_vendaUF: TStringField;
    cds_vendaCOD_IBGE: TStringField;
    cds_vendaCEP: TStringField;
    cds_vendaNUMERO: TStringField;
    cds_vendaTIPO: TStringField;
    cds_vendaVALOR_PAGO: TFMTBCDField;
    cds_vendaVALOR_TROCO: TFMTBCDField;
    cds_vendaENTREGADOR: TStringField;
    cds_vendaTIPO_PEDIDO: TStringField;
    cds_vendaFECHADO: TStringField;
    cds_vendaMESA: TStringField;
    cds_vendaREFERENCIA: TStringField;
    Sds_partidasCOD_EMPRESA: TIntegerField;
    Sds_partidasCODIGO: TIntegerField;
    Sds_partidasN_PARTIDA: TStringField;
    Sds_partidasNOTA_COMPRA: TStringField;
    Sds_partidasDATA_ENTRADA: TDateField;
    Sds_partidasCOD_LABORATORIO: TStringField;
    Sds_partidasNOME_LABORATORIO: TStringField;
    Sds_partidasDATA_FABRICACAO: TDateField;
    Sds_partidasDATA_VENCIMENTO: TDateField;
    Sds_partidasTIPO_VACINA: TStringField;
    Sds_partidasQUANT_COMPRA: TFMTBCDField;
    Sds_partidasQUANT_VENDA: TFMTBCDField;
    Sds_partidasSALDO: TFMTBCDField;
    Sds_partidasNOME_EMPRESA_COMPRA: TStringField;
    Sds_partidasMUNICIPIO_COMPRA: TStringField;
    Sds_partidasDATACAD: TDateField;
    Sds_partidasUSERCAD: TStringField;
    Sds_partidasAFTOSA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelIndea: TFormRelIndea;

implementation

uses Principal, ModulodeDados, indeaVacinas, RelBrucelose;

{$R *.dfm}

procedure TFormRelIndea.BitBtn1Click(Sender: TObject);
var
  inicio, final: string;
  partida : string;
  begin
  if Sds_partidasAFTOSA.Text = 'N' then
  begin
   ShowMessage('Esta partida não corresponde a uma vacina de Aftosa');
   DateEdit1.SetFocus;
  end else
 
  if DateEdit1.Text = '  /  /    ' then
  begin
   ShowMessage('Preencha a data inicial');
   DateEdit1.SetFocus;
  end else

  if DateEdit2.Text = '  /  /    ' then
  begin
   ShowMessage('Preencha a data Final');
   DateEdit2.SetFocus;
  end else

    If DateEdit2.Date < DateEdit1.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit2.Date := DateEdit1.Date;
    end  Else

    begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    partida := Sds_partidasCODIGO.Text;


    cds_venda.Active :=FALSE;
    QRY_venda.close;
    qry_venda.SQL.Clear;
    qry_venda.SQL.add('select * from pedidos where COD_EMPRESA >0'+'');
    if partida > '' then
    qry_venda.SQL.add('and N_partida ='+QuotedStr(partida)+'');
    if inicio > ' / /   ' then
    qry_venda.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_venda.SQL.add('ORDER BY SALDO_VENDIDO DESC');
    qry_venda.Open;
    cds_venda.Active :=TRUE;

    FormIndeaVacinas := TFormIndeaVacinas.Create(self);
    FormIndeaVacinas.RLReport1.Prepare;
    FormIndeaVacinas.RLReport1.Preview();
    end;
end;

procedure TFormRelIndea.FormShow(Sender: TObject);
begin
  Sds_partidas.Active := False;
  Sds_partidas.Active := True;
end;

procedure TFormRelIndea.BitBtn2Click(Sender: TObject);
var
  inicio, final: string;
  partida : string;
  begin
  if Sds_partidasAFTOSA.Text = 'S' then
  begin
   ShowMessage('Esta partida não corresponde a uma vacina de Brucelose/Raiva Etc..');
   DateEdit1.SetFocus;
  end else

  if DateEdit1.Text = '  /  /    ' then
  begin
   ShowMessage('Preencha a data inicial');
   DateEdit1.SetFocus;
  end else

  if DateEdit2.TEXT = '  /  /    ' then
  begin
   ShowMessage('Preencha a data Final');
   DateEdit2.SetFocus;
  end else

    If DateEdit2.Date < DateEdit1.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit2.Date := DateEdit1.Date;
    end  Else

    begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    partida := Sds_partidasCODIGO.Text;

    cds_venda.Active :=FALSE;
    QRY_venda.close;
    qry_venda.SQL.Clear;
    qry_venda.SQL.add('select * from pedidos where COD_EMPRESA >0'+'');
    if partida > '' then
    qry_venda.SQL.add('and N_partida ='+QuotedStr(partida)+'');
    if inicio > ' / /   ' then
    qry_venda.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_venda.SQL.add('ORDER BY SALDO_VENDIDO DESC');
    qry_venda.Open;
    cds_venda.Active :=TRUE;

    FormBrucelose := TFormBrucelose.Create(self);
    FormBrucelose.RLReport1.Prepare;
    FormBrucelose.RLReport1.Preview();
    end;
end;

procedure TFormRelIndea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormRelIndea := nil;
end;

end.
