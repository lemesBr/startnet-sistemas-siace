unit Unit_Rep_Encerrantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TEncerrantesRepMFrm = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel30: TQRLabel;
    QRImage9: TQRImage;
    QRShape1: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel26: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel27: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel37: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EncerrantesRepMFrm: TEncerrantesRepMFrm;

implementation

uses InfoBombaCUB, MonitoriaBombas;

{$R *.dfm}

procedure TEncerrantesRepMFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// Qrlabel30.Caption := principalfrm.label1.caption;
 
end;

procedure TEncerrantesRepMFrm.FormCreate(Sender: TObject);
begin
 QrImage9.Picture.LoadFromFile(logopath);

 With EncerrantesListMFrm do
  begin
   Qrlabel1.caption := GBoxBombaXX.caption;

   //--- Informações da Bomba
   Qrlabel10.caption := Label16.caption;
   Qrlabel9.caption  := Label14.caption;
   Qrlabel46.caption := Label27.caption;

   Qrlabel8.caption  := Label23.caption;
   Qrlabel7.caption  := Label19.caption;

   //--- Informações do Bico1
   Qrlabel20.caption := LabelProduto1.caption;
   Qrlabel19.caption := LabelPrcLitros1.caption;
   Qrlabel18.caption := LabelEncLitros1.caption;
   Qrlabel17.caption  := LabelEncDinheiro1.caption;

   Qrlabel16.caption := LabelUltVenda1.caption;
   Qrlabel23.caption := LabelLitros1.caption;
   Qrlabel28.caption := LabelTotalpagar1.caption;

   //--- Informações do Bico2
   Qrlabel41.caption := LabelProduto2.caption;
   Qrlabel40.caption := LabelPrcLitros2.caption;
   Qrlabel39.caption := LabelEncLitros2.caption;
   Qrlabel38.caption := LabelEncDinheiro2.caption;

   Qrlabel29.caption := LabelUltVenda2.caption;
   Qrlabel44.caption := LabelLitros2.caption;
   Qrlabel48.caption := LabelTotalpagar2.caption;

   //--- Informações do Bico3
   Qrlabel60.caption := LabelProduto3.caption;
   Qrlabel59.caption := LabelPrcLitros3.caption;
   Qrlabel58.caption := LabelEncLitros3.caption;
   Qrlabel57.caption := LabelEncDinheiro3.caption;

   Qrlabel31.caption := LabelUltVenda3.caption;
   Qrlabel63.caption := LabelLitros3.caption;
   Qrlabel65.caption := LabelTotalpagar3.caption;

   //--- Informações do Bico4
   Qrlabel77.caption := LabelProduto4.caption;
   Qrlabel76.caption := LabelPrcLitros4.caption;
   Qrlabel75.caption := LabelEncLitros4.caption;
   Qrlabel74.caption := LabelEncDinheiro4.caption;

   Qrlabel37.caption := GBoxUltimaVenda4.caption;
   Qrlabel80.caption := LabelLitros4.caption;
   Qrlabel82.caption := LabelTotalpagar4.caption;
  end;

end;

procedure TEncerrantesRepMFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

end.
