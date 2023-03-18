unit Medicamentos;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, MDOQuery, ShellApi;

type
  TfMedicamentos = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    Panel1: TPanel;
    dsdseProdutos: TDataSource;
    wwSearchDialog1: TwwSearchDialog;
    Transacao: TMDOTransaction;
    dseProdutos: TMDODataSet;
    wwDBGrid1: TwwDBGrid;
    dseProdutosNRM: TMDOStringField;
    dseProdutosDESCRICAO: TMDOStringField;
    dseProdutosUNIDADE: TMDOStringField;
    dseProdutosESTOQUE: TIntegerField;
    dseProdutosCADASTRO: TDateField;
    qryEstoque_lote: TMDOQuery;
    dsqryEstoque_lote: TDataSource;
    wwDBGrid2: TwwDBGrid;
    qryEstoque_loteNRM: TMDOStringField;
    qryEstoque_loteLOTE: TMDOStringField;
    qryEstoque_loteQUANTIDADE: TFloatField;
    dseProdutosCODIGO_BARRAS: TMDOStringField;
    dseProdutosPORTARIA: TMDOStringField;
    cBxPortaria: TwwDBComboBox;
    dseProdutosSALDO_PSICO1: TIntegerField;
    dseProdutosSALDO_PSICO2: TIntegerField;
    dseProdutosSALDO_PSICO3: TIntegerField;
    dseProdutosSALDO_PSICO4: TIntegerField;
    dseProdutosALTERACAO: TDateField;
    Panel2: TPanel;
    Panel3: TPanel;
    qryInventario: TMDOQuery;
    dsqryInventario: TDataSource;
    qryEntradas: TMDOQuery;
    dsqryEntradas: TDataSource;
    qrySaidas: TMDOQuery;
    dsqrySaidas: TDataSource;
    qryPerdas: TMDOQuery;
    dsqryPerdas: TDataSource;
    gInventario: TwwDBGrid;
    Panel6: TPanel;
    gEntradas: TwwDBGrid;
    Panel4: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    gSaidas: TwwDBGrid;
    Panel5: TPanel;
    Panel10: TPanel;
    gPerdas: TwwDBGrid;
    MDOQuery1: TMDOQuery;
    Panel11: TPanel;
    Panel12: TPanel;
    cCodigo: TDBEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    cMS: TDBEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    cPortaria: TwwDBComboBox;
    cDescricao: TDBEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    cUnidade: TDBEdit;
    Panel21: TPanel;
    bPesquisaCodigo: TBitBtn;
    bPesquisaDescricao: TBitBtn;
    bRelatorio: TBitBtn;
    bNavegador: TDBNavigator;
    bSair: TBitBtn;
    bIncluir: TBitBtn;
    bAlterar: TBitBtn;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    bExcluir: TBitBtn;
    pMsg: TPanel;
    BitBtn1: TBitBtn;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dsePerdasAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure dseProdutosAfterPost(DataSet: TDataSet);
    procedure dseProdutosAfterInsert(DataSet: TDataSet);
    procedure bPesquisaCodigoClick(Sender: TObject);
    procedure bPesquisaDescricaoClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TabbedNotebook1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cCodigoEnter(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure cMSEnter(Sender: TObject);
    procedure cMSExit(Sender: TObject);
    procedure cPortariaEnter(Sender: TObject);
    procedure cPortariaExit(Sender: TObject);
    procedure cDescricaoEnter(Sender: TObject);
    procedure cDescricaoExit(Sender: TObject);
    procedure cUnidadeEnter(Sender: TObject);
    procedure cUnidadeExit(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure AtivaBtn;
    procedure DesAtivaBtn;
    procedure bAlterarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure gInventarioUpdateFooter(Sender: TObject);
    procedure gEntradasUpdateFooter(Sender: TObject);
    procedure gSaidasUpdateFooter(Sender: TObject);
    procedure gPerdasUpdateFooter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Critica;
    procedure cCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMedicamentos: TfMedicamentos;

implementation
uses Menu, RelMedicamentos;

{$R *.DFM}

procedure TfMedicamentos.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfMedicamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseProdutos.Active := False;
  qryEstoque_lote.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfMedicamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfMedicamentos.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseProdutos.Active := True;
  qryEstoque_lote.Active := True;
end;

procedure TfMedicamentos.dsePerdasAfterPost(DataSet: TDataSet);
begin
  dseProdutos.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfMedicamentos.wwDBGrid1Enter(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TfMedicamentos.wwDBGrid1Exit(Sender: TObject);
begin
  KeyPreview := True;  
end;

procedure TfMedicamentos.dseProdutosAfterPost(DataSet: TDataSet);
begin
  dseProdutos.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfMedicamentos.dseProdutosAfterInsert(DataSet: TDataSet);
begin
{
  // Demonstração
  with MDOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select count(*) limite from PRODUTOS');
    Open;
    if FieldByName('LIMITE').AsInteger > 30 then
    begin
      ShowMessage('ATENÇÃO!! Versão de Demonstração, limite de 30 produtos, para adquirir o Software favor entrar em contato com a Futura System pelo e-mail futurasystem@ig.com.br');
      dseProdutos.Cancel;
      Abort;
    end;
  end;
}
end;

procedure TfMedicamentos.bPesquisaCodigoClick(Sender: TObject);
begin
  with wwSearchDialog1 do
  begin
    Selected.Clear;
    Selected.Add('CODIGO_BARRAS'   +#9+'13'+#9+'Código Barras');
    Selected.Add('NRM'             +#9+'15'+#9+'M.S.');
    Selected.Add('DESCRICAO'       +#9+'42'+#9+'Descrição');
    Selected.Add('UNIDADE'         +#9+'03'+#9+'UND');
    Selected.Add('PORTARIA'        +#9+'02'+#9+'Portaria');
    Selected.Add('ESTOQUE'         +#9+'07'+#9+'Estoque');
    Selected.Add('SALDO_PSICO1'    +#9+'07'+#9+'Saldo Psico1');
    Selected.Add('SALDO_PSICO2'    +#9+'07'+#9+'Saldo Psico2');
    Selected.Add('SALDO_PSICO3'    +#9+'07'+#9+'Saldo Psico3');
    Selected.Add('SALDO_PSICO4'    +#9+'07'+#9+'Saldo Psico4');
  end;
  
  with dseProdutos do
  begin
    Active := False;
    SelectSQL.Clear;
    SelectSQL.Add('select * from PRODUTOS order by CODIGO_BARRAS');
    Active := True;
    wwSearchDialog1.Execute;
    wwDBGrid1.SetFocus
  end;
end;

procedure TfMedicamentos.bPesquisaDescricaoClick(Sender: TObject);
begin
  with wwSearchDialog1 do
  begin
    Selected.Clear;
    Selected.Add('DESCRICAO'       +#9+'42'+#9+'Descrição');
    Selected.Add('CODIGO_BARRAS'   +#9+'13'+#9+'Código Barras');
    Selected.Add('NRM'             +#9+'15'+#9+'M.S.');
    Selected.Add('UNIDADE'         +#9+'03'+#9+'UND');
    Selected.Add('PORTARIA'        +#9+'02'+#9+'Portaria');
    Selected.Add('ESTOQUE'         +#9+'07'+#9+'Estoque');
    Selected.Add('SALDO_PSICO1'    +#9+'07'+#9+'Saldo Psico1');
    Selected.Add('SALDO_PSICO2'    +#9+'07'+#9+'Saldo Psico2');
    Selected.Add('SALDO_PSICO3'    +#9+'07'+#9+'Saldo Psico3');
    Selected.Add('SALDO_PSICO4'    +#9+'07'+#9+'Saldo Psico4');
  end;

  with dseProdutos do
  begin
    Active := False;
    SelectSQL.Clear;
    SelectSQL.Add('select * from PRODUTOS order by DESCRICAO');
    Active := True;
    wwSearchDialog1.Execute;
    wwDBGrid1.SetFocus
  end;
end;

procedure TfMedicamentos.bRelatorioClick(Sender: TObject);
begin
  try
    fRelMedicamentos := TfRelMedicamentos.Create(Self);
  finally
    fRelMedicamentos.Release;
    fRelMedicamentos.Free;
  end;
end;

procedure TfMedicamentos.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//  Key := AnsiUpperCase(Key)[1];
end;

procedure TfMedicamentos.TabbedNotebook1Change(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
var
  vInventario, vEntradas, vSaidas, vPerdas : Integer;
begin
  if TabbedNotebook1.PageIndex = 0 then
  begin
    Label1.Caption := dseProdutos.FieldByName('DESCRICAO').AsString;
    Label2.Caption := 'Estoque:  '+dseProdutos.FieldByName('ESTOQUE').AsString;

    qryInventario.Active := True;
    {with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from INVENTARIO where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vInventario := FieldByName('QTDE').AsInteger
      else
        vInventario := 0;
      gInventario.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vInventario);
    end; }

    qryEntradas.Active   := True;
    {with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from ENTRADAS where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vEntradas := FieldByName('QTDE').AsInteger
      else
        vEntradas := 0;
      gEntradas.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vEntradas);
    end;}

    qrySaidas.Active := True;
    {with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from SAIDAS where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vSaidas := FieldByName('QTDE').AsInteger
      else
        vSaidas := 0;
      gSaidas.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vSaidas);
    end; }

    qryPerdas.Active := True;
    {with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from PERDAS where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vPerdas := FieldByName('QTDE').AsInteger
      else
        vPerdas := 0;
      gPerdas.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vPerdas);
    end; }

  end
  else
  begin
    Label1.Caption := '';
    Label2.Caption := '';
    qryInventario.Active := False;
    qryEntradas.Active := False;
    qrySaidas.Active := False;
    qryPerdas.Active := False;
  end;
end;

procedure TfMedicamentos.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if dseProdutos.FieldByName('ESTOQUE').AsInteger < 0 then
  begin
    ABrush.color := clYellow;
    Afont.color := clBlack;
  end;
end;

procedure TfMedicamentos.cCodigoEnter(Sender: TObject);
begin
  cCodigo.color := clYellow;
end;

procedure TfMedicamentos.cCodigoExit(Sender: TObject);
begin
{  cCodigo.color := clWhite;
  if dseProdutos.State in [dsEdit, dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS where CODIGO_BARRAS = :CODIGO');
      ParamByName('CODIGO').AsString := cCodigo.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        ShowMessage('ATENÇÃO!! Já existe um medicamento com esse código de barras, verifique.');
        dseProdutos.Cancel;
        AtivaBtn;
        bIncluir.SetFocus;
        Abort;
      end;
    end;
  end; }
end;

procedure TfMedicamentos.cMSEnter(Sender: TObject);
begin
  cMS.color := clYellow;
end;

procedure TfMedicamentos.cMSExit(Sender: TObject);
begin
{  cMS.color := clWhite;
  if dseProdutos.State in [dsEdit, dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS where NRM = :CODIGO');
      ParamByName('CODIGO').AsString := cMS.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        ShowMessage('ATENÇÃO!! Já existe um medicamento com esse M.S, verifique.');
        dseProdutos.Cancel;
        AtivaBtn;
        bIncluir.SetFocus;
        Abort;
      end;
    end;
  end;  }
end;

procedure TfMedicamentos.cPortariaEnter(Sender: TObject);
begin
  cPortaria.color := clYellow;
end;

procedure TfMedicamentos.cPortariaExit(Sender: TObject);
begin
  cPortaria.color := clWhite;
end;

procedure TfMedicamentos.cDescricaoEnter(Sender: TObject);
begin
  cDescricao.color := clYellow;
end;

procedure TfMedicamentos.cDescricaoExit(Sender: TObject);
begin
  cDescricao.color := clWhite;
end;

procedure TfMedicamentos.cUnidadeEnter(Sender: TObject);
begin
  cUnidade.color := clYellow;
end;

procedure TfMedicamentos.cUnidadeExit(Sender: TObject);
begin
  cUnidade.color := clWhite;
end;

procedure TfMedicamentos.bIncluirClick(Sender: TObject);
begin
  dseProdutos.Insert;
  cCodigo.SetFocus;
  pMsg.Caption := 'Incluindo um novo Medicamento';
  DesAtivaBtn;
end;

procedure TfMedicamentos.AtivaBtn;
begin
  bPesquisaCodigo.Enabled := True;
  bPesquisaDescricao.Enabled := True;
  bNavegador.Enabled := True;
  bIncluir.Enabled := True;
  bCancelar.Enabled := False;
  bRelatorio.Enabled := True;
  bAlterar.Enabled := True;
  bConfirmar.Enabled := False;
  bExcluir.Enabled := True;
  bSair.Enabled := True;
end;

procedure TfMedicamentos.DesAtivaBtn;
begin
  bPesquisaCodigo.Enabled := False;
  bPesquisaDescricao.Enabled := False;
  bNavegador.Enabled := False;
  bIncluir.Enabled := False;
  bCancelar.Enabled := True;
  bRelatorio.Enabled := False;
  bAlterar.Enabled := False;
  bConfirmar.Enabled := True;
  bExcluir.Enabled := False;
  bSair.Enabled := False;
end;

procedure TfMedicamentos.bAlterarClick(Sender: TObject);
begin
  dseProdutos.Edit;
  cCodigo.SetFocus;
  pMsg.Caption := 'Alterando o Medicamento Ativo';
  DesAtivaBtn;
end;

procedure TfMedicamentos.bCancelarClick(Sender: TObject);
begin
  if dseProdutos.State in [dsEdit, dsInsert] then
  begin
    dseProdutos.Cancel;
    pMsg.Caption := '';
    AtivaBtn;
  end;
end;

procedure TfMedicamentos.bConfirmarClick(Sender: TObject);
begin
  Critica;  //carlos 17/04/2011

  if dseProdutos.State in [dsEdit, dsInsert] then
  begin
    dseProdutos.Post;
    pMsg.Caption := '';
    AtivaBtn;
  end;
end;

procedure TfMedicamentos.bExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('ATENÇÃO!! Deseja Realmente Excluir esse Medicamento?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    try
      dseProdutos.Delete;
      ShowMessage('Medicamento excluido com sucesso.');
    except
      ShowMessage('Problemas na exclusão desse Medicamento, provavelmente já existe lançamento de entrada e saida para ele, exclua os lançamentos antes.');
    end;
  end;
end;

procedure TfMedicamentos.gInventarioUpdateFooter(Sender: TObject);
var
  vInventario : Integer;
begin
with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from INVENTARIO where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vInventario := FieldByName('QTDE').AsInteger
      else
        vInventario := 0;
      gInventario.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vInventario);
    end;
end;

procedure TfMedicamentos.gEntradasUpdateFooter(Sender: TObject);
var
  vEntradas : Integer;
begin
  with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from ENTRADAS where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vEntradas := FieldByName('QTDE').AsInteger
      else
        vEntradas := 0;
      gEntradas.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vEntradas);
    end;
end;

procedure TfMedicamentos.gSaidasUpdateFooter(Sender: TObject);
var
  vSaidas : Integer;
begin
with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from SAIDAS where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vSaidas := FieldByName('QTDE').AsInteger
      else
        vSaidas := 0;
      gSaidas.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vSaidas);
    end;
end;

procedure TfMedicamentos.gPerdasUpdateFooter(Sender: TObject);
var
  vPerdas : Integer;
begin
with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.add('select sum(QUANTIDADE) QTDE from PERDAS where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseProdutos.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
        vPerdas := FieldByName('QTDE').AsInteger
      else
        vPerdas := 0;
      gPerdas.ColumnByName('QUANTIDADE').FooterValue := IntToStr(vPerdas);
    end;
end;

procedure TfMedicamentos.FormShow(Sender: TObject);
begin
 bIncluir.SetFocus;
end;

procedure TfMedicamentos.BitBtn1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://www7.anvisa.gov.br/datavisa/consulta_produto/Medicamentos/frmConsultaMedicamentos.asp',nil,nil,SW_MAXIMIZE);
end;

procedure TfMedicamentos.Critica; //carlos 17/04/2011
begin
 if dseProdutos.FieldByName('Codigo_Barras').AsString ='' then
    begin
      cCodigo.SetFocus;
      raise Exception.Create('Código de Barras inválido');
    end;

  if dseProdutos.FieldByName('NRM').AsString ='' then
    begin
       cMS.SetFocus;
      raise Exception.Create('Número do Resgistro M.S inválido');
    end;

    if dseProdutos.FieldByName('Portaria').AsString ='' then
    begin
       cPortaria.SetFocus;
      raise Exception.Create('Portaria inválido');
    end;

   if dseProdutos.FieldByName('Descricao').AsString ='' then
    begin
       cDescricao.SetFocus;
      raise Exception.Create('Descrição do Medicamento inválido');
    end;

    if dseProdutos.FieldByName('Unidade').AsString ='' then
    begin
       cUnidade.SetFocus;
      raise Exception.Create('Unidade de Venda inválido');
    end;

     if dseProdutos.State in [dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS where CODIGO_BARRAS = :CODIGO');
      ParamByName('CODIGO').AsString := cCodigo.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        cCodigo.SetFocus;
        raise Exception.Create('Código de Barras já cadastrado');
      end;
    end;
  end;

  if dseProdutos.State in [dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS where NRM = :CODIGO');
      ParamByName('CODIGO').AsString := cMS.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        cMS.SetFocus;
        raise Exception.Create('Registro M.S já cadastrado');
      end;
    end;
  end;
end;

procedure TfMedicamentos.cCodigoKeyPress(Sender: TObject; var Key: Char);
begin
 if not ( Key in ['0'..'9',#13,#8] ) then
   Key := #0;
end;

end.
