unit fR3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,ModuleDados1, QuickRpt, QRCtrls, StdCtrls;

type
  TF_R3 = class(TForm)
    ListApartOcupado: TQuickRep;
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
    QRLabel26: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
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
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText25: TQRDBText;
    QRBand3: TQRBand;
    QRLabel45: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRBand4: TQRBand;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText34: TQRDBText;
    QRSubDetail3: TQRSubDetail;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_R3: TF_R3;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TF_R3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release
end;

procedure TF_R3.FormDestroy(Sender: TObject);
begin
  F_R3 := Nil;
end;

end.
