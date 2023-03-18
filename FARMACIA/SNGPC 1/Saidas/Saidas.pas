unit Saidas;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, DBCtrls, wwDialog, wwidlg, MDOCustomDataSet, MDODatabase, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, wwdblook, Wwdbdlg, MDOQuery;

type
  TfSaidas = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    bSair: TBitBtn;
    bConfirmar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cPedido: TwwDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBEdit2: TwwDBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    cLote: TwwDBEdit;
    bIncluir: TBitBtn;
    bAlterar: TBitBtn;
    bExcluir: TBitBtn;
    bCancelar: TBitBtn;
    dsdseSaidas: TDataSource;
    Panel16: TPanel;
    Panel17: TPanel;
    bNavegador: TDBNavigator;
    bNRM: TBitBtn;
    bLista: TBitBtn;
    wwSearchDialog1: TwwSearchDialog;
    bRelatorio: TBitBtn;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    cDescricao: TwwDBEdit;
    dseSaidas: TMDODataSet;
    Transacao: TMDOTransaction;
    wwDBComboBox1: TwwDBComboBox;
    NroReceita: TwwDBEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    wwDBEdit6: TwwDBEdit;
    Panel28: TPanel;
    Panel29: TPanel;
    wwDBComboBox2: TwwDBComboBox;
    Panel36: TPanel;
    Panel37: TPanel;
    cQtde: TwwDBEdit;
    Panel30: TPanel;
    Panel31: TPanel;
    wwDBEdit11: TwwDBEdit;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    wwDBEdit13: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    cDataReceita: TwwDBDateTimePicker;
    dseSaidasNRO_PEDIDO: TIntegerField;
    dseSaidasTIPO_RECEITUARIO: TMDOStringField;
    dseSaidasNRO_NOTIFICACAO: TMDOStringField;
    dseSaidasDATA_PRESCRICAO: TDateField;
    dseSaidasNOME_PRESCRITOR: TMDOStringField;
    dseSaidasNRO_REG_PROFISSIONAL: TMDOStringField;
    dseSaidasCONSELHO_PROFISSIONAL: TMDOStringField;
    dseSaidasUF_CONSELHO: TMDOStringField;
    dseSaidasUSO_MEDICAMENTO: TMDOStringField;
    dseSaidasNOME_COMPRADOR: TMDOStringField;
    dseSaidasTIPO_DOC_COMPRADOR: TMDOStringField;
    dseSaidasNRO_DOC_COMPRADOR: TMDOStringField;
    dseSaidasORGAO_EXP_DOCTO: TMDOStringField;
    dseSaidasUF_EMISSAO_DOCTO: TMDOStringField;
    dseSaidasNRM: TMDOStringField;
    dseSaidasDESCRICAO: TMDOStringField;
    dseSaidasLOTE: TMDOStringField;
    dseSaidasQUANTIDADE: TFloatField;
    dseSaidasDATA_VENDA: TDateField;
    wwDBComboBox4: TwwDBComboBox;
    wwDBEdit1: TwwDBEdit;
    qryMedicos: TMDOQuery;
    cCliente: TwwDBLookupComboDlg;
    qryClientes: TMDOQuery;
    MDOQuery1: TMDOQuery;
    sdPesquisar: TwwSearchDialog;
    dseProdutos: TMDODataSet;
    qryMedicosCRM: TMDOStringField;
    qryMedicosMEDICO: TMDOStringField;
    qryMedicosCONSELHO: TMDOStringField;
    qryMedicosUF: TMDOStringField;
    qryMedicosCADASTRO: TDateField;
    Panel38: TPanel;
    Panel39: TPanel;
    cNRM: TwwDBEdit;
    cCodigoBarras: TwwDBEdit;
    dseSaidasCODIGO_BARRAS: TMDOStringField;
    bPesquisa2: TBitBtn;
    wwSearchDialog2: TwwSearchDialog;
    bPesquisa1: TBitBtn;
    wwSearchDialog3: TwwSearchDialog;
    cCRM: TwwDBEdit;
    Label1: TLabel;
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
    procedure dseSaidasAfterPost(DataSet: TDataSet);
    procedure cClienteExit(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bRelatorioClick(Sender: TObject);
    procedure cCodigoBarrasExit(Sender: TObject);
    procedure bPesquisa2Click(Sender: TObject);
    procedure cLoteExit(Sender: TObject);
    procedure bPesquisa1Click(Sender: TObject);
    procedure cCRMExit(Sender: TObject);
    procedure cCRMEnter(Sender: TObject);
    procedure cClienteEnter(Sender: TObject);
    procedure cCodigoBarrasEnter(Sender: TObject);
    procedure cQtdeExit(Sender: TObject);
    procedure cCodigoBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bNRMClick(Sender: TObject);
    procedure cDataReceitaExit(Sender: TObject);
    procedure Critica;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSaidas: TfSaidas;

implementation
uses Menu, SelRelSaidas, PesqMedicSaidas;

{$R *.DFM}

procedure TfSaidas.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfSaidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseSaidas.Active  := False;
  qryMedicos.Active := False;
  dseProdutos.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfSaidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfSaidas.bConfirmarClick(Sender: TObject);
begin
  Critica;
  
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    dseSaidas.FieldByName('NRO_PEDIDO').AsInteger := dseSaidas.FieldByName('NRO_NOTIFICACAO').AsInteger;
    dsdseSaidas.DataSet.Post;
    ShowMessage('Receita Gravada com Sucesso.');
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

procedure TfSaidas.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir tabelas
  dseSaidas.Active := True;
  qryMedicos.Active := True;
  dseProdutos.Active := True;
  qryClientes.Active := True;
end;

procedure TfSaidas.bIncluirClick(Sender: TObject);
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

  dsdseSaidas.DataSet.Insert;
  dsdseSaidas.DataSet.FieldByName('USO_MEDICAMENTO').AsString := '1';
//  dsdseSaidas.DataSet.FieldByName('Tipo_Receituario').AsInteger := wwDBComboBox1.ItemIndex + 1;
  NroReceita.SetFocus;

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

procedure TfSaidas.bAlterarClick(Sender: TObject);
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
  
  dsdseSaidas.DataSet.Edit;

  Label1.Caption := dsdseSaidas.DataSet.FieldByName('QUANTIDADE').AsString;

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

procedure TfSaidas.bCancelarClick(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    dsdseSaidas.DataSet.Cancel;
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

procedure TfSaidas.bListaClick(Sender: TObject);
begin
  wwSearchDialog1.Execute;
end;

procedure TfSaidas.dseSaidasAfterPost(DataSet: TDataSet);
begin
  dseSaidas.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

procedure TfSaidas.cClienteExit(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    if dseSaidas.fieldByName('NOME_COMPRADOR').AsString <> '' then
    begin
      with qryClientes do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select * from CLIENTES ');
        SQL.Add('where NOME_CLIENTE like :NOME_CLIENTE');
        ParamByName('NOME_CLIENTE').AsString := dseSaidas.fieldByName('NOME_COMPRADOR').AsString;
        Active := True;
        if RecordCount > 0 then
        begin
          dseSaidas.FieldByName('TIPO_DOC_COMPRADOR').AsString := qryClientes.FieldByName('TIPO_DOCTO').AsString;
          dseSaidas.FieldByName('NRO_DOC_COMPRADOR').AsString  := qryClientes.FieldByName('DOCUMENTO').AsString;
          dseSaidas.FieldByName('ORGAO_EXP_DOCTO').AsString    := qryClientes.FieldByName('ORGAO_EXP').AsString;
          dseSaidas.FieldByName('UF_EMISSAO_DOCTO').AsString   := qryClientes.FieldByName('UF_ORGAO').AsString;
        end
        else
        begin
          ShowMessage('ATENÇÃO!! Cliente não cadastrado.');
          cCliente.SetFocus;
        end;
      end;
    end
    else
      bPesquisa2.Click;
  end;
end;

procedure TfSaidas.bExcluirClick(Sender: TObject);
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
    dseSaidas.Delete;
  end;
end;

procedure TfSaidas.bRelatorioClick(Sender: TObject);
begin
  fSelRelSaidas := TfSelRelSaidas.Create(Self);
  fSelRelSaidas.ShowModal;
end;

procedure TfSaidas.cCodigoBarrasExit(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    if dseSaidas.FieldByName('CODIGO_BARRAS').AsString <> '' then
    begin
      with MDOQuery1 do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select * from PRODUTOS ');
        SQL.Add('where CODIGO_BARRAS = :CODIGO_BARRAS');
        ParamByName('CODIGO_BARRAS').AsString := dseSaidas.FieldByName('CODIGO_BARRAS').AsString;
        Active := True;
        if RecordCount > 0 then
        begin
          dseSaidas.FieldByName('NRM').AsString       := FieldByName('NRM').AsString;
          dseSaidas.FieldByName('DESCRICAO').AsString := FieldByName('DESCRICAO').AsString;
        end
        else
        begin
          ShowMessage('ATENÇÃO!! Medicamento não cadastrado.');
          cCodigoBarras.SetFocus;
          Abort;
        end;
      end;
    end;
//    else
//    begin
//      ShowMessage('ATENÇÃO!! Código Invalido.');
//      cCodigoBarras.SetFocus;
//      Abort;
//    end;
  end;
end;

procedure TfSaidas.bPesquisa2Click(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    with qryClientes do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from CLIENTES ');
      SQL.Add('order by NOME_CLIENTE');
      Active := True;

      wwSearchDialog2.Execute;

      dseSaidas.FieldByName('NOME_COMPRADOR').AsString := FieldByName('NOME_CLIENTE').AsString;
      cCliente.SetFocus;


    end;
  end;
end;

procedure TfSaidas.cLoteExit(Sender: TObject);
begin
{  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
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
      if RecordCount = 0 then
      begin
        ShowMessage('ATENÇÃO!! Lote não encontrado para esse Medicamento.');
        cLote.SetFocus;
        Abort;
      end;
    end;
  end;  }
end;

procedure TfSaidas.bPesquisa1Click(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    with qryMedicos do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select * from MEDICO ');
      SQL.Add('order by MEDICO');
      Active := True;

      wwSearchDialog3.Execute;

      dseSaidas.FieldByName('NOME_PRESCRITOR').AsString      := FieldByName('MEDICO').AsString;
      dseSaidas.FieldByName('NRO_REG_PROFISSIONAL').AsString := FieldByName('CRM').AsString;
      cCRM.SetFocus;
    end;
  end;
end;

procedure TfSaidas.cCRMExit(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
  begin
    if dseSaidas.fieldByName('NRO_REG_PROFISSIONAL').AsString <> '' then
    begin
      with qryMedicos do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select * from MEDICO ');
        SQL.Add('where CRM = :CRM');
        ParamByName('CRM').AsString := dseSaidas.fieldByName('NRO_REG_PROFISSIONAL').AsString;
        Active := True;
        if RecordCount > 0 then
        begin
          dseSaidas.FieldByName('NRO_REG_PROFISSIONAL').AsString := qryMedicos.FieldByName('CRM').AsString;
          dseSaidas.FieldByName('NOME_PRESCRITOR').AsString      := qryMedicos.FieldByName('MEDICO').AsString;
          dseSaidas.FieldByName('CONSELHO_PROFISSIONAL').AsString:= qryMedicos.FieldByName('CONSELHO').AsString;
          dseSaidas.FieldByName('UF_CONSELHO').AsString          := qryMedicos.FieldByName('UF').AsString;
        end
        else
        begin
          ShowMessage('ATENÇÃO!! Médico não cadastrado.');
          cCRM.SetFocus;
        end;
      end;
    end
    else
      bPesquisa1.Click;
  end;
end;

procedure TfSaidas.cCRMEnter(Sender: TObject);
begin
  bPesquisa1.Enabled := True;
  bPesquisa2.Enabled := False;
end;

procedure TfSaidas.cClienteEnter(Sender: TObject);
begin
  bPesquisa1.Enabled := False;
  bPesquisa2.Enabled := True;
end;

procedure TfSaidas.cCodigoBarrasEnter(Sender: TObject);
begin
  bPesquisa1.Enabled := False;
  bPesquisa2.Enabled := False;
end;

procedure TfSaidas.cQtdeExit(Sender: TObject);
begin
  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
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
        if dsdseSaidas.DataSet.State in [dsInsert] then
        begin
          if  FieldByName('QUANTIDADE').AsInteger < StrToInt(cQtde.Text) then
          begin
            ShowMessage('ATENÇÃO!! Sem ESTOQUE para essa quantidade no Lote informado.');
            cQtde.SetFocus;
            Abort;
          end;
        end;

        if dsdseSaidas.DataSet.State in [dsEdit] then
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

procedure TfSaidas.cCodigoBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F2 then
  begin
    if dseSaidas.State in [dsEdit,dsInsert] then
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

          dseSaidas.FieldByName('CODIGO_BARRAS').AsString := FieldByName('CODIGO_BARRAS').AsString;
          cCodigoBarras.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure TfSaidas.bNRMClick(Sender: TObject);
begin
  fPesqMecSaidas := TfPesqMecSaidas.Create(Self);
  fPesqMecSaidas.ShowModal;
  fPesqMecSaidas.Release;
  fPesqMecSaidas.Free;  
end;

procedure TfSaidas.cDataReceitaExit(Sender: TObject);
begin
 { if ((dseSaidas.FieldByName('DATA_VENDA').AsDateTime - dseSaidas.FieldByName('DATA_PRESCRICAO').AsDateTime) > 30) then
  begin
    ShowMessage('ATENÇÃO!! Data da venda não pode ser maior que 30 dias da data da receita.');
    cDataReceita.SetFocus;
  end;

  if (dseSaidas.FieldByName('DATA_PRESCRICAO').AsDateTime > dseSaidas.FieldByName('DATA_VENDA').AsDateTime) then
  begin
    ShowMessage('ATENÇÃO!! Data da receita não pode ser maior que data da venda.');
    cDataReceita.SetFocus;
  end; }
end;

procedure TfSaidas.Critica;
begin
  if dseSaidas.FieldByName('data_venda').AsString ='' then
    begin
      wwDBDateTimePicker1.SetFocus;
      raise Exception.Create('Data de Venda inválida');
    end;

  if dseSaidas.FieldByName('tipo_receituario').AsString ='' then
    begin
       wwDBComboBox1.SetFocus;
      raise Exception.Create('Tipo de Receita inválida');
    end;

if dseSaidas.FieldByName('NRO_NOTIFICACAO').AsString ='' then
    begin
      NroReceita.SetFocus;
      raise Exception.Create('Número de Receita inválida');
    end;

if dseSaidas.FieldByName('data_prescricao').AsString ='' then
    begin
      cDataReceita.SetFocus;
      raise Exception.Create('Data da Prescrição inválida');
    end;

if dseSaidas.FieldByName('NRO_REG_PROFISSIONAL').AsString ='' then
    begin
      cCRM.SetFocus;
      raise Exception.Create('Número de CRM inválido');
    end;

if dseSaidas.FieldByName('NOME_COMPRADOR').AsString ='' then
    begin
      cCliente.SetFocus;
      raise Exception.Create('Nome do Comprador inválido');
    end;

if dseSaidas.FieldByName('codigo_barras').AsString ='' then
    begin
      cCodigoBarras.SetFocus;
      raise Exception.Create('Código de Barras inválido');
    end;

    if dseSaidas.FieldByName('lote').AsString ='' then
    begin
      clote.SetFocus;
      raise Exception.Create('Número do Lote inválido');
    end;

  if ((dseSaidas.FieldByName('DATA_VENDA').AsDateTime - dseSaidas.FieldByName('DATA_PRESCRICAO').AsDateTime) > 30) then
  begin
    cDataReceita.SetFocus;
    raise Exception.Create('Data da venda não pode ser maior que 30 dias da data da Prescrição.');
  end;

  if (dseSaidas.FieldByName('DATA_PRESCRICAO').AsDateTime > dseSaidas.FieldByName('DATA_VENDA').AsDateTime) then
  begin
    cDataReceita.SetFocus;
    raise Exception.Create('Data da Prescrição não pode ser maior que a data da venda.');
  end;

  if dsdseSaidas.DataSet.State in [dsEdit,dsInsert] then
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
      if RecordCount = 0 then
      begin
        cLote.SetFocus;
        raise Exception.Create('Lote não encontrado para esse Medicamento.');
      end;
    end;
  end;
  
     if dseSaidas.FieldByName('quantidade').AsString ='' then
    begin
      cQtde.SetFocus;
      raise Exception.Create('Quantidade Inválida');
    end;
end;
end.
