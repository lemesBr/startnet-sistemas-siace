unit Unit_Rep_Encerrante_Geral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls, StdCtrls, ComCtrls;

type
  TEncerranteGeralRepMFrm = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel30: TQRLabel;
    QRImage9: TQRImage;
    QRShape1: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel26: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel27: TQRLabel;
    QRRichText1: TQRRichText;
    QRRichText2: TQRRichText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EncerranteGeralRepMFrm: TEncerranteGeralRepMFrm;

implementation

uses MonitoriaBombas, ClasseCUB, UnitFuncoes;

{$R *.dfm}

procedure TEncerranteGeralRepMFrm.FormCreate(Sender: TObject);
var
 Bico_Dinheiro, Bomba_Dinheiro, Dinheiro_Total: Double;
 x, y: integer;
begin
 QRRichText1.Lines.Clear;
 QRRichText2.Lines.Clear;

 Dinheiro_Total := 0;
 for x := 0 to CUB.Qnt_Bombas - 1 do
  begin
   Bomba_Dinheiro := 0;
   QRRichText1.Lines.Add('Bomba ' + formatcurr('00', x + 1) + ':');
   QRRichText2.Lines.Add('');

   for y := 0 to CUB.Bomba[x].Qnt_Bicos - 1 do
    begin
     Bico_Dinheiro := CUB.Bomba[x].Bico[y].Encerrante_Dinheiro/100;

     QRRichText1.Lines.Add('   Bico ' + formatcurr('00', y + 1) + ': ' +
                           CUB.Bomba[x].Bico[y].Nome_Produto);

     QRRichText2.Lines.Add(formatfloat('###,###,###0.000', CUB.Bomba[x].Bico[y].Encerrante_Litros/1000) + ' - ' +
                           formatfloat('R$###,###,###0.00', Bico_Dinheiro));

     Bomba_Dinheiro := Bomba_Dinheiro + Bico_Dinheiro;
    end;

   Dinheiro_Total := Dinheiro_Total + Bomba_Dinheiro;

   QRRichText1.Lines.Add('Sub-Total:');
   QRRichText1.Lines.Add('');

   QRRichText2.Lines.Add(formatfloat('R$###,###,###0.00', Bomba_Dinheiro));
   QRRichText2.Lines.Add('');
  end;

 QRRichText1.Lines.Add('Total: ');
 QRRichText2.Lines.Add(formatfloat('R$###,###,###0.00', Dinheiro_Total));
end;

procedure TEncerranteGeralRepMFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

end.
