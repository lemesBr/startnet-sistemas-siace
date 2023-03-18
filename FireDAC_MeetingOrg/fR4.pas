unit fR4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, QRExport, QRPDFFilt;

type
  TF_R4 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel46: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText11: TQRDBText;
    LbPeriodo: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel3: TQRLabel;
    QRBand8: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
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
  F_R4: TF_R4;

implementation

{$R *.dfm}

procedure TF_R4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release
end;

procedure TF_R4.FormDestroy(Sender: TObject);
begin
  F_R4 := Nil;
end;

end.
