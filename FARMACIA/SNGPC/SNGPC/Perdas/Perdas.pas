unit Perdas;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, MDOQuery;

type
  TfPerdas = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    bSair: TBitBtn;
    bConfirmar: TBitBtn;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    cNRM: TwwDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    cLote: TwwDBEdit;
    bIncluir: TBitBtn;
    bAlterar: TBitBtn;
    bExcluir: TBitBtn;
    bCancelar: TBitBtn;
    dsdsePerdas: TDataSource;
    Panel16: TPanel;
    Panel17: TPanel;
    bNavegador: TDBNavigator;
    bNRM: TBitBtn;
    bLista: TBitBtn;
    wwSearchDialog1: TwwSearchDialog;
    bRelatorio: TBitBtn;
    Panel22: TPanel;
    Panel23: TPanel;
    cDescricao: TwwDBEdit;
    dsePerdas: TMDODataSet;
    Transacao: TMDOTransaction;
    Panel36: TPanel;
    Panel37: TPanel;
    cQtde: TwwDBEdit;
    cData: TwwDBDateTimePicker;
    Panel2: TPanel;
    Panel3: TPanel;
    wwDBComboBox1: TwwDBComboBox;
    dsePerdasNRM: TMDOStringField;
    dsePerdasDESCRICAO: TMDOStringField;
    dsePerdasLOTE: TMDOStringField;
    dsePerdasMOTIVO_PERDA: TMDOStringField;
    dsePerdasQUANTIDADE: TFloatField;
    dsePerdasDATA_PERDA: TDateField;
    dseProdutos: TMDODataSet;
    Panel8: TPanel;
    Panel9: TPanel;
    cCodigoBarras: TwwDBEdit;
    bPesquisa2: TBitBtn;
    MDOQuery1: TMDOQuery;
    sdPesquisar: TwwSearchDialog;
    dsePerdasCODIGO_BARRAS: TMDOStringField;
    Label1: TLabel;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bListaClick(Sender: TObject);
    procedure dsePerdasAfterPost(DataSet: TDataSet);
    procedure bExcluirClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure bPesquisa2Click(Sender: TObject);
    procedure cCodigoBarrasExit(Sender: TObject);
    procedure cQtdeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPerdas: TfPerdas;

implementation
uses Menu, SelRelPerdas;

{$R *.DFM}

procedure TfPerdas.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfPerdas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsePerdas.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfPerdas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfPerdas.bConfirmarClick(Sender: TObject);
begin
  if dsdsePerdas.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdsePerdas.DataSet.Post;
    ShowMessage('Gravado com Sucesso.');
    bIncluir.Enabled := True;
    bAlterar.Enabled := True;
    bExcluir.Enabled := True;
    bConfirmar.Enabled := False;
    bCancelar.Enabled := False;
    bSair.Enabled     := True;
    bNavegador.Enabled:= True;
    bNRM.Enabled      := True;
    bLista.Enabled    := True;
    bRelatorio.Enabled:= True;
  end; 
end;

procedure TfPerdas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dsePerdas.Active := True;
end;

procedure TfPerdas.bIncluirClick(Sender: TObject);
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
  
  dsdsePerdas.DataSet.Insert;
  cData.SetFocus;

  cCodigoBarras.Enabled := True;
  cNRM.Enabled := True;
  cDescricao.Enabled := True;
  cLote.Enabled := True;

  bIncluir.Enabled := False;
  bAlterar.Enabled := False;
  bExcluir.Enabled := False;
  bConfirmar.Enabled := True;
  bCancelar.Enabled := True;
  bSair.Enabled     := False;
  bNavegador.Enabled:= False;
  bNRM.Enabled      := False;
  bLista.Enabled    := False;
  bRelatorio.Enabled:= False;
end;

procedure TfPerdas.bAlterarClick(Sender: TObject);
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
  
  dsdsePerdas.DataSet.Edit;
  cData.SetFocus;

  cCodigoBarras.Enabled := False;
  cNRM.Enabled := False;
  cDescricao.Enabled := False;
  cLote.Enabled := False;

  
  bIncluir.Enabled := False;
  bAlterar.Enabled := False;
  bExcluir.Enabled := False;
  bConfirmar.Enabled := True;
  bCancelar.Enabled := True;
  bSair.Enabled     := False;
  bNavegador.Enabled:= False;
  bNRM.Enabled      := False;
  bLista.Enabled    := False;
  bRelatorio.Enabled:= False;
end;

procedure TfPerdas.bCancelarClick(Sender: TObject);
begin
  if dsdsePerdas.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdsePerdas.DataSet.Cancel;
    bIncluir.Enabled := True;
    bAlterar.Enabled := True;
    bExcluir.Enabled := True;
    bConfirmar.Enabled := False;
    bCancelar.Enabled := False;
    bSair.Enabled     := True;
    bNavegador.Enabled:= True;
    bNRM.Enabled      := True;
    bLista.Enabled    := True;
    bRelatorio.Enabled:= True;
  end;
end;

procedure TfPerdas.bListaClick(Sender: TObject);
begin
  wwSearchDialog1.Execute;
end;

procedure TfPerdas.dsePerdasAfterPost(DataSet: TDataSet);
begin
  dsePerdas.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfPerdas.bExcluirClick(Sender: TObject);
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
  
  if Application.MessageBox('Atenção! Deseja Realmente Excluir lançamento?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    dsePerdas.Delete;
  end;
end;

procedure TfPerdas.bRelatorioClick(Sender: TObject);
begin
  fSelRelPerdas := TfSelRelPerdas.Create(Self);
  fSelRelPerdas.ShowModal;
end;

procedure TfPerdas.bPesquisa2Click(Sender: TObject);
begin
  if dsePerdas.State in [dsEdit,dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from PRODUTOS ');
      SQL.Add('order by DESCRICAO');
      Active := True;

      sdPesquisar.ShadowSearchTable := MDOQuery1;
      sdPesquisar.Selected.Add('DESCRICAO' +#9+'50'+#9+'Descrição');
      sdPesquisar.Selected.Add('CODIGO_BARRAS' +#9+'18'+#9+'Código Barras');
      sdPesquisar.Selected.Add('NRM' +#9+'18'+#9+'NRM');
      sdPesquisar.Execute;

      dsePerdas.FieldByName('CODIGO_BARRAS').AsString := FieldByName('CODIGO_BARRAS').AsString;
      cCodigoBarras.SetFocus;
    end;
  end;
end;

procedure TfPerdas.cCodigoBarrasExit(Sender: TObject);
begin
  if dsdsePerdas.DataSet.State in [dsEdit,dsInsert] then
  begin
    if dsePerdas.FieldByName('CODIGO_BARRAS').AsString <> '' then
    begin
      with dseProdutos do
      begin
        Active := False;
        SelectSQL.Clear;
        SelectSQL.Add('select * from PRODUTOS ');
        SelectSQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS');
        ParamByName('CODIGO_BARRAS').AsString := dsePerdas.FieldByName('CODIGO_BARRAS').AsString;
        Active := True;
        if RecordCount > 0 then
        begin
          dsePerdas.FieldByName('NRM').AsString       := FieldByName('NRM').AsString;
          dsePerdas.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
        end
        else
        begin
          ShowMessage('Atenção!! Produto não cadastrado no sistema, verifique.');
          cCodigoBarras.SetFocus;
        end;
      end;
    end
    else
      bPesquisa2.Click;
  end;
end;

procedure TfPerdas.cQtdeExit(Sender: TObject);
begin
  if dsdsePerdas.DataSet.State in [dsEdit,dsInsert] then
  begin
    with MDOQuery1 do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from ESTOQUE_LOTE ');
      SQL.Add('where NRM = :NRM and LOTE = :LOTE');
      ParamByName('NRM').Value := Trim(cNRM.Text);
      ParamByName('LOTE').Value := Trim(cLote.Text);
      Active := True;
      if RecordCount > 0 then
      begin
        if dsdsePerdas.DataSet.State in [dsInsert] then
        begin
          if  FieldByName('QUANTIDADE').AsInteger < StrToInt(cQtde.Text) then
          begin
            ShowMessage('ATENÇÃO!! Sem ESTOQUE para essa quantidade no Lote informado.');
            cQtde.SetFocus;
            Abort;
          end;
        end;

        if dsdsePerdas.DataSet.State in [dsEdit] then
        begin
          if  (FieldByName('QUANTIDADE').AsInteger+StrToInt(Label1.Caption)) < StrToInt(cQtde.Text) then
          begin
            ShowMessage('ATENÇÃO!! Sem ESTOQUE para essa quantidade no Lote informado.');
            cQtde.SetFocus;
            Abort;
          end;
        end;

      end;
    end;
  end;
end;

end.
