unit UnitQRVend;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Placemnt, QRCtrls, QuickRpt, ExtCtrls;

type
 TVendaRepFrm = class(TForm)
   QuickRep1: TQuickRep;
   TitleBand1: TQRBand;
   QRLabel1: TQRLabel;
   QRMemo1: TQRMemo;
   QRMemo2: TQRMemo;
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
   QRLabel5: TQRLabel;
   QRLabel6: TQRLabel;
   QRBand4: TQRBand;
   QRLabel3: TQRLabel;
   QRSysData2: TQRSysData;
   QRLabel4: TQRLabel;
   QRSysData3: TQRSysData;
   FormStorage1: TFormStorage;
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendaRepFrm: TVendaRepFrm;

implementation

uses UnitListVend;

{$R *.dfm}

end.
