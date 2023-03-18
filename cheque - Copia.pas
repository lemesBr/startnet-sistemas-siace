unit cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser;

type
  TFormCheque = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    rldbtxt1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    procedure rldbtxt1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheque: TFormCheque;
  texto : string;
implementation

uses ModulodeDados, Estenso;

{$R *.dfm}

procedure TFormCheque.rldbtxt1AfterPrint(Sender: TObject);
var
    dtaux : TDateTime;
begin
dtaux := StrToDate(DM.SDS_CP_BaixarDATA_BAIXA.Text);

RLDBText4.Text := FormatDateTime('dd',dtAux);
RLDBText5.Text := FormatDateTime('MMMM',dtAux);
RLDBText6.Text := FormatDateTime('yyyy',dtAux);
//RLDBText1.text := DM.SDS_CP_BaixarVALOR_BAIXA.text;
Texto := DM.SDS_CP_BaixarVALOR_BAIXA.Text;
rldbtxt1.Text := '('+ NumeroParaExtenso(StrToFloat(texto))+')';
end;

end.
