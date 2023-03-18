unit Medicos;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi;

type
  TfMedicos = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    bSair: TBitBtn;
    Panel1: TPanel;
    dsdseMedicos: TDataSource;
    bNavegador: TDBNavigator;
    wwSearchDialog1: TwwSearchDialog;
    Transacao: TMDOTransaction;
    dseMedicos: TMDODataSet;
    wwDBGrid1: TwwDBGrid;
    dseMedicosCRM: TMDOStringField;
    dseMedicosMEDICO: TMDOStringField;
    dseMedicosCONSELHO: TMDOStringField;
    dseMedicosUF: TMDOStringField;
    wwDBComboBox3: TwwDBComboBox;
    BitBtn1: TBitBtn;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dsePerdasAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure dseMedicosAfterPost(DataSet: TDataSet);
    procedure dseMedicosAfterInsert(DataSet: TDataSet);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure dseMedicosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMedicos: TfMedicos;

implementation
uses Menu;

{$R *.DFM}

procedure TfMedicos.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfMedicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseMedicos.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfMedicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfMedicos.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseMedicos.Active := True;
end;

procedure TfMedicos.dsePerdasAfterPost(DataSet: TDataSet);
begin
  dseMedicos.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfMedicos.wwDBGrid1Enter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TfMedicos.wwDBGrid1Exit(Sender: TObject);
begin
  KeyPreview := True;  
end;

procedure TfMedicos.dseMedicosAfterPost(DataSet: TDataSet);
begin
  dseMedicos.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfMedicos.dseMedicosAfterInsert(DataSet: TDataSet);
begin
{ if dseMedicos.RecordCount > 10 then
  begin
    ShowMessage('Atenção!! Versão de Demonstração, limite de 10 Medicos, para adquirir o Software favor entrar em contato com a Futura System pelo e-mail futurasystem@terra.com.br');
    dseMedicos.Cancel;
    Abort;
  end;  }
end;

procedure TfMedicos.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TfMedicos.BitBtn1Click(Sender: TObject);
begin
  with wwDBGrid1,wwDBGrid1.ExportOptions do begin
      ExportType := wwgetHTML;
      FileName := 'Medicos.html';
      TitleName := 'Relatório dos Médicos';
      Save;
      if not(esoClipboard in Options) then
         ShellExecute(Handle, 'OPEN', PChar(wwDBGrid1.exportoptions.Filename), nil, nil, sw_shownormal);
   end;
end;

procedure TfMedicos.dseMedicosBeforePost(DataSet: TDataSet);
begin
  if dseMedicos.FieldByName('CRM').AsString = '' then
   begin
     wwDBGrid1.SelectedIndex := 0;
     raise Exception.Create('Número do CRM inválido');
   end;

   if dseMedicos.FieldByName('MEDICO').AsString = '' then
   begin
     wwDBGrid1.SelectedIndex := 1;
     raise Exception.Create('Nome do Médico inválido');
   end;

if dseMedicos.FieldByName('CONSELHO').AsString = '' then
   begin
     wwDBGrid1.SelectedIndex := 2;
     raise Exception.Create('Tipo de conselho inválido');
   end;

if dseMedicos.FieldByName('UF').AsString = '' then
   begin
     wwDBGrid1.SelectedIndex := 3;
     raise Exception.Create('Estado inválido');
end;
end;
end.
