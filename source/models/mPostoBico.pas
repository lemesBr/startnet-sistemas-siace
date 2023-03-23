unit mPostoBico;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary, mPostoTanque;

type
  TPostoBico = class(TBase)
  private
    { private declarations }
    FID_TANQUE: String;
    FCODIGO_BICO: String;
    FPOSICAO: String;
    FDESCRICAO: String;
    FTANQUE: TPostoTanque;

    function getTanque: TPostoTanque;
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

    //Busca de dados passando parametro
    class function findByBombaId(vIdBomba: String): TObjectList<TPostoBico>;

    //Busca de dados passando parametro codigo bico
    class function findCodigoBico(vCodigoBico: String): TPostoBico;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TPostoBico>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search: string; DataSet: TFDMemTable); overload;

    property IdTanque: String read FID_TANQUE write FID_TANQUE;
    property CodigoBico: String read FCODIGO_BICO write FCODIGO_BICO;
    property Posicao: String read FPOSICAO write FPOSICAO;
    property Descricao: String read FDESCRICAO write FDESCRICAO;

    property Tanque: TPostoTanque read getTanque;
  end;

implementation

{ TPostoBico }

procedure TPostoBico.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('ID_TANQUE') <> nil then
    query.Params.ParamByName('ID_TANQUE').DataType:= ftString;
  if query.Params.FindParam('CODIGO_BICO') <> nil then
    query.Params.ParamByName('CODIGO_BICO').DataType:= ftString;
  if query.Params.FindParam('POSICAO') <> nil then
    query.Params.ParamByName('POSICAO').DataType:= ftString;
  if query.Params.FindParam('DESCRICAO') <> nil then
    query.Params.ParamByName('DESCRICAO').DataType:= ftString;
  query.Prepare();
end;

constructor TPostoBico.Create;
begin
  StartConfiguration;
end;

destructor TPostoBico.Destroy;
begin
  if Assigned(FTANQUE) then FreeAndNil(FTANQUE);
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
        Result.IdTanque:= vFDQuery.FieldByName('ID_TANQUE').AsString;
        Result.CodigoBico:= vFDQuery.FieldByName('CODIGO_BICO').AsString;
        Result.Posicao:= vFDQuery.FieldByName('POSICAO').AsString;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class function TPostoBico.findByBombaId(
  vIdBomba: String): TObjectList<TPostoBico>;
const
  FSql: string =
  'SELECT PB.ID FROM POSTO_BOMBA_BICOS PBB ' +
  'LEFT JOIN POSTO_BICOS PB ON (PB.ID = PBB.ID_BICO) ' +
  'WHERE PBB.ID_BOMBA = :ID_BOMBA';
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery:= Self.createQuery;
    try
      FDQuery.SQL.Add(FSql);
      FDQuery.Params.ParamByName('ID_BOMBA').DataType:= ftFixedWideChar;
      FDQuery.Prepare;
      FDQuery.Params.ParamByName('ID_BOMBA').AsString:= vIdBomba;
      FDQuery.Open();
      if FDQuery.RecordCount = 0 then Result:= nil
      else
      begin
        Result:= TObjectList<TPostoBico>.Create;
        FDQuery.First;
        while not FDQuery.Eof do
        begin
          Result.Add(TPostoBico.find(FDQuery.FieldByName('ID').AsString));
          FDQuery.Next;
        end;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(FDQuery);
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
        Result.IdTanque:= vFDQuery.FieldByName('ID_TANQUE').AsString;
        Result.CodigoBico:= vFDQuery.FieldByName('CODIGO_BICO').AsString;
        Result.Posicao:= vFDQuery.FieldByName('POSICAO').AsString;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoBico.getTanque: TPostoTanque;
begin
  if not Assigned(Self.FTANQUE) then
    Self.FTANQUE:= TPostoTanque.find(Self.IdTanque)
  else if Self.FTANQUE.id <> Self.IdTanque then
  begin
    FreeAndNil(FTANQUE);
    Self.FTANQUE:= TPostoTanque.find(Self.IdTanque);
  end;
  Result:= Self.FTANQUE;
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
      DataSet.FieldByName('ID_TANQUE').AsString:= vList.Items[I].IdTanque;
      DataSet.FieldByName('CODIGO_BICO').AsString:= vList.Items[I].CodigoBico;
      DataSet.FieldByName('POSICAO').AsString:= vList.Items[I].Posicao;
      DataSet.FieldByName('DESCRICAO').AsString:= vList.Items[I].Descricao;
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
    StartConfiguration;
    Self.StartTransaction();
    vFDQuery:= Self.createQuery;

    try
      vFDQuery.SQL.Add(listFields(vBaseTable, ['deleted_at'], false));
      checkFieldTypes(vFDQuery);

      Self.Id:= Self.generateId;

      vFDQuery.Params.ParamByName('ID').AsString:= Self.Id;
      vFDQuery.Params.ParamByName('ID_TANQUE').AsString:= Self.IdTanque;
      vFDQuery.Params.ParamByName('CODIGO_BICO').AsString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('POSICAO').AsString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.CodigoBico;
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
    StartConfiguration;
    Self.StartTransaction();
    vFDQuery:= Self.createQuery;

    try
      vFDQuery.SQL.Add(listFields(vBaseTable, ['deleted_at'], true));
      checkFieldTypes(vFDQuery);

      vFDQuery.Params.ParamByName('ID').AsString:= Self.Id;
      vFDQuery.Params.ParamByName('ID_TANQUE').AsString:= Self.IdTanque;
      vFDQuery.Params.ParamByName('CODIGO_BICO').asString:= Self.CodigoBico;
      vFDQuery.Params.ParamByName('POSICAO').asString:= Self.Posicao;
      vFDQuery.Params.ParamByName('DESCRICAO').asString:= Self.Descricao;
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
