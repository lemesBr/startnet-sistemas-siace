unit Unit1cadprod;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 Buttons, StdCtrls, DBCtrls, ToolEdit, CurrEdit, Mask, ExtCtrls, RXDBCtrl,
 RXClock, RXCtrls, DB, Grids, DBTables, DBGrids, MrgMngr, MRUList,
 PageMngr, Menus, variants,
 IBCustomDataSet, IBQuery, IBTable, IBSQL, ComCtrls, inifiles, dateutils,
 Placemnt;

type
 TProdutoCadFrm = class(TForm)
   PageControl1: TPageControl;
   TabSheet1: TTabSheet;
   GroupBox1: TGroupBox;
   Label1: TLabel;
   Label3: TLabel;
   GroupBox2: TGroupBox;
   Label18: TLabel;
   Label19: TLabel;
   CurrencyEdit3: TCurrencyEdit;
   CurrencyEdit2: TCurrencyEdit;
   GroupBox3: TGroupBox;
   Label9: TLabel;
   Label21: TLabel;
   Label8: TLabel;
   Label11: TLabel;
   CurrencyEdit8: TCurrencyEdit;
   CurrencyEdit10: TCurrencyEdit;
   CurrencyEdit9: TCurrencyEdit;
   CurrencyEdit11: TCurrencyEdit;
   GroupBox4: TGroupBox;
   Label12: TLabel;
   Label22: TLabel;
   Label10: TLabel;
   Label24: TLabel;
   CurrencyEdit6: TCurrencyEdit;
   CurrencyEdit4: TCurrencyEdit;
   CurrencyEdit5: TCurrencyEdit;
   CurrencyEdit7: TCurrencyEdit;
   GroupBox5: TGroupBox;
   Label7: TLabel;
   Label13: TLabel;
   Label17: TLabel;
   DBEdit5: TDBEdit;
   DBEdit8: TDBEdit;
   CurrencyEdit1: TCurrencyEdit;
   Edit3: TEdit;
   Panel3: TPanel;
   Label5: TLabel;
   Label23: TLabel;
   Label15: TLabel;
   Label6: TLabel;
   Label14: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   DBLookupComboBox2: TDBLookupComboBox;
   DBLookupComboBox3: TDBLookupComboBox;
   DBDateEdit1: TDBDateEdit;
   BitBtn2: TBitBtn;
   BitBtn1: TBitBtn;
   Edit2: TEdit;
   Edit4: TEdit;
   Edit1: TEdit;
   Timer1: TTimer;
   PopupMenu1: TPopupMenu;
   Comeco1: TMenuItem;
   Qualquer1: TMenuItem;
   DtsDstProduto: TDataSource;
   Qry1Prod: TIBQuery;
   DtsQry1Prod: TDataSource;
   DtsGrupoP: TDataSource;
   DtsSubGrupoP: TDataSource;
   QryGrupoP: TIBQuery;
   QrySubGrupoP: TIBQuery;
   DtsQryTrib: TDataSource;
   QryTrib: TIBQuery;
   SQLProduto: TIBSQL;
   SQLFornec: TIBSQL;
   sqlSERIE: TIBSQL;
   Panel1: TPanel;
   DBGrid1: TDBGrid;
   Panel2: TPanel;
   Label4: TLabel;
   SQLCascadeCheck: TIBSQL;
   DBEdit9: TDBEdit;
   Label31: TLabel;
   FormStorage1: TFormStorage;
   TabSheet3: TTabSheet;
   GroupBox9: TGroupBox;
   DtsQrySitTrib: TDataSource;
   QrySitTrib: TIBQuery;
   DstQryClFis: TDataSource;
   QryClFis: TIBQuery;
   Label34: TLabel;
   Label35: TLabel;
   Label36: TLabel;
   Label37: TLabel;
   CurrencyEdit13: TCurrencyEdit;
   CurrencyEdit14: TCurrencyEdit;
   DBLookupComboBox4: TDBLookupComboBox;
   DBLookupComboBox5: TDBLookupComboBox;
   Label20: TLabel;
   DBEdit3: TDBEdit;
   Label27: TLabel;
   CurrencyEdit15: TCurrencyEdit;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure DBLookupComboBox1Enter(Sender: TObject);
   procedure DBLookupComboBox1Exit(Sender: TObject);
   procedure Edit3KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
   procedure Edit1Change(Sender: TObject);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure Editcancel(Sender: TObject);
   procedure Sql;
   procedure Mostrar;

   procedure FormActivate(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure Edit3Change(Sender: TObject);
   procedure Timer1Timer(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Comeco1Click(Sender: TObject);
   procedure Qualquer1Click(Sender: TObject);
   procedure CurrencyEdit8Change(Sender: TObject);
   procedure CurrencyEdit7Change(Sender: TObject);
   procedure Edit3KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit3Change(Sender: TObject);
   procedure Edit3Enter(Sender: TObject);
   procedure BitBtn2Click(Sender: TObject);
   procedure Seleciona_Forn(Sender: TObject);
   procedure Seleciona_Fabri(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure Edit2KeyPress(Sender: TObject; var Key: char);
   procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit10KeyPress(Sender: TObject; var Key: char);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1KeyPress(Sender: TObject; var Key: char);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure SalvarCampos;
   procedure LimparCampo;
   procedure Edit4Exit(Sender: TObject);
   procedure Edit4KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit16KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: char);
   procedure TabSheet1Enter(Sender: TObject);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid2KeyPress(Sender: TObject; var Key: char);
   procedure Label4Click(Sender: TObject);
   procedure Label4MouseLeave(Sender: TObject);
   procedure Label5Click(Sender: TObject);
   procedure Consulta;
   procedure Edit2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
   procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBDateEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit7KeyPress(Sender: TObject; var Key: char);
   procedure DBDateEdit1Exit(Sender: TObject);
   procedure DBLookupComboBox5KeyPress(Sender: TObject; var Key: char);
   procedure Label4MouseEnter(Sender: TObject);
   procedure Label5MouseEnter(Sender: TObject);
   procedure Label5MouseLeave(Sender: TObject);
   procedure Label6MouseEnter(Sender: TObject);
   procedure Label6MouseLeave(Sender: TObject);
   procedure Label6Click(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ArquivoIniSerie: TIniFile;
 ProdutoCadFrm: TProdutoCadFrm;
 editcod, COD_PRODUTOS, grupop, numser: string;
 Nserie: boolean;
 quant: integer;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitSelect, UnitFuncoes,
 UnitCad_GrupoProd, UnitCad_SubGrupoProd, Unit2, UnitConsultaGeral;
 //UnitListEntradaN;

{$R *.DFM}

procedure TProdutoCadFrm.Abilita;
begin
 if DM1.DstProduto.state = dsbrowse then
  begin
   if DM1.DstProduto['COD_PRODUTOS'] = 0 then
    begin
     DM1.HandleBtn(True, False, False, False, False, True, True, True, True, True, True);
    end
   else
    DM1.HandleBtn(True, False, True, False, True, True, True, True, True, True, True);

   Panel3.Enabled    := False;
   groupbox2.Enabled := False;
   groupbox3.Enabled := False;
   groupbox4.Enabled := False;
   groupbox5.Enabled := False;
   groupbox9.Enabled := False;
   BitBtn1.Enabled   := False;
   BitBtn2.Enabled   := False;
   PrincipalFrm.StatusBar1.Panels.Items[1].Text := 'Status: Consultando...';
  end
 else
  begin
   BitBtn1.Enabled := True;
   BitBtn2.Enabled := True;

   if DM1.DstProduto.state = dsedit then
    begin
     edit1.OnChange := nil;
     edit1.Text := DM1.DstProduto['NOME'];
     edit1.OnChange := edit1change;
     Mostrar;
     PrincipalFrm.StatusBar1.Panels.Items[1].Text := 'Status: Editando...';
    end;

   if DM1.DstProduto.state = dsinsert then
    PrincipalFrm.StatusBar1.Panels.Items[1].Text := 'Status: Inserindo...';

   panel1.Visible := False;
   panel3.Enabled := True;
   groupbox2.Enabled := True;
   groupbox3.Enabled := True;
   groupbox4.Enabled := True;
   groupbox5.Enabled := True;
   groupbox9.Enabled := True;
  end;

 if not Edit3.Focused then 
  if Edit1.CanFocus then
   edit1.SetFocus;
end;

procedure TProdutoCadFrm.New(Sender: TObject);
begin
 PageControl1.ActivePage := TabSheet1;
 if DM1.newsave(DM1.DstProduto) then
  begin
   limparcampo;
   DM1.DstProduto['APR_UND'] := Und_Default;
//Tipo_Produto: 1 - Combustível
//              0 - Produtos de Loja   
   DM1.DstProduto['TIPO_PRODUTO'] := 0;
   DM1.DstProduto['ENABLE_NUMSERIE'] := 0;
   Abilita;
  end;
end;

procedure TProdutoCadFrm.Del(Sender: TObject);
begin
 if PageControl1.ActivePage = TabSheet1 then
  begin
     if DM1.Del(DM1.DstProduto) then
      begin
       Abilita;
       edit1.Clear;
       DM1.DstProduto.First;
      end;
  end;
end;

procedure TProdutoCadFrm.Save(Sender: TObject);
begin
 DM1.DstProduto.UpdateRecord;
 if DM1.DstProduto.State = dsinsert then
  begin
   SQLProduto.Close;
   SQLProduto.SQL.Clear;
   SQLProduto.SQL.Add('Select REFERENCIA, NOME from PRODUTOS');
   SQLProduto.SQL.Add('Where (REFERENCIA=:REF) and (Produtos.COD_PRODUTOS<>0)');
   SQLProduto.Params.ByName('REF').AsString := edit3.Text;
   SQLProduto.ExecQuery;

   if SQLProduto.RecordCount <= 0 then
    SalvarCampos
   else
    begin
     if SQLProduto.Fields[0].AsString = edit3.Text then
       ShowMessage('Referência já cadastrada!' + #13#10 +
         'Digite uma outra diferente.')
     else if SQLProduto.Fields[1].AsString = edit3.Text then
       ShowMessage('Referência já cadastrada como Número de Série para o Produto:' +
         #13#10 + SQLProduto.Fields[2].AsString + #13#10 + 'Digite uma outra diferente.');
     edit3.SetFocus;
     edit3.selectall;
    end;
  end;

 if DM1.DstProduto.State = dsedit then
  begin
   if editcod <> edit3.Text then
    begin
     SQLProduto.Close;
     SQLProduto.SQL.Clear;
     SQLProduto.SQL.Add('Select REFERENCIA, NOME from PRODUTOS');
     SQLProduto.SQL.Add('Where (REFERENCIA=:REF) and (Produtos.COD_PRODUTOS<>0)');
     SQLProduto.Params.ByName('REF').AsString := edit3.Text;
     SQLProduto.ExecQuery;

     if SQLProduto.RecordCount <= 0 then
       SalvarCampos
     else
      begin
       if SQLProduto.Fields[0].AsString = edit3.Text then
         ShowMessage('Referência já cadastrada!' + #13#10 +
           'Digite uma outra diferente.')
       else if SQLProduto.Fields[1].AsString = edit3.Text then
         ShowMessage('Referência já cadastrada como Número de Série para o Produto:' +
           #13#10 + SQLProduto.Fields[2].AsString + #13#10 + 'Digite uma outra diferente.');
       edit3.SetFocus;
       edit3.selectall;
      end;
    end
   else
     SalvarCampos;
  end;
end;

procedure TProdutoCadFrm.Editcancel(Sender: TObject);
var
 CanEdit: boolean;
begin
 CanEdit := True;
 EditCod := edit3.Text;
 if DM1.DstProduto.state = dsbrowse then
   if DM1.DstProduto['COD_PRODUTOS'] = 0 then
    begin
     CanEdit := False;
     application.MessageBox('Nenhum Produto selecionado' + #13 +
       'Selecione um registro e tente novamente',
       'Atenção', mb_ok + mb_iconexclamation);
     edit1.SetFocus;
    end;

 if CanEdit then
   if DM1.EditCancel(DM1.DstProduto) then
    begin
     Abilita;
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label10);
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label3);
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label1);
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label8);
    end;

 if DM1.DstProduto.state = dsbrowse then
  begin
   DM1.DstProduto.First;
   edit1.Text := '';
   edit2.Text := '';
   edit4.Text := '';
   currencyedit1.Clear;
   currencyedit2.Clear;
   currencyedit3.Clear;
   currencyedit4.Clear;
   currencyedit5.Clear;
   currencyedit6.Clear;
   currencyedit7.Clear;
   currencyedit8.Clear;
   currencyedit9.Clear;
   currencyedit10.Clear;
  end;
end;


procedure TProdutoCadFrm.SQL;
begin
 if qualquer1.Checked then
  begin
   with Qry1Prod do
    begin
     Close;
     sql.Clear;
     sql.add('Select COD_PRODUTOS, REFERENCIA, Nome from Produtos where UPPER(NOME) LIKE UPPER(:1) and (TIPO_PRODUTO = 0)');
     SQL.Add(' order by NOME');
     params[0].AsString := '%' + edit1.Text + '%';
     Open;
     if Qry1Prod.RecordCount <> 0 then
      begin
       panel1.Visible := True;
      end;
    end;
  end
 else
  begin
   with Qry1Prod do
    begin
     Close;
     sql.Clear;
     sql.add('Select COD_PRODUTOS,REFERENCIA,Nome from Produtos where UPPER(NOME) LIKE UPPER(:1) and (TIPO_PRODUTO = 0)');
     params[0].AsString := edit1.Text + '%';
     Open;
     if Qry1Prod.RecordCount <> 0 then
      begin
       panel1.Visible := True;
      end
     else
       panel1.Visible := False;
    end;
  end;
end;

procedure TProdutoCadFrm.Mostrar;
begin                                       //faz as atualizacoes nescessarias aos componentes não Dbaware
 edit1.onchange := nil;
 edit3.onchange := nil;
 edit1.Text := DM1.DstProduto['NOME'];
 edit3.Text := DM1.DstProduto['REFERENCIA'];
 edit1.OnChange := edit1change;
 edit3.onchange := edit3change;

 if DM1.DstProduto['PRM_PRC'] <> null then
   currencyedit3.Text := floattostr(DM1.DstProduto['PRM_PRC'])
 else
   currencyedit3.Value := 0;
 if DM1.DstProduto['PRC_CUSTO'] <> null then
   currencyedit8.Text := floattostr(DM1.DstProduto['PRC_CUSTO'])
 else
   currencyedit8.Value := 0;
 if DM1.DstProduto['PRC_VENDA'] <> null then
   currencyedit10.Text := floattostr(DM1.DstProduto['PRC_VENDA'])
 else
   currencyedit10.Value := 0;
 if DM1.DstProduto['VALOR_LUCRO'] <> null then
   currencyedit9.Text := floattostr(DM1.DstProduto['Valor_Lucro'])
 else
   currencyedit9.Value := 0;
 if DM1.DstProduto['ALIQUOTA_ICMS'] <> null then
   currencyedit14.Text := floattostr(DM1.DstProduto['ALIQUOTA_ICMS'])
 else
   currencyedit14.Value := 0;
 if DM1.DstProduto['ALIQUOTA_IPI'] <> null then
   currencyedit13.Text := floattostr(DM1.DstProduto['ALIQUOTA_IPI'])
 else
   currencyedit13.Value := 0;
 if (DM1.DstProduto['EST_ATUAL'] <> null) then
   currencyedit7.Value := DM1.DstProduto['EST_ATUAL']
 else
   currencyedit7.Value := 0;
 if DM1.DstProduto['Est_IDEAL'] <> null then
   currencyedit5.Text := floattostr(DM1.DstProduto['Est_IDEAL'])
 else
   currencyedit5.Value := 0;
 if DM1.DstProduto['EST_MIN'] <> null then
   currencyedit4.Text := floattostr(DM1.DstProduto['EST_MIN'])
 else
   currencyedit4.Value := 0;
 if DM1.DstProduto['PRM_QUANT'] <> null then
   currencyedit2.Text := floattostr(DM1.DstProduto['PRM_QUANT'])
 else
   currencyedit2.Value := 0;
 if DM1.DstProduto['APR_QUANT'] <> null then
   currencyedit1.Text := floattostr(DM1.DstProduto['APR_QUANT'])
 else
   currencyedit1.Value := 0;

 edit4.Clear;
 edit2.Clear;

 if DM1.DstProduto['COD_CLI_FABRICANTE'] > 0 then
  begin
   with SQLFornec do
    begin
     Close;
     SQL.Clear;
     SQL.Add('select NOME from CADASTRO');
     SQL.Add('where CODCLI = :cod');
     ParamByName('cod').AsInteger := DM1.DstProduto['COD_CLI_FABRICANTE'];
     ExecQuery;
    end;
   //   if not (varisnull(SQLFornec.Fields[0].AsVariant)) or (SQLFornec.Fields[0].AsInteger <> 0) then
   if not varisnull(SQLFornec.Fields[0].AsVariant) then
     edit4.Text := SQLFornec.Fields[0].AsString;
  end;

 if DM1.DstProduto['COD_CLI_FORNECEDOR'] > 0 then
  begin
   with SQLFornec do
    begin
     Close;
     SQL.Clear;
     SQL.Add('select NOME from CADASTRO');
     SQL.Add('where CODCLI = :cod1');
     ParamByName('cod1').AsInteger := DM1.DstProduto['COD_CLI_FORNECEDOR'];
     ExecQuery;
    end;
   //   if not (varisnull(SQLFornec.Fields[0].AsVariant)) or (SQLFornec.Fields[0].AsInteger <> 0) then
   if not varisnull(SQLFornec.Fields[0].AsVariant) then
     edit2.Text := SQLFornec.Fields[0].AsString;
  end;
end;

procedure TProdutoCadFrm.DBGrid1DblClick(Sender: TObject);
begin
 if Qry1Prod.RecordCount > 0 then
  begin
   DM1.DstProduto.DisableControls;
   DM1.DstProduto.Locate('COD_PRODUTOS', Qry1Prod['COD_PRODUTOS'], []);
   Mostrar;
   DM1.DstProduto.EnableControls;
   panel1.Visible := False;
   timer1.Enabled := False;
   abilita;
   edit1.SetFocus;
  end;
end;

procedure TProdutoCadFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstProduto);
 DM1.CloseIBArray([DM1.DstProduto, ProdutoCadFrm.QryGrupoP,
   ProdutoCadFrm.QrySubGrupoP, ProdutoCadFrm.QryTrib, ProdutoCadFrm.QrySitTrib,
   ProdutoCadFrm.QryClFis]);
end;

procedure TProdutoCadFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TProdutoCadFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 if dblookupcombobox1.keyvalue <> null then
   grupop := dblookupcombobox1.Text;

 TDBlookupComboBox(Sender).color := claqua;
end;

procedure TProdutoCadFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 if dblookupcombobox1.Text <> grupop then
   dblookupcombobox2.keyvalue := null;

 TDBlookupComboBox(Sender).color := clwindow;
end;

procedure TProdutoCadFrm.Edit3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
  begin
   case DM1.DstProduto.State of
     dsbrowse:
        begin
         if edit3.Text <> '' then
          begin
           if edit3.Text = DM1.DstProduto['REFERENCIA'] then
            begin
             Perform(wm_nextdlgctl, 0,0);
            end
           else
            begin
             DM1.DstProduto.DisableControls;
             QrySubGrupoP.disablecontrols;
             QryGrupoP.disablecontrols;
             if not DM1.DstProduto.Locate('REFERENCIA', Edit3.Text, []) then
              begin
               DM1.DstProduto.EnableControls;
               QryGrupoP.EnableControls;
               QrySubGrupoP.EnableControls;
               application.messagebox(PChar(edit3.Text + #13#10 + 'Referência não cadastrada.'),
                 'Atenção!', mb_Ok + mb_iconerror);
               Edit3.Text := '';
              end
             else
              begin
               DM1.DstProduto.EnableControls;
               QryGrupoP.EnableControls;
               QrySubGrupoP.EnableControls;
               Mostrar;
               edit1.SetFocus;
              end;
             edit3.SelectAll;
            end;
          end
         else
           Perform(wm_nextdlgctl, 0,0);
         abilita;
        end;

     dsinsert, dsedit:    //look to see if the Ref already exists
       Perform(wm_nextdlgctl, 0,0);
    end;
  end;

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
 timer1.Enabled := False
end;

procedure TProdutoCadFrm.Edit1Change(Sender: TObject);
begin
 timer1.Enabled := False;
 timer1.Enabled := True;
end;

procedure TProdutoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstProduto, ProdutoCadFrm.QryGrupoP,
                  ProdutoCadFrm.QrySubGrupoP,ProdutoCadFrm.QryTrib, ProdutoCadFrm.QrySitTrib,
                  ProdutoCadFrm.QryClFis]);
 DM1.DefSenderDtsStateChange(DM1.DstProduto);
 abilita;
end;

procedure TProdutoCadFrm.Edit3Change(Sender: TObject);
begin
 if DM1.DstProduto.state = dsbrowse then
  begin
   edit1.onchange := nil;
   edit1.Text := '';
   edit2.Text := '';
   edit4.Text := '';
   edit1.onchange := edit1change;
   currencyedit1.Clear;
   currencyedit2.Clear;
   currencyedit3.Clear;
   currencyedit4.Clear;
   currencyedit5.Clear;
   currencyedit6.Clear;
   currencyedit7.Clear;
   currencyedit8.Clear;
   currencyedit9.Clear;
   currencyedit10.Clear;
   currencyedit13.Clear;
   currencyedit14.Clear;
   DM1.DstProduto.First;
   edit3.OnChange := nil;
  end;
end;

procedure TProdutoCadFrm.Timer1Timer(Sender: TObject);
begin
 if DM1.DstProduto.State = dsbrowse then
  begin
   Edit3.OnChange := nil;
   edit3.Text := '';
   quant := 0;
   edit3.onchange := edit3change;
   if edit1.Text <> '' then
    begin
     Sql;
    end
   else
    begin
     limparcampo;
     panel1.Visible := False;
     DM1.DstProduto.First;
    end;
   abilita;
  end;
 timer1.Enabled := False;
end;

procedure TProdutoCadFrm.Edit1Enter(Sender: TObject);
begin
 if DM1.DstProduto.state = dsbrowse then
   principalfrm.statusbar1.panels[0].Text := 'Digite o Nome do Produto que Deseja Procurar.';

 Tedit(Sender).color := claqua;
end;

procedure TProdutoCadFrm.Comeco1Click(Sender: TObject);
begin
 comeco1.Checked := True;
end;

procedure TProdutoCadFrm.Qualquer1Click(Sender: TObject);
begin
 qualquer1.Checked := True;
end;

procedure TProdutoCadFrm.CurrencyEdit8Change(Sender: TObject);
begin
 if (currencyedit8.Value <> 0) and (currencyedit9.Value <> 0) then
   currencyedit11.Value := currencyedit8.Value +
     (currencyedit8.Value * (currencyedit9.Value / 100))
 else
   currencyedit11.Value := 0;

 if (currencyedit7.Value <> 0) and (currencyedit8.Value <> 0) then
   currencyedit6.Value := currencyedit7.Value * currencyedit8.Value
 else
   currencyedit6.Value := 0;
end;

procedure TProdutoCadFrm.CurrencyEdit7Change(Sender: TObject);
begin
 if (currencyedit7.Value <> 0) and (currencyedit8.Value <> 0) then
   currencyedit6.Value := currencyedit7.Value * currencyedit8.Value
 else
   currencyedit6.Value := 0;
end;

procedure TProdutoCadFrm.Edit3KeyPress(Sender: TObject; var Key: char);
begin      
 //if not (key in ['1','2','3','4','5','6','7','8','9','0',#08,#09]) then
 // key:=#0;
end;

procedure TProdutoCadFrm.CurrencyEdit3Change(Sender: TObject);
begin
 if currencyedit10.Value > 0 then
   if currencyedit3.Value > currencyedit10.Value then
     principalfrm.statusbar1.Panels.Items[0].Text :=
       'Atenção: Preço de PROMOÇÃO digitado maior que o preço de VENDA normal.';
end;

procedure TProdutoCadFrm.Edit3Enter(Sender: TObject);
begin
 if DM1.DstProduto.state = dsbrowse then
   principalfrm.statusbar1.panels[0].Text :=
     'Digite a Referência do Produto que Deseja Procurar + <Enter>.';

 Tedit(Sender).color := claqua;
end;

procedure TProdutoCadFrm.BitBtn2Click(Sender: TObject);
begin
 if (BitBtn2.Focused) or (edit2.Focused) then
  begin
   SelectFrm.Caption := 'Selecione o Fornecedor';
   //seta procedure de acao para botao de OK de SelectFrm
   SelectFrm.SpeedButton1.OnClick := Seleciona_Forn;
  end;
 if (BitBtn1.Focused) or (edit4.Focused) then
  begin
   Selectfrm.Caption := 'Selecione o Fabricante';
   //seta procedure de acao para botao de OK de SelectFrm
   SelectFrm.SpeedButton1.OnClick := Seleciona_Fabri;
  end;
 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT CODCLI, NOME');
   IBQuery1.sql.Add('FROM CADASTRO WHERE CODCLI = 0 or TIPO = ' + quotedstr('F'));
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Open;
  end;

 SelectFrm.ShowModal;
 if edit2.Focused then
   edit4.SetFocus
 else if edit4.Focused then
   CurrencyEdit1.SetFocus;
end;

procedure TProdutoCadFrm.Seleciona_Forn(Sender: TObject);
begin
 edit2.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
   edit2.Text := SelectFrm.IBQuery1['NOME'];
 DM1.DstProduto['COD_CLI_FORNECEDOR'] := SelectFrm.ibquery1['CODCLI'];
 selectFrm.Close;
end;

procedure TProdutoCadFrm.Seleciona_Fabri(Sender: TObject);
begin
 edit4.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
   edit4.Text := SelectFrm.IBQuery1['NOME'];
 DM1.DstProduto['COD_CLI_FABRICANTE'] := SelectFrm.ibquery1['CODCLI'];
 selectFrm.Close;
end;

procedure TProdutoCadFrm.Edit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #$20 then
   BitBtn2Click(self);

 if key = #27 then  //escape
   Perform(wm_nextdlgctl, 1,0);

 if key = #13 then // enter
   Edit4.SetFocus;

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2Click(self);
  end;
end;

procedure TProdutoCadFrm.DBLookupComboBox1KeyPress(Sender: TObject;
 var Key: char);
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

 if key = '.' then
   key := ',';
end;

procedure TProdutoCadFrm.CurrencyEdit10KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then  //escape
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then // enter
   principalfrm.speedbutton5.click;

 if key = '.' then
   key := ',';

 if key = '-' then
   key := #0;
end;

procedure TProdutoCadFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
  begin
   key := #0;
   if DM1.DstProduto.state = dsbrowse then
    begin
     if edit1.Text <> '' then
      begin
       if (edit1.Text = DM1.DstProduto['NOME']) and (panel1.Visible = False) then
         Perform(wm_nextdlgctl, 0,0)
       else
        begin
         if Qry1Prod.RecordCount = 1 then
           dbgrid1dblclick(self)       //abre registro
         else
          begin
           if Qry1Prod.RecordCount <> 0 then
            begin
             if dbgrid1.CanFocus then
               dbgrid1.SetFocus;
            end
           else
            begin
             Panel1.Visible := False;
             application.messagebox('Produto não Cadastrado.', 'Atenção!',
               mb_ok + mb_iconerror);
             if edit1.CanFocus then
               edit1.SetFocus;
            end;
          end;
        end;
      end
     else
       Perform(wm_nextdlgctl, 0,0);
    end
   else
     Perform(wm_nextdlgctl, 0,0);
  end;

 if key = #27 then
  begin
   key := #0;
   if DM1.DstProduto.state = dsbrowse then
    begin
     if panel1.Visible = False then
       self.Close
     else
      begin
       if edit1.CanFocus then
         edit1.SetFocus;
       panel1.Visible := False;
       edit1.Text := '';
      end;
    end
   else
     principalfrm.speedbutton6.click;
  end;
end;

procedure TProdutoCadFrm.DBGrid1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
  begin
   dbgrid1dblclick(self);
  end;

 if key = #27 then
  begin
   edit1.SetFocus;
   Panel1.Visible := False;
   edit1.Text := '';
  end;
end;

procedure TProdutoCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TProdutoCadFrm.SalvarCampos;
begin
 PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label3);
 PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label1);
 PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label8);
 PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label10);
 PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label7);
 if not ((CurrencyEdit2.Value <> 0) and (CurrencyEdit3.Value = 0)) then
  begin
   if (trim(edit1.Text) <> '') and (trim(edit3.Text) <> '') and
     (currencyedit10.Value >= 0) and (DBedit5.Text <> '') then
    begin
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label3);
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label1);
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label8);
     PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label10);

     //if (currencyedit7.Value >= 0) then                   //testa se quantidade negativa
      //begin
       DM1.DstProduto['Nome'] := edit1.Text;
       DM1.DstProduto['REFERENCIA'] := edit3.Text;
       DM1.DstProduto['PRC_VENDA'] := currencyedit10.Value;

       if not varisnull(currencyedit1.Value) then
         DM1.DstProduto['APR_QUANT'] := currencyedit1.Value;
       if not varisnull(currencyedit2.Value) then
         DM1.DstProduto['PRM_QUANT'] := currencyedit2.Value;
       if not varisnull(currencyedit3.Value) then
         DM1.DstProduto['PRM_PRC'] := currencyedit3.Value;
       if not varisnull(currencyedit4.Value) then
         DM1.DstProduto['EST_MIN'] := currencyedit4.Value;
       if not varisnull(currencyedit5.Value) then
         DM1.DstProduto['EST_IDEAL'] := currencyedit5.Value;
       if not varisnull(currencyedit7.Value) then
         DM1.DstProduto['EST_ATUAL'] := currencyedit7.Value;
       if not varisnull(currencyedit8.Value) then
         DM1.DstProduto['PRC_CUSTO'] := currencyedit8.Value;
       if not varisnull(currencyedit9.Value) then
         DM1.DstProduto['Valor_Lucro'] := currencyedit9.Value;
       if not varisnull(currencyedit13.Value) then
         DM1.DstProduto['Aliquota_IPI'] := currencyedit13.Value;
       if not varisnull(currencyedit14.Value) then
         DM1.DstProduto['Aliquota_ICMS'] := currencyedit14.Value;
       if not varisnull(currencyedit15.Value) then
         DM1.DstProduto['Aliquota_ICMS_Subst'] := currencyedit15.Value;

       if DM1.newsave(DM1.DstProduto) then
        begin
         limparcampo;
         Abilita;
        end;
      //end
     //else
       //Application.messagebox('Quantidade não pode ser negativa', 'Atenção',
         //mb_iconinformation + mb_ok);
    end
   else
    begin
     if (edit1.Text = '') then
       PrincipalFrm.CamposNaoPreenchidos(ProdutoCadFrm.Label3)
     else
       PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label3);
     if (edit3.Text = '') then
       PrincipalFrm.CamposNaoPreenchidos(ProdutoCadFrm.Label1)
     else
       PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label1);
     if (CurrencyEdit10.Value <= 0) then
       PrincipalFrm.CamposNaoPreenchidos(ProdutoCadFrm.Label8)
     else
       PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label8);
     if (CurrencyEdit7.Value < 0) then
       PrincipalFrm.CamposNaoPreenchidos(ProdutoCadFrm.Label10)
     else
       PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label10);
     if (DBedit5.Text = '') then
       PrincipalFrm.CamposNaoPreenchidos(ProdutoCadFrm.Label7)
     else
       PrincipalFrm.CamposPreenchidos(ProdutoCadFrm.Label7);

     Application.messagebox(
       'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
       'Atenção', mb_iconinformation + mb_ok);
    end;
  end
 else
   Application.messagebox('Preço de Promoção não pode ser zero', 'Atenção',
     mb_iconinformation + mb_ok);
end;

procedure TProdutoCadFrm.LimparCampo;
begin
 edit3.Text := '';
 edit2.Text := '';
 edit4.Text := '';
 currencyedit1.Clear;
 currencyedit2.Clear;
 currencyedit3.Clear;
 currencyedit4.Clear;
 currencyedit5.Clear;
 currencyedit6.Clear;
 currencyedit7.Clear;
 currencyedit8.Clear;
 currencyedit9.Clear;
 currencyedit10.Clear;
 currencyedit13.Clear;
 currencyedit14.Clear;
 currencyedit15.Clear;
 quant := 0;
end;

procedure TProdutoCadFrm.Edit4Exit(Sender: TObject);
begin
 Tdbedit(Sender).color := clwindow;
end;

procedure TProdutoCadFrm.Edit4KeyPress(Sender: TObject; var Key: char);
begin
 if key = #$20 then
  begin
   key := #0;
   BitBtn2Click(self);
  end;
 if key = #27 then  //escape
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then // enter
  begin
   CurrencyEdit1.SetFocus;
  end;
 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2.Click;
  end;
end;

procedure TProdutoCadFrm.DBEdit16KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   edit2.SetFocus;
  end;
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoCadFrm.CurrencyEdit1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   edit4.SetFocus;
  end;
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if key = '.' then
   key := ',';

 if key = '-' then
   key := #0;
end;

procedure TProdutoCadFrm.FormCreate(Sender: TObject);
var
 Path: string;
begin
 timer1.Enabled := false;
 timer1.Interval := Tempo_Digitacao;
 try
   Path := CreateDefaultIniFile;
   ArquivoIniSerie := TIniFile.Create(Path);
   Nserie := ArquivoIniSerie.ReadBool('Nserie', 'EnableNSerieRef', False);
 except
   {}
  end;
 ArquivoIniSerie.Free;

 Panel1.Left := 36;
 Panel1.Top := 92;
 PageControl1.ActivePage := TabSheet1;
end;

procedure TProdutoCadFrm.TabSheet1Enter(Sender: TObject);
begin
 Abilita;
end;

procedure TProdutoCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0)
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoCadFrm.DBGrid2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then  //escape
  begin
   key := #0;
   PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure TProdutoCadFrm.Label4Click(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  begin
   Principalfrm.GrupoProdMnu.click;

   if Dm1.DstGrupoP.state = dsbrowse then
    Dm1.DstGrupoP.Locate('CODGRUPOP', Dblookupcombobox1.keyvalue, []);
  end;
end;

procedure TProdutoCadFrm.Label4MouseLeave(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TProdutoCadFrm.Label5Click(Sender: TObject);
begin
 if Principalfrm.SubGrupoProdMnu.visible then
  Principalfrm.SubGrupoProdMnu.click;
end;

procedure TProdutoCadFrm.Consulta;
begin
 PrincipalFrm.ListProdMnuClick(Self);
end;

procedure TProdutoCadFrm.Edit2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_delete then
  begin
   tedit(Sender).Text := '';
   if Sender = Edit2 then
     DM1.DstProduto['COD_CLI_FORNECEDOR'] := null
   else if Sender = edit4 then
     DM1.DstProduto['COD_CLI_FABRICANTE'] := null;
  end;
end;

procedure TProdutoCadFrm.CurrencyEdit2KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then  //escape
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then // enter
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if key = '.' then
   key := ',';

 if key = '-' then
   key := #0;
end;

procedure TProdutoCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then  //escape
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then // enter
  begin
   key := #0;
   principalfrm.speedbutton5.click;
  end;
end;

procedure TProdutoCadFrm.DBDateEdit2KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0)
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoCadFrm.DBEdit7KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   principalfrm.speedbutton6.click;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoCadFrm.DBDateEdit1Exit(Sender: TObject);
begin
 try
   DBDateEdit1.CheckValidDate;
   DBDateEdit1.Color := clwindow;
 except
   DBDateEdit1.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TProdutoCadFrm.DBLookupComboBox5KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   PrincipalFrm.SpeedButton5.Click;
  end;

 if key = '.' then
   key := ',';
end;

procedure TProdutoCadFrm.Label4MouseEnter(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoCadFrm.Label5MouseEnter(Sender: TObject);
begin
 if Principalfrm.SubGrupoProdMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoCadFrm.Label5MouseLeave(Sender: TObject);
begin
 if Principalfrm.SubGrupoProdMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TProdutoCadFrm.Label6MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoCadFrm.Label6MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TProdutoCadFrm.Label6Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

end.
