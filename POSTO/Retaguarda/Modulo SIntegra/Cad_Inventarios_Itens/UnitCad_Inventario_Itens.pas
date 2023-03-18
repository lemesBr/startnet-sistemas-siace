unit UnitCad_Inventario_Itens;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, ExtCtrls,
 IBCustomDataSet, IBQuery, IBSQL, Placemnt, ToolEdit, CurrEdit, Buttons,
 Unit_Connect_Sintegra32, Menus;

type
 TInventario_ItensCadFrm = class(TForm)
   Panel1: TPanel;
   Label3: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   Panel2: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   SQLCascadeCheck: TIBSQL;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox4: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    QryInventario: TIBQuery;
    DtsQryInventario: TDataSource;
    DtsDstInventario_Itens: TDataSource;
    Edit2: TEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    CurrencyEdit3: TCurrencyEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    QryPosse: TIBQuery;
    DtsQryPosse: TDataSource;
    PopupMenu1: TPopupMenu;
    ZerarcampoQuantidadeparaprodutoscomquantidadenegativa1: TMenuItem;
    EXCLUIRprodutoscomQUANTIDADEZERO1: TMenuItem;
    EXCLUIRprodutoscomSUBTOTALZERO1: TMenuItem;
    QryInventarioCOD_INVENTARIO: TIntegerField;
    QryInventarioDATAHORA: TDateTimeField;

   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure Abilita;
   procedure New;
   procedure Save;
   procedure EditCancel;
   procedure Del;
   procedure Consulta;
   procedure LimparCampos;

   function CamposPreenchidos(): boolean;

   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure FormCreate(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure Label3Click(Sender: TObject);
   procedure Label3MouseLeave(Sender: TObject);
   procedure QryInventarioBeforeScroll(DataSet: TDataSet);
   procedure DtsQryInventarioDataChange(Sender: TObject; Field: TField);
   procedure Label3MouseEnter(Sender: TObject);
   procedure BitBtn1Click(Sender: TObject);
   procedure Seleciona_Produto(Sender: TObject);
   procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure ZerarcampoQuantidadeparaprodutoscomquantidadenegativa1Click(
      Sender: TObject);
    procedure EXCLUIRprodutoscomQUANTIDADEZERO1Click(Sender: TObject);
    procedure EXCLUIRprodutoscomSUBTOTALZERO1Click(Sender: TObject);
    procedure DtsDstInventario_ItensDataChange(Sender: TObject;
      Field: TField);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 Inventario_ItensCadFrm: TInventario_ItensCadFrm;
 OrderbyStr: String = 'ORDER BY COD_INVENTARIO_ITENS DESC';

implementation


uses UnitDataM1, UnitFrmPrincipal, UnitFuncoes, UnitSelect,
  UnitConsultaGeral;

{$R *.DFM}

procedure TInventario_ItensCadFrm.abilita;
begin
 case DM1.DstInventario_Itens.State of
   dsBrowse:
      begin
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
       panel1.Enabled := True;
       edit1.Visible         := false;
       edit2.Visible         := false;
       BitBtn1.Enabled       := false;
       CurrencyEdit1.Visible := false;
       CurrencyEdit2.Visible := false;
       CurrencyEdit3.Visible := false;
       DBEdit5.Enabled       := True;
       Label7.Enabled        := True;
       Label8.Enabled        := True;
       DBEdit5.Enabled       := True;
       DBEdit6.Enabled       := True;
       PrincipalFrm.CamposPreenchidos(Label9);
       PrincipalFrm.CamposPreenchidos(Label2);
       PrincipalFrm.CamposPreenchidos(Label5);
       PrincipalFrm.CamposPreenchidos(Label1);
       PrincipalFrm.CamposPreenchidos(Label4);
       PrincipalFrm.CamposPreenchidos(Label6);
       PrincipalFrm.CamposPreenchidos(Label7);
       PrincipalFrm.CamposPreenchidos(Label8);

      end;
   dsinsert, dsedit:
      begin
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       panel1.Enabled := False;
       edit1.Visible         := True;
       edit2.Visible         := True;
       BitBtn1.Enabled       := True;
       CurrencyEdit1.Visible := True;
       CurrencyEdit2.Visible := True;
       CurrencyEdit3.Visible := True;
       DBEdit5.Enabled       := True;
       if not VarIsnull(DM1.DstInventario_Itens['VALOR_PRODUTO']) then
        currencyedit2.Value := DM1.DstInventario_Itens['VALOR_PRODUTO'];
       if not VarIsnull(DM1.DstInventario_Itens['QUANTIDADE']) then
        currencyedit1.Value := DM1.DstInventario_Itens['QUANTIDADE'];
       if not VarIsnull(DM1.DstInventario_Itens['PRODUTO']) then
        edit1.Text := DM1.DstInventario_Itens['PRODUTO'];
       if not VarIsnull(DM1.DstInventario_Itens['COD_PRODUTOS']) then
        edit2.Text := DM1.DstInventario_Itens['COD_PRODUTOS'];
       if not VarIsNull(DBLookupComboBox2.KeyValue) then
       case DBLookupComboBox2.KeyValue of
        1:
         begin
          DM1.DstInventario_Itens['CNPJ_POSSUIDOR'] := '';
          DM1.DstInventario_Itens['IE_EST_POSSUIDOR'] := '';
          Label7.Caption := 'CNPJ:';
          Label7.Enabled := False;
          Label8.Enabled := False;
          DBEdit5.Enabled := false;
          DBEdit6.Enabled := false;
         end;
        2:
         begin
          Label7.Caption := 'CNPJ/Empresa.';
          Label7.Enabled := True;
          Label8.Enabled := True;
          DBEdit5.Enabled := True;
          DBEdit6.Enabled := True;
         end;
        3:
         begin
          Label7.Caption := 'CNPJ/Proprietária.';
          Label7.Enabled := True;
          Label8.Enabled := True;
          DBEdit5.Enabled := True;
          DBEdit6.Enabled := True;
         end;
       end;

       if Edit2.CanFocus then
        edit2.SetFocus;
      end;
  end;
end;

procedure tInventario_ItensCadFrm.New;
begin
 if dblookupcombobox1.KeyValue <> null then
  begin
   if DM1.newsave(DM1.DstInventario_Itens) then
    begin
     LimparCampos;
     Abilita;
    end;
  end
 else
   application.messagebox('Nenhum "Item de Inventário" selecionado' + #13 +
     'Selecione um "Inventário" e tente novamente...',
     'Atençao', mb_ok + mb_iconerror);
end;

procedure tInventario_ItensCadFrm.Save;
var
 Continuar: boolean;
 temp, temp2: string;
begin
 DM1.DstInventario_Itens.UpdateRecord;

 if CamposPreenchidos then
  begin
   //------ Verifica Integridade do CNPJ e Insc.Est ------
   temp2 := '';
   Continuar := True;
   temp := dbedit5.Text;
   temp := RemoveInvalid('.', temp);
   temp := RemoveInvalid('-', temp);
   temp := RemoveInvalid('/', temp);
   if dbedit5.Text <> '' then
    begin
     if not Verifica_CNPJ(temp) then
      temp2 := temp2 + PChar(#13 + ' - O número de C.N.P.J. - ' + dbedit5.Text + ' não é um número de C.N.P.J. correto.');
    end
   else
    temp2 := temp2 + PChar(#13 + ' - Você não cadastrou o C.N.P.J..');

   if dbedit6.Text <> '' then
    begin
     if not Verifica_InscEst(dbedit6.text, DBComboBox4.Text) then
      temp2 := temp2 + PChar(#13 + ' - O número de Inscrição Estadual - ' + dbedit6.text +' não é um número de Inscrição Estadual correto.')
     end
   else
    temp2 := temp2 + PChar(#13 + ' - Você não cadastrou a Inscrição Estadual.');

   if temp2 <> '' then
    if Application.MessageBox(PChar('Aviso:' + temp2 + #13 + 'Deseja continuar assim mesmo?'), 'Atenção!', mb_iconinformation + mb_yesno) = idno then
     Continuar := False;

   if continuar then
    begin
     DM1.DstInventario_Itens['PRODUTO']       := Edit1.Text;
     DM1.DstInventario_Itens['COD_PRODUTOS']  := Edit2.Text;
     DM1.DstInventario_Itens['VALOR_PRODUTO'] := currencyedit2.Value;
     DM1.DstInventario_Itens['QUANTIDADE']    := currencyedit1.Value;
     DM1.DstInventario_Itens['VALOR_UNITARIO']:= currencyedit3.Value;
     DM1.DstInventario_Itens['COD_POSSE']     := QryPosse['VALOR'];
     if DM1.newsave(DM1.DstInventario_Itens) then
      Abilita;
    end;
  end
 else
  begin
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção!', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end;
end;


procedure tInventario_ItensCadFrm.EditCancel;
begin
 if DM1.EditCancel(DM1.DstInventario_Itens) then
   Abilita;
end;

procedure tInventario_ItensCadFrm.Del;
var
 Continuar: boolean;
begin
 DM1.Del(DM1.DstInventario_Itens);
 DBLookupComboBox1.KeyValue := QryInventarioCOD_INVENTARIO.Value;
end;

procedure TInventario_ItensCadFrm.Consulta;
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Ítens do Iventário';
 ConsultaGeralListFrm.SetStrValues(TIBDataset(QryInventario), DM1.DstInventario_Itens,
   'INVENTARIO', 'INVENTARIO_ITENS', ['COD_INVENTARIO_ITENS', 'COD_INVENTARIO','COD_PRODUTOS', 'PRODUTO',
   'CNPJ_POSSUIDOR', 'IE_EST_POSSUIDOR'],
   ['COD_INVENTARIO_ITENS', 'COD_INVENTARIO',
   'Referencia', 'Produto', 'CNPJ', 'Insc_Estadual'], [0, 1]);
 ConsultaGeralListFrm.showmodal;

 if dbgrid1.CanFocus then dbgrid1.SetFocus;
end;

procedure TInventario_ItensCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TInventario_ItensCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TInventario_ItensCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstInventario_Itens, Inventario_ItensCadFrm.QryInventario,
                  Inventario_ItensCadFrm.QryPosse]);
 DM1.DefSenderDtsStateChange(DM1.DstInventario_Itens);
 abilita;

 //--- Testa se há Inventário Cadastrado
 if QryInventario.RecordCount < 1 then
  begin
   if Dm1.DstInventario_Itens.state in [dsedit, dsinsert] then
     PrincipalFrm.speedbutton6.click;
   if Application.MessageBox('Não há Inventário cadastrado' + #13 +
     'Cadastre um "Inventário" e só então tente cadastrar um "Ítem Inventário"'
     + #13#13 +
     'Para Cadastrar um Inventario, clique em:' + #13 +
     'Programa >Fiscal >SIntegra >Cadastro de Inventário',
     'Informação', mb_ok + mb_iconinformation) = idOk then
     self.Close;
   exit;
  end;

 //--- Coloca DbLookUp no primeiro registro ---
 if VarIsNull(Dblookupcombobox1.KeyValue) then
   Dblookupcombobox1.KeyValue := Dblookupcombobox1.ListSource.DataSet.Fields.FieldByName
     (Dblookupcombobox1.KeyField).AsInteger;
end;

procedure TInventario_ItensCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstInventario_Itens);
 DM1.CloseIBArray([Inventario_ItensCadFrm.QryInventario, Inventario_ItensCadFrm.QryPosse]);
end;

procedure TInventario_ItensCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TInventario_ItensCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TInventario_ItensCadFrm.DBEdit2KeyPress(Sender: TObject;
 var Key: char);
begin
 if key in ['/', '.', '-', '1', '2', '3', '4', '5', '6', '7', '8', '9',
   '0', #08, #09, #32, #27, #13] then
  begin
   if key = #27 then
    begin
     key := #0;
     Perform(wm_nextdlgctl, 1,0);
    end;

   if key = #13 then
    begin
     key := #0;
     Perform(wm_nextdlgctl, 0,0);
    end;
  end;
end;

procedure TInventario_ItensCadFrm.FormCreate(Sender: TObject);
begin
 DM1.DstInventario_Itens.DataSource := DtsQryInventario;
end;

procedure TInventario_ItensCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TInventario_ItensCadFrm.Label3Click(Sender: TObject);
begin
 if Principalfrm.ModuloSIntegraMnu.visible then
  begin
   Principalfrm.Hyperlink_On(sender);

   if Dm1.DstInventario.state = dsbrowse then
    Dm1.DstInventario.Locate('COD_INVENTARIO', Dblookupcombobox1.keyvalue, []);
  end;
end;

procedure TInventario_ItensCadFrm.Label3MouseLeave(Sender: TObject);
begin
 if Principalfrm.ModuloSIntegraMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TInventario_ItensCadFrm.QryInventarioBeforeScroll(DataSet: TDataSet);
begin
 DM1.DefSenderDtsStateChange(DM1.DstInventario_Itens);
end;

procedure TInventario_ItensCadFrm.DtsQryInventarioDataChange(Sender: TObject;
 Field: TField);
begin
 Dblookupcombobox1.KeyValue := DM1.DstInventario_Itens['Cod_Inventario'];
end;

procedure TInventario_ItensCadFrm.Label3MouseEnter(Sender: TObject);
begin
 if Principalfrm.ModuloSIntegraMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

function TInventario_ItensCadFrm.CamposPreenchidos: boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(Label9);
 PrincipalFrm.CamposPreenchidos(Label2);
 PrincipalFrm.CamposPreenchidos(Label5);
 PrincipalFrm.CamposPreenchidos(Label1);
 PrincipalFrm.CamposPreenchidos(Label4);
 PrincipalFrm.CamposPreenchidos(Label6);
 PrincipalFrm.CamposPreenchidos(Label7);
 PrincipalFrm.CamposPreenchidos(Label8);

 if (Trim(Edit2.Text) = '') then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label9);
   Result := False;
  end;

 if (Trim(Edit1.Text) = '') then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   Result := False;
  end;

 if (DBLookupComboBox2.KeyValue <1) then       //Posse
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label5);
   Result := False;
  end;

 if VarIsNull(currencyedit1.Value) then       //Quantidade
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label1);
   Result := False;
  end;

 if VarIsNull(currencyedit2.Value) then      //Valor Produto
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label4);
   Result := False;
  end;

 if VarIsNull(DM1.DstInventario_Itens['UF_POSSUIDOR']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label6);
   Result := False;
  end;
end;

procedure TInventario_ItensCadFrm.BitBtn1Click(Sender: TObject);
begin
 SelectFrm.Caption := 'Selecione o Produto...';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Produto;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT referencia, nome, prc_venda, est_atual');
   IBQuery1.sql.Add('FROM PRODUTOS');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TInventario_ItensCadFrm.Seleciona_Produto(Sender: TObject);
begin
 edit1.Clear;
 edit2.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit1.Text := SelectFrm.IBQuery1['NOME'];
   edit2.Text := SelectFrm.IBQuery1['REFERENCIA'];
   CurrencyEdit1.Value := SelectFrm.IBQuery1['EST_ATUAL'];
   CurrencyEdit3.Value := SelectFrm.IBQuery1['PRC_VENDA'];
   CurrencyEdit2.Value :=  CurrencyEdit3.Value * CurrencyEdit1.Value;
  end;
 selectFrm.Close;
end;

procedure TInventario_ItensCadFrm.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
  Perform(wm_nextdlgctl, 1,0);
end;

procedure TInventario_ItensCadFrm.DBGrid1TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 s := TRIM(Column.FieldName);
 with DM1.DstInventario_Itens do
  begin
   Close;
   SelectSQL.Delete(SelectSQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SelectSQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SelectSQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 Screen.Cursor := crDefault;
end;

procedure TInventario_ItensCadFrm.Edit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
  PrincipalFrm.speedbutton6.click;
end;

procedure TInventario_ItensCadFrm.DBComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key in ['/', '.', '-', '1', '2', '3', '4', '5', '6', '7', '8', '9',
   '0', #08, #09, #32, #27, #13] then
  begin
   if key = #27 then
    begin
     key := #0;
     Perform(wm_nextdlgctl, 1,0);
    end;

   if key = #13 then
    begin
     key := #0;
     PrincipalFrm.speedbutton5.click;
    end;
  end;
end;

procedure TInventario_ItensCadFrm.CurrencyEdit3Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
 CurrencyEdit2.Value :=  CurrencyEdit3.Value * CurrencyEdit1.Value;

end;

procedure TInventario_ItensCadFrm.DBLookupComboBox2Click(Sender: TObject);
begin
if not VarIsNull(DBLookupComboBox2.KeyValue) then
  case DBLookupComboBox2.KeyValue of
   1:
    begin
     DM1.DstInventario_Itens['CNPJ_POSSUIDOR']   := '';
     DM1.DstInventario_Itens['IE_EST_POSSUIDOR'] := '';
     Label7.Caption := 'CNPJ:';
     Label7.Enabled := False;
     Label8.Enabled := False;
     DBEdit5.Enabled := false;
     DBEdit6.Enabled := false;
    end;
   2:
    begin
     Label7.Caption := 'CNPJ/Empresa.';
     Label7.Enabled := True;
     Label8.Enabled := True;
     DBEdit5.Enabled := True;
     DBEdit6.Enabled := True;
    end;
   3:
    begin
     Label7.Caption := 'CNPJ/Proprietária.';
     Label7.Enabled := True;
     Label8.Enabled := True;
     DBEdit5.Enabled := True;
     DBEdit6.Enabled := True;
    end;
  end;
end;

procedure TInventario_ItensCadFrm.ZerarcampoQuantidadeparaprodutoscomquantidadenegativa1Click(
  Sender: TObject);
begin
 if application.MessageBox('Tem certeza que deseja ZERAR o campo QUANTIDADE dos produtos com quantidade NEGATIVA no inventário selecionado?',
                           'Atenção',
                           mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('update INVENTARIO_ITENS set VALOR_PRODUTO = 0 where (COD_INVENTARIO = :COD_INVENTARIO) and  (QUANTIDADE < 0)');
     Params.ByName('COD_INVENTARIO').Asinteger := dblookupcombobox1.KeyValue;
     Prepare;
     ExecQuery;

     Close;
     SQL.Clear;
     SQL.Add('update INVENTARIO_ITENS set QUANTIDADE = 0 where (COD_INVENTARIO = :COD_INVENTARIO) and  (QUANTIDADE < 0)');
     Params.ByName('COD_INVENTARIO').Asinteger := dblookupcombobox1.KeyValue;
     Prepare;
     ExecQuery;

     SQLCascadeCheck.Transaction.CommitRetaining;
    end;

   Application.messagebox('Feche a tela e abra novamente para visualizar as alterações.',
                          'Atenção',
                          mb_ok + mb_iconinformation);
  end;


end;

procedure TInventario_ItensCadFrm.EXCLUIRprodutoscomQUANTIDADEZERO1Click(
  Sender: TObject);
begin
 if application.MessageBox('Tem certeza que deseja EXCLUIR produtos com QUANTIDADE ZERO ou NEGATIVA no inventário selecionado?',
                           'Atenção',
                           mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('delete from INVENTARIO_ITENS where QUANTIDADE <= 0');
     Prepare;
     ExecQuery;

     SQLCascadeCheck.Transaction.CommitRetaining;
    end;

   Application.messagebox('Feche a tela e abra novamente para visualizar as alterações.',
                          'Atenção',
                          mb_ok + mb_iconinformation);
  end;

end;

procedure TInventario_ItensCadFrm.EXCLUIRprodutoscomSUBTOTALZERO1Click(
  Sender: TObject);
begin
 if application.MessageBox('Tem certeza que deseja EXCLUIR produtos com SUBTOTAL ZERO ou NEGATIVO no inventário selecionado?',
                           'Atenção',
                           mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('delete from INVENTARIO_ITENS where VALOR_PRODUTO <= 0');
     Prepare;
     ExecQuery;

     SQLCascadeCheck.Transaction.CommitRetaining;
    end;

   Application.messagebox('Feche a tela e abra novamente para visualizar as alterações.',
                          'Atenção',
                          mb_ok + mb_iconinformation);
  end;

end;

procedure TInventario_ItensCadFrm.DtsDstInventario_ItensDataChange(
  Sender: TObject; Field: TField);
begin
 if DM1.DstInventario_Itens.State = Dsbrowse then
  if not VarisNull(DM1.DstInventario_Itens['COD_POSSE']) then
   DBLookupComboBox2.KeyValue:= DM1.DstInventario_Itens['COD_POSSE'];
end;

procedure TInventario_ItensCadFrm.LimparCampos;
begin
 Edit1.Text := '';
 Edit2.Text := '';
 CurrencyEdit1.Clear;
 CurrencyEdit2.Clear;
 CurrencyEdit3.Clear;
end;

end.
