unit mPostoCartao;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary;

type
  TPostoCartao = class(TBase)
  private
    { private declarations }
    FCODIGO: String;
    FCONTROLE: Integer;
    FLIBERA_BOMBA_ABASTECIMENTO: String;
    FACEITA_SOMENTE_TURNO_ESPECIFICO: String;
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
    class function find(vId: String): TPostoCartao;
    //Busca de dados passando parametro codigo
    class function findCodigo(vCodigo: String): TPostoCartao;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TPostoCartao>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search: string; DataSet: TFDMemTable); overload;

    //Busca controle nomes
    class function controleNomes(vControle: Integer): String;

    property Codigo: String  read FCODIGO write FCODIGO;
    property Controle: Integer  read FCONTROLE write FCONTROLE;
    property LiberaBombaAbastecimento: String  read FLIBERA_BOMBA_ABASTECIMENTO write FLIBERA_BOMBA_ABASTECIMENTO;
    property AceitaSomenteTurnoEspecifico: String  read FACEITA_SOMENTE_TURNO_ESPECIFICO write FACEITA_SOMENTE_TURNO_ESPECIFICO;
  end;

implementation

{ TPostoCartao }

procedure TPostoCartao.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('CODIGO') <> nil then
    query.Params.ParamByName('CODIGO').DataType:= ftString;
  if query.Params.FindParam('CONTROLE') <> nil then
    query.Params.ParamByName('CONTROLE').DataType:= ftInteger;
  if query.Params.FindParam('LIBERA_BOMBA_ABASTECIMENTO') <> nil then
    query.Params.ParamByName('LIBERA_BOMBA_ABASTECIMENTO').DataType:= ftString;
  if query.Params.FindParam('ACEITA_SOMENTE_TURNO_ESPECIFICO') <> nil then
    query.Params.ParamByName('ACEITA_SOMENTE_TURNO_ESPECIFICO').DataType:= ftString;
  query.Prepare();
end;

class function TPostoCartao.controleNomes(vControle: Integer): String;
begin
  case vControle of
    1: Result:= 'TAG Veículo';
    2: Result:= 'TAG Máquina de Lavar';
    3: Result:= 'Reservado';
    4: Result:= 'Cliente Nível 1';
    5: Result:= 'Cliente Nível 2';
    6: Result:= 'Cliente Nível 3';
    7: Result:= 'Funcionário Nível 1';
    8: Result:= 'Funcionário Nível 2';
    9: Result:= 'Funcionário Nível 3';
    10: Result:= 'Funcionário Nível 4';
    11: Result:= 'Funcionário Nível 5';
    12: Result:= 'Funcionário Nível 6';
    13: Result:= 'Gerente Nível 1';
    14: Result:= 'Gerente Nível 2';
    15: Result:= 'Controle Total';
  end;
end;

constructor TPostoCartao.Create;
begin
  StartConfiguration;
end;

destructor TPostoCartao.Destroy;
begin
  inherited;
end;

class function TPostoCartao.find(vId: String): TPostoCartao;
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
        Result:= TPostoCartao.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.Codigo:= vFDQuery.FieldByName('CODIGO').AsString;
        Result.Controle:= vFDQuery.FieldByName('CONTROLE').AsInteger;
        Result.LiberaBombaAbastecimento:= vFDQuery.FieldByName('LIBERA_BOMBA_ABASTECIMENTO').AsString;
        Result.AceitaSomenteTurnoEspecifico:= vFDQuery.FieldByName('ACEITA_SOMENTE_TURNO_ESPECIFICO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class function TPostoCartao.findCodigo(vCodigo: String): TPostoCartao;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add('SELECT * FROM POSTO_CARTOES WHERE CODIGO = :CODIGO');
      vFDQuery.Params.ParamByName('CODIGO').DataType:= ftString;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('CODIGO').asString:= vCodigo;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TPostoCartao.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.Codigo:= vFDQuery.FieldByName('CODIGO').AsString;
        Result.Controle:= vFDQuery.FieldByName('CONTROLE').AsInteger;
        Result.LiberaBombaAbastecimento:= vFDQuery.FieldByName('LIBERA_BOMBA_ABASTECIMENTO').AsString;
        Result.AceitaSomenteTurnoEspecifico:= vFDQuery.FieldByName('ACEITA_SOMENTE_TURNO_ESPECIFICO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class procedure TPostoCartao.list(search: string;
  DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoCartao>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoCartao.list(search);
  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('CODIGO').AsString:= vList.Items[I].Codigo;
      DataSet.FieldByName('CONTROLE').AsInteger:= vList.Items[I].Controle;
      DataSet.FieldByName('LIBERA_BOMBA_ABASTECIMENTO').AsString:= vList.Items[I].LiberaBombaAbastecimento;
      DataSet.FieldByName('ACEITA_SOMENTE_TURNO_ESPECIFICO').AsString:= vList.Items[I].AceitaSomenteTurnoEspecifico;
      DataSet.FieldByName('CONTROLE_STR').AsString:= controleNomes(vList.Items[I].Controle);
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

class function TPostoCartao.list(search: string): TObjectList<TPostoCartao>;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= TBase.createQuery;
    try
      vFDQuery.SQL.Add(vBaseListSQL);
      vFDQuery.Prepare();
      vFDQuery.Open();
      if vFDQuery.RecordCount = 0 then Result:= nil
      else
      begin
        Result:= TObjectList<TPostoCartao>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TPostoCartao.find(vFDQuery.FieldByName(vBasePrimaryKey).AsString));
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

function TPostoCartao.save: Boolean;
begin
  Result:= inherited;
end;

class procedure TPostoCartao.StartConfiguration;
begin
  vBaseTable:= 'POSTO_CARTOES';
  vBasePrimaryKey:= 'ID';
  inherited;
end;

function TPostoCartao.store: Boolean;
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
      vFDQuery.Params.ParamByName('CODIGO').AsString:= Self.Codigo;
      vFDQuery.Params.ParamByName('CONTROLE').AsInteger:= Self.Controle;
      vFDQuery.Params.ParamByName('LIBERA_BOMBA_ABASTECIMENTO').AsString:= Self.LiberaBombaAbastecimento;
      vFDQuery.Params.ParamByName('ACEITA_SOMENTE_TURNO_ESPECIFICO').AsString:= Self.AceitaSomenteTurnoEspecifico;
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

function TPostoCartao.update: Boolean;
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
      vFDQuery.Params.ParamByName('CODIGO').AsString:= Self.Codigo;
      vFDQuery.Params.ParamByName('CONTROLE').AsInteger:= Self.Controle;
      vFDQuery.Params.ParamByName('LIBERA_BOMBA_ABASTECIMENTO').AsString:= Self.LiberaBombaAbastecimento;
      vFDQuery.Params.ParamByName('ACEITA_SOMENTE_TURNO_ESPECIFICO').AsString:= Self.AceitaSomenteTurnoEspecifico;
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

function TPostoCartao.validateFields(store: boolean): Boolean;
var
  vMensagem: string;
begin
  Result:= True;
  try
    if Self.Codigo = EmptyStr then
    begin
      vMensagem:= 'É necessário informar o codigo!';
      Exit();
    end;

    if Length(Self.Codigo) <> 16 then
    begin
      vMensagem:= 'Código do cartão deve ter 16 caracteres!';
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
