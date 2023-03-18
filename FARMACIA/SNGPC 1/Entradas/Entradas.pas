unit Entradas;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase,
  wwdbdatetimepicker, wwdblook, Wwdbdlg, MDOQuery, Grids, Wwdbigrd,
  Wwdbgrid, Provider, DBClient;

type
  TfEntradas = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    BtnSair: TBitBtn;
    BtnConfirmar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EdtNumNota: TwwDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    BtnIcluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    dsdseEntradas: TDataSource;
    Panel16: TPanel;
    Panel17: TPanel;
    BtnNavegador: TDBNavigator;
    BtnPesqMedicamento: TBitBtn;
    BtnLista: TBitBtn;
    wwSearchDialog1: TwwSearchDialog;
    BtnRelatorio: TBitBtn;
    Panel18: TPanel;
    Panel19: TPanel;
    EdtDescForn: TwwDBEdit;
    dseEntradas: TMDODataSet;
    Transacao: TMDOTransaction;
    EdtDatEmissao: TwwDBDateTimePicker;
    EdtDatrRcebimento: TwwDBDateTimePicker;
    MDOQuery1: TMDOQuery;
    EdtCnpjForn: TwwDBLookupComboDlg;
    gItens: TwwDBGrid;
    dseCabEntradas: TMDODataSet;
    dsdseCabEntradas: TDataSource;
    dseEntradasNOTA_FISCAL: TMDOStringField;
    dseEntradasTIPO_OP_NF: TMDOStringField;
    dseEntradasEMISSAO_NF: TDateField;
    dseEntradasCNPJ_FORNECEDOR: TMDOStringField;
    dseEntradasNOME_FORNECEDOR: TMDOStringField;
    dseEntradasCODIGO_BARRAS: TMDOStringField;
    dseEntradasNRM: TMDOStringField;
    dseEntradasDESCRICAO: TMDOStringField;
    dseEntradasLOTE: TMDOStringField;
    dseEntradasQUANTIDADE: TFloatField;
    dseEntradasRECEBIDO: TDateField;
    dseCabEntradasNOTA_FISCAL: TMDOStringField;
    dseCabEntradasTIPO_OP_NF: TMDOStringField;
    dseCabEntradasEMISSAO_NF: TDateField;
    dseCabEntradasCNPJ_FORNECEDOR: TMDOStringField;
    dseCabEntradasRECEBIDO: TDateField;
    dseCabEntradasNOME_FORNECEDOR: TMDOStringField;
    cProduto: TwwDBLookupComboDlg;
    qryProdutos: TMDOQuery;
    qryLaboratorio: TMDOQuery;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnIcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnListaClick(Sender: TObject);
    procedure EdtCnpjFornExit(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnPesqMedicamentoClick(Sender: TObject);
    procedure cProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure cProdutoPerformCustomSearch(Sender: TObject;
      LookupTable: TDataSet; SearchField, SearchValue: String;
      PerformLookup: Boolean; var Found: Boolean);
    procedure cProdutoExit(Sender: TObject);
    procedure gItensEnter(Sender: TObject);
    procedure gItensExit(Sender: TObject);
    procedure gItensColExit(Sender: TObject);
    procedure dseCabEntradasAfterPost(DataSet: TDataSet);
    procedure EdtCnpjFornKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCnpjFornPerformCustomSearch(Sender: TObject;
      LookupTable: TDataSet; SearchField, SearchValue: String;
      PerformLookup: Boolean; var Found: Boolean);
    procedure dseEntradasBeforePost(DataSet: TDataSet);
    procedure Critica;
    procedure gItensKeyPress(Sender: TObject; var Key: Char);
    procedure EdtNumNotaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEntradas: TfEntradas;

implementation
uses Menu, SelRelEntradas, PesqMedicEntradas;

{$R *.DFM}

procedure TfEntradas.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfEntradas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfEntradas.BtnConfirmarClick(Sender: TObject);
begin
  Critica;
 
  if dseCabEntradas.State in [dsEdit,dsInsert] then
  begin
    dseCabEntradas.Post;

    gItens.ReadOnly := True;
    
    BtnIcluir.Enabled := True;
    BtnAlterar.Enabled := True;
    BtnExcluir.Enabled := True;
    BtnConfirmar.Enabled := False;
    BtnCancelar.Enabled := False;
    BtnSair.Enabled     := True;
    BtnNavegador.Enabled:= True;
    BtnPesqMedicamento.Enabled:= True;
    BtnLista.Enabled    := True;
    BtnRelatorio.Enabled:= True;

    dseEntradas.ApplyUpdates;
    try
      Transacao.CommitRetaining;
    except
      Transacao.Rollback;
      raise;
    end
  end; 
end;

procedure TfEntradas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseCabEntradas.Active := True;
  dseEntradas.Active    := True;
  qryLaboratorio.Active := True;
  qryProdutos.Active    := True;
end;

procedure TfEntradas.BtnIcluirClick(Sender: TObject);
begin
  with MDOQuery1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select SITUACAO_INVENTARIO from EMPRESA');
    Active := True;
    if FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
    begin
      ShowMessage('ATENÇÃO! Inventário esta aberto, para fazer lançamento primeiro deve fechar-lo.');
      Abort;
    end;
  end;

  dseCabEntradas.Insert;
  dseCabEntradas.FieldByName('TIPO_OP_NF').AsString := '1';

  gItens.ReadOnly := False;

  EdtNumNota.SetFocus;
  BtnIcluir.Enabled := False;
  BtnAlterar.Enabled := False;
  BtnExcluir.Enabled := False;
  BtnConfirmar.Enabled := True;
  BtnCancelar.Enabled := True;
  BtnSair.Enabled     := False;
  BtnNavegador.Enabled:= False;
  BtnPesqMedicamento.Enabled      := False;
  BtnLista.Enabled    := False;
  BtnRelatorio.Enabled:= False;
end;

procedure TfEntradas.BtnAlterarClick(Sender: TObject);
begin
  with MDOQuery1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select SITUACAO_INVENTARIO from EMPRESA');
    Active := True;
    if FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
    begin
      ShowMessage('ATENÇÃO! Inventário esta aberto, para fazer lançamento primeiro deve fechar-lo.');
      Abort;
    end;
  end;
  
  dseCabEntradas.Edit;
  dseEntradas.Edit; //carlos 19/04/2011 coloquei para editar tambem os itens
  gItens.ReadOnly := False;

  BtnIcluir.Enabled := False;
  BtnAlterar.Enabled := False;
  BtnExcluir.Enabled := False;
  BtnConfirmar.Enabled := True;
  BtnCancelar.Enabled := True;
  BtnSair.Enabled     := False;
  BtnNavegador.Enabled:= False;
  BtnPesqMedicamento.Enabled:= False;
  BtnLista.Enabled    := False;
  BtnRelatorio.Enabled:= False;
end;

procedure TfEntradas.BtnCancelarClick(Sender: TObject);
begin
  if dseCabEntradas.State in [dsEdit,dsInsert] then
  begin
    dseCabEntradas.Cancel;
    dseEntradas.Cancel; //carlos 19/04/2011 coloquei para cancelar tambem os itens

    if dseEntradas.IsEmpty and (dseCabEntradas.RecordCount > 0) then
      dseCabEntradas.Delete;

    gItens.ReadOnly := True;
    
    BtnIcluir.Enabled := True;
    BtnAlterar.Enabled := True;
    BtnExcluir.Enabled := True;
    BtnConfirmar.Enabled := False;
    BtnCancelar.Enabled := False;
    BtnSair.Enabled     := True;
    BtnNavegador.Enabled:= True;
    BtnPesqMedicamento.Enabled      := True;
    BtnLista.Enabled    := True;
    BtnRelatorio.Enabled:= True;
  end;
end;

procedure TfEntradas.BtnListaClick(Sender: TObject);
begin
  wwSearchDialog1.Execute;
end;

procedure TfEntradas.EdtCnpjFornExit(Sender: TObject);
begin
   if dseCabEntradas.FieldByName('Cnpj_fornecedor').AsString <> '' then
 if dseCabEntradas.State in [dsEdit,dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from LABORATORIO ');
      SQL.Add('where CNPJ = :CNPJ');
      ParamByName('CNPJ').AsString := dseCabEntradas.FieldByName('CNPJ_FORNECEDOR').AsString;
      Active := True;
      if RecordCount > 0 then
        dseCabEntradas.FieldByName('NOME_FORNECEDOR').AsString := FieldByName('NOME').AsString
      else
      begin
        EdtCnpjForn.SetFocus;
        raise Exception.Create('CNPJ do Fornecedor não cadastrado.');
      end;
    end;
  end;
end;

procedure TfEntradas.BtnExcluirClick(Sender: TObject);
begin
  with MDOQuery1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select SITUACAO_INVENTARIO from EMPRESA');
    Active := True;
    if FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
    begin
      ShowMessage('ATENÇÃO! Inventário esta aberto, para fazer lançamento primeiro deve fechar-lo.');
      Abort;
    end;
  end;
  
  if Application.MessageBox('ATENÇÃO!! Deseja Realmente Excluir o item?',
    'Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    if not dseEntradas.IsEmpty then
      dseEntradas.Delete;

    if dseEntradas.IsEmpty and (dseCabEntradas.RecordCount > 0) then
      dseCabEntradas.Delete;
  end;
end;

procedure TfEntradas.BtnRelatorioClick(Sender: TObject);
begin
  fSelRelEntradas := TfSelRelEntradas.Create(Self);
  fSelRelEntradas.ShowModal;
end;

procedure TfEntradas.BtnPesqMedicamentoClick(Sender: TObject);
begin
  fPesqMecEntradas := TfPesqMecEntradas.Create(Self);
  fPesqMecEntradas.ShowModal;
  fPesqMecEntradas.Release;
  fPesqMecEntradas.Free;
end;

procedure TfEntradas.cProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if dseEntradas.State in [dsEdit, dsInsert] then
  begin
    if key in ['A'..'Z','a'..'z'] then
    begin
      cProduto.LookupTable := qryProdutos;
      cProduto.AutoDropDown := True;
    end
    else
    begin
      cProduto.LookupTable := nil;
      cProduto.AutoDropDown := False;
    end;
  end;
end;

procedure TfEntradas.cProdutoPerformCustomSearch(Sender: TObject;
  LookupTable: TDataSet; SearchField, SearchValue: String;
  PerformLookup: Boolean; var Found: Boolean);
begin
  if (SearchValue <> '0') and (SearchValue <> '1') then
  begin
    with qryProdutos do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS ');
      SQL.Add('WHERE DESCRICAO LIKE :DESCRICAO ');
      SQL.Add('ORDER BY DESCRICAO');
      ParamByName('DESCRICAO').AsString := SearchValue+'%';
      Active := True;
    end;
  end;
end;

procedure TfEntradas.cProdutoExit(Sender: TObject);
begin
  if dsdseEntradas.DataSet.State in [dsEdit,dsInsert] then
  begin
    if dseEntradas.FieldByName('CODIGO_BARRAS').AsString <> '' then
    begin
      with MDOQuery1 do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select * from PRODUTOS ');
        SQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS');
        ParamByName('CODIGO_BARRAS').AsString := dseEntradas.FieldByName('CODIGO_BARRAS').AsString;
        Active := True;
        if RecordCount > 0 then
        begin
          dseEntradas.FieldByName('NOTA_FISCAL').AsString     := dseCabEntradas.FieldByName('NOTA_FISCAL').AsString;
          dseEntradas.FieldByName('TIPO_OP_NF').AsString      := dseCabEntradas.FieldByName('TIPO_OP_NF').AsString;
          dseEntradas.FieldByName('EMISSAO_NF').AsDateTime    := dseCabEntradas.FieldByName('EMISSAO_NF').AsDateTime;
          dseEntradas.FieldByName('RECEBIDO').AsDateTime      := dseCabEntradas.FieldByName('RECEBIDO').AsDateTime;
          dseEntradas.FieldByName('CNPJ_FORNECEDOR').AsString := dseCabEntradas.FieldByName('CNPJ_FORNECEDOR').AsString;
          dseEntradas.FieldByName('NOME_FORNECEDOR').AsString := dseCabEntradas.FieldByName('NOME_FORNECEDOR').AsString;
          dseEntradas.FieldByName('NRM').AsString             := FieldByName('NRM').AsString;
          dseEntradas.FieldByName('DESCRICAO').AsString       := FieldByName('DESCRICAO').AsString;
        end
        else
        begin
          ShowMessage('ATENÇÃO!! Medicamento não cadastrado.');
          cProduto.SetFocus;
          Abort;
        end;
      end;
    end
    else
    begin
      ShowMessage('ATENÇÃO!! Código Invalido.');
      cProduto.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfEntradas.gItensEnter(Sender: TObject);
var
  vIncluir : String[1];
begin
  if dseCabEntradas.State in [dsInsert] then
    vIncluir := 'S';

 if dseCabEntradas.State in [dsEdit, dsInsert] then
  begin
    dseCabEntradas.Post;
    dseCabEntradas.Edit;       
  end;

  if (vIncluir = 'S') then
    dseEntradas.Append;

  KeyPreview := False;
end;

procedure TfEntradas.gItensExit(Sender: TObject);
begin
  if dseEntradas.State in [dsEdit, dsInsert] then
    dseEntradas.Cancel;
  KeyPreview := True;
end;

procedure TfEntradas.gItensColExit(Sender: TObject);
begin
  if dseEntradas.State in [dsEdit, dsInsert] then
  begin
    if gItens.SelectedField.Fieldname = 'CODIGO_BARRAS' then
    begin
      if dseEntradas.FieldByName('CODIGO_BARRAS').AsString = '' then
      begin
        MessageDlg('ATENÇÃO!! Produto não cadastrado.', mtInformation, [mbOk], 0);
        gItens.SelectedIndex := 0;
        Abort;
      end;
    end;
  end;
end;

procedure TfEntradas.dseCabEntradasAfterPost(DataSet: TDataSet);
begin
  dseCabEntradas.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfEntradas.EdtCnpjFornKeyPress(Sender: TObject; var Key: Char);
begin
  if dseCabEntradas.State in [dsEdit, dsInsert] then
  begin
    if key in ['A'..'Z','a'..'z'] then
    begin
      EdtCnpjForn.LookupTable := qryLaboratorio;
      EdtCnpjForn.AutoDropDown := True;
    end
    else
    begin
      EdtCnpjForn.LookupTable := nil;
      EdtCnpjForn.AutoDropDown := False;
    end;
  end;
end;

procedure TfEntradas.EdtCnpjFornPerformCustomSearch(Sender: TObject;
  LookupTable: TDataSet; SearchField, SearchValue: String;
  PerformLookup: Boolean; var Found: Boolean);
begin
  if (SearchValue <> '0') and (SearchValue <> '1') then
  begin
    with qryLaboratorio do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from LABORATORIO ');
      SQL.Add('WHERE NOME LIKE :NOME ');
      SQL.Add('ORDER BY NOME');
      ParamByName('NOME').AsString := SearchValue+'%';
      Active := True;
    end;
  end;
end;

procedure TfEntradas.dseEntradasBeforePost(DataSet: TDataSet);
begin
 if dseEntradas.FieldByName('Codigo_barras').AsString = '' then
   begin
     gItens.SelectedIndex := 0;
     raise Exception.Create('Código de Barras inválido');
   end;

   if dseEntradas.FieldByName('Lote').AsString = '' then
   begin
     gItens.SelectedIndex := 3;
     raise Exception.Create('Número do lote inválido');
   end;

     if dseEntradas.FieldByName('Quantidade').AsString = '' then
   begin
     gItens.SelectedIndex := 4;
     raise Exception.Create('Quantidade Inválida');
   end;
end;

procedure TfEntradas.Critica;
begin
     if dseCabEntradas.FieldByName('Nota_fiscal').AsString = '' then
   begin
     EdtNumNota.SetFocus;
     raise Exception.Create('Número da Nota Fiscal inválida');
   end;

     if dseCabEntradas.FieldByName('Emissao_NF').AsString = '' then
   begin
     EdtDatEmissao.SetFocus;
     raise Exception.Create('Data de Emissão inválida');
   end;

     if dseCabEntradas.FieldByName('Recebido').AsString = '' then
   begin
     EdtDatrRcebimento.SetFocus;
     raise Exception.Create('Data de Recebimento inválida');
   end;

     if dseCabEntradas.FieldByName('Cnpj_fornecedor').AsString = '' then
   begin
     EdtCnpjForn.SetFocus;
     raise Exception.Create('CNPJ do Fornecedor inválido');
   end;

   if dsdseEntradas.DataSet.RecordCount = 0 then
     raise Exception.Create('Informe os produtos da nota fiscal.');

{   if dseCabEntradas.FieldByName('Nota_fiscal').AsString <> '' then
      with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from CabEntradas where Nota_Fiscal = :Nota_Fiscal');
      ParamByName('Nota_Fiscal').AsString := EdtNumNota.Text;
      Active := True;
      if RecordCount > 0 then
      begin
        EdtNumNota.SetFocus;
        raise Exception.Create('Nota já cadastrada');
      end;
    end;}
  end;
procedure TfEntradas.gItensKeyPress(Sender: TObject; var Key: Char);
begin
  if gItens.SelectedIndex = 3 then
   key := UpCase (Key);
end;

procedure TfEntradas.EdtNumNotaKeyPress(Sender: TObject; var Key: Char);
begin
 if not ( Key in ['0'..'9',#13,#8] ) then      //carlos 01/06/2011
   Key := #0;                                  //para o campo Numero da nota
end;                                           //aceitar apenas numero

end.
