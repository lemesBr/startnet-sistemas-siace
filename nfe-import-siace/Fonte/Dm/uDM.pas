unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Forms, System.IniFiles, ACBrBase, ACBrDFe, ACBrNFe,
  IdFTP, Vcl.Dialogs, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TDM = class(TDataModule)
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDMysqlConnection: TFDConnection;
    FDFirebirdConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDEXISTS: TFDQuery;
    FDEXISTSQTDE: TIntegerField;
    FDCreateTable: TFDQuery;
    FDCreateView: TFDQuery;
    FDMImportar: TFDMemTable;
    FDMImportarID: TIntegerField;
    FDMImportarCHAVE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
     vDocumento: string;
     procedure DownloadXml(pId: Integer; pChave: string);
     function ImportConfirmed(pPath, pChave: string): Boolean;
  public
    { Public declarations }
    procedure Importar();
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  INI : TiniFile;
begin
  try
    try
      INI:= TIniFile.Create(ExtractFilePath(Application.ExeName) + 'siace.ini');
      vDocumento:= INI.ReadString('IMPORTAR-XMLS', 'DOCUMENTO', '0');

      FDFirebirdConnection.Params.Values['Protocol']:= 'TCPIP';
      FDFirebirdConnection.Params.Values['Server']:= '127.0.0.1';
      FDFirebirdConnection.Params.Values['Database']:= ExtractFilePath(Application.ExeName) + 'SIACE.GDB';
      FDFirebirdConnection.Params.Values['User_Name']:= 'sysdba';
      FDFirebirdConnection.Params.Values['Password']:= 'masterkey';
      FDFirebirdConnection.Params.Values['DriverID']:= 'FB';
      FDFirebirdConnection.Connected:= True;

      FDEXISTS.Active:= False;
      FDEXISTS.Connection:= FDFirebirdConnection;
      FDEXISTS.Params.ParamByName('TABLE_NAME').AsString:= 'IMPORTAR_XMLS';
      FDEXISTS.Active:= True;

      if FDEXISTSQTDE.AsInteger = 0 then
      begin
        FDCreateTable.Active:= False;
        FDCreateTable.Connection:= FDFirebirdConnection;
        FDCreateTable.ExecSQL;
      end;

      FDCreateView.Active:= False;
      FDCreateView.Connection:= FDFirebirdConnection;
      FDCreateView.ExecSQL;
    except
      ShowMessage('Erro ao iniciar configuração. O sistema sera fechado.');
      Application.Terminate;
    end;
  finally
    FreeAndNil(INI);
  end;
end;

procedure TDM.DownloadXml(pId: Integer; pChave: string);
var
  vpFTP: TIdFTP;
  fileDownload : TFileStream;
  vpDir, vpPath: string;
  vpQuery: TFDQuery;
begin
  try
    vpFTP:= nil;
    vpQuery:= nil;
    try
      vpPath:= ExtractFilePath(Application.ExeName) + 'XMLS-IMPORTAR';
      if not DirectoryExists(vpPath) then
        ForceDirectories(vpPath);

      vpFTP:= TIdftp.Create(nil);
      vpFTP.Disconnect;
      vpFTP.Host:= 'ftp.itecsoftware.com.br';
      vpFTP.Username:= 'itecsoftware';
      vpFTP.Password:= 'metalgear3';
      vpFTP.Passive:= True;
      vpFTP.Connect;

      vpPath:= vpPath + '\' + pChave + '-imp.xml';
      fileDownload:= TFileStream.Create(vpPath, fmCreate);
      vpDir:= '/www/siace/xmls/' + pChave + '-imp.xml';
      vpFTP.Get(vpDir, fileDownload, True);
      vpFTP.Disconnect;

      FreeAndNil(fileDownload);
      if not ImportConfirmed(vpPath, pChave) then Exit();

      vpQuery:= TFDQuery.Create(nil);
      vpQuery.Connection:= FDMysqlConnection;
      with vpQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update nfexmls set xmlstatus =:xmlstatus, updated_at =:updated_at where id =:id');
        Prepare;
        Params.ParamByName('xmlstatus').AsString:= 'F';
        Params.ParamByName('updated_at').AsDateTime:= Now;
        Params.ParamByName('id').AsInteger:= pId;
        ExecSQL;
      end;
    except
      if Assigned(vpFTP) then vpFTP.Disconnect;
      FreeAndNil(fileDownload);
    end;
  finally
    if Assigned(vpFTP) then FreeAndNil(vpFTP);
    if Assigned(vpQuery) then FreeAndNil(vpQuery);
  end;
end;

procedure TDM.Importar();
var
  vpQuery: TFDQuery;
begin
  if vDocumento = '0' then Exit;
  try
    vpQuery:= nil;
    FDMImportar.Active:= True;
    FDMImportar.EmptyDataSet;
    try
      FDMysqlConnection.Params.Values['Protocol']:= 'TCPIP';
      FDMysqlConnection.Params.Values['Server']:= 'mysql.itecsoftware.com.br';
      FDMysqlConnection.Params.Values['Database']:= 'itecsoftware';
      FDMysqlConnection.Params.Values['User_Name']:= 'itecsoftware';
      FDMysqlConnection.Params.Values['Password']:= 'siace2017';
      FDMysqlConnection.Params.Values['DriverID']:= 'Mysql';
      FDMysqlConnection.Connected:= True;

      vpQuery:= TFDQuery.Create(nil);
      vpQuery.Connection:= FDMysqlConnection;

      with vpQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select id, chave from nfexmls where xmlstatus =:xmlstatus and documento =:documento');
        Prepare;
        Params.ParamByName('xmlstatus').AsString:= 'A';
        Params.ParamByName('documento').AsString:= vDocumento;
        Active:= True;
        First;
        while not Eof do
        begin
          FDMImportar.Append;
          FDMImportarID.AsInteger:= FieldByName('id').AsInteger;
          FDMImportarCHAVE.AsString:= FieldByName('chave').AsString;
          FDMImportar.Post;
          Next;
        end;
        Active:= False;
      end;

      FDMImportar.First;
      while not FDMImportar.Eof do
      begin
        DownloadXml(FDMImportarID.AsInteger,FDMImportarCHAVE.AsString);
        FDMImportar.Next;
      end;
    except
      if Assigned(vpQuery) then vpQuery.Active:= False;
      FDMysqlConnection.Connected:= False;
    end;
  finally
    if Assigned(vpQuery) then FreeAndNil(vpQuery);
    FDMysqlConnection.Connected:= False;
    FDMImportar.Active:= False;
  end;
end;

function TDM.ImportConfirmed(pPath, pChave: string): Boolean;
var
  vpQuery: TFDQuery;
begin
  Result:= True;
  try
    try
      vpQuery:= TFDQuery.Create(nil);
      vpQuery.Connection:= FDFirebirdConnection;
      with vpQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('delete from importar_xmls where chave =:chave');
        Prepare;
        Params.ParamByName('chave').AsString:= pChave;
        ExecSQL;

        SQL.Clear;
        SQL.Add('insert into importar_xmls (chave, xml) values (:chave, :xml)');
        Prepare;
        Params.ParamByName('chave').AsString:= pChave;
        Params.ParamByName('xml').LoadFromFile(pPath,ftBlob);
        ExecSQL;
      end;
      DeleteFile(pPath);
    except
      Result:= False;
    end;
  finally
     FreeAndNil(vpQuery);
  end;
end;

end.
