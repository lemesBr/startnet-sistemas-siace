unit Balanco_Completo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, DBTables, Wwtable, quickrpt, ExtCtrls, Wwquery,
  MDOCustomDataSet, MDOQuery, MDODatabase, MDOSQL;

type
  TfBalancoCompleto = class(TForm)
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
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    EXERCICIO: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape5: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRShape7: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData1: TQRSysData;
    cSALDO_INICIAL: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Perioticidade: TQRLabel;
    Transacao: TMDOTransaction;
    qryDados: TMDOQuery;
    MDOSQL1: TMDOSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBalancoCompleto: TfBalancoCompleto;

implementation
uses Menu, Selecao_Balanco_Completo;

{$R *.DFM}

procedure TfBalancoCompleto.FormCreate(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(StrToDate(fSelBalancoCompleto.Data1.Text), Ano, Mes, Dia);
  exercicio.Caption := IntToStr(Ano);

  if fSelBalancoCompleto.Periodo.ItemIndex = 0 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1( X ) 2(   ) 3(   ) 4(   ) - ANUAL (   )';

  if fSelBalancoCompleto.Periodo.ItemIndex = 1 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2( X ) 3(   ) 4(   ) - ANUAL (   )';

  if fSelBalancoCompleto.Periodo.ItemIndex = 2 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2(   ) 3( X ) 4(   ) - ANUAL (   )';

  if fSelBalancoCompleto.Periodo.ItemIndex = 3 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2(   ) 3(   ) 4( X ) - ANUAL (   )';

  if fSelBalancoCompleto.Periodo.ItemIndex = 4 then
    Perioticidade.Caption := 'PERIODICIDADE: TRIMESTRAL: 1(   ) 2(   ) 3(   ) 4(   ) - ANUAL ( X )';

  with qryDados do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT CODIGO_BARRAS, NRM, DESCRICAO, ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 0 then
      SQL.Add('COALESCE(SALDO_PSICO4,0) SALDO_INICIAL, ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 1 then
      SQL.Add('COALESCE(SALDO_PSICO1,0) SALDO_INICIAL, ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 2 then
      SQL.Add('COALESCE(SALDO_PSICO2,0) SALDO_INICIAL, ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 3 then
      SQL.Add('COALESCE(SALDO_PSICO3,0) SALDO_INICIAL, ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 4 then
      SQL.Add('COALESCE(SALDO_PSICO4,0) SALDO_INICIAL, ');

    SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) ENTRADAS, ');
    SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) SAIDAS, ');
    SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) PERDAS, ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 0 then
    begin
      SQL.Add('(COALESCE(SALDO_PSICO4,0) + ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) ) SALDO_FINAL ');
    end;

    if fSelBalancoCompleto.Periodo.ItemIndex = 1 then
    begin
      SQL.Add('(COALESCE(SALDO_PSICO1,0) + ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) ) SALDO_FINAL ');
    end;

    if fSelBalancoCompleto.Periodo.ItemIndex = 2 then
    begin
      SQL.Add('(COALESCE(SALDO_PSICO2,0) + ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) ) SALDO_FINAL ');
    end;

    if fSelBalancoCompleto.Periodo.ItemIndex = 3 then
    begin
      SQL.Add('(COALESCE(SALDO_PSICO3,0) + ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) ) SALDO_FINAL ');
    end;

    if fSelBalancoCompleto.Periodo.ItemIndex = 4 then
    begin
      SQL.Add('(COALESCE(SALDO_PSICO4,0) + ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) - ');
      SQL.Add('COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) ) SALDO_FINAL ');
    end;

    SQL.Add('FROM PRODUTOS ');

    SQL.Add('WHERE PORTARIA = :PORTARIA ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 0 then
      SQL.Add('AND (COALESCE(SALDO_PSICO4,0) > 0) ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 1 then
      SQL.Add('AND (COALESCE(SALDO_PSICO1,0) > 0) ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 2 then
      SQL.Add('AND (COALESCE(SALDO_PSICO2,0) > 0) ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 3 then
      SQL.Add('AND (COALESCE(SALDO_PSICO3,0) > 0) ');

    if fSelBalancoCompleto.Periodo.ItemIndex = 4 then
      SQL.Add('AND (COALESCE(SALDO_PSICO4,0) > 0) ');

    SQL.Add('OR ');
    SQL.Add('PORTARIA = :PORTARIA ');
    SQL.Add('AND (COALESCE((SELECT SUM(QUANTIDADE) FROM ENTRADAS WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND ENTRADAS.RECEBIDO >= :DATA1 AND ENTRADAS.RECEBIDO <= :DATA2),0) > 0) ');

    SQL.Add('OR ');
    SQL.Add('PORTARIA = :PORTARIA ');
    SQL.Add('AND (COALESCE((SELECT SUM(QUANTIDADE) FROM SAIDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND SAIDAS.DATA_VENDA >= :DATA1 AND SAIDAS.DATA_VENDA <= :DATA2),0) > 0) ');

    SQL.Add('OR ');
    SQL.Add('PORTARIA = :PORTARIA ');
    SQL.Add('AND (COALESCE((SELECT SUM(QUANTIDADE) FROM PERDAS   WHERE CODIGO_BARRAS = PRODUTOS.CODIGO_BARRAS AND PERDAS.DATA_PERDA >= :DATA1 AND PERDAS.DATA_PERDA <= :DATA2),0) > 0) ');
    SQL.Add('ORDER BY DESCRICAO ');

    ParamByName('PORTARIA').AsString := fSelBalancoCompleto.cBxPortaria.Text;
    ParamByName('DATA1').AsDateTime  := fSelBalancoCompleto.Data1.Date;
    ParamByName('DATA2').AsDateTime  := fSelBalancoCompleto.Data2.Date;

    Active := True;

    if RecordCount > 0 then
      QuickRep1.Preview
    else
      ShowMessage('ATENÇÃO!! Sem dados para imprimir, verifique.');
  end;
end;

procedure TfBalancoCompleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Transacao.Commit;
  Action := CaFree;
end;

procedure TfBalancoCompleto.QuickRep1AfterPrint(Sender: TObject);
begin
  with qryDados do
  begin
    First;
    while not eof do
    begin
      // Atualiza o saldo final
      with MDOSQL1 do
      begin
        SQL.Clear;
        if fSelBalancoCompleto.Periodo.ItemIndex = 0 then
          SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO1 = :SALDO WHERE CODIGO_BARRAS = :CODIGO');
        if fSelBalancoCompleto.Periodo.ItemIndex = 1 then
          SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO2 = :SALDO WHERE CODIGO_BARRAS = :CODIGO');
        if fSelBalancoCompleto.Periodo.ItemIndex = 2 then
          SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO3 = :SALDO WHERE CODIGO_BARRAS = :CODIGO');
        if fSelBalancoCompleto.Periodo.ItemIndex = 3 then
          SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO4 = :SALDO WHERE CODIGO_BARRAS = :CODIGO');
        if fSelBalancoCompleto.Periodo.ItemIndex = 4 then
          SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO4 = :SALDO WHERE CODIGO_BARRAS = :CODIGO');
        ParamByName('CODIGO').AsString := qryDados.FieldByName('CODIGO_BARRAS').AsString;
        ParamByName('SALDO').AsInteger := qryDados.FieldByName('SALDO_FINAL').AsInteger;
        ExecQuery;
      end;

      Next;
    end;
  end;

end;

end.
