unit Transferencia;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, MDOQuery;

type
  TfTransferencia = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    bSair: TBitBtn;
    bConfirmar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    bIncluir: TBitBtn;
    bAlterar: TBitBtn;
    bExcluir: TBitBtn;
    bCancelar: TBitBtn;
    dsdseTransferencia: TDataSource;
    Panel16: TPanel;
    Panel17: TPanel;
    bNavegador: TDBNavigator;
    bNRM: TBitBtn;
    bLista: TBitBtn;
    bRelatorio: TBitBtn;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    bPesquisa2: TBitBtn;
    Label1: TLabel;
    MDOQuery1: TMDOQuery;
    dseTransferencia: TMDOQuery;
    cCodigoBarras: TwwDBEdit;
    cNRM: TwwDBEdit;
    cDescricao: TwwDBEdit;
    cLote: TwwDBEdit;
    cQtde: TwwDBEdit;
    cData: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    cPedido: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    dseTransferenciaNOTA_FISCAL: TMDOStringField;
    dseTransferenciaTIPO_OP_FISCAL: TMDOStringField;
    dseTransferenciaDATA_EMISSAO: TDateField;
    dseTransferenciaCNPJ_ORIGEM: TMDOStringField;
    dseTransferenciaCNPJ_DESTINO: TMDOStringField;
    dseTransferenciaNRM: TMDOStringField;
    dseTransferenciaCODIGO_BARRAS: TMDOStringField;
    dseTransferenciaDESCRICAO: TMDOStringField;
    dseTransferenciaLOTE: TMDOStringField;
    dseTransferenciaQUANTIDADE: TFloatField;
    dseTransferenciaDATA_TRANSFERENCIA: TDateField;
    wwSearchDialog1: TwwSearchDialog;
    dseProdutos: TMDODataSet;
    Transacao: TMDOTransaction;
    sdPesquisar: TwwSearchDialog;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bListaClick(Sender: TObject);
    procedure dseTransferenciaAfterPost(DataSet: TDataSet);
    procedure bExcluirClick(Sender: TObject);
    procedure cCodigoBarrasExit(Sender: TObject);
    procedure bPesquisa2Click(Sender: TObject);
    procedure cQtdeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTransferencia: TfTransferencia;

implementation
uses Menu;

{$R *.DFM}

procedure TfTransferencia.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfTransferencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseTransferencia.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfTransferencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfTransferencia.bConfirmarClick(Sender: TObject);
begin
  if dsdseTransferencia.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdseTransferencia.DataSet.Post;
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

procedure TfTransferencia.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseTransferencia.Active := True;
end;

procedure TfTransferencia.bIncluirClick(Sender: TObject);
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

  dsdseTransferencia.DataSet.Insert;
  dsdseTransferencia.DataSet.FieldByName('TIPO_OP_FISCAL').AsString := '2';
  cPedido.SetFocus;

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

procedure TfTransferencia.bAlterarClick(Sender: TObject);
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

  dsdseTransferencia.DataSet.Edit;
  cQtde.SetFocus;

  cCodigoBarras.Enabled := False;
  cNRM.Enabled := False;
  cDescricao.Enabled := False;
  cLote.Enabled := False;

  bIncluir.Enabled   := False;
  bAlterar.Enabled   := False;
  bExcluir.Enabled   := False;
  bConfirmar.Enabled := True;
  bCancelar.Enabled  := True;
  bSair.Enabled      := False;
  bNavegador.Enabled := False;
  bNRM.Enabled       := False;
  bLista.Enabled     := False;
  bRelatorio.Enabled := False;
end;

procedure TfTransferencia.bCancelarClick(Sender: TObject);
begin
  if dsdseTransferencia.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdseTransferencia.DataSet.Cancel;
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

procedure TfTransferencia.bListaClick(Sender: TObject);
begin
  wwSearchDialog1.Execute;
end;

procedure TfTransferencia.dseTransferenciaAfterPost(DataSet: TDataSet);
begin
  dseTransferencia.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfTransferencia.bExcluirClick(Sender: TObject);
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
    dseTransferencia.Delete;
  end;
end;

procedure TfTransferencia.cCodigoBarrasExit(Sender: TObject);
begin
  if dsdseTransferencia.DataSet.State in [dsEdit,dsInsert] then
  begin
    with dseProdutos do
    begin
      Active := False;
      SelectSQL.Clear;
      SelectSQL.Add('select * from PRODUTOS ');
      SelectSQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS');
      ParamByName('CODIGO_BARRAS').AsString := dseTransferencia.FieldByName('CODIGO_BARRAS').AsString;
      Active := True;
      if RecordCount > 0 then
      begin
        dseTransferencia.FieldByName('NRM').AsString       := FieldByName('NRM').AsString;
        dseTransferencia.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        ShowMessage('ATENÇÃO!! Medicamento não cadastrado.');
        cCodigoBarras.SetFocus;
      end;
    end;
  end;
end;

procedure TfTransferencia.bPesquisa2Click(Sender: TObject);
begin
  if dseTransferencia.State in [dsEdit,dsInsert] then
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

      dseTransferencia.FieldByName('CODIGO_BARRAS').AsString := FieldByName('CODIGO_BARRAS').AsString;
      cCodigoBarras.SetFocus;
    end;
  end;
end;

procedure TfTransferencia.cQtdeExit(Sender: TObject);
begin
  if dsdseTransferencia.DataSet.State in [dsEdit,dsInsert] then
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
        if dsdseTransferencia.DataSet.State in [dsInsert] then
        begin
          if  FieldByName('QUANTIDADE').AsInteger < StrToInt(cQtde.Text) then
          begin
            ShowMessage('ATENÇÃO!! Sem ESTOQUE para essa quantidade no Lote informado.');
            cQtde.SetFocus;
            Abort;
          end;
        end;

        if dsdseTransferencia.DataSet.State in [dsEdit] then
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
