unit UnitEtiquetaRep;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 QuickRpt, Qrctrls, ExtCtrls, qrprntr, Placemnt;

type
 TEtiquetaRepFrm = class(TForm)
   QuickRep1: TQuickRep;
   DetailBand1: TQRBand;
   QRDBText1: TQRDBText;
   QRDBText2: TQRDBText;
   QRDBText3: TQRDBText;
   QRDBText4: TQRDBText;
   QRDBText5: TQRDBText;
   QRDBText6: TQRDBText;
   QRLabel2: TQRLabel;
   QRDBText7: TQRDBText;
   QRDBText8: TQRDBText;
   FormStorage1: TFormStorage;
   procedure QuickRep1Preview(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 EtiquetaRepFrm: TEtiquetaRepFrm;

implementation

uses UnitEtiquetaList;


{$R *.DFM}

procedure TEtiquetaRepFrm.QuickRep1Preview(Sender: TObject);
begin
{ Application.CreateForm(TRepPreviewFrm, RepPreviewFrm);
 RepPreviewFrm.QrPreview1.qrPrinter := TqrPrinter(Sender);
 RepPreviewFrm.Show;}
end;

end.
