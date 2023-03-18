unit Clientes;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, wwExport, shellapi,
  DBClient, Provider, MDOQuery;

type
  TfClientes = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    dsdseClientes: TDataSource;
    wwSearchDialog1: TwwSearchDialog;
    Transacao: TMDOTransaction;
    dseClientes: TMDODataSet;
    wwDBGrid1: TwwDBGrid;
    dseClientesDOCUMENTO: TMDOStringField;
    dseClientesORGAO_EXP: TMDOStringField;
    dseClientesUF_ORGAO: TMDOStringField;
    dseClientesTIPO_DOCTO: TMDOStringField;
    dseClientesNOME_CLIENTE: TMDOStringField;
    cCbxTipo: TwwDBComboBox;
    cCbxOrgaoExp: TwwDBComboBox;
    Panel2: TPanel;
    bNavegador: TDBNavigator;
    bRelatorio: TBitBtn;
    bSair: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    cNome: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    cTipoDocto: TwwDBComboBox;
    Panel7: TPanel;
    Panel8: TPanel;
    cDocto: TDBEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    cOrgaoExpedidor: TwwDBComboBox;
    Panel11: TPanel;
    Panel12: TPanel;
    cUFOrgao: TDBEdit;
    bIncluir: TBitBtn;
    bAlterar: TBitBtn;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    bExcluir: TBitBtn;
    bPesquisaCodigo: TBitBtn;
    MDOQuery1: TMDOQuery;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dsePerdasAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure dseClientesAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1ColExit(Sender: TObject);
    procedure dseClientesBeforePost(DataSet: TDataSet);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure bRelatorioClick(Sender: TObject);
    procedure cNomeEnter(Sender: TObject);
    procedure cNomeExit(Sender: TObject);
    procedure cTipoDoctoEnter(Sender: TObject);
    procedure cTipoDoctoExit(Sender: TObject);
    procedure cDoctoEnter(Sender: TObject);
    procedure cDoctoExit(Sender: TObject);
    procedure cOrgaoExpedidorEnter(Sender: TObject);
    procedure cOrgaoExpedidorExit(Sender: TObject);
    procedure cUFOrgaoEnter(Sender: TObject);
    procedure cUFOrgaoExit(Sender: TObject);
    procedure AtivaBtn;
    procedure DesAtivaBtn;
    procedure bIncluirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bPesquisaCodigoClick(Sender: TObject);
    procedure Critica;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientes: TfClientes;
  WCpfCgcAnt:   String;

implementation
uses Menu, Funcoes;

{$R *.DFM}

procedure TfClientes.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseClientes.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfClientes.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseClientes.Active := True;
end;

procedure TfClientes.dsePerdasAfterPost(DataSet: TDataSet);
begin
  dseClientes.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfClientes.wwDBGrid1Enter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TfClientes.wwDBGrid1Exit(Sender: TObject);
begin
  KeyPreview := True;  
end;

procedure TfClientes.dseClientesAfterPost(DataSet: TDataSet);
begin
  dseClientes.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
  raise;
  end
end;

procedure TfClientes.wwDBGrid1ColExit(Sender: TObject);
begin
  if wwDBGrid1.SelectedField.Fieldname = 'CNPJ' then
  begin
    if TestCGC(dseClientes.FieldByName('CNPJ').AsString) = 'F' then
    begin
      wwDBGrid1.SelectedIndex := 0;
      Abort;
    end;
  end;
end;

procedure TfClientes.dseClientesBeforePost(DataSet: TDataSet);
begin
  dseClientes.FieldByName('NOME_CLIENTE').AsString := UpperCase(dseClientes.FieldByName('NOME_CLIENTE').AsString);
  dseClientes.FieldByName('UF_ORGAO').AsString := UpperCase(dseClientes.FieldByName('UF_ORGAO').AsString);
end;

procedure TfClientes.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := AnsiUpperCase(Key)[1];
end;

procedure TfClientes.bRelatorioClick(Sender: TObject);
begin
  with wwDBGrid1,wwDBGrid1.ExportOptions do begin
      ExportType := wwgetHTML;
      FileName := 'Clientes.html';
      TitleName := 'Relatório de Clientes';
      Save;
      if not(esoClipboard in Options) then
         ShellExecute(Handle, 'OPEN', PChar(wwDBGrid1.exportoptions.Filename), nil, nil, sw_shownormal);
   end;
end;

procedure TfClientes.cNomeEnter(Sender: TObject);
begin
  cNome.color := clYellow;
end;

procedure TfClientes.cNomeExit(Sender: TObject);
begin
  cNome.color := clWhite;
end;

procedure TfClientes.cTipoDoctoEnter(Sender: TObject);
begin
  cTipoDocto.color := clYellow;
  cTipoDocto.ItemIndex :=1; // carlos 17/04/2011
end;

procedure TfClientes.cTipoDoctoExit(Sender: TObject);
begin
  cTipoDocto.color := clWhite;
end;

procedure TfClientes.cDoctoEnter(Sender: TObject);
begin
  cDocto.color := clYellow;
end;

procedure TfClientes.cDoctoExit(Sender: TObject);
begin
  cDocto.color := clWhite;
end;

procedure TfClientes.cOrgaoExpedidorEnter(Sender: TObject);
begin
  cOrgaoExpedidor.color := clYellow;
  cOrgaoExpedidor.ItemIndex :=20; // carlos 17/04/2011
end;

procedure TfClientes.cOrgaoExpedidorExit(Sender: TObject);
begin
  cOrgaoExpedidor.color := clWhite;
end;

procedure TfClientes.cUFOrgaoEnter(Sender: TObject);
begin
  cUFOrgao.color := clYellow;
end;

procedure TfClientes.cUFOrgaoExit(Sender: TObject);
begin
  cUFOrgao.color := clWhite;
end;

procedure TfClientes.AtivaBtn;
begin
  bPesquisaCodigo.Enabled := True;
  bNavegador.Enabled := True;
  bIncluir.Enabled := True;
  bCancelar.Enabled := False;
  bRelatorio.Enabled := True;
  bAlterar.Enabled := True;
  bConfirmar.Enabled := False;
  bExcluir.Enabled := True;
  bSair.Enabled := True;
end;

procedure TfClientes.DesAtivaBtn;
begin
  bPesquisaCodigo.Enabled := False;
  bNavegador.Enabled := False;
  bIncluir.Enabled := False;
  bCancelar.Enabled := True;
  bRelatorio.Enabled := False;
  bAlterar.Enabled := False;
  bConfirmar.Enabled := True;
  bExcluir.Enabled := False;
  bSair.Enabled := False;
end;

procedure TfClientes.bIncluirClick(Sender: TObject);
begin
  dseClientes.Insert;
  cNome.SetFocus;

  DesAtivaBtn;

  cTipoDocto.ItemIndex :=1;                                    //carlos 17/04/2011
  cOrgaoExpedidor.ItemIndex :=20;                             //carlos 17/04/2011
  dseclientes.FieldByName('UF_ORGAO').AsString :='PI';       //carlos 17/04/2011
end;

procedure TfClientes.bAlterarClick(Sender: TObject);
begin
  dseClientes.Edit;
  cNome.SetFocus;

  DesAtivaBtn;
end;

procedure TfClientes.bConfirmarClick(Sender: TObject);
begin
  critica;
  
  if dseClientes.State in [dsEdit, dsInsert] then
  begin
    dseClientes.Post;

    AtivaBtn;
  end;
end;

procedure TfClientes.bCancelarClick(Sender: TObject);
begin
  if dseClientes.State in [dsEdit, dsInsert] then
  begin
    dseClientes.Cancel;

    AtivaBtn;
  end;
end;

procedure TfClientes.bExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('ATENÇÃO!! Deseja Realmente Excluir esse Cliente?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    try
      dseClientes.Delete;
      raise Exception.Create('Cliente excluido com sucesso.');
    except
     raise Exception.Create('Problemas na exclusão desse Cliente.');
    end;
  end;
end;

procedure TfClientes.bPesquisaCodigoClick(Sender: TObject);
begin
  with dseClientes do
  begin
    Active := False;
    SelectSQL.Clear;
    SelectSQL.Add('select * from CLIENTES order by NOME_CLIENTE');
    Active := True;
    wwSearchDialog1.Execute;
    wwDBGrid1.SetFocus
  end;
end;

procedure TfClientes.Critica;          // carlos 17/04/2011
begin
 if dseClientes.FieldByName('Nome_Cliente').AsString ='' then
    begin
      cNome.SetFocus;
      raise Exception.Create('Descrição do Nome inválido');
    end;

  if dseClientes.FieldByName('Documento').AsString ='' then
    begin
       cDocto.SetFocus;
      raise Exception.Create('Número do Documento inválido');
    end;

  if dseClientes.State in [dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from Clientes where Documento = :NumDocumento');
      ParamByName('NumDocumento').AsString := cdocto.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        cdocto.SetFocus;
        raise Exception.Create('Número de Documento já Cadastrado');
      end;
    end;
  end;
 end;
end.
