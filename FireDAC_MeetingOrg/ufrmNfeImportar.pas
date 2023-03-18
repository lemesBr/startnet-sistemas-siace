unit ufrmNfeImportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Grids, DBGrids;

type
  TfrmNfeImportar = class(TForm)
    FDq_Importar: TFDQuery;
    ds_Importar: TDataSource;
    dbg_importar: TDBGrid;
    FDq_ImportarCHAVE: TStringField;
    FDq_ImportarXML: TBlobField;
    procedure dbg_importarDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    vfNfePath: string;
  end;

var
  frmNfeImportar: TfrmNfeImportar;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TfrmNfeImportar.dbg_importarDblClick(Sender: TObject);
var
  vpPath: String;
begin
  if FDq_Importar.RecordCount = 0 then Exit;
  
  try
    vpPath:= ExtractFilePath(Application.ExeName) + 'XMLS-TEMP';
    if not DirectoryExists(vpPath) then
      ForceDirectories(vpPath);

    vpPath:= vpPath + '\' + FDq_ImportarCHAVE.AsString + '-imp.xml';
    FDq_ImportarXML.SaveToFile(vpPath);
    vfNfePath:= vpPath;
    Close;
  except
    vfNfePath:= '';
  end;
end;

procedure TfrmNfeImportar.FormShow(Sender: TObject);
begin
  vfNfePath:= '';
  try
    FDq_Importar.Active:= True;
  except
    ShowMessage('Erro ao tentar abrir view importar xmls. Contacte o suporte do sistema.');
  end;
end;

procedure TfrmNfeImportar.FormCreate(Sender: TObject);
begin
  FDq_Importar.Connection:= DM.Coneccao;
  FDq_Importar.SQL.Clear;
  FDq_Importar.SQL.Add('SELECT * FROM VIEW_IMPORTAR_XMLS');
end;

procedure TfrmNfeImportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FDq_Importar.Active:= False;
end;

end.
