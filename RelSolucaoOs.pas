unit RelSolucaoOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLPDFFilter, RLFilters, RLRichFilter, RLDraftFilter;

type
  TFormSolucaoOS = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    rlbl1: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLBand3: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText34: TRLDBText;
    RLBand4: TRLBand;
    RLLabel20: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLLabel48: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel49: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLSubDetail1: TRLSubDetail;
    RLDBText8: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLBand2: TRLBand;
    RLLabel35: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText43: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText44: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel60: TRLLabel;
    procedure _empresa(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    a,b :Real;
  end;

var
  FormSolucaoOS: TFormSolucaoOS;

implementation

uses DMOS1, ModulodeDados;

{$R *.dfm}

procedure TFormSolucaoOS._empresa(Sender: TObject);
begin
 DMOS.SDS_REL_PRODUTO.First;
                    A:= 0;
                    B:= 0;
                    A:= A + DMOS.SDS_REL_PRODUTOVALOR_TOTAL.AsFloat;
                    B:= B + DMOS.SDS_REL_PRODUTOQUANTIDADE.AsFloat;
                    DMOS.SDS_REL_PRODUTO.Next;
                    RLLabel54.Caption:= FormatFloat('R$: ##,##0.00',A);
                    RLLabel52.Caption:= FloatToStr(B);

                    While not  DMOS.SDS_REL_PRODUTO.Eof do
                    begin
                    A:= A + DMOS.SDS_REL_PRODUTOVALOR_TOTAL.AsFloat;
                    B:= B + DMOS.SDS_REL_PRODUTOQUANTIDADE.AsFloat;
                    DMOS.SDS_REL_PRODUTO.Next;
                    RLLabel54.Caption:= FormatFloat('R$: ##,##0.00',A);
                    RLLabel52.Caption:= FloatToStr(B);
                    end;
                    DMOS.SDS_REL_PRODUTO.last;

 if dm.SDS_EmpresaCNPJ.Text = '19.040.301/0001-77' then
 begin
   RLLabel56.Caption :='SISTEMAS OPERACIONAIS DANIFICADOS POR VIRUS NÃO SERÁ COBERTO PELA GARANTIA';
 end;
end;

end.
