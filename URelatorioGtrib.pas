unit URelatorioGtrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLFilters, RLDraftFilter, RLPDFFilter,
  RLRichFilter, RLHTMLFilter;

type
  TFormRelatorioGtrib = class(TForm)
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
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult5: TRLDBResult;
    rlbl6: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    Grupo: TRLLabel;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    Matricial: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel12: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel7: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioGtrib: TFormRelatorioGtrib;

implementation

uses Urelgrupotrib;

{$R *.dfm}

procedure TFormRelatorioGtrib.RLReport1PageStarting(Sender: TObject);
begin
datai.Caption:= FormRelGrupoT.DateEdit1.Text;
dataf.Caption:= FormRelGrupoT.DateEdit2.Text;
Grupo.Caption := FormRelGrupoT.D_GRUPO_T.CAPTION;
end;

end.
