unit UResumoVdia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLHTMLFilter, RLPDFFilter,
  RLReport;

type
  TFormResumoVdia = class(TForm)
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
    mesi: TRLLabel;
    anoi: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
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
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLExpressionParser1: TRLExpressionParser;
    Matricial: TRLDraftFilter;
    RLLabel7: TRLLabel;
    dia: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResumoVdia: TFormResumoVdia;

implementation

uses ModulodeDadosConsultas5, Resumo_Venda_Produtos;

{$R *.dfm}

procedure TFormResumoVdia.RLReport1PageStarting(Sender: TObject);
begin
dia.Caption  := FormResumovendas.rzedit3.text;
mesi.Caption := FormResumovendas.rzedit4.text;
anoi.Caption := FormResumovendas.rzedit5.text; 
end;

end.
