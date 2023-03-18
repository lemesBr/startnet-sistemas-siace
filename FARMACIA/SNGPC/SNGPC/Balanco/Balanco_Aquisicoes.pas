unit Balanco_Aquisicoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, DBTables, Wwtable, quickrpt, ExtCtrls, Wwquery,
  MDOCustomDataSet, MDOQuery, MDODatabase;

type
  TfBalancoAquisicoes = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand2: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    EXERCICIO: TQRLabel;
    QRSysData1: TQRSysData;
    Perioticidade: TQRLabel;
    Transacao: TMDOTransaction;
    qryDados: TMDOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBalancoAquisicoes: TfBalancoAquisicoes;

implementation
uses Menu, Selecao_Balanco_Aquisicao;

{$R *.DFM}

procedure TfBalancoAquisicoes.FormCreate(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(StrToDate(fSelBalancoAquisicao.Data1.Text), Ano, Mes, Dia);
  exercicio.Caption := IntToStr(Ano);

  if fSelBalancoAquisicao.Periodo.ItemIndex = 0 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1( X ) 2(   ) 3(   ) 4(   ) - ANUAL (   )';

  if fSelBalancoAquisicao.Periodo.ItemIndex = 1 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2( X ) 3(   ) 4(   ) - ANUAL (   )';

  if fSelBalancoAquisicao.Periodo.ItemIndex = 2 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2(   ) 3( X ) 4(   ) - ANUAL (   )';

  if fSelBalancoAquisicao.Periodo.ItemIndex = 3 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2(   ) 3(   ) 4( X ) - ANUAL (   )';

  if fSelBalancoAquisicao.Periodo.ItemIndex = 4 then
    Perioticidade.Caption := 'PERIODICIDADE: 1(   ) 2(   ) 3(   ) 4(   ) - ANUAL ( X )';

  with qryDados do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT PRODUTOS.*, ENTRADAS.* FROM ENTRADAS ');

    SQL.Add('INNER JOIN PRODUTOS ');
    SQL.Add('ON (ENTRADAS.CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS) ');

    SQL.Add('WHERE (ENTRADAS.RECEBIDO >= :RECEBIDO1) ');
    SQL.Add('AND (ENTRADAS.RECEBIDO <= :RECEBIDO2) ');

    if fSelBalancoAquisicao.cBxPortaria.Text <> 'TODAS' then
    begin
      SQL.Add('AND (PRODUTOS.PORTARIA = :PORTARIA) ');
      ParamByName('PORTARIA').AsString := fSelBalancoAquisicao.cBxPortaria.Text;
    end;

    SQL.Add('ORDER BY ENTRADAS.RECEBIDO, ENTRADAS.NOTA_FISCAL ');

    ParamByName('RECEBIDO1').AsDateTime := fSelBalancoAquisicao.Data1.Date;
    ParamByName('RECEBIDO2').AsDateTime := fSelBalancoAquisicao.Data2.Date;

    Active := True;

    if RecordCount > 0 then
      QuickRep1.Preview
    else
      ShowMessage('ATENÇÃO !! Sem dados para imprimir nesse periodo, verifique.');
  end;

end;


procedure TfBalancoAquisicoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Transacao.Commit;
  Action := CaFree;
end;

end.
