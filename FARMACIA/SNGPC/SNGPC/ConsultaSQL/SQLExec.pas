{************************************************************}
{                                                            }
{                            MDOIsql                         }
{                        Ferramenta SQL                      }
{                                                            }
{          Copyright(c) 2002-2003, The Mercury Team          }
{              Contact: henrique@delphi-br.org               }
{                                                            }
{************************************************************}

unit SQLExec;         

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db, StdCtrls, MDOSQLMonitor, MDOdatabase, ActnList,
  Menus, ComCtrls, MDOQuery, MDO, ToolWin, AppEvnts, MDOCustomDataSet, MDOSQL,
  MDOHeader, Buttons, Wwdbigrd, Wwdbgrid, wwExport, shellapi, ImgList,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ScrollView,
  PropertiesView, DBPropertiesView, RzTreeVw ;

type
  TfSQLExec = class(TForm)
    DataSource: TDataSource;
    OpenDialog: TOpenDialog;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    SaveDialog1: TSaveDialog;
    MDODataSet: TMDODataSet;
    MDODataSet1: TMDODataSet;
    MDODataSet2: TMDODataSet;
    mmoSQL: TEdit;
    TreeView1: TRzTreeView;
    procedure actDstExecutarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actScrNextExecute(Sender: TObject);
    procedure actScrPriorExecute(Sender: TObject);
    procedure actScrNewExecute(Sender: TObject);
    procedure actArqSairExecute(Sender: TObject);
    procedure MDODatabaseClientLibChange(var MDOClientLib: TMDOClientLib;
      var AbortChange: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ExemploClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    { Private declarations }
    LastErrorMessage: string;
    LastErrorCode: Integer;
    ScriptList: array of TStrings;
    ScriptIndex: integer;
  public
    { Public declarations }
  end;

var
  fSQLExec: TfSQLExec;

implementation

uses HelpSql, Menu;

{$R *.DFM}




procedure TfSQLExec.actDstExecutarExecute(Sender: TObject);
var
  InputObject: TMDOBatchInput;
  i: Integer;
  bAllParamsAreBlobs: Boolean;
  //vRoda : String[1];

begin

{  if Pos('DELETE', UpperCase(mmoSQL.Lines.Text)) > 0 then
  begin
    ShowMessage('ATENÇÃO!! Comando permitido somente o SELECT, será abortado.');
    Abort;
  end;

  if Pos('UPDATE', UpperCase(mmoSQL.Lines.Text)) > 0 then
  begin
    ShowMessage('ATENÇÃO!! Comando permitido somente o SELECT, será abortado.');
    Abort;
  end; }//retirado por guto para rodar qualquer comando sql

  with MDOdataSet do
  begin
    Active := False;
    SelectSQL.Add(''+ mmoSQL.Text +'');
    QSelect.ParamCheck := True;
    try
      Prepare;
    except
      on E: EMDOError do
      begin
        if EMDOError(E).SQLCode = -104 then
        begin
          QSelect.ParamCheck := False;
          Prepare;
        end
        else
          raise;
      end;
    end;
    Active := True;

    inc(ScriptIndex);
    if ScriptIndex > 14 then
      ScriptIndex := 14;

    ScriptList[ScriptIndex].Text := mmoSQL.Text;
  end;
end;

procedure TfSQLExec.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to 14 do
    ScriptList[i].Free;    
end;

procedure TfSQLExec.FormCreate(Sender: TObject);
var
  i    : Integer;
  vPai : String;
  Node : TTreeNode;
begin

  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;

  SetLength(ScriptList, 15);
  for i := 0 to 14 do
    ScriptList[i] := TstringList.Create;
  ScriptIndex := -1;

  with MDODataSet1 do
  begin
    Active := False;
    SelectSQL.Clear;
    SelectSQL.Add('SELECT RDB$RELATIONS.RDB$RELATION_NAME AS TABELAS FROM RDB$RELATIONS ');
    SelectSQL.Add('WHERE RDB$RELATIONS.RDB$SYSTEM_FLAG = 0 ');
    SelectSQL.Add('ORDER BY RDB$RELATIONS.RDB$RELATION_NAME');

    Active := True;
    First;
    vPai := FieldByName('TABELAS').AsString;

    TreeView1.Items.Clear;

    while not eof do
    begin
      if vPai <> FieldByName('TABELAS').AsString then
      begin
        Node := TreeView1.Items.Add (nil, vPai);
        with MDODataSet2 do
        begin
          Active := False;
          SelectSQL.Clear;
          SelectSQL.Add('SELECT RDB$RELATION_FIELDS.RDB$FIELD_NAME AS CAMPOS FROM RDB$RELATION_FIELDS ');
          SelectSQL.Add('WHERE RDB$RELATION_FIELDS.RDB$RELATION_NAME = :TABELA ');
          SelectSQL.Add('ORDER BY RDB$RELATION_FIELDS.RDB$FIELD_POSITION');
          ParamByName('TABELA').AsString := vPai;
          Active := True;
          First;
          while not eof do
          begin
            TreeView1.Items.AddChild (Node, Trim(MDODataSet2.FieldByName('CAMPOS').AsString));
            Next;
          end;
        end;
      end;
      vPai := FieldByName('TABELAS').AsString;
      Next;
    end;
  end;
end;

procedure TfSQLExec.actScrNextExecute(Sender: TObject);
begin
  inc(ScriptIndex);
  if ScriptList[ScriptIndex].Text = '' then
  begin
    Dec(ScriptIndex);
    exit;
  end;
  if ScriptIndex > 14 then
    ScriptIndex := 14;
  mmoSQL.Text := ScriptList[ScriptIndex].Text;
end;

procedure TfSQLExec.actScrPriorExecute(Sender: TObject);
begin
  Dec(ScriptIndex);
  if ScriptIndex < 0 then
    ScriptIndex := 0;
  mmoSQL.Text := ScriptList[ScriptIndex].Text;
end;

procedure TfSQLExec.actScrNewExecute(Sender: TObject);
begin
  mmoSQL.Clear;
end;

procedure TfSQLExec.actArqSairExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfSQLExec.MDODatabaseClientLibChange(
  var MDOClientLib: TMDOClientLib; var AbortChange: Boolean);
begin
  if MDOClientLib = clGDS32 then
    AbortChange := true;
end;

procedure TfSQLExec.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSQLExec.BitBtn2Click(Sender: TObject);
begin
 { with DBGrid,DBGrid.ExportOptions do
  begin
      ExportType := wwgetHTML;
      FileName := 'SQLExec.html';
      TitleName := 'Relatório Gerado por Script SQL';
      Save;
      if not(esoClipboard in Options) then
         ShellExecute(Handle, 'OPEN', PChar(DBGrid.exportoptions.Filename), nil, nil, sw_shownormal);
   end; }
end;

procedure TfSQLExec.ExemploClick(Sender: TObject);
begin
  mmoSQL.Clear;
  mmoSQL.text:=('select DOCUMENTO, NOME_CLIENTE, ORGAO_EXP from CLIENTES');
end;

procedure TfSQLExec.ToolButton2Click(Sender: TObject);
var
  F    : TextFile;
  vSQL : String;
begin
  mmoSQL.Clear;
  if OpenDialog.Execute then
  begin
    // Pega arquivo
    AssignFile(F,OpenDialog.FileName);
    Reset(F);
    while not eoln(F) do
    begin
      Readln(F,vSQL);
      mmoSQL.text:=(vSQL);
      Next;
    end;
    CloseFile(F);
  end;
end;

procedure TfSQLExec.ToolButton1Click(Sender: TObject);
var
  F    : TextFile;
begin
  if savedialog1.execute then
  begin
    AssignFile(F,savedialog1.FileName);
    Rewrite(F);
    Writeln(F,mmoSQL.Text);
    CloseFile(F);
  end;
end;

procedure TfSQLExec.ToolButton8Click(Sender: TObject);
begin
  fHelpSql := TfHelpSql.Create(Self);
  fHelpSql.ShowModal;
  fHelpSql.Release;
  fHelpSql.Free;
end;

end.

