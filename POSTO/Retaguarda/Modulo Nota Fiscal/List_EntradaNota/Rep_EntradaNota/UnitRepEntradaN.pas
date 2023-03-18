unit UnitRepEntradaN;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
 TEntradaNFRepFrm = class(TForm)
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
   QRLabel7: TQRLabel;
   QRLabel11: TQRLabel;
   QRLabel12: TQRLabel;
   QRLabel13: TQRLabel;
   QRDBText2: TQRDBText;
   QRDBText8: TQRDBText;
   QRDBText9: TQRDBText;
   QRDBText10: TQRDBText;
   QRDBText12: TQRDBText;
   QRDBText14: TQRDBText;
   QRDBText15: TQRDBText;
   QRDBText16: TQRDBText;
   QRDBText17: TQRDBText;
   QRDBText18: TQRDBText;
   PageFooterBand1: TQRBand;
   QRSysData2: TQRSysData;
   QRLabel23: TQRLabel;
   QRSysData3: TQRSysData;
   QRLabel14: TQRLabel;
   QRLabel15: TQRLabel;
   QRLabel17: TQRLabel;
   QRLabel18: TQRLabel;
   QRLabel19: TQRLabel;
   QRLabel20: TQRLabel;
   ChildBand1: TQRChildBand;
   QRLabel16: TQRLabel;
   QRLabel21: TQRLabel;
   QRSubDetail1: TQRSubDetail;
   QRDBText13: TQRDBText;
   QRDBText23: TQRDBText;
   QRSubDetail3: TQRSubDetail;
   QRDBText11: TQRDBText;
   QRLabel22: TQRLabel;
   QRLabel25: TQRLabel;
   QRLabel26: TQRLabel;
   QRDBText20: TQRDBText;
   QRDBText21: TQRDBText;
   QRLabel24: TQRLabel;
   QRDBText19: TQRDBText;
   SummaryBand1: TQRBand;
   QRMemo1: TQRMemo;
   QRLabel39: TQRLabel;
   QRLabel101: TQRLabel;
   QRLabel100: TQRLabel;
   QRLabel110: TQRLabel;
   QRLabel27: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel29: TQRLabel;
   procedure QRBand1BeforePrint(Sender: TQRCustomBand;
     var PrintBand: boolean);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
     var PrintBand: boolean);
   procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
     var PrintReport: boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 EntradaNFRepFrm: TEntradaNFRepFrm;

implementation

uses UnitListEntradaN, UnitFrmPrincipal;

{$R *.dfm}

procedure TEntradaNFRepFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 QRLabel10.Caption := PrincipalFrm.LogoLabel.Caption;
end;

procedure TEntradaNFRepFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TEntradaNFRepFrm.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 if EntradaNFListFrm.QryNumSerie.RecordCount = 0 then
  begin
   QRSubDetail1.Enabled := False;
   ChildBand1.Enabled := False;
  end
 else
  begin
   QRSubDetail1.Enabled := True;
   ChildBand1.Enabled := True;
  end;
end;

procedure TEntradaNFRepFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
 var PrintReport: boolean);
begin
 SummaryBand1.Height := SummaryBand1.Height + QRMemo1.Lines.Count * QRMemo1.Height;
 QRMemo1.Height := QRMemo1.Lines.Count * QRMemo1.Height;
 //se nenhuma informacao de filtragem de chamadas foi especificada
 QRMemo1.Enabled := QRMemo1.Lines.Text <> '';
end;

procedure TEntradaNFRepFrm.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel28.Enabled := (EntradaNFListFrm.QryEntradaProd['SITUACAO_NF'] = 'S')
end;

end.
