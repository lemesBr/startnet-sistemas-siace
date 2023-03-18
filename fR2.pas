unit fR2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, QRExport, QRPDFFilt;

type
  TF_R2 = class(TForm)
    ListApartOcupado: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel22: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText20: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel44: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_R2: TF_R2;

implementation

{$R *.dfm}

procedure TF_R2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release
end;

procedure TF_R2.FormDestroy(Sender: TObject);
begin
  F_R2 := Nil;
end;

end.
