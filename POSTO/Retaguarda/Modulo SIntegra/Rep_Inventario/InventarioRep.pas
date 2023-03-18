unit InventarioRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TInventarioRepFrm = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel19: TQRLabel;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
   { Public declarations }
  end;

var
  InventarioRepFrm: TInventarioRepFrm;
  Sub_Total : double;
implementation

uses UnitDataM1, UnitFrmPrincipal;

{$R *.dfm}

procedure TInventarioRepFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel7.Caption := PrincipalFrm.LogoLabel.Caption;
end;

procedure TInventarioRepFrm.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Sub_Total := Sub_Total + DM1.DstInventario_Itens.FieldByName('VALOR_PRODUTO').AsFloat;
end;

procedure TInventarioRepFrm.FormCreate(Sender: TObject);
begin
 Sub_Total :=  0;
end;

procedure TInventarioRepFrm.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel4.Caption := FormatCurr('###,##0.00', Sub_Total);
 Sub_Total := 0;
end;

end.
