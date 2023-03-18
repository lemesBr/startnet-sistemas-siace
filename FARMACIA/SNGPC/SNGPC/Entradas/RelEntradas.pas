unit RelEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MDOCustomDataSet, MDOQuery,
  MDODatabase;

type
  TfRelEntradas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    qryEmpresa: TMDOQuery;
    qryEntradas: TMDOQuery;
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
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    Transacao: TMDOTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelEntradas: TfRelEntradas;

implementation
uses Menu, SelRelEntradas;

{$R *.dfm}

procedure TfRelEntradas.FormCreate(Sender: TObject);
begin
  qryEmpresa.Active := True;

  with qryEntradas do
  begin
    Active := False;
    SQL.Clear;
    if fSelRelEntradas.Ordem.ItemIndex = 0 then
    begin
      SQL.Add('select *  from ENTRADAS ');
      SQL.Add('where RECEBIDO >= :DATA1 ');
      SQL.Add('and RECEBIDO <= :DATA2 ');
      SQL.Add('order by RECEBIDO, NOTA_FISCAL, DESCRICAO ');
    end;

    if fSelRelEntradas.Ordem.ItemIndex = 1 then
    begin
      SQL.Add('select *  from ENTRADAS ');
      SQL.Add('where RECEBIDO >= :DATA1 ');
      SQL.Add('and RECEBIDO <= :DATA2 ');
      SQL.Add('order by DESCRICAO ');
    end;
    
    ParamByName('DATA1').AsDateTime := fSelRelEntradas.Data1.DateTime;
    ParamByName('DATA2').AsDateTime := fSelRelEntradas.Data2.DateTime;
    Active := True;
  end;
  QuickRep1.Preview;
end;

procedure TfRelEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  qryEntradas.Active := False;

  Action := CaFree;
end;

end.
