unit svcAuth;

interface

uses mUser, svcLibrary, System.SysUtils, Vcl.Forms, Vcl.ExtCtrls;

type
  TAuth = class
  strict private
    { private declarations }
    class var FUSER: TUser;
  private
    class procedure ReleaseInstance();
  public
    { public declarations }
    class var PostoRegistroId: String;

    //Login e autenticação de dados de usuário
    class function Authenticate(usuario, senha: string): Boolean; overload;

    //Checar se usuário está logado
    class function checkAuthentication(): Boolean;
  published
    { published declarations }
  end;

implementation

{ TAuth }

class function TAuth.Authenticate(usuario, senha: string): Boolean;
begin
  if Assigned(Self.FUSER) then
  begin
    FreeAndNil(Self.FUSER);
  end;
  Self.FUSER:= TUser.login(usuario, senha);
  Result:= Assigned(Self.FUSER);
end;

class function TAuth.checkAuthentication: Boolean;
begin
  Result:= Assigned(Self.FUSER);
end;

class procedure TAuth.ReleaseInstance;
begin
  FreeAndNil(Self.FUSER);
end;

initialization
finalization
  TAuth.ReleaseInstance();

end.
