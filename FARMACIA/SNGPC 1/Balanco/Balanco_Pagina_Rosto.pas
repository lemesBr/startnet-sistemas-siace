unit Balanco_Pagina_Rosto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, DBTables, Wwtable;

type
  TfBalancoPaginaRosto = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    exercicio: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRLabel14: TQRLabel;
    periodo: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    Anual: TQRLabel;
    Trimestre: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape26: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBalancoPaginaRosto: TfBalancoPaginaRosto;

implementation

uses Menu, Selecao_Balanco_Pagina_Rosto;

{$R *.DFM}

procedure TfBalancoPaginaRosto.FormCreate(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
     DecodeDate(StrToDate(fSelBalancoPaginaRosto.Data1.Text), Ano, Mes, Dia);
     exercicio.Caption := IntToStr(Ano);

     if fSelBalancoPaginaRosto.Periodo.ItemIndex = 0 then
        Trimestre.Caption := '1';

     if fSelBalancoPaginaRosto.Periodo.ItemIndex = 1 then
        Trimestre.Caption := '2';

     if fSelBalancoPaginaRosto.Periodo.ItemIndex = 2 then
        Trimestre.Caption := '3';

     if fSelBalancoPaginaRosto.Periodo.ItemIndex = 3 then
        Trimestre.Caption := '4';

     if fSelBalancoPaginaRosto.Periodo.ItemIndex > 3 then
        Trimestre.Caption := '';

     if fSelBalancoPaginaRosto.Periodo.ItemIndex = 4 then
        Anual.Caption := 'X'
     else
         Anual.Caption := '';
         
     periodo.Caption := fSelBalancoPaginaRosto.Data1.Text + ' à ' + fSelBalancoPaginaRosto.Data2.Text;
     QuickRep1.Preview;

end;

procedure TfBalancoPaginaRosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
