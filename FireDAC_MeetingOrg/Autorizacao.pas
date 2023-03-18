unit Autorizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLPDFFilter, RLFilters, RLRichFilter, RLDraftFilter;

type
  TFormAutorizacao = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAutorizacao: TFormAutorizacao;

implementation

uses clientes, ModulodeDados;

{$R *.dfm}

procedure TFormAutorizacao.RLReport1PageStarting(Sender: TObject);
begin
RLLabel3.Caption := dm.SDS_EmpresaCIDADE.Text + ' - ' + DM.SDS_EmpresaUF.Text;
RLLabel5.Caption := dm.SDS_EmpresaCIDADE.Text + ' - ' + DM.SDS_EmpresaUF.Text + ',';
RLLabel10.Caption := FormClientes.cds_clienteCIDADE.Text + ' - ' + FormClientes.cds_clienteUF.Text + ' CEP: ' + FormClientes.cds_clientecEP.TEXT;
end;

end.
