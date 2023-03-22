unit mPostoBico;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary;

type
  TPostoBico = class(TBase)
  private
    { private declarations }
    FID_PRODUTO: Integer;
    FCODIGO_BICO: String;
  protected
    { protected declarations }
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
    class function find(vId: String): TPostoBico;

    //Busca de dados passando parametro codigo bico
    class function findCodigoBico(vCodigoBico: String): TPostoBico;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TPostoBico>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search: string; DataSet: TFDMemTable); overload;

    property IdProduto: Integer  read FID_PRODUTO write FID_PRODUTO;
    property CodigoBico: String  read FCODIGO_BICO write FCODIGO_BICO;
  end;

implementation

{ TPostoBico }

procedure TPostoBico.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('ID_PRODUTO') <> nil then
    query.Params.ParamByName('ID_PRODUTO').DataType:= ftInteger;
  if query.Params.FindParam('CODIGO_BICO') <> nil then
    query.Params.ParamByName('CODIGO_BICO').DataType:= ftString;
  query.Prepare();
end;

constructor TPostoBico.Create;
begin
  StartConfiguration;
end;

destructor TPostoBico.Destroy;
begin
  inherited;
end;

class function TPostoBico.find(vId: String): TPostoBico;
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
        Result:= TPostoBico.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.CodigoBico:= vFDQuery.FieldByName('CODIGO_BICO').AsString;
        Result.IdProduto:= vFDQuery.FieldByName('ID_PRODUTO').AsInteger;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class function TPostoBico.findCodigoBico(vCodigoBico: String): TPostoBico;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add('SELECT * FROM POSTO_BICOS WHERE CODIGO_BICO = :BICO');
      vFDQuery.Params.ParamByName('BICO').DataType:= ftString;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('BICO').asString:= vCodigoBico;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TPostoBico.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.CodigoBico:= vFDQuery.FieldByName('CODIGO_BICO').AsString;
        Result.IdProduto:= vFDQuery.FieldByName('ID_PRODUTO').AsInteger;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class procedure TPostoBico.list(search: string; DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoBico>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoBico.list(search);
  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('CODIGO_BICO').AsString:= vList.Items[I].CodigoBico;
      DataSet.FieldByName('ID_PRODUTO').AsCurrency:= vList.Items[I].IdProduto;
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

class function TPostoBico.list(search: string): TObjectList<TPostoBico>;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= TBase.createQuery;
    try
      vFDQuery.SQL.Add(vBaseListSQL);
      vFDQuery.Prepare;
      vFDQuery.Open();
      if vFDQuery.RecordCount = 0 then Result:= nil
      else
      begin
        Result:= TObjectList<TPostoBico>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TPostoBico.find(vFDQuery.FieldByName(vBasePrimaryKey).AsString));
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

function TPostoBico.save: Boolean;
begin
  Result:= inherited;
end;

class procedure TPostoBico.StartConfiguration;
begin
  vBaseTable:= 'POSTO_BICOS';
  vBasePrimaryKey:= 'ID';
  inherited;
end;

function TPostoBico.store: Boolean;
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
      vFDQuery.Params.ParamByName('CODIGO_BICO').AsString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('ID_PRODUTO').AsInteger:= Self.IdProduto;
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

function TPostoBico.update: Boolean;
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
      vFDQuery.Params.ParamByName('CODIGO_BICO').asString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('VALOR_POR_LITRO').AsCurrency:= Self.IdProduto;
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

function TPostoBico.validateFields(store: boolean): Boolean;
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
