unit mProduto;

interface

uses
  mBase, Generics.Collections, SysUtils, FireDAC.Comp.Client, Vcl.Dialogs,
  Data.DB, System.Generics.Collections, svcLibrary, mPostoCartao, System.StrUtils;

type
  TProduto = class(TBase)
  private
    FCODIGO: Integer;
    FDESCRICAO: String;
    FPRECO_VENDA: Currency;
  public
    destructor Destroy; override;
    constructor Create();
    class procedure StartConfiguration; overload;

    //Busca de dados passando parametro
    class function find(vCodigo: Integer): TProduto;

    //Lista todos cadastrados
    class function list(search: string): TObjectList<TProduto>; overload;

    property Codigo: Integer  read FCODIGO write FCODIGO;
    property Descricao: String  read FDESCRICAO write FDESCRICAO;
    property PrecoVenda: Currency  read FPRECO_VENDA write FPRECO_VENDA;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  StartConfiguration;
end;

destructor TProduto.Destroy;
begin
  inherited;
end;

class function TProduto.find(vCodigo: Integer): TProduto;
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
      vFDQuery.Params.ParamByName(vBasePrimaryKey).AsInteger:= vCodigo;
      vFDQuery.Open();
      if (vFDQuery.RecordCount = 0) then Result:= nil
      else
      begin
        Result:= TProduto.Create;
        Result.Codigo:= vFDQuery.FieldByName('CODIGO').AsInteger;
        Result.PrecoVenda:= vFDQuery.FieldByName('PRECO_VENDA').AsCurrency;
        Result.Descricao:= vFDQuery.FieldByName('DESCRICAO').AsString;
      end;
    except
      Result:= nil;
    end;
  finally
    FreeAndNil(vFDQuery);
  end;
end;

class function TProduto.list(search: string): TObjectList<TProduto>;
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
        Result:= TObjectList<TProduto>.Create;
        vFDQuery.First;
        while not vFDQuery.Eof do
        begin
          Result.Add(TProduto.find(vFDQuery.FieldByName(vBasePrimaryKey).AsInteger));
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

class procedure TProduto.StartConfiguration;
begin
  vBaseTable:= 'PRODUTOS';
  vBasePrimaryKey:= 'CODIGO';
  inherited;
end;

end.
