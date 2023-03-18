unit UnitQRVend;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Placemnt, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
 TVendaRepFrm = class(TForm)
   QuickRep1: TQuickRep;
   TitleBand1: TQRBand;
   QRLabel1: TQRLabel;
   QRMemo1: TQRMemo;
   QRLabel2: TQRLabel;
   ColumnHeaderBand1: TQRBand;
   QRLabel21: TQRLabel;
   QRLabel11: TQRLabel;
   QRLabel12: TQRLabel;
   QRLabel13: TQRLabel;
   QRLabel14: TQRLabel;
   DetailBand1: TQRBand;
   QRDBText1: TQRDBText;
   QRDBText3: TQRDBText;
   QRDBText4: TQRDBText;
   QRDBText5: TQRDBText;
   QRDBText6: TQRDBText;
   SummaryBand1: TQRBand;
   QRLabel17: TQRLabel;
   QRLabel18: TQRLabel;
   QRBand4: TQRBand;
   QRLabel3: TQRLabel;
   QRSysData2: TQRSysData;
   QRLabel4: TQRLabel;
   QRSysData3: TQRSysData;
   FormStorage1: TFormStorage;
    QRImage9: TQRImage;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendaRepFrm: TVendaRepFrm;
 valor_total : double;

implementation

uses UnitListVend;

{$R *.dfm}

procedure TVendaRepFrm.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 valor_total := valor_total + VendaListFrm.QryListVend['SUBTOTAL'];
end;

procedure TVendaRepFrm.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel17.caption:='R$ ' + FormatCurr('0.00', valor_total);
end;

procedure TVendaRepFrm.FormCreate(Sender: TObject);
begin
 valor_total := 0;
end;

procedure TVendaRepFrm.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 valor_total := 0;
end;

end.
