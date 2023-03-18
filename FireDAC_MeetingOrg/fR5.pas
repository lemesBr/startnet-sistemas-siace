unit fR5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, QRExport, QRPDFFilt;

type
  Tf_R5 = class(TForm)
    QuickRep1: TQuickRep;
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
    QRBand1: TQRBand;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand2: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    QRDBText19: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QrTotalPago: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel37: TQRLabel;
    QrDinheiro: TQRLabel;
    QRLabel39: TQRLabel;
    QrCheque: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QrCartao: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    LbPeriodo: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_R5: Tf_R5;

implementation

uses ModulodeDados;

{$R *.dfm}

end.
