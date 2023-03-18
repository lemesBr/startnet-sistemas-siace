unit RelPerdas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MDOCustomDataSet, MDOQuery,
  MDODatabase;

type
  TfRelPerdas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    qryEmpresa: TMDOQuery;
    qryPerdas: TMDOQuery;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    Transacao: TMDOTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPerdas: TfRelPerdas;

implementation
uses Menu, SelRelPerdas;

{$R *.dfm}

procedure TfRelPerdas.FormCreate(Sender: TObject);
begin
  qryEmpresa.Active := True;

  with qryPerdas do
  begin
    Active := False;
    ParamByName('DATA1').AsDateTime := fSelRelPerdas.Data1.DateTime;
    ParamByName('DATA2').AsDateTime := fSelRelPerdas.Data2.DateTime;
    Active := True;
  end;
  QuickRep1.Preview;
end;

procedure TfRelPerdas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  qryPerdas.Active := False;

  Action := CaFree;
end;

procedure TfRelPerdas.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  try
  case StrToInt(qryPerdas.FieldByName('MOTIVO_PERDA').AsString) of
    1 : QRLabel6.Caption := 'Furto / Roubo';
    2 : QRLabel6.Caption := 'Avaria';
    3 : QRLabel6.Caption := 'Vencimento';
    4 : QRLabel6.Caption := 'Apreensão / Recolhimento pela Visa';
    5 : QRLabel6.Caption := 'Perda no processo';
    6 : QRLabel6.Caption := 'Coleta para controle de qualidade';
    7 : QRLabel6.Caption := 'Perda de exclusão da portaria 344';
  end;
  except;
  end;
end;

end.
