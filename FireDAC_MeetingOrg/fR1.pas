unit fR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, QRExport, QRPDFFilt;

type
  TF_R1 = class(TForm)
    ListCategoria: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    ListApartamento: TQuickRep;
    QRBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData7: TQRSysData;
    QRLabel41: TQRLabel;
    QRBand2: TQRBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRBand3: TQRBand;
    QRSysData8: TQRSysData;
    QRLabel42: TQRLabel;
    QRBand4: TQRBand;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    ListProduto: TQuickRep;
    QRBand5: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRSysData9: TQRSysData;
    QRSysData10: TQRSysData;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRSysData11: TQRSysData;
    QRLabel61: TQRLabel;
    QRBand6: TQRBand;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand7: TQRBand;
    QRSysData12: TQRSysData;
    QRLabel62: TQRLabel;
    QRBand8: TQRBand;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRLabel65: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel67: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel60: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_R1: TF_R1;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TF_R1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release
end;

procedure TF_R1.FormDestroy(Sender: TObject);
begin
  F_R1 := Nil;
end;

end.
