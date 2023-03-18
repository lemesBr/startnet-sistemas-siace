unit RelInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MDOCustomDataSet, MDOQuery,
  MDODatabase;

type
  TfRelInventario = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    qryEmpresa: TMDOQuery;
    qryInventario: TMDOQuery;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    Transacao: TMDOTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelInventario: TfRelInventario;

implementation
uses Menu;

{$R *.dfm}

procedure TfRelInventario.FormCreate(Sender: TObject);
begin
  qryEmpresa.Active := True;
  qryInventario.Active := True;
  QuickRep1.Preview;
end;

procedure TfRelInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  qryInventario.Active := False;

  Action := CaFree;
end;

end.
