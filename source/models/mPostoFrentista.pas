unit mPostoFrentista;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary, mPostoCartao, System.StrUtils;

type
  TPostoFrentista = class(TBase)
  private
    { private declarations }
    FID_CARTAO: String;
    FNOME: String;
    FDESCRICAO: String;
    FCOMISSAO: Currency;
    FSTATUS: String;
    FCARTAO: TPostoCartao;

    function getCartao: TPostoCartao;
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
    class function find(vId: String): TPostoFrentista;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TPostoFrentista>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search: string; DataSet: TFDMemTable); overload;

    property IdCartao: String  read FID_CARTAO write FID_CARTAO;
    property Nome: String  read FNOME write FNOME;
    property Descricao: String  read FDESCRICAO write FDESCRICAO;
    property Comissao: Currency  read FCOMISSAO write FCOMISSAO;
    property Status: String  read FSTATUS write FSTATUS;

    property Cartao: TPostoCartao read getCartao;
  end;

implementation

{ TPostoFrentista }

procedure TPostoFrentista.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('ID_CARTAO') <> nil then
    query.Params.ParamByName('ID_CARTAO').DataType:= ftString;
  if query.Params.FindParam('NOME') <> nil then
    query.Params.ParamByName('NOME').DataType:= ftString;
  if query.Params.FindParam('DESCRICAO') <> nil then
    query.Params.ParamByName('DESCRICAO').DataType:= ftString;
  if query.Params.FindParam('COMISSAO') <> nil then
    query.Params.ParamByName('COMISSAO').DataType:= ftCurrency;
  query.Prepare();
end;

constructor TPostoFrentista.Create;
begin
  StartConfiguration;
end;

destructor TPostoFrentista.Destroy;
begin
  inherited;
end;

class function TPostoFrentista.find(vId: String): TPostoFrentista;
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
        Result:= TPostoFrentista.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.IdCartao:= vFDQuery.FieldByName('ID_CARTAO').AsString;
        Result.Nome:= vFDQuery.FieldByName('NOME').AsString;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
        Result.Comissao:= vFDQuery.FieldByName('COMISSAO').AsCurrency;
        Result.Status:= vFDQuery.FieldByName('STATUS').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoFrentista.getCartao: TPostoCartao;
begin
  if not Assigned(Self.FCARTAO) then
    Self.FCARTAO:= TPostoCartao.find(Self.IdCartao)
  else if Self.FCARTAO.Id <> Self.IdCartao then
  begin
    FreeAndNil(FCARTAO);
    Self.FCARTAO:= TPostoCartao.find(Self.IdCartao);
  end;
  Result:= Self.FCARTAO;
end;

class procedure TPostoFrentista.list(search: string; DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoFrentista>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoFrentista.list(search);
  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('ID_CARTAO').AsString:= vList.Items[I].IdCartao;
      DataSet.FieldByName('NOME').AsString:= vList.Items[I].Nome;
      DataSet.FieldByName('DESCRICAO').AsString:= vList.Items[I].Descricao;
      DataSet.FieldByName('COMISSAO').AsCurrency:= vList.Items[I].Comissao;
      DataSet.FieldByName('STATUS').AsString:= vList.Items[I].Status;
      DataSet.FieldByName('CARTAO').AsString:= vList.Items[I].Cartao.codigo;
      DataSet.FieldByName('STATUS_NAME').AsString:= IfThen(vList.Items[I].Status = 'A', 'Ativo', 'Inativo');
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

class function TPostoFrentista.list(
  search: string): TObjectList<TPostoFrentista>;
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
        Result:= TObjectList<TPostoFrentista>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TPostoFrentista.find(vFDQuery.FieldByName(vBasePrimaryKey).AsString));
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

function TPostoFrentista.save: Boolean;
begin
  Result:= inherited;
end;

class procedure TPostoFrentista.StartConfiguration;
begin
  vBaseTable:= 'POSTO_FRENTISTAS';
  vBasePrimaryKey:= 'ID';
  inherited;
end;

function TPostoFrentista.store: Boolean;
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
      vFDQuery.Params.ParamByName('ID_CARTAO').AsString:= Self.IdCartao;
      vFDQuery.Params.ParamByName('NOME').AsString:= Self.Nome;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.Descricao;
      vFDQuery.Params.ParamByName('COMISSAO').AsCurrency:= Self.Comissao;
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

function TPostoFrentista.update: Boolean;
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
      vFDQuery.Params.ParamByName('ID_CARTAO').AsString:= Self.IdCartao;
      vFDQuery.Params.ParamByName('NOME').AsString:= Self.Nome;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.Descricao;
      vFDQuery.Params.ParamByName('COMISSAO').AsCurrency:= Self.Comissao;
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

function TPostoFrentista.validateFields(store: boolean): Boolean;
var
  vMensagem: string;
begin
  Result:= True;
  try
    if Self.Nome = EmptyStr then
    begin
      vMensagem:= 'É necessário informar o nome!';
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
