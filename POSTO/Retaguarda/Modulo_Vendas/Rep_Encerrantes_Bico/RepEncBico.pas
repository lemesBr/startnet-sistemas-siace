unit RepEncBico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TRepEncBicoFrm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRMemo1: TQRMemo;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRImage9: TQRImage;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEncBicoFrm: TRepEncBicoFrm;

implementation

uses ListBicoEncerrantes, UnitFrmPrincipal;

{$R *.dfm}

procedure TRepEncBicoFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 TitleBand1.Height := TitleBand1.Height + QRMemo1.Lines.Count * QRMemo1.Height;
 QRMemo1.Height := QRMemo1.Lines.Count * QRMemo1.Height;
 QRMemo1.Enabled := QRMemo1.Lines.Text <> '';
 QRLabel10.Caption := PrincipalFrm.LogoLabel.Caption;
end;

end.
