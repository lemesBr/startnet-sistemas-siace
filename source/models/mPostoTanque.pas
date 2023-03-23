unit mPostoTanque;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary, mPostoCartao, System.StrUtils,
  mProduto;

type
  TPostoTanque = class(TBase)
  private
    FID_PRODUTO: Integer;
    FNUMERO: Integer;
    FVOLUME_ATUAL: Currency;
    FCAPACIDADE: Currency;
    FDESCRICAO: String;
    FPRODUTO: TProduto;

    function getProduto: TProduto;
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
    class function find(vId: String): TPostoTanque;

    //Busca de dados passando parametro numero
    class function findNumero(vNumero: Integer): TPostoTanque;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TPostoTanque>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search: string; DataSet: TFDMemTable); overload;

    property IdProduto: Integer read FID_PRODUTO write FID_PRODUTO;
    property Numero: Integer read FNUMERO write FNUMERO;
    property VolumeAtual: Currency read FVOLUME_ATUAL write FVOLUME_ATUAL;
    property Capacidade: Currency read FCAPACIDADE write FCAPACIDADE;
    property Descricao: String read FDESCRICAO write FDESCRICAO;

    property Produto: TProduto read getProduto;
  end;

implementation

{ TPostoTanque }

procedure TPostoTanque.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('ID_PRODUTO') <> nil then
    query.Params.ParamByName('ID_PRODUTO').DataType:= ftInteger;
  if query.Params.FindParam('NUMERO') <> nil then
    query.Params.ParamByName('NUMERO').DataType:= ftInteger;
  if query.Params.FindParam('VOLUME_ATUAL') <> nil then
    query.Params.ParamByName('VOLUME_ATUAL').DataType:= ftCurrency;
  if query.Params.FindParam('CAPACIDADE') <> nil then
    query.Params.ParamByName('CAPACIDADE').DataType:= ftCurrency;
  if query.Params.FindParam('VOLUME_ATUAL') <> nil then
    query.Params.ParamByName('VOLUME_ATUAL').DataType:= ftCurrency;
  if query.Params.FindParam('DESCRICAO') <> nil then
    query.Params.ParamByName('DESCRICAO').DataType:= ftString;
  query.Prepare();
end;

constructor TPostoTanque.Create;
begin
  StartConfiguration;
end;

destructor TPostoTanque.Destroy;
begin
  if Assigned(Self.FPRODUTO) then FreeAndNil(Self.FPRODUTO);
  inherited;
end;

class function TPostoTanque.find(vId: String): TPostoTanque;
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
        Result:= TPostoTanque.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.IdProduto:= vFDQuery.FieldByName('ID_PRODUTO').AsInteger;
        Result.Numero:= vFDQuery.FieldByName('NUMERO').AsInteger;
        Result.VolumeAtual:= vFDQuery.FieldByName('VOLUME_ATUAL').AsCurrency;
        Result.Capacidade:= vFDQuery.FieldByName('CAPACIDADE').AsCurrency;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class function TPostoTanque.findNumero(vNumero: Integer): TPostoTanque;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add('SELECT * FROM POSTO_TANQUES WHERE NUMERO = :NUMERO');
      vFDQuery.Params.ParamByName('NUMERO').DataType:= ftInteger;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('NUMERO').AsInteger:= vNumero;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TPostoTanque.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.IdProduto:= vFDQuery.FieldByName('ID_PRODUTO').AsInteger;
        Result.Numero:= vFDQuery.FieldByName('NUMERO').AsInteger;
        Result.VolumeAtual:= vFDQuery.FieldByName('VOLUME_ATUAL').AsCurrency;
        Result.Capacidade:= vFDQuery.FieldByName('CAPACIDADE').AsCurrency;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoTanque.getProduto: TProduto;
begin
  if not Assigned(Self.FPRODUTO) then
    Self.FPRODUTO:= TProduto.find(Self.IdProduto)
  else if Self.FPRODUTO.codigo <> Self.IdProduto then
  begin
    FreeAndNil(FPRODUTO);
    Self.FPRODUTO:= TProduto.find(Self.IdProduto);
  end;
  Result:= Self.FPRODUTO;
end;

class procedure TPostoTanque.list(search: string; DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoTanque>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoTanque.list(search);
  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('ID_PRODUTO').AsInteger:= vList.Items[I].IdProduto;
      DataSet.FieldByName('NUMERO').AsInteger:= vList.Items[I].Numero;
      DataSet.FieldByName('VOLUME_ATUAL').AsCurrency:= vList.Items[I].VolumeAtual;
      DataSet.FieldByName('CAPACIDADE').AsCurrency:= vList.Items[I].Capacidade;
      DataSet.FieldByName('DESCRICAO').AsString:= vList.Items[I].Descricao;
      DataSet.FieldByName('PRODUTO').AsString:= vList.Items[I].Produto.descricao;
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

class function TPostoTanque.list(search: string): TObjectList<TPostoTanque>;
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
        Result:= TObjectList<TPostoTanque>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TPostoTanque.find(vFDQuery.FieldByName(vBasePrimaryKey).AsString));
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

function TPostoTanque.save: Boolean;
begin
  Result:= inherited;
end;

class procedure TPostoTanque.StartConfiguration;
begin
  vBaseTable:= 'POSTO_TANQUES';
  vBasePrimaryKey:= 'ID';
  inherited;
end;

function TPostoTanque.store: Boolean;
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
      vFDQuery.Params.ParamByName('ID_PRODUTO').AsInteger:= Self.IdProduto;
      vFDQuery.Params.ParamByName('NUMERO').AsInteger:= Self.Numero;
      vFDQuery.Params.ParamByName('VOLUME_ATUAL').AsCurrency:= Self.VolumeAtual;
      vFDQuery.Params.ParamByName('CAPACIDADE').AsCurrency:= Self.Capacidade;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.Descricao;
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

function TPostoTanque.update: Boolean;
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
      vFDQuery.Params.ParamByName('ID_PRODUTO').AsInteger:= Self.IdProduto;
      vFDQuery.Params.ParamByName('NUMERO').AsInteger:= Self.Numero;
      vFDQuery.Params.ParamByName('VOLUME_ATUAL').AsCurrency:= Self.VolumeAtual;
      vFDQuery.Params.ParamByName('CAPACIDADE').AsCurrency:= Self.Capacidade;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.Descricao;
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

function TPostoTanque.validateFields(store: boolean): Boolean;
var
  vMensagem: string;
begin
  Result:= True;
  try
    if Self.Descricao = EmptyStr then
    begin
      vMensagem:= 'É necessário informar a Descrição!';
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
