unit ImportarEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, DB, DBTables, Wwquery,
  MDOCustomDataSet, MDODatabase, MDOQuery, MDOSQL, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TfImportarEntradas = class(TForm)
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label1: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwQuery1: TwwQuery;
    Transacao: TMDOTransaction;
    dseEntradas: TMDODataSet;
    dsdseEntradas: TDataSource;
    MDOQuery1: TMDOQuery;
    dseLabDistr: TMDODataSet;
    dseEntradasNOTA_FISCAL: TMDOStringField;
    dseEntradasTIPO_OP_NF: TMDOStringField;
    dseEntradasEMISSAO_NF: TDateField;
    dseEntradasCNPJ_FORNECEDOR: TMDOStringField;
    dseEntradasNOME_FORNECEDOR: TMDOStringField;
    dseEntradasCODIGO_BARRAS: TMDOStringField;
    dseEntradasNRM: TMDOStringField;
    dseEntradasDESCRICAO: TMDOStringField;
    dseEntradasLOTE: TMDOStringField;
    dseEntradasQUANTIDADE: TFloatField;
    dseEntradasRECEBIDO: TDateField;
    wwDBGrid1: TwwDBGrid;
    dswwQuery1: TDataSource;
    dseCabEntradas: TMDODataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dseEntradasAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dseLabDistrAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImportarEntradas: TfImportarEntradas;

implementation

uses Menu;

{$R *.dfm}

procedure TfImportarEntradas.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfImportarEntradas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  dseEntradas.Active := True;
  dseLabDistr.Active := True;
end;

procedure TfImportarEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  wwQuery1.Active  := False;
  dseEntradas.Active := False;
  dseLabDistr.Active := False;
  MDOQuery1.Active := False;
  
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfImportarEntradas.BitBtn1Click(Sender: TObject);
begin
  with wwQuery1 do
  begin
    Active := False;
    ParamByName('DATA1').AsDateTime := wwDBDateTimePicker1.DateTime;
    ParamByName('DATA2').AsDateTime := wwDBDateTimePicker2.DateTime;
    Active := True;

    if RecordCount > 0 then
    begin
      First;
      while not eof do
      begin
        // Pesquisar o Laboratorio/Distribuidor
        with MDOQuery1 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select CNPJ from LABORATORIO ');
          SQL.Add('where CNPJ = :CNPJ ');
          ParamByName('CNPJ').AsString := wwQuery1.FieldByName('CNPJ').AsString;
          Active := True;
          if RecordCount = 0 then
          begin
            with dseLabDistr do
            begin
              Insert;
              FieldByName('CNPJ').AsString := wwQuery1.FieldByName('CNPJ').AsString;
              FieldByName('NOME').AsString := wwQuery1.FieldByName('NOME').AsString;
              Post;
            end;
          end;
        end;

        // Verifica se o produto esta cadastrado, senão avisa
        with MDOQuery1 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select * from PRODUTOS ');
          SQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS ');
          SQL.Add('and NRM = :NRM ');
          ParamByName('CODIGO_BARRAS').AsString := wwQuery1.FieldByName('Produto').AsString;
          ParamByName('NRM').AsString := wwQuery1.FieldByName('NRM').AsString;

          Active := True;
          if RecordCount = 0 then
          begin
            ShowMessage('ATENÇÃO!! O Produto '+wwQuery1.FieldByName('DESCRICAO').AsString+' não esta cadastrado no SNGPC, cadastre e importe novamente.');
            Abort;
          end;
        end;

        // Pesquisa para ver se o medicamento jah foi cadastrado.
        with dseCabEntradas do
        begin
          dseCabEntradas.Active := False;
          dseCabEntradas.SelectSQL.Clear;
          dseCabEntradas.SelectSQL.Add('select * from CAB_ENTRADAS ');
          dseCabEntradas.SelectSQL.Add('where NOTA_FISCAL   = :NOTA_FISCAL ');
          dseCabEntradas.SelectSQL.Add('and EMISSAO_NF      = :EMISSAO_NF ');
          dseCabEntradas.SelectSQL.Add('and CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR ');

          dseCabEntradas.ParamByName('NOTA_FISCAL').Value     := wwQuery1.FieldByName('Docto').AsInteger;
          dseCabEntradas.ParamByName('EMISSAO_NF').Value      := wwQuery1.FieldByName('Data').AsDateTime;
          dseCabEntradas.ParamByName('CNPJ_FORNECEDOR').Value := wwQuery1.FieldByName('CNPJ').AsString;
          dseCabEntradas.Active := True;

          if dseCabEntradas.RecordCount = 0 then
            dseCabEntradas.Insert
          else
            dseCabEntradas.Edit;

          dseCabEntradas.FieldByName('NOTA_FISCAL').AsInteger         := wwQuery1.FieldByName('Docto').AsInteger;
          dseCabEntradas.FieldByName('EMISSAO_NF').AsDateTime         := wwQuery1.FieldByName('Data').AsDateTime;
          dseCabEntradas.FieldByName('TIPO_OP_NF').AsString           := '1';
          dseCabEntradas.FieldByName('RECEBIDO').AsDateTime           := wwQuery1.FieldByName('Data').AsDateTime;
          dseCabEntradas.FieldByName('CNPJ_FORNECEDOR').AsString      := wwQuery1.FieldByName('CNPJ').AsString;
          dseCabEntradas.FieldByName('NOME_FORNECEDOR').AsString      := wwQuery1.FieldByName('NOME').AsString;
          dseCabEntradas.Post;
        end;

        with dseEntradas do
        begin
          dseEntradas.Active := False;
          dseEntradas.SelectSQL.Clear;
          dseEntradas.SelectSQL.Add('select * from ENTRADAS ');
          dseEntradas.SelectSQL.Add('where NOTA_FISCAL   = :NOTA_FISCAL ');
          dseEntradas.SelectSQL.Add('and EMISSAO_NF      = :EMISSAO_NF ');
          dseEntradas.SelectSQL.Add('and CNPJ_FORNECEDOR = :CNPJ_FORNECEDOR ');
          dseEntradas.SelectSQL.Add('and CODIGO_BARRAS   = :CODIGO_BARRAS ');
          dseEntradas.SelectSQL.Add('and LOTE            = :LOTE ');
          dseEntradas.SelectSQL.Add('and RECEBIDO        = :RECEBIDO ');

          dseEntradas.ParamByName('NOTA_FISCAL').Value     := wwQuery1.FieldByName('Docto').AsInteger;
          dseEntradas.ParamByName('EMISSAO_NF').Value      := wwQuery1.FieldByName('Data').AsDateTime;
          dseEntradas.ParamByName('CNPJ_FORNECEDOR').Value := wwQuery1.FieldByName('CNPJ').AsString;
          dseEntradas.ParamByName('CODIGO_BARRAS').Value   := wwQuery1.FieldByName('Produto').AsString;
          dseEntradas.ParamByName('RECEBIDO').Value        := wwQuery1.FieldByName('Data').AsDateTime;
          dseEntradas.ParamByName('LOTE').AsString         := wwQuery1.FieldByName('LOTE').AsString;
          dseEntradas.Active := True;

          if dseEntradas.RecordCount = 0 then
            dseEntradas.Insert
          else
            dseEntradas.Edit;

          dseEntradas.FieldByName('NOTA_FISCAL').AsInteger         := wwQuery1.FieldByName('Docto').AsInteger;
          dseEntradas.FieldByName('EMISSAO_NF').AsDateTime         := wwQuery1.FieldByName('Data').AsDateTime;
          dseEntradas.FieldByName('TIPO_OP_NF').AsString           := '1';
          dseEntradas.FieldByName('RECEBIDO').AsDateTime           := wwQuery1.FieldByName('Data').AsDateTime;
          dseEntradas.FieldByName('CNPJ_FORNECEDOR').AsString      := wwQuery1.FieldByName('CNPJ').AsString;
          dseEntradas.FieldByName('NOME_FORNECEDOR').AsString      := wwQuery1.FieldByName('NOME').AsString;
          dseEntradas.FieldByName('CODIGO_BARRAS').AsString        := wwQuery1.FieldByName('Produto').AsString;
          dseEntradas.FieldByName('NRM').AsString                  := wwQuery1.FieldByName('NRM').AsString;
          dseEntradas.FieldByName('DESCRICAO').AsString            := wwQuery1.FieldByName('DESCRICAO').AsString;
          dseEntradas.FieldByName('LOTE').AsString                 := wwQuery1.FieldByName('LOTE').AsString;
          dseEntradas.FieldByName('QUANTIDADE').AsFloat            := wwQuery1.FieldByName('QTDE').AsFloat;
          dseEntradas.Post;
        end;
        Next;
      end;
      ShowMessage('IMPORTAÇÃO Concluida.');
    end
    else
      ShowMessage('ATENÇÃO! Sem dados para importar nesse período.');
  end;
end;

procedure TfImportarEntradas.dseEntradasAfterPost(DataSet: TDataSet);
begin
  dseEntradas.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfImportarEntradas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfImportarEntradas.dseLabDistrAfterPost(DataSet: TDataSet);
begin
  dseLabDistr.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

end.
