unit RelMedicamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MDOCustomDataSet, MDOQuery,
  MDODatabase, Wwdatsrc;

type
  TfRelMedicamentos = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    qryEmpresa: TMDOQuery;
    qryMedicamentos: TMDOQuery;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    Transacao: TMDOTransaction;
    qryEntradas: TMDOQuery;
    dsqryMedicamentos: TwwDataSource;
    qrySAIDAS: TMDOQuery;
    qryINVENTARIO: TMDOQuery;
    QRSubDetail2: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText13: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText14: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMedicamentos: TfRelMedicamentos;

implementation
uses Menu, SelRelEntradas;

{$R *.dfm}

procedure TfRelMedicamentos.FormCreate(Sender: TObject);
begin
  qryEmpresa.Active := True;

  with qryMedicamentos do
  begin
    Active := False;
    //ParamByName('DATA1').AsDateTime := fSelRelEntradas.Data1.DateTime;
    //ParamByName('DATA2').AsDateTime := fSelRelEntradas.Data2.DateTime;
    Active := True;
  end;
  qryINVENTARIO.Active := True;
  qryEntradas.Active := True;
  qrySAIDAS.Active := True;
  QuickRep1.Preview;
end;

procedure TfRelMedicamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  qryMedicamentos.Active := False;

  Action := CaFree;
end;

end.
