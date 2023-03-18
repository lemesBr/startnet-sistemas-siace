unit Laboratorios;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid;

type
  TfLaboratorios = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    bSair: TBitBtn;
    Panel1: TPanel;
    dsdseLaboratorios: TDataSource;
    bNavegador: TDBNavigator;
    wwSearchDialog1: TwwSearchDialog;
    Transacao: TMDOTransaction;
    dseLaboratorios: TMDODataSet;
    wwDBGrid1: TwwDBGrid;
    dseLaboratoriosCNPJ: TMDOStringField;
    dseLaboratoriosNOME: TMDOStringField;
    dseLaboratoriosENDERECO: TMDOStringField;
    dseLaboratoriosBAIRRO: TMDOStringField;
    dseLaboratoriosCEP: TMDOStringField;
    dseLaboratoriosCIDADE: TMDOStringField;
    dseLaboratoriosUF: TMDOStringField;
    dseLaboratoriosINSCRICAO: TMDOStringField;
    dseLaboratoriosFONE: TMDOStringField;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dsePerdasAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure dseLaboratoriosAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1ColExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Critica;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLaboratorios: TfLaboratorios;

implementation
uses Menu, Funcoes;

{$R *.DFM}

procedure TfLaboratorios.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfLaboratorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseLaboratorios.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfLaboratorios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfLaboratorios.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseLaboratorios.Active := True;
end;

procedure TfLaboratorios.dsePerdasAfterPost(DataSet: TDataSet);
begin
  dseLaboratorios.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfLaboratorios.wwDBGrid1Enter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TfLaboratorios.wwDBGrid1Exit(Sender: TObject);
begin
  KeyPreview := True;  
end;

procedure TfLaboratorios.dseLaboratoriosAfterPost(DataSet: TDataSet);
begin
  dseLaboratorios.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
  raise;
  end
end;

procedure TfLaboratorios.wwDBGrid1ColExit(Sender: TObject);
begin
  if wwDBGrid1.SelectedField.Fieldname = 'CNPJ' then
  begin
    if TestCGC(dseLaboratorios.FieldByName('CNPJ').AsString) = 'F' then
    begin
      wwDBGrid1.SelectedIndex := 0;
      Abort;
    end;
  end;
end;

procedure TfLaboratorios.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TfLaboratorios.Critica;
begin
  if dselaboratorios.FieldByName('CNPJ').AsString ='' then
    begin
      raise Exception.Create('CNPJ invalido');
    end;

{  if dselaboratorios.FieldByName('Documento').AsString ='' then
    begin
       c.SetFocus;
      raise Exception.Create('Número do Documento inválido');
    end;}

end;

end.
