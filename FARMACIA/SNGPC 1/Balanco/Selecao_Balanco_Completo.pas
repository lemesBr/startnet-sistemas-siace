unit Selecao_Balanco_Completo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, wwdblook, Db, DBTables, Wwtable,
  Wwquery, wwdbedit, Wwdatsrc, wwdbdatetimepicker, Wwdotdot, Wwdbcomb,
  MDOCustomDataSet, MDOQuery, MDOSQL, MDODatabase;

type
  TfSelBalancoCompleto = class(TForm)
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Periodo: TRadioGroup;
    Data1: TwwDBDateTimePicker;
    Data2: TwwDBDateTimePicker;
    cBxPortaria: TwwDBComboBox;
    Transacao: TMDOTransaction;
    MDOSQL1: TMDOSQL;
    qryDados: TMDOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Data1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelBalancoCompleto: TfSelBalancoCompleto;

implementation

uses Balanco_Completo;

{$R *.DFM}

procedure TfSelBalancoCompleto.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelBalancoCompleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfSelBalancoCompleto.Data1Exit(Sender: TObject);
var 
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data1.DateTime, Ano, Mes, Dia);
  if (Mes >= 1) and (Mes <= 3) then
  begin
    Periodo.ItemIndex := 0;
    Data2.DateTime := StrToDateTime('31/03/'+IntToStr(Ano));
  end;
  if (Mes >= 4) and (Mes <= 6) then
  begin
    Periodo.ItemIndex := 1;
    Data2.DateTime := StrToDateTime('30/06/'+IntToStr(Ano));
  end;
  if (Mes >= 7) and (Mes <= 9) then
  begin
    Periodo.ItemIndex := 2;
    Data2.DateTime := StrToDateTime('30/09/'+IntToStr(Ano));
  end;
  if (Mes >= 10) and (Mes <= 12) then
  begin
    Periodo.ItemIndex := 3;
    Data2.DateTime := StrToDateTime('31/12/'+IntToStr(Ano));
  end;
end;

procedure TfSelBalancoCompleto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfSelBalancoCompleto.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

procedure TfSelBalancoCompleto.BitBtn2Click(Sender: TObject);
begin
  // Atualizar o saldo com o inventario
  if fSelBalancoCompleto.Periodo.ItemIndex = 0 then
  begin
    // Atualizar o SALDO_PSICO4
    with qryDados do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select CODIGO_BARRAS, SUM(QUANTIDADE) QUANTIDADE from INVENTARIO ');
      SQL.Add('where DATA_INVENTARIO BETWEEN :DATAINI AND :DATAFIN ');
      SQL.Add('group by CODIGO_BARRAS');
      ParamByName('DATAINI').AsDate := Data1.Date;
      ParamByName('DATAFIN').AsDate := Data2.Date;
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        while not eof do
        begin
          with MDOSQL1 do
          begin
            SQL.Clear;
            SQL.Add('update PRODUTOS set SALDO_PSICO4 = :SALDO where CODIGO_BARRAS = :CODIGO');
            ParamByName('SALDO').AsInteger := qryDados.FieldByName('QUANTIDADE').AsInteger;
            ParamByName('CODIGO').AsString := qryDados.FieldByName('CODIGO_BARRAS').AsString;
            ExecQuery;
          end;
          Next;
        end;
      end;
    end;
  end;

  if fSelBalancoCompleto.Periodo.ItemIndex = 1 then
  begin
    // Atualizar o SALDO_PSICO1
    with qryDados do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select CODIGO_BARRAS, SUM(QUANTIDADE) QUANTIDADE from INVENTARIO ');
      SQL.Add('where DATA_INVENTARIO BETWEEN :DATAINI AND :DATAFIN ');
      SQL.Add('group by CODIGO_BARRAS');
      ParamByName('DATAINI').AsDate := Data1.Date;
      ParamByName('DATAFIN').AsDate := Data2.Date;
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        while not eof do
        begin
          with MDOSQL1 do
          begin
            SQL.Clear;
            SQL.Add('update PRODUTOS set SALDO_PSICO1 = :SALDO where CODIGO_BARRAS = :CODIGO');
            ParamByName('SALDO').AsInteger := qryDados.FieldByName('QUANTIDADE').AsInteger;
            ParamByName('CODIGO').AsString := qryDados.FieldByName('CODIGO_BARRAS').AsString;
            ExecQuery;
          end;
          Next;
        end;
      end;
    end;
  end;

  if fSelBalancoCompleto.Periodo.ItemIndex = 2 then
  begin
    // Atualizar o SALDO_PSICO2
    with qryDados do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select CODIGO_BARRAS, SUM(QUANTIDADE) QUANTIDADE from INVENTARIO ');
      SQL.Add('where DATA_INVENTARIO BETWEEN :DATAINI AND :DATAFIN ');
      SQL.Add('group by CODIGO_BARRAS');
      ParamByName('DATAINI').AsDate := Data1.Date;
      ParamByName('DATAFIN').AsDate := Data2.Date;
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        while not eof do
        begin
          with MDOSQL1 do
          begin
            SQL.Clear;
            SQL.Add('update PRODUTOS set SALDO_PSICO2 = :SALDO where CODIGO_BARRAS = :CODIGO');
            ParamByName('SALDO').AsInteger := qryDados.FieldByName('QUANTIDADE').AsInteger;
            ParamByName('CODIGO').AsString := qryDados.FieldByName('CODIGO_BARRAS').AsString;
            ExecQuery;
          end;
          Next;
        end;
      end;
    end;
  end;

  if fSelBalancoCompleto.Periodo.ItemIndex = 3 then
  begin
    // Atualizar o SALDO_PSICO3
    with qryDados do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select CODIGO_BARRAS, SUM(QUANTIDADE) QUANTIDADE from INVENTARIO ');
      SQL.Add('where DATA_INVENTARIO BETWEEN :DATAINI AND :DATAFIN ');
      SQL.Add('group by CODIGO_BARRAS');
      ParamByName('DATAINI').AsDate := Data1.Date;
      ParamByName('DATAFIN').AsDate := Data2.Date;
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        while not eof do
        begin
          with MDOSQL1 do
          begin
            SQL.Clear;
            SQL.Add('update PRODUTOS set SALDO_PSICO3 = :SALDO where CODIGO_BARRAS = :CODIGO');
            ParamByName('SALDO').AsInteger := qryDados.FieldByName('QUANTIDADE').AsInteger;
            ParamByName('CODIGO').AsString := qryDados.FieldByName('CODIGO_BARRAS').AsString;
            ExecQuery;
          end;
          Next;
        end;
      end;
    end;
  end;

  if fSelBalancoCompleto.Periodo.ItemIndex = 4 then
  begin
    // Atualizar o SALDO_PSICO4
    with qryDados do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select CODIGO_BARRAS, SUM(QUANTIDADE) QUANTIDADE from INVENTARIO ');
      SQL.Add('where DATA_INVENTARIO BETWEEN :DATAINI AND :DATAFIN ');
      SQL.Add('group by CODIGO_BARRAS');
      ParamByName('DATAINI').AsDate := Data1.Date;
      ParamByName('DATAFIN').AsDate := Data2.Date;
      Active := True;
      if RecordCount > 0 then
      begin
        First;
        while not eof do
        begin
          with MDOSQL1 do
          begin
            SQL.Clear;
            SQL.Add('update PRODUTOS set SALDO_PSICO4 = :SALDO where CODIGO_BARRAS = :CODIGO');
            ParamByName('SALDO').AsInteger := qryDados.FieldByName('QUANTIDADE').AsInteger;
            ParamByName('CODIGO').AsString := qryDados.FieldByName('CODIGO_BARRAS').AsString;
            ExecQuery;
          end;
          Next;
        end;
      end;
    end;
  end;

  Transacao.Commit;
  
  try
    fBalancoCompleto := TfBalancoCompleto.Create(Self);
  finally
    fBalancoCompleto.Release;
    fBalancoCompleto.Free;
  end;
end;

procedure TfSelBalancoCompleto.Data2Exit(Sender: TObject);
var
  Ano, Mes, Dia: Word;
  Ano1, Mes1, Dia1: Word;
begin
  DecodeDate(Data1.DateTime, Ano, Mes, Dia);
  DecodeDate(Data2.DateTime, Ano1, Mes1, Dia1);
  if (Mes = 1) and (Mes1 = 12) then
    Periodo.ItemIndex := 4;
end;

end.
