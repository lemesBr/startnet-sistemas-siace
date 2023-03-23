unit mBase;

interface

uses
  mConnection, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.DateUtils,
  System.SysUtils, system.StrUtils, System.Classes,
  System.Generics.Collections, svcLibrary;

type
  TBase = class
  private
    FID: String;
  protected

    function generateId(): string;
    function getNextNumber(Column: String): Integer;
    function store(): Boolean; virtual; abstract;
    function update(): Boolean; virtual; abstract;
    function validateFields(store: boolean): Boolean; virtual; abstract;
    function unicValueInTable(field, fieldValue: String; baseCompany: Boolean = True): Boolean;
    function save(): Boolean;

    class function createQuery(): TFDQuery;
    class function listFields(tableName: String; noGetFields: array of string; update: Boolean): string;

    class procedure StartTransaction;
    class procedure Commit;
    class procedure Rollback;

    class procedure StartConfiguration;
  public
    class var vBaseTable: String;
    class var vBasePrimaryKey: String;
    class var vBaseFindSQL: String;
    class var vBaseListSQL: String;

    property Id: String  read FID write FID;
  end;

implementation

{ TModel }

class procedure TBase.Commit;
begin
  TConnection.GetInstance.Commit;
end;

class function TBase.createQuery: TFDQuery;
begin
  Result:= TFDQuery.Create(nil);
  Result.Connection:= TConnection.GetInstance();
end;

function TBase.generateId: string;
var
  vKey: string;
begin
  Sleep(2);
  vKey:=
    FormatDateTime('yyyymmddhhmmss', Now) + '-' +
    vBaseTable + '-' +
    MilliSecondOfTheYear(Now).ToString() + '-' +
    TLibrary.SerialDrive('C');
  Result:= UpperCase(TLibrary.MD5String(vKey));
end;

function TBase.getNextNumber(Column: String): Integer;
var
  FSql: string;
  FDQuery: TFDQuery;
begin
  try
    FSql:= 'SELECT MAX('+ Column +') AS R_NUMBER  FROM ' + vBaseTable +
    ' WHERE (COMPANY_ID = :COMPANY_ID) AND ('+ Column +' <= 99999999)';
    FDQuery:= createQuery;
    try
      FDQuery.SQL.Add(FSql);
      FDQuery.Params.ParamByName('COMPANY_ID').DataType:= ftString;
      FDQuery.Prepare();
      //FDQuery.Params.ParamByName('COMPANY_ID').AsString:= TAuth.CompanyIdSelected;
      FDQuery.Open();
      Result:= (FDQuery.FieldByName('R_NUMBER').AsInteger + 1);
    except
      Result:= 0;
    end;
  finally
    FreeAndNil(FDQuery);
  end;
end;

class function TBase.listFields(tableName: String;
  noGetFields: array of string; update: Boolean): string;
var
  query: TFDQuery;
  I: Integer;
  listFields: TStringList;
  resultSql: string;
begin
  try
    query:= Self.createQuery;
    query.SQL.Add('select rdb$field_name as name from rdb$relation_fields ' +
    'where rdb$relation_name='+ QuotedStr(tableName) +';');
    query.Open();

    listFields:= TStringList.Create;
    while not query.Eof do
    begin
      if not MatchStr(query.FieldByName('name').AsString, noGetFields) then
        listFields.Add(query.FieldByName('name').AsString);
      query.Next;
    end;

    if update then
    begin
      resultSql:= 'UPDATE ' + tableName + ' SET';
      for I := 0 to Pred(listFields.Count) do
        resultSql:= resultSql + ' ' + listFields[I] + ' = :' + listFields[I] + IfThen(I = listFields.Count - 1, '' , ', ');;

      resultSql:= resultSql + ' WHERE (ID = :ID);';
    end
    else
    begin
      resultSql:= 'INSERT INTO ' + tableName + ' (';
      for I := 0 to Pred(listFields.Count) do
        resultSql:= resultSql + listFields[I] + IfThen(I = listFields.Count - 1, ')' , ', ');

      resultSql:= resultSql + ' VALUES (';
      for I := 0 to Pred(listFields.Count) do
        resultSql:= resultSql + ':' + listFields[I] + IfThen(I = listFields.Count - 1, ')' , ', ');
    end;

  finally
    FreeAndNil(query);
    FreeAndNil(listFields);
    Result:= resultSql;
  end;
end;

class procedure TBase.Rollback;
begin
  TConnection.GetInstance.Rollback;
end;

function TBase.save: Boolean;
begin
  Result:= False;
  if ((self.FID = EmptyStr) and validateFields(True)) then
    Result:= Self.store
  else
  begin
    if (self.FID <> EmptyStr) and validateFields(False) then
      Result:= Self.update;
  end;
end;

class procedure TBase.StartConfiguration;
begin
  {Todos esses dados podem ser alterados nos filhos}

  //Busca padrão passando apenas um parametro
  vBaseFindSQL:= 'SELECT * FROM ' + vBaseTable + ' WHERE (' +
                  vBasePrimaryKey + ' = :' + vBasePrimaryKey + ')';

  //Listagem de dados padrão
  vBaseListSQL:= 'SELECT * FROM ' + vBaseTable;
end;

class procedure TBase.StartTransaction;
begin
  TConnection.GetInstance.StartTransaction;
end;

function TBase.unicValueInTable(field, fieldValue: String; baseCompany: Boolean = True): Boolean;
var
  FSql: string;
  FDQuery: TFDQuery;
begin
  try
    if baseCompany then
    begin
      FSql:= 'SELECT * FROM ' + vBaseTable + ' WHERE (EMPRESA_ID = :EMPRESA_ID) ' +
      'AND ('+ field +' = :FIELD) AND (ID <> :ID)';
    end
    else
    begin
      FSql:= 'SELECT * FROM ' + vBaseTable + ' WHERE ('+ field +' = :FIELD) AND (ID <> :ID)';
    end;
    FDQuery:= createQuery;
    try
      FDQuery.SQL.Add(FSql);
      if baseCompany then
        FDQuery.Params.ParamByName('EMPRESA_ID').DataType:= ftString;
      FDQuery.Params.ParamByName('FIELD').DataType:= ftString;
      FDQuery.Params.ParamByName('ID').DataType:= ftString;
      FDQuery.Prepare();
      FDQuery.Params.ParamByName('ID').AsString:= Self.Id;
      FDQuery.Params.ParamByName('FIELD').AsString:= fieldValue;
      //if baseCompany then
      FDQuery.Open();
      Result:= (FDQuery.RecordCount = 0);
    except
      Result:= False;
    end;
  finally
    FreeAndNil(FDQuery);
  end;
end;

end.
