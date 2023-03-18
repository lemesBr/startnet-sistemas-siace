unit Unit_Rep_Legenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TLegendaEstadoRepMFrm = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRImage3: TQRImage;
    QRImage5: TQRImage;
    QRImage2: TQRImage;
    QRImage4: TQRImage;
    QRImage7: TQRImage;
    QRImage8: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRImage6: TQRImage;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel30: TQRLabel;
    QRImage9: TQRImage;
    QRShape1: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel26: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel27: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LegendaEstadoRepMFrm: TLegendaEstadoRepMFrm;

implementation

uses BicoPresetLitrosDinheiro, MonitoriaBombas;

{$R *.dfm}

procedure TLegendaEstadoRepMFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;

end;

procedure TLegendaEstadoRepMFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// Qrlabel30.Caption := principalfrm.label1.caption;
 
end;

procedure TLegendaEstadoRepMFrm.FormCreate(Sender: TObject);
begin
 QrImage9.Picture.LoadFromFile(logopath);
end;

end.
