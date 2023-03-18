unit chequefrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser;

type
  TFormChequeFrete = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    rldbtxt1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChequeFrete: TFormChequeFrete;
  texto : string;
implementation

uses ModulodeDados, Estenso, ModulodeDadosConsultas;

{$R *.dfm}

procedure TFormChequeFrete.RLReport1PageStarting(Sender: TObject);
var
    dtaux : TDateTime;
begin
dtaux := StrToDate(DMc.QrchequesDATA_EMISSAO.Text);

RLDBText4.Text := FormatDateTime('dd',dtAux);
RLDBText5.Text := FormatDateTime('MMMM',dtAux);
RLDBText6.Text := FormatDateTime('yyyy',dtAux);
//RLDBText1.text := DM.SDS_CP_BaixarVALOR_BAIXA.text;
Texto := DMc.QrchequesVALOR.Text;
rldbtxt1.Text := '('+ NumeroParaExtenso(StrToFloat(texto))+')';
RLLabel1.Caption := dm.SDS_EmpresaCIDADE.Text + '-'+dm.SDS_EmpresaUF.Text;

end;

end.
