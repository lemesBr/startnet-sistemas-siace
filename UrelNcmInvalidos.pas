unit UrelNcmInvalidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLRichFilter, RLHTMLFilter,
  RLXLSFilter, RLFilters, RLPDFFilter, RLReport;

type
  TFormNcmInv = class(TForm)
    RLReport1: TRLReport;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    FDQuery1: TFDQuery;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel9: TRLLabel;
    DataSource1: TDataSource;
    RLBand2: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1CODIGO_BARRAS: TStringField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1PRECO_CUSTO: TBCDField;
    FDQuery1PRECO_VENDA: TBCDField;
    FDQuery1ATIVO: TStringField;
    FDQuery1NCM_SH: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNcmInv: TFormNcmInv;

implementation

uses ModulodeDados;

{$R *.dfm}

end.
