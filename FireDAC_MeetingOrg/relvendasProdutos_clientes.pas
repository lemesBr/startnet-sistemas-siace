unit relvendasProdutos_clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichFilter, RLPDFFilter, RLFilters, RLHTMLFilter,
  RLParser, RLDraftFilter;

type
  TFormVendas_Produtos = class(TForm)
    Matricial: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult5: TRLDBResult;
    rlbl6: TRLLabel;
    rlbnd1: TRLBand;
    rlbl4: TRLLabel;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO1: TRLDBText;
    rldbtxtCODIGO_CLIENTE: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    rlbl8: TRLLabel;
    RLGroup1: TRLGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendas_Produtos: TFormVendas_Produtos;

implementation

uses ModulodeDadosConsultas3;

{$R *.dfm}

end.
