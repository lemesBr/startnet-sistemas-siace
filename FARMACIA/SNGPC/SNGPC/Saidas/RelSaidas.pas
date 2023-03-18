unit RelSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MDOCustomDataSet, MDOQuery,
  MDODatabase;

type
  TfRelSaidas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    qryEmpresa: TMDOQuery;
    qrySaidas: TMDOQuery;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    Transacao: TMDOTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelSaidas: TfRelSaidas;

implementation
uses Menu, SelRelSaidas;

{$R *.dfm}

procedure TfRelSaidas.FormCreate(Sender: TObject);
begin
  qryEmpresa.Active := True;

  with qrySaidas do
  begin
    Active := False;
    SQL.Clear;
    if fSelRelSaidas.Ordem.ItemIndex = 0 then
    begin
      SQL.Add('select * from SAIDAS ');
      SQL.Add('where DATA_VENDA >= :DATA1 ');
      SQL.Add('and DATA_VENDA <= :DATA2 ');
      SQL.Add('order by DATA_VENDA, NRO_PEDIDO, DESCRICAO ');
    end;

    if fSelRelSaidas.Ordem.ItemIndex = 1 then
    begin
      SQL.Add('select * from SAIDAS ');
      SQL.Add('where DATA_VENDA >= :DATA1 ');
      SQL.Add('and DATA_VENDA <= :DATA2 ');
      SQL.Add('order by DESCRICAO ');
    end;

    ParamByName('DATA1').AsDateTime := fSelRelSaidas.Data1.DateTime;
    ParamByName('DATA2').AsDateTime := fSelRelSaidas.Data2.DateTime;
    Active := True;
  end;
  QuickRep1.Preview;
end;

procedure TfRelSaidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  qrySaidas.Active := False;

  Action := CaFree;
end;

end.
