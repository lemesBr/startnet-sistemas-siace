unit UnitRepSaidaN;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
 TSaidaNFRepFrm = class(TForm)
   QuickRep1: TQuickRep;
   TitleBand1: TQRBand;
   DetailBand1: TQRBand;
   QRLabel1: TQRLabel;
   QRLabel10: TQRLabel;
   QRLabel3: TQRLabel;
   QRLabel4: TQRLabel;
   QRLabel5: TQRLabel;
   QRLabel6: TQRLabel;
   QRLabel8: TQRLabel;
   QRLabel9: TQRLabel;
   QRDBText1: TQRDBText;
   QRDBText3: TQRDBText;
   QRDBText4: TQRDBText;
   QRDBText5: TQRDBText;
   QRDBText6: TQRDBText;
   QRDBText7: TQRDBText;
   QRLabel11: TQRLabel;
   QRLabel12: TQRLabel;
   QRLabel14: TQRLabel;
   QRLabel16: TQRLabel;
   QRLabel17: TQRLabel;
   QRSubDetail1: TQRSubDetail;
   QRDBText11: TQRDBText;
   QRDBText9: TQRDBText;
   QRDBText10: TQRDBText;
   QRDBText12: TQRDBText;
   QRDBText13: TQRDBText;
   QRSubDetail2: TQRSubDetail;
   QRLabel7: TQRLabel;
   QRDBText2: TQRDBText;
   SummaryBand1: TQRBand;
   PageFooterBand1: TQRBand;
   QRMemo1: TQRMemo;
   QRLabel39: TQRLabel;
   QRLabel101: TQRLabel;
   QRLabel100: TQRLabel;
   QRLabel110: TQRLabel;
   QRLabel27: TQRLabel;
   QRSysData2: TQRSysData;
   QRLabel23: TQRLabel;
   QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
   procedure QRBand1BeforePrint(Sender: TQRCustomBand;
     var PrintBand: boolean);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SaidaNFRepFrm: TSaidaNFRepFrm;

implementation

uses UnitListSaidaN, UnitFrmPrincipal;

{$R *.dfm}

procedure TSaidaNFRepFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 QRLabel10.Caption := PrincipalFrm.LogoLabel.Caption;
end;

procedure TSaidaNFRepFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TSaidaNFRepFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
 var PrintReport: boolean);
begin
 SummaryBand1.Height := SummaryBand1.Height + QRMemo1.Lines.Count * QRMemo1.Height;
 QRMemo1.Height := QRMemo1.Lines.Count * QRMemo1.Height;
 QRMemo1.Enabled := QRMemo1.Lines.Text <> '';
 //se nenhuma informacao de filtragem de chamadas foi especificada
end;

procedure TSaidaNFRepFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel10.Caption := PrincipalFrm.LogoLabel.Caption;
end;

procedure TSaidaNFRepFrm.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel18.Enabled := (SaidaNFListFrm.QryPedidos['SITUACAO_NF'] = 'S')
end;

end.
