unit FrmRelNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  StdCtrls, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, Mask,
  Buttons, ExtCtrls, rxToolEdit;

type
  TFRelNotaFiscal = class(TForm)
    Bevel1: TBevel;
    lblCliente: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    spbRelatorioContrato: TSpeedButton;
    edtIni: TDateEdit;
    edtFim: TDateEdit;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    qrRel: TFDQuery;
    cbxStatus: TComboBox;
    qrRelNR_NOTA: TIntegerField;
    qrRelDT_EMISSAO: TDateField;
    qrRelVL_TOTAL: TBCDField;
    qrRelSTATUS: TStringField;
    qrRelSTATUS_INUTILIZADO: TStringField;
    qrRelSTATUS_EMAIL: TStringField;
    qrRelNR_RECIBO_NFE: TStringField;
    qrRelNOME_CLIENTE_FOR: TStringField;
    qrRelSTATUS_CANCELADO: TStringField;
    qrRelNR_PROTOCOLO_CANC_NFE: TStringField;
    qrRelNR_PROTOCOLO_NFE: TStringField;
    qrRelDEPEC: TStringField;
    qrRelCORRECAO: TStringField;
    qrRelNR_PEDIDO: TIntegerField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
    qrRelCHAVE_ACESSO_NFE: TStringField;
    strngfldRelCHAVE2: TStringField;
    qrRel2: TFDQuery;
    dsRel: TDataSource;
    qrRel2NR_NOTA: TIntegerField;
    qrRel2DT_EMISSAO: TDateField;
    qrRel2VL_TOTAL: TBCDField;
    qrRel2STATUS: TStringField;
    qrRel2STATUS_INUTILIZADO: TStringField;
    qrRel2STATUS_EMAIL: TStringField;
    qrRel2NR_RECIBO_NFE: TStringField;
    qrRel2NOME_CLIENTE_FOR: TStringField;
    qrRel2STATUS_CANCELADO: TStringField;
    qrRel2NR_PROTOCOLO_CANC_NFE: TStringField;
    qrRel2NR_PROTOCOLO_NFE: TStringField;
    qrRel2DEPEC: TStringField;
    qrRel2CORRECAO: TStringField;
    qrRel2NR_PEDIDO: TIntegerField;
    qrRel2EMPRESA: TStringField;
    qrRel2EMPRESA_CNPJ: TStringField;
    qrRel2EMPRESA_FONE: TStringField;
    qrRel2EMPRESA_LOGO: TBlobField;
    procedure spbRelatorioContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelNotaFiscal: TFRelNotaFiscal;

implementation

{$R *.dfm}

procedure TFRelNotaFiscal.spbRelatorioContratoClick(Sender: TObject);
begin
  frxReport.LoadFromFile('C:\siace\rel\RelatorioStatusNFE.fr3');
  if Self.Caption = 'Relatório de NF-e' then
  begin
    dsRel.DataSet:= qrRel;
    frxReport.Variables['STATUS']:= QuotedStr('Relatório de NF-e - ' + cbxStatus.Text);
  end
  else
  begin
  
    dsRel.DataSet:= qrRel2;
    frxReport.Variables['STATUS']:= QuotedStr('Relatório de NFC-e - ' + cbxStatus.Text);
  end;
  dsRel.DataSet.Close;
  dsRel.DataSet.Filtered:= False;
  TFDQuery(dsRel.DataSet).ParamByName('DTINI').AsDate:= edtIni.Date;
  TFDQuery(dsRel.DataSet).ParamByName('DTFIM').AsDate:= edtFim.Date;
  
  if cbxStatus.ItemIndex = 1 then
    dsRel.DataSet.Filter:= 'STATUS = ''S'''
  else
  if cbxStatus.ItemIndex = 2 then
    dsRel.DataSet.Filter:= 'STATUS_EMAIL = ''S'''
  else
  if cbxStatus.ItemIndex = 3 then
    dsRel.DataSet.Filter:= 'STATUS_CANCELADO = ''S'''
  else
  if cbxStatus.ItemIndex = 4 then
    dsRel.DataSet.Filter:= 'CORRECAO = ''S'''
  else
  if cbxStatus.ItemIndex = 5 then
    dsRel.DataSet.Filter:= 'CHAVE_ACESSO_NFE = '''' AND CHAVE2 = '''''
  else
  if cbxStatus.ItemIndex = 6 then
    dsRel.DataSet.Filter:= 'STATUS = ''N'''
  else
  if cbxStatus.ItemIndex = 7 then
    dsRel.DataSet.Filter:= 'DEPEC = ''S'''
  else
  if cbxStatus.ItemIndex = 8 then
    dsRel.DataSet.Filter:= 'STATUS_INUTILIZADO = ''S''';

  if cbxStatus.ItemIndex <> 0 then
    dsRel.DataSet.Filtered:= True;

  dsRel.DataSet.Open;
  frxReport.ShowReport;
end;

end.
