unit Inventario;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, MDOQuery,
  wwdblook, Wwdbdlg, wwdbdatetimepicker;

type
  TfInventario = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    bSair: TBitBtn;
    bConfirmar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cDescricao: TwwDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    cLote: TwwDBEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    cQtde: TwwDBEdit;
    Panel18: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    dsdseEmpresa: TDataSource;
    wwDBEdit13: TwwDBEdit;
    bIncluir: TBitBtn;
    bAlterar: TBitBtn;
    bExcluir: TBitBtn;
    bCancelar: TBitBtn;
    dsdseInventario: TDataSource;
    bNavegador: TDBNavigator;
    bNRM: TBitBtn;
    bLista: TBitBtn;
    wwSearchDialog1: TwwSearchDialog;
    bRelatorio: TBitBtn;
    dseInventario: TMDODataSet;
    Transacao: TMDOTransaction;
    qryEmpresa: TMDOQuery;
    dseInventarioNRM: TMDOStringField;
    dseInventarioDESCRICAO: TMDOStringField;
    dseInventarioLOTE: TMDOStringField;
    dseInventarioQUANTIDADE: TFloatField;
    dseInventarioCADASTRO: TDateField;
    dseProdutos: TMDODataSet;
    MDOQuery1: TMDOQuery;
    cNRM: TwwDBEdit;
    dseInventarioCODIGO_BARRAS: TMDOStringField;
    Panel6: TPanel;
    Panel7: TPanel;
    cCodigoBarras: TwwDBEdit;
    sdPesquisar: TwwSearchDialog;
    Label1: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    dseInventarioDATA_INVENTARIO: TDateField;
    cData: TwwDBDateTimePicker;
    Label2: TLabel;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bListaClick(Sender: TObject);
    procedure dseInventarioAfterPost(DataSet: TDataSet);
    procedure bRelatorioClick(Sender: TObject);
    procedure cCodigoBarrasExit(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure cCodigoBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInventario: TfInventario;

implementation
uses Menu, RelInventario;

{$R *.DFM}

procedure TfInventario.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active    := False;
  dseInventario.Active := False;
  dseProdutos.Active   := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfInventario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfInventario.bConfirmarClick(Sender: TObject);
begin
  if dsdseInventario.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdseInventario.DataSet.Post;

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

procedure TfInventario.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseInventario.Active := True;
  qryEmpresa.Active    := True;
  dseProdutos.Active   := True;
end;

procedure TfInventario.bIncluirClick(Sender: TObject);
begin
  if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString <> 'A' then
  begin
    ShowMessage('ATENÇÃO! Inventário não esta aberto para lançamentos.');
    Exit;
  end;
  
  dsdseInventario.DataSet.Insert;

  cCodigoBarras.Enabled := True;
  cNRM.Enabled := True;
  cDescricao.Enabled := True;
  cLote.Enabled := True;

  cData.SetFocus;
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

procedure TfInventario.bAlterarClick(Sender: TObject);
begin
  if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString <> 'A' then
  begin
    ShowMessage('ATENÇÃO! Inventário não esta aberto para lançamentos.');
    Exit;
  end;
  
  dsdseInventario.DataSet.Edit;
  cQtde.SetFocus;

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

procedure TfInventario.bCancelarClick(Sender: TObject);
begin
  if dsdseInventario.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdseInventario.DataSet.Cancel;
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

procedure TfInventario.bListaClick(Sender: TObject);
begin
  wwSearchDialog1.Execute;
end;

procedure TfInventario.dseInventarioAfterPost(DataSet: TDataSet);
begin
  dseInventario.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfInventario.bRelatorioClick(Sender: TObject);
begin
  fRelInventario := TfRelInventario.Create(Self);
end;

procedure TfInventario.cCodigoBarrasExit(Sender: TObject);
begin
  if dsdseInventario.DataSet.State in [dsEdit,dsInsert] then
  begin
    if dseInventario.FieldByName('CODIGO_BARRAS').AsString <> '' then
    begin
      with MDOQuery1 do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select * from PRODUTOS ');
        SQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS');
        ParamByName('CODIGO_BARRAS').AsString := dseInventario.FieldByName('CODIGO_BARRAS').AsString;
        Active := True;
        if RecordCount > 0 then
        begin
          dseInventario.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
          dseInventario.FieldByName('NRM').AsString       := FieldByName('NRM').AsString;
        end
        else
        begin
          ShowMessage('ATENÇÃO!! Medicamento não cadastrado.');
          cCodigoBarras.SetFocus;
          Abort;
        end;
      end;
    end
    else
    begin
      ShowMessage('ATENÇÃO!! Código Invalido.');
      cCodigoBarras.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfInventario.bExcluirClick(Sender: TObject);
begin
  if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString <> 'A' then
  begin
    ShowMessage('ATENÇÃO! Inventário não esta aberto para lançamentos.');
    Exit;
  end;
  
  if Application.MessageBox('Atenção! Deseja Realmente Excluir lançamento?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    dseInventario.Delete;
  end;
end;

procedure TfInventario.cCodigoBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then
  begin
    if dseInventario.State in [dsEdit,dsInsert] then
    begin
      if cCodigoBarras.Text <> '' then
      begin
        with MDOQuery1 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('select * from PRODUTOS ');
          SQL.Add('where DESCRICAO like :DESCRICAO ');
          SQL.Add('order by DESCRICAO');
          ParamByName('DESCRICAO').AsString := '%'+UpperCase(cCodigoBarras.Text)+'%';
          Active := True;

          sdPesquisar.ShadowSearchTable := MDOQuery1;
          sdPesquisar.Selected.Add('DESCRICAO' +#9+'50'+#9+'Descrição');
          sdPesquisar.Selected.Add('CODIGO_BARRAS' +#9+'18'+#9+'Código Barras');
          sdPesquisar.Selected.Add('NRM' +#9+'18'+#9+'NRM');
          sdPesquisar.Execute;

          dseInventario.FieldByName('CODIGO_BARRAS').AsString := FieldByName('CODIGO_BARRAS').AsString;
          cCodigoBarras.SetFocus;
        end;
      end;
    end;
  end;
end;

end.
