unit mPostoBomba;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary, mPostoCartao, System.StrUtils,
  mProduto, mPostoBico;

type
  TPostoBomba = class(TBase)
  private
    FNUMERO: Integer;
    FDESCRICAO: String;
    FMODELO: String;
    FSERIE: String;
    FFABRICANTE: String;
    FAUTO_AUTORIZAR: String;

    FBICOS: TObjectList<TPostoBico>;
    function getBicos: TObjectList<TPostoBico>;
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
    class function find(vId: String): TPostoBomba;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TPostoBomba>; overload;
    //Lista todos os cadastro numa TFDMemTable
    class procedure list(search: string; DataSet: TFDMemTable); overload;

    class procedure listBicos(id: string; DataSet: TFDMemTable);

    class function verificaBicoJaCadastrado(idBico, idBomba: String): Boolean;

    property Numero: Integer read FNUMERO write FNUMERO;
    property Descricao: String read FDESCRICAO write FDESCRICAO;
    property Modelo: String read FMODELO write FMODELO;
    property Serie: String read FSERIE write FSERIE;
    property Fabricante: String read FFABRICANTE write FFABRICANTE;
    property AutoAutorizar: String read FAUTO_AUTORIZAR write FAUTO_AUTORIZAR;

    property Bicos: TObjectList<TPostoBico> read getBicos;
  end;

implementation

{ TPostoBomba }

class procedure TPostoBomba.listBicos(id: string; DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoBico>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoBico.findByBombaId(id);

  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID_BICO').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('ID_BOMBA').AsString:= id;
      DataSet.FieldByName('BICO').AsString:= vList.Items[I].CodigoBico + ' - ' +
      vList.Items[I].Descricao;
      DataSet.FieldByName('TANQUE').AsString:= IntToStr(vList.Items[I].Tanque.Numero) + ' - ' +
      vList.Items[I].Tanque.Descricao;
      DataSet.FieldByName('PRODUTO').AsString:= IntToStr(vList.Items[I].Tanque.Produto.Codigo) + ' - ' +
        vList.Items[I].Tanque.Produto.Descricao;
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

procedure TPostoBomba.checkFieldTypes(query: TFDQuery);
begin
  if query.Params.FindParam('ID') <> nil then
    query.Params.ParamByName('ID').DataType:= ftString;
  if query.Params.FindParam('NUMERO') <> nil then
    query.Params.ParamByName('NUMERO').DataType:= ftInteger;
  if query.Params.FindParam('MODELO') <> nil then
    query.Params.ParamByName('MODELO').DataType:= ftString;
  if query.Params.FindParam('SERIE') <> nil then
    query.Params.ParamByName('SERIE').DataType:= ftString;
  if query.Params.FindParam('FABRICANTE') <> nil then
    query.Params.ParamByName('FABRICANTE').DataType:= ftString;
  if query.Params.FindParam('AUTO_AUTORIZAR') <> nil then
    query.Params.ParamByName('AUTO_AUTORIZAR').DataType:= ftString;
  query.Prepare();
end;

constructor TPostoBomba.Create;
begin
  StartConfiguration;
end;

destructor TPostoBomba.Destroy;
begin
  if Assigned(Self.FBICOS) then FreeAndNil(Self.FBICOS);
  inherited;
end;

class function TPostoBomba.find(vId: String): TPostoBomba;
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
        Result:= TPostoBomba.Create;
        Result.Id:= vFDQuery.FieldByName('ID').AsString;
        Result.Numero:= vFDQuery.FieldByName('NUMERO').AsInteger;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
        Result.Modelo:= vFDQuery.FieldByName('MODELO').AsString;
        Result.Serie:= vFDQuery.FieldByName('SERIE').AsString;
        Result.Fabricante:= vFDQuery.FieldByName('FABRICANTE').AsString;
        Result.AutoAutorizar:= vFDQuery.FieldByName('AUTO_AUTORIZAR').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

function TPostoBomba.getBicos: TObjectList<TPostoBico>;
begin
  if not Assigned(FBICOS) and (Self.Id <> EmptyStr) then
    Self.FBICOS:= TPostoBico.findByBombaId(Self.Id);
  if not Assigned(FBICOS) then
    Self.FBICOS:= TObjectList<TPostoBico>.Create;
  Result:= Self.FBICOS;
end;

class procedure TPostoBomba.list(search: string; DataSet: TFDMemTable);
var
  vList: TObjectList<TPostoBomba>;
  I: Integer;
begin
  DataSet.Open();
  DataSet.DisableControls;
  DataSet.EmptyDataSet;
  vList:= TPostoBomba.list(search);
  if Assigned(vList) then
  begin
    for I := 0 to Pred(vList.Count) do
    begin
      DataSet.Append;
      DataSet.FieldByName('ID').AsString:= vList.Items[I].Id;
      DataSet.FieldByName('NUMERO').AsInteger:= vList.Items[I].Numero;
      DataSet.FieldByName('DESCRICAO').AsString:= vList.Items[I].Descricao;
      DataSet.FieldByName('MODELO').AsString:= vList.Items[I].Modelo;
      DataSet.FieldByName('SERIE').AsString:= vList.Items[I].Serie;
      DataSet.FieldByName('FABRICANTE').AsString:= vList.Items[I].Fabricante;
      DataSet.FieldByName('AUTO_AUTORIZAR').AsString:= vList.Items[I].AutoAutorizar;
      DataSet.Post;
    end;
    FreeAndNil(vList);
  end;
  DataSet.First;
  DataSet.EnableControls;
end;

class function TPostoBomba.list(search: string): TObjectList<TPostoBomba>;
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
        Result:= TObjectList<TPostoBomba>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TPostoBomba.find(vFDQuery.FieldByName(vBasePrimaryKey).AsString));
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

function TPostoBomba.save: Boolean;
begin
  Result:= inherited;
end;

class procedure TPostoBomba.StartConfiguration;
begin
  vBaseTable:= 'POSTO_BOMBAS';
  vBasePrimaryKey:= 'ID';
  inherited;
end;

function TPostoBomba.store: Boolean;
var
  vFDQuery: TFDQuery;
  I: Integer;
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
      vFDQuery.Params.ParamByName('NUMERO').AsInteger:= Self.Numero;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.Descricao;
      vFDQuery.Params.ParamByName('MODELO').AsString:= Self.Modelo;
      vFDQuery.Params.ParamByName('SERIE').AsString:= Self.Serie;
      vFDQuery.Params.ParamByName('FABRICANTE').AsString:= Self.Fabricante;
      vFDQuery.Params.ParamByName('AUTO_AUTORIZAR').AsString:= Self.AutoAutorizar;
      vFDQuery.ExecSQL();

      vFDQuery.Close();
      vFDQuery.SQL.Clear();
      vFDQuery.SQL.Add(listFields('POSTO_BOMBA_BICOS', [], false));
      vFDQuery.Params.ParamByName('ID').DataType:= ftString;
      vFDQuery.Params.ParamByName('ID_BOMBA').DataType:= ftString;
      vFDQuery.Params.ParamByName('ID_BICO').DataType:= ftString;
      vFDQuery.Prepare;

      for I:= 0 to Pred(Self.Bicos.Count) do
      begin
        vFDQuery.Params.ParamByName('ID').AsString:= Self.generateId;
        vFDQuery.Params.ParamByName('ID_BOMBA').AsString:= Self.Id;
        vFDQuery.Params.ParamByName('ID_BICO').AsString:= Self.Bicos[I].Id;
        vFDQuery.ExecSQL();
      end;

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

function TPostoBomba.update: Boolean;
var
  vFDQuery: TFDQuery;
  I: Integer;
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
      vFDQuery.Params.ParamByName('NUMERO').AsInteger:= Self.Numero;
      vFDQuery.Params.ParamByName('DESCRICAO').AsString:= Self.Descricao;
      vFDQuery.Params.ParamByName('MODELO').AsString:= Self.Modelo;
      vFDQuery.Params.ParamByName('SERIE').AsString:= Self.Serie;
      vFDQuery.Params.ParamByName('FABRICANTE').AsString:= Self.Fabricante;
      vFDQuery.Params.ParamByName('AUTO_AUTORIZAR').AsString:= Self.AutoAutorizar;
      vFDQuery.ExecSQL();

      vFDQuery.Close();
      vFDQuery.SQL.Clear();
      vFDQuery.SQL.Add('DELETE FROM POSTO_BOMBA_BICOS WHERE (ID_BOMBA = :ID_BOMBA)');
      vFDQuery.Params.ParamByName('ID_BOMBA').DataType:= ftString;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('ID_BOMBA').AsString:=  Self.Id;
      vFDQuery.ExecSQL();

      vFDQuery.Close();
      vFDQuery.SQL.Clear();
      vFDQuery.SQL.Add(listFields('POSTO_BOMBA_BICOS', [], false));
      vFDQuery.Params.ParamByName('ID').DataType:= ftString;
      vFDQuery.Params.ParamByName('ID_BOMBA').DataType:= ftString;
      vFDQuery.Params.ParamByName('ID_BICO').DataType:= ftString;
      vFDQuery.Prepare;

      for I:= 0 to Pred(Self.Bicos.Count) do
      begin
        vFDQuery.Params.ParamByName('ID').AsString:= Self.generateId;
        vFDQuery.Params.ParamByName('ID_BOMBA').AsString:= Self.Id;
        vFDQuery.Params.ParamByName('ID_BICO').AsString:= Self.Bicos[I].Id;
        vFDQuery.ExecSQL();
      end;

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

function TPostoBomba.validateFields(store: boolean): Boolean;
var
  vMensagem: string;
  I: Integer;
begin
  Result:= True;
  try
    if Self.Descricao = EmptyStr then
    begin
      vMensagem:= 'É necessário informar a Descrição!';
      Exit();
    end;

    for I:= 0 to Pred(Self.Bicos.Count) do
    begin
      if verificaBicoJaCadastrado(Self.Bicos[I].Id, Self.id) then
      begin
        vMensagem:= 'Bico ' + Self.Bicos[I].CodigoBico  + ' Já cadastrado numa bomba.';
        exit;
      end;
    end;

  finally
    if (vMensagem <> '') then
    begin
      TLibrary.showMessage('Atenção', PWideChar(vMensagem), 0);
      Result:= False;
    end;
  end;
end;

class function TPostoBomba.verificaBicoJaCadastrado(idBico, idBomba: String): Boolean;
var
  FSql: string;
  FDQuery: TFDQuery;
begin
  try
    FSql:= 'SELECT * FROM POSTO_BOMBA_BICOS WHERE ID_BICO = :ID_BICO AND ID_BOMBA <> :ID_BOMBA';
    FDQuery:= createQuery;
    try
      FDQuery.SQL.Add(FSql);
      FDQuery.Params.ParamByName('ID_BICO').DataType:= ftString;  
      FDQuery.Params.ParamByName('ID_BOMBA').DataType:= ftString; 
      FDQuery.Prepare();
      FDQuery.Params.ParamByName('ID_BICO').AsString:= idBico;  
      FDQuery.Params.ParamByName('ID_BOMBA').AsString:= idBomba;
      FDQuery.Open();
      Result:= (FDQuery.RecordCount > 0);
    except
      Result:= False;
    end;
  finally
    FreeAndNil(FDQuery);
  end;
end;

end.
