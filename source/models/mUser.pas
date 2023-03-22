unit mUser;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary;

type
  TUser = class(TBase)
  private
    FCODIGO: Integer;
    FUSUARIO: String;
    FSENHA: String;

  public
    destructor Destroy; override;
    constructor Create();
    class procedure StartConfiguration; overload;

    //Busca de dados passando parametro
    class function find(vId: Integer): TUser;

    //Busca usuário passando o usuario e senha retornando o mesmo
    class function login(vUsuario, vSenha: string): TUser;

    //Lista todos os usuários cadastrados
    class function list(search: string): TObjectList<TUser>; overload;

    property Codigo: Integer  read FCODIGO write FCODIGO;
    property Usuario: String  read FUSUARIO write FUSUARIO;
    property Senha: String  read FSENHA write FSENHA;
  end;

implementation

{ TUser }

constructor TUser.Create;
begin
  StartConfiguration;
end;

destructor TUser.Destroy;
begin
  inherited;
end;

class function TUser.find(vId: Integer): TUser;
var
  vFDQuery: TFDQuery;
begin
  try
    StartConfiguration;
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add(vBaseFindSQL);
      vFDQuery.Params.ParamByName(vBasePrimaryKey).DataType:= ftInteger;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName(vBasePrimaryKey).AsInteger:= vId;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TUser.Create;
        Result.Codigo:= vFDQuery.FieldByName('CODIGO').AsInteger;
        Result.Usuario:= vFDQuery.FieldByName('USUARIO').AsString;
        Result.Senha:= vFDQuery.FieldByName('SENHA').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class function TUser.list(search: string): TObjectList<TUser>;
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
        Result:= TObjectList<TUser>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TUser.find(vFDQuery.FieldByName(vBasePrimaryKey).AsInteger));
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

class function TUser.login(vUsuario, vSenha: string): TUser;
var
  vFDQuery: TFDQuery;
  vSQL: String;
begin
  try
    vSQL:= 'SELECT CODIGO FROM USUARIOS WHERE (USUARIO = :USUARIO) AND (SENHA = :SENHA)';
    vFDQuery:= Self.createQuery;
    try
      vFDQuery.SQL.Add(vSQL);
      vFDQuery.Params.ParamByName('USUARIO').DataType:= ftString;
      vFDQuery.Params.ParamByName('SENHA').DataType:= ftString;
      vFDQuery.Prepare();
      vFDQuery.Params.ParamByName('USUARIO').AsString:= vUsuario;
      vFDQuery.Params.ParamByName('SENHA').AsString:= vSenha;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
        Result:= TUser.find(vFDQuery.FieldByName('CODIGO').AsInteger);
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class procedure TUser.StartConfiguration;
begin
  vBaseTable:= 'USUARIOS';
  vBasePrimaryKey:= 'CODIGO';
  inherited;
end;

end.
