unit Urelcheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, grimgctrl, QuickRpt, QRCtrls, qrpctrls, ExtCtrls;

type
  TFormRelcheques = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRPDBText1: TQRPDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    lbl_status: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText21: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRHRule2: TQRHRule;
    QRDBText4: TQRDBText;
    QRLabel19: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1StartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelcheques: TFormRelcheques;

implementation

uses FRelChequesEmitidosporPeriodo_u, ModulodeDados;

{$R *.dfm}

procedure TFormRelcheques.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if FRelChequesEmitidosporPeriodo.cds_rel_chequesEmitidosporperiodoCOMP_NA_INCLUSAO.AsString = 'T' then
   lbl_status.Caption := 'Compensado';
  // if cds_rel_chequesemitidosporperiodoSTATUS_CHEQUEEMITIDO.AsString = 'P' then
  // lbl_status.Caption := 'Usado em Pagamento';
   if FRelChequesEmitidosporPeriodo.cds_rel_chequesEmitidosporperiodoRETORNADO.AsString = 'T' then
   lbl_status.Caption := 'DEVOLVIDO';
   if FRelChequesEmitidosporPeriodo.cds_rel_chequesemitidosporperiodoCOMP_NA_INCLUSAO.AsString = '' then
   lbl_status.Caption := '';
end;

procedure TFormRelcheques.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// PageHeaderBand1.Enabled := false;
end;

procedure TFormRelcheques.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 //  PageHeaderBand1.Enabled := true;
end;

procedure TFormRelcheques.QuickRep1StartPage(Sender: TCustomQuickRep);
begin
 QRImage1.Picture.LoadFromFile(dm.SDS_EmpresaLOGOMARCA.text);
end;

end.
