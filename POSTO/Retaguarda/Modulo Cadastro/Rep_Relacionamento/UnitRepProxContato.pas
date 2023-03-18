unit UnitRepProxContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TRelacionamentoRepFrm = class(TForm)
    qrContatoProx: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelacionamentoRepFrm: TRelacionamentoRepFrm;

implementation

uses UnitListProxContato, UnitFrmPrincipal;

{$R *.dfm}

procedure TRelacionamentoRepFrm.FormShow(Sender: TObject);
begin
Qrlabel1.caption := principalfrm.logolabel.caption;
end;

end.
