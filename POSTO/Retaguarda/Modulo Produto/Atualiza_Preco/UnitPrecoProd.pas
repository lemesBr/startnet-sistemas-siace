unit UnitPrecoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBSQL, StdCtrls, Mask, ToolEdit,
  CurrEdit, ExtCtrls, DBCtrls, Buttons, Grids, DBGrids;

type
  TProdPrecoFrm = class(TForm)
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DstQrySubGrupoP: TDataSource;
    DstQryECF: TDataSource;
    DstQryPreco: TDataSource;
    SQLUpdate: TIBSQL;
    QryPreco: TIBQuery;
    DstQryGrupoP: TDataSource;
    QryGrupoP: TIBQuery;
    QrySubGrupoP: TIBQuery;
    QryECF: TIBQuery;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    QrySubGrupoPCODGRUPOP: TIntegerField;
    QrySubGrupoPNOME: TIBStringField;
    QryECFCODECF: TIntegerField;
    QryECFNOME: TIBStringField;
    QryGrupoPCODGRUPOP: TIntegerField;
    QryGrupoPNOME: TIBStringField;
    Label6: TLabel;
    Panel7: TPanel;
    Panel6: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    QryPrecoCOD_PRODUTOS: TIntegerField;
    QryPrecoNOME: TIBStringField;
    QryPrecoFABRICANTE: TIBStringField;
    QryPrecoFORNECEDOR: TIBStringField;
    QryPrecoPRC_CUSTO: TIBBCDField;
    QryPrecoPRC_VENDA: TIBBCDField;
    QryPrecoVALOR_LUCRO: TIBBCDField;
    QryPrecoSUBGRUPO: TIBStringField;
    QryPrecoGRUPO: TIBStringField;
    QryPrecoECF: TIBStringField;
    GroupBox2: TGroupBox;
    CurrencyEdit1: TCurrencyEdit;
    AlterarBtn: TBitBtn;
    RadioGroup1: TRadioGroup;
    DBGrid1: TDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure Seleciona_Fornecedor(Sender: TObject);
    procedure Seleciona_Fabricante(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

    procedure Gerar;
    procedure Limpar;
    procedure AlterarBtnClick(Sender: TObject);

    procedure ResizeGrid(Sender: TObject);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdPrecoFrm: TProdPrecoFrm;
  OrderbyStr: string;
  Cod_Fabricante, Cod_Fornecedor: integer;

implementation

uses UnitDataM1, UnitSelect, UnitFrmPrincipal;

{$R *.dfm}

procedure TProdPrecoFrm.BitBtn2Click(Sender: TObject);
begin
 if (BitBtn1.Focused) or (edit1.Focused) then
  begin
   Selectfrm.Caption := 'Selecione o Fornecedor';
   //seta procedure de acao para botao de OK de SelectFrm
   SelectFrm.SpeedButton1.OnClick := ProdPrecoFrm.Seleciona_Fornecedor;
  end;
 if (BitBtn2.Focused) or (edit2.Focused) then
  begin
   Selectfrm.Caption := 'Selecione o Fabricante';
   //seta procedure de acao para botao de OK de SelectFrm
   SelectFrm.SpeedButton1.OnClick := ProdPrecoFrm.Seleciona_Fabricante;
  end;
 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT CODCLI, NOME');
   IBQuery1.sql.Add('FROM CADASTRO WHERE CODCLI > 0');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Open;
  end;

 SelectFrm.ShowModal;
 if edit2.Focused then
   edit2.SetFocus
 else if edit1.Focused then
   Edit1.SetFocus;
end;

procedure TProdPrecoFrm.Seleciona_Fabricante(Sender: TObject);
begin
edit2.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit2.Text := SelectFrm.IBQuery1['NOME'];
   Cod_Fabricante := SelectFrm.IBQuery1['CODCLI'];
  end;
 selectFrm.Close;
end;

procedure TProdPrecoFrm.Seleciona_Fornecedor(Sender: TObject);
begin
edit1.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit1.Text := SelectFrm.IBQuery1['NOME'];
   Cod_Fornecedor := SelectFrm.IBQuery1['CODCLI'];
  end;
 selectFrm.Close;
end;

procedure TProdPrecoFrm.FormActivate(Sender: TObject);
begin

 DM1.OpenIBArray([ProdPrecoFrm.QryGrupoP,ProdPrecoFrm.QrySubGrupoP,ProdPrecoFrm.QryECF]);
 DM1.DefSenderDtsStateChange(ProdPrecoFrm.QryPreco);
end;

procedure TProdPrecoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Action := Dm1.CanCloseFrm(DM1.DstProduto);
 Action := cafree;
 DM1.CloseIBArray([ProdPrecoFrm.QryPreco,ProdPrecoFrm.QryGrupoP,
                   ProdPrecoFrm.QrySubGrupoP,ProdPrecoFrm.QryECF]);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
end;

procedure TProdPrecoFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TProdPrecoFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 Tdateedit(Sender).color := claqua;
end;

procedure TProdPrecoFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TProdPrecoFrm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
 if key = #27 then
   self.Close;
end;

procedure TProdPrecoFrm.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
 if key = #27 then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TProdPrecoFrm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PrincipalFrm.SpeedButton7.Click;
  end;

 if key = #$20 then
   BitBtn2Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2Click(self);
  end;
end;

procedure TProdPrecoFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 perform(wm_nextdlgctl,1,0);
end;

procedure TProdPrecoFrm.DBGrid1TitleClick(Column: TColumn);
var
 s: string;
begin
  screen.cursor := crHourGlass;
 s := Column.FieldName;
 with QryPreco do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 screen.cursor := crDefault;
end;

procedure TProdPrecoFrm.Limpar;
begin
 DBLookupComboBox1.SetFocus;
 DBLookupComboBox1.KeyValue := null;
 DBLookupComboBox2.KeyValue := null;
 DBLookupComboBox3.KeyValue := null;
 AlterarBtn.Enabled := False;
 CurrencyEdit1.Text := '';
 Edit1.Text := '';
 Edit2.Text := '';
 ResizeGrid(SpeedButton3);
 DBGrid1.Visible := False;
 Panel7.Caption := '   Listagem de Produto';
 Panel6.Caption := '   Listagem de Produto';
 QryPreco.close;
 QryPreco.UnPrepare;
 DM1.DefSenderDtsStateChange(ProdPrecoFrm.QryPreco);
end;

procedure TProdPrecoFrm.Gerar;
begin
  with QryPreco do
   begin
    Close;
    UnPrepare;
    sql.Clear;
    sql.add('select PRODUTOS.COD_PRODUTOS,PRODUTOS.NOME,PRODUTOS.NOME FABRICANTE,');
    sql.add('CADASTRO.NOME FORNECEDOR,PRODUTOS.PRC_CUSTO, PRODUTOS.PRC_VENDA,');
    sql.add('PRODUTOS.VALOR_LUCRO,SUBGRUPOP.NOME SUBGRUPO, GRUPOP.NOME GRUPO,TRIBECF.NOME ECF');
    sql.add('from PRODUTOS');
    sql.add('left outer join CADASTRO on (PRODUTOS.COD_CLI_FORNECEDOR = CADASTRO.CODCLI)');
    sql.add('left outer join CADASTRO on (PRODUTOS.COD_CLI_FABRICANTE = CADASTRO.CODCLI)');
    sql.add('left outer join GRUPOP on (PRODUTOS.COD_GRUPOP = GRUPOP.CODGRUPOP)');
    sql.add('left outer join SUBGRUPOP on (PRODUTOS.COD_SUBGRUPOP = SUBGRUPOP.CODSUBGRUPOP)');
    sql.add('left outer join TRIBECF on (PRODUTOS.COD_ECF = TRIBECF.CODECF)');
    sql.add('where PRODUTOS.COD_PRODUTOS <> 0');

    //---------------------por Grupo---------------------------------------------
    if dblookupcombobox1.keyvalue <> null then
     begin
      sql.add('and CODGRUPOP = :GrupoP');
      params.parambyname('GrupoP').AsInteger := DBLookupComboBox1.KeyValue;
     end;
   //---------------por SubGrupo-----------------------------
   if dblookupcombobox2.keyvalue <> null then
    begin
     sql.add('and CODSUBGRUPOP = :SUBGRUPOP');
     params.parambyname('SUBGRUPOP').AsInteger := dblookupcombobox2.keyvalue;
    end;
   //---------------por SubGrupo-----------------------------
   if dblookupcombobox3.keyvalue <> null then
    begin
     sql.add('and COD_ECF = :ECF');
     params.parambyname('ECF').AsInteger := dblookupcombobox3.keyvalue;
    end;
   //---------------por Fornecedor---------------------------
   if edit1.Text <> '' then
    begin
     sql.add('and COD_CLI_FORNECEDOR = :Fornecedor');
     params.parambyname('Fornecedor').AsInteger := Cod_Fornecedor;
    end;
   //---------------por Fabricante---------------------------
   if edit2.Text <> '' then
    begin
     sql.add('and COD_CLI_FABRICANTE = :Fabricante');
     params.parambyname('Fabricante').AsInteger := Cod_Fabricante;
    end;

    sql.add('ORDER BY PRODUTOS.COD_PRODUTOS');
    OrderbyStr := 'ORDER BY PRODUTOS.COD_PRODUTOS';

    Prepare;
    Open;
   end;

 if QryPreco.RecordCount > 0 then
  begin
   DBGrid1.Visible := True;
   AlterarBtn.Enabled := True;
   Panel6.Caption := '  Registro(s) Encontrado(s)';
  end
 else
  begin
   DBLookupComboBox1.SetFocus;
   AlterarBtn.Enabled := False;
   DBGrid1.Visible := false;
   panel6.Caption  := '  Nenhum Registro Encontrado';
  end;
   DM1.DefSenderDtsStateChange(ProdPrecoFrm.QryPreco);
  if dbgrid1.CanFocus then
   dbgrid1.SetFocus;
end;

procedure TProdPrecoFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_delete then
  begin
   tedit(Sender).Text := '';
  end;
end;

procedure TProdPrecoFrm.Edit1KeyPress(Sender: TObject; var Key: Char);
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

 if key = #$20 then
   BitBtn2Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2Click(self);
  end;
end;

procedure TProdPrecoFrm.AlterarBtnClick(Sender: TObject);
begin
 with SQLUpdate do
  begin
   Close;
   SQL.Clear;
   DecimalSeparator := '.';
   if RadioGroup1.ItemIndex = 0 then
    begin
     SQL.Add('update PRODUTOS set PRC_VENDA = PRC_VENDA + (PRC_VENDA * ' + FormatCurr('0.00',CurrencyEdit1.value/100) + ')');
    end
   else
    SQL.Add('update PRODUTOS set PRC_VENDA = PRC_VENDA + ' + FloatToStr(CurrencyEdit1.Value));
   SQL.Add('where PRODUTOS.COD_PRODUTOS <> 0');

//---------------------por Grupo---------------------------------------------
   if dblookupcombobox1.keyvalue <> null then
    sql.add('and PRODUTOS.COD_GRUPOP = ' + IntToStr(DBLookupComboBox1.KeyValue));
//---------------por SubGrupo-----------------------------
   if dblookupcombobox2.keyvalue <> null then
     sql.add('and PRODUTOS.COD_SUBGRUPOP = ' + IntToStr(DBLookupComboBox2.KeyValue));
//---------------por SubGrupo-----------------------------
   if dblookupcombobox3.keyvalue <> null then
     sql.add('and PRODUTOS.COD_ECF = ' + IntToStr(DBLookupComboBox3.KeyValue));
//---------------por Fornecedor---------------------------
   if edit1.Text <> '' then
     sql.add('and PRODUTOS.COD_CLI_FORNECEDOR = ' + IntToStr(Cod_Fornecedor));
//---------------por Fabricante---------------------------
   if edit2.Text <> '' then
     sql.add('and PRODUTOS.COD_CLI_FABRICANTE = ' + IntToStr(Cod_Fabricante));

   Prepare;
   ExecQuery;
   ProdPrecoFrm.Gerar;
   if application.messagebox('Deseja Salvar os ajustes?' + #13#13 +
   'Atenção:' + #13 +
   'Os ajustes de preço ocorrerão em todos os produtos deste filtro',
   'Atenção!', mb_YesNo + mb_iconquestion) = idYes then
    begin
     Transaction.CommitRetaining;
     ProdPrecoFrm.Gerar;
    end
    else
     begin
      Transaction.RollbackRetaining;
      ProdPrecoFrm.Gerar;
     end;
  end;
  DecimalSeparator := ',';
end;

procedure TProdPrecoFrm.ResizeGrid(Sender: TObject);
const
 MaxWidth: integer = 721;
 NormalWidth: integer = 409;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel7.Width - (MaxWidth div 10) >= NormalWidth then
      begin
       panel7.Width := panel7.Width - (MaxWidth div 10);
       panel7.Left := panel7.Left + (MaxWidth div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel7.Width + (MaxWidth div 10) <= MaxWidth then
      begin
       panel7.Width := panel7.Width + (MaxWidth div 10);
       panel7.left := panel7.Left - (MaxWidth div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel7.left := panel7.left + (panel7.Width - NormalWidth);
     panel7.Width := NormalWidth;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel7.left := panel7.left - (MaxWidth - panel7.Width);
     panel7.Width := MaxWidth;
    end;

   speedbutton2.Visible := panel7.Width < MaxWidth;
   speedbutton4.Visible := panel7.Width < MaxWidth;
   speedbutton1.Visible := panel7.Width > NormalWidth;
   speedbutton3.Visible := panel7.Width > NormalWidth;
   lockwindowupdate(0);
  end;
end;

procedure TProdPrecoFrm.CurrencyEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   AlterarBtn.Click;
  end;
end;

procedure TProdPrecoFrm.DBLookupComboBox1Click(Sender: TObject);
begin
 DBGrid1.Visible := False;
 QryPreco.close;
 QryPreco.UnPrepare;
 DM1.DefSenderDtsStateChange(ProdPrecoFrm.QryPreco);
 Panel7.Caption := '   Listagem de Produto'; 
end;

end.

