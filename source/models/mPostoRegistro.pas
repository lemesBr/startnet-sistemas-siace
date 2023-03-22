unit mPostoRegistro;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary, mPostoBico;

type
  TPostoRegistro = class(TBase)
  private
    FID_VENDA: Integer;
    FCODIGO_BICO: String;
    FVALOR_POR_LITRO: currency;
    FTOTAL_DE_LITRO: currency;
    FVALOR_TOTAL: currency;
    FTEMPO: String;
    FDATA_HORA: TDateTime;
    FNUMERO_REGISTRO: Integer;
    FTAG_CARTAO1: String;
    FTAG_CARTAO2: String;
    FSTATUS: String;
    FBICO: TPostoBico;

    function getBico: TPostoBico;
  protected
    function store(): Boolean; override;
    function update(): Boolean; override;
    function validateFields(store: boolean): Boolean; override;
  public
    destructor Destroy; override;
    constructor Create();
    class procedure StartConfiguration; overload;

    function save(): Boolean;
    procedure checkFieldTypes(query: TFDQuery);

    //Busca de dados passando parametro
    class function find(vId: String): TPostoRegistro;
    //Busca de dados passando parametro numero registro
    class function findNumeroRegistro(vNumeroRegistro: Integer): TPostoRegistro;

    //Lista todos cadastrados
    class function list(search, vStatus: string): TObjectList<TPostoRegistro>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search, vStatus: string; DataSet: TFDMemTable); overload;

    property IdVenda: Integer  read FID_VENDA write FID_VENDA;
    property CodigoBico: String  read FCODIGO_BICO write FCODIGO_BICO;
    property ValorPorLitro: currency  read FVALOR_POR_LITRO write FVALOR_POR_LITRO;
    property TotalDeLitro: currency  read FTOTAL_DE_LITRO write FTOTAL_DE_LITRO;
    property ValorTotal: currency  read FVALOR_TOTAL write FVALOR_TOTAL;
    property Tempo: String  read FTEMPO write FTEMPO;
    property DataHora: TDateTime  read FDATA_HORA write FDATA_HORA;
    property NumeroRegistro: Integer  read FNUMERO_REGISTRO write FNUMERO_REGISTRO;
    property TagCartao1: String  read FTAG_CARTAO1 write FTAG_CARTAO1;
    property TagCartao2: String  read FTAG_CARTAO2 write FTAG_CARTAO2;
    property Status: String  read FSTATUS write FSTATUS;

    property Bico: TPostoBico read getBico;

  end;

implementation

{ TBico }

procedure TPostoRegistro.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('ID_VENDA') <> nil then
    query.Params.ParamByName('ID_VENDA').DataType:= ftInteger;
  if query.Params.FindParam('CODIGO_BICO') <> nil then
    query.Params.ParamByName('CODIGO_BICO').DataType:= ftString;
  if query.Params.FindParam('VALOR_POR_LITRO') <> nil then
    query.Params.ParamByName('VALOR_POR_LITRO').DataType:= ftCurrency;
  if query.Params.FindParam('TOTAL_DE_LITRO') <> nil then
    query.Params.ParamByName('TOTAL_DE_LITRO').DataType:= ftCurrency;
  if query.Params.FindParam('VALOR_TOTAL') <> nil then
    query.Params.ParamByName('VALOR_TOTAL').DataType:= ftCurrency;
  if query.Params.FindParam('TEMPO') <> nil then
    query.Params.ParamByName('TEMPO').DataType:= ftString;
  if query.Params.FindParam('DATA_HORA') <> nil then
    query.Params.ParamByName('DATA_HORA').DataType:= ftDateTime;
  if query.Params.FindParam('NUMERO_REGISTRO') <> nil then
    query.Params.ParamByName('NUMERO_REGISTRO').DataType:= ftInteger;
  if query.Params.FindParam('TAG_CARTAO1') <> nil then
    query.Params.ParamByName('TAG_CARTAO1').DataType:= ftString;
  if query.Params.FindParam('TAG_CARTAO2') <> nil then
    query.Params.ParamByName('TAG_CARTAO2').DataType:= ftString;
  if query.Params.FindParam('STATUS') <> nil then
    query.Params.ParamByName('STATUS').DataType:= ftString;
  query.Prepare();
end;

constructor TPostoRegistro.Create;
begin
  StartConfiguration;
end;

destructor TPostoRegistro.Destroy;
begin
  if Assigned(Self.FBICO) then FreeAndNil(Self.FBICO);
  inherited;
end;

class function TPostoRegistro.findNumeroRegistro(vNumeroRegistro: Integer): TPostoRegistro;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add('SELECT * FROM POSTO_REGISTROS WHERE NUMERO_REGISTRO = :NUMERO');
      vFDQuery.Params.ParamByName('NUMERO').DataType:= ftInteger;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('NUMERO').AsInteger:= vNumeroRegistro;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TPostoRegistro.Create;
        Result.IdVenda:= vFDQuery.FieldByName('ID_VENDA').AsInteger;
        Result.CodigoBico:= vFDQuery.FieldByName('CODIGO_BICO').AsString;
        Result.ValorPorLitro:= vFDQuery.FieldByName('VALOR_POR_LITRO').AsCurrency;
        Result.TotalDeLitro:= vFDQuery.FieldByName('TOTAL_DE_LITRO').AsCurrency;
        Result.ValorTotal:= vFDQuery.FieldByName('VALOR_TOTAL').AsCurrency;
        Result.Tempo:= vFDQuery.FieldByName('TEMPO').AsString;
        Result.DataHora:= vFDQuery.FieldByName('DATA_HORA').AsDateTime;
        Result.NumeroRegistro:= vFDQuery.FieldByName('NUMERO_REGISTRO').AsInteger;
        Result.TagCartao1:= vFDQuery.FieldByName('TAG_CARTAO1').AsString;
        Result.TagCartao2:= vFDQuery.FieldByName('TAG_CARTAO2').AsString;
        Result.Status:= vFDQuery.FieldByName('STATUS').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoRegistro.getBico: TPostoBico;
begin
  if not Assigned(Self.FBICO) then
    Self.FBICO:= TPostoBico.findCodigoBico(Self.CodigoBico)
  else if Self.FBICO.Id <> Self.CodigoBico then
  begin
    FreeAndNil(FBICO);
    Self.FBICO:= TPostoBico.findCodigoBico(Self.CodigoBico);
  end;
  Result:= Self.FBICO;
end;

class function TPostoRegistro.find(vId: String): TPostoRegistro;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add(vBaseFindSQL);
      vFDQuery.Params.ParamByName(vBasePrimaryKey).DataType:= ftString;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName(vBasePrimaryKey).asString:= vId;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TPostoRegistro.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.IdVenda:= vFDQuery.FieldByName('ID_VENDA').AsInteger;
        Result.CodigoBico:= vFDQuery.FieldByName('CODIGO_BICO').AsString;
        Result.ValorPorLitro:= vFDQuery.FieldByName('VALOR_POR_LITRO').AsCurrency;
        Result.TotalDeLitro:= vFDQuery.FieldByName('TOTAL_DE_LITRO').AsCurrency;
        Result.ValorTotal:= vFDQuery.FieldByName('VALOR_TOTAL').AsCurrency;
        Result.Tempo:= vFDQuery.FieldByName('TEMPO').AsString;
        Result.DataHora:= vFDQuery.FieldByName('DATA_HORA').AsDateTime;
        Result.NumeroRegistro:= vFDQuery.FieldByName('NUMERO_REGISTRO').AsInteger;
        Result.TagCartao1:= vFDQuery.FieldByName('TAG_CARTAO1').AsString;
        Result.TagCartao1:= vFDQuery.FieldByName('TAG_CARTAO2').AsString;
        Result.Status:= vFDQuery.FieldByName('STATUS').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class procedure TPostoRegistro.list(search, vStatus: string; DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoRegistro>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoRegistro.list(search, vStatus);
  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('ID_VENDA').AsInteger:= vList.Items[I].IdVenda;
      DataSet.FieldByName('CODIGO_BICO').AsString:= vList.Items[I].CodigoBico;
      DataSet.FieldByName('VALOR_POR_LITRO').AsCurrency:= vList.Items[I].ValorPorLitro;
      DataSet.FieldByName('TOTAL_DE_LITRO').AsCurrency:= vList.Items[I].TotalDeLitro;
      DataSet.FieldByName('VALOR_TOTAL').AsCurrency:= vList.Items[I].ValorTotal;
      DataSet.FieldByName('TEMPO').AsString:= vList.Items[I].Tempo;
      DataSet.FieldByName('DATA_HORA').AsDateTime:= vList.Items[I].DataHora;
      DataSet.FieldByName('NUMERO_REGISTRO').AsInteger:= vList.Items[I].NumeroRegistro;
      DataSet.FieldByName('TAG_CARTAO1').AsString:= vList.Items[I].TagCartao1;
      DataSet.FieldByName('TAG_CARTAO2').AsString:= vList.Items[I].TagCartao2;
      DataSet.FieldByName('STATUS').AsString:= vList.Items[I].Status;
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

class function TPostoRegistro.list(search, vStatus: string): TObjectList<TPostoRegistro>;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= TBase.createQuery;
    try
      vFDQuery.SQL.Add('SELECT * FROM POSTO_REGISTROS WHERE STATUS = :STATUS');
      vFDQuery.Params.ParamByName('STATUS').DataType:= ftString;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('STATUS').AsString:= vStatus;
      vFDQuery.Open();
      if vFDQuery.RecordCount = 0 then Result:= nil
      else
      begin
        Result:= TObjectList<TPostoRegistro>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TPostoRegistro.find(vFDQuery.FieldByName(vBasePrimaryKey).AsString));
          vFDQuery.Next;
        end;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoRegistro.save: Boolean;
begin
  Result:= inherited;
end;

class procedure TPostoRegistro.StartConfiguration;
begin
  vBaseTable:= 'POSTO_REGISTROS';
  vBasePrimaryKey:= 'ID';
  inherited;
end;

function TPostoRegistro.store: Boolean;
var
  vFDQuery: TFDQuery;
begin
  Result:= True;
  try
    Self.StartTransaction();
    vFDQuery:= Self.createQuery;

    try
      vFDQuery.SQL.Add(listFields(vBaseTable, ['deleted_at'], false));
      checkFieldTypes(vFDQuery);

      Self.Id:= Self.generateId;

      vFDQuery.Params.ParamByName('ID').AsString:= Self.Id;
      vFDQuery.Params.ParamByName('ID_VENDA').AsInteger:= Self.IdVenda;
      vFDQuery.Params.ParamByName('CODIGO_BICO').AsString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('VALOR_POR_LITRO').AsCurrency:= Self.ValorPorLitro;
      vFDQuery.Params.ParamByName('TOTAL_DE_LITRO').AsCurrency:= Self.TotalDeLitro;
      vFDQuery.Params.ParamByName('VALOR_TOTAL').AsCurrency:= Self.ValorTotal;
      vFDQuery.Params.ParamByName('TEMPO').AsString:= Self.Tempo;
      vFDQuery.Params.ParamByName('DATA_HORA').AsDateTime:= Self.DataHora;
      vFDQuery.Params.ParamByName('NUMERO_REGISTRO').AsInteger:= Self.NumeroRegistro;
      vFDQuery.Params.ParamByName('TAG_CARTAO1').AsString:= Self.TagCartao1;
      vFDQuery.Params.ParamByName('TAG_CARTAO2').AsString:= Self.TagCartao2;
      vFDQuery.Params.ParamByName('STATUS').AsString:= Self.Status;
      vFDQuery.ExecSQL();

      Self.Commit();
    except on e: Exception do
      begin
        Self.Rollback();
        Result:= False;
        raise Exception.Create('Falha ao gravar dados. Erro: ' + e.Message);
      end;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoRegistro.update: Boolean;
var
  vFDQuery: TFDQuery;
begin
  Result:= True;
  try
    Self.StartTransaction();
    vFDQuery:= Self.createQuery;

    try
      vFDQuery.SQL.Add(listFields(vBaseTable, ['deleted_at'], true));
      checkFieldTypes(vFDQuery);

      vFDQuery.Params.ParamByName('ID').AsString:= Self.Id;
      vFDQuery.Params.ParamByName('ID_VENDA').AsInteger:= Self.IdVenda;
      vFDQuery.Params.ParamByName('CODIGO_BICO').asString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('VALOR_POR_LITRO').AsCurrency:= Self.ValorPorLitro;
      vFDQuery.Params.ParamByName('TOTAL_DE_LITRO').AsCurrency:= Self.TotalDeLitro;
      vFDQuery.Params.ParamByName('VALOR_TOTAL').AsCurrency:= Self.ValorTotal;
      vFDQuery.Params.ParamByName('TEMPO').AsString:= Self.Tempo;
      vFDQuery.Params.ParamByName('DATA_HORA').AsDateTime:= Self.DataHora;
      vFDQuery.Params.ParamByName('NUMERO_REGISTRO').AsInteger:= Self.NumeroRegistro;
      vFDQuery.Params.ParamByName('TAG_CARTAO1').AsString:= Self.TagCartao1;
      vFDQuery.Params.ParamByName('TAG_CARTAO2').AsString:= Self.TagCartao2;
      vFDQuery.Params.ParamByName('STATUS').AsString:= Self.Status;
      vFDQuery.ExecSQL();

      Self.Commit();
    except on e: Exception do
      begin
        Self.Rollback();
        Result:= False;
        raise Exception.Create('Falha ao gravar dados. Erro: ' + e.Message);
      end;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoRegistro.validateFields(store: boolean): Boolean;
var
  vMensagem: string;
begin
  Result:= True;
  try
    if Self.CodigoBico = EmptyStr then
    begin
      vMensagem:= 'É necessário informar o codigo!';
      Exit();
    end;
  finally
    if (vMensagem <> '') then
    begin
      TLibrary.showMessage('Atenção', PWideChar(vMensagem), 0);
      Result:= False;
    end;
  end;
end;

end.
