unit UnitCadBico;

//TODO: durante a inserção, seleciona o campo produto, seleciona o campo bico, quando foco no campo obs, o campo produto some!

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, Mask, IBSQL;

type
  TBicoCadFrm = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DtsQryBomba: TDataSource;
    QryBomba: TIBQuery;
    DtsDstBico: TDataSource;
    DtsQryProdutos: TDataSource;
    QryProdutos: TIBQuery;
    SQLCascadeCheck: TIBSQL;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    QryTanque: TIBQuery;
    DtsQryTanque: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure Habilita;
    Procedure New(Sender: TObject);
    Procedure Save(Sender: TObject);
    Procedure EditCancel (Sender: TObject);
    procedure Del (Sender: TObject);
    function CamposPreenchidos: Boolean;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure QryBombaBeforeScroll(DataSet: TDataSet);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DtsDstBicoDataChange(Sender: TObject; Field: TField);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BicoCadFrm: TBicoCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.dfm}

procedure TBicoCadFrm.Habilita;
var
 x: integer;
begin
 case DM1.DstBico.State of
  dsBrowse:
   begin
    PrincipalFrm.CamposPreenchidos(BicoCadFrm.Label1);
    PrincipalFrm.CamposPreenchidos(BicoCadFrm.Label4);
    PrincipalFrm.CamposPreenchidos(BicoCadFrm.Label3);
    GroupBox1.Enabled:=False;
    Panel1.Enabled:=True;
    DBGrid1.Enabled:=True;
    DBGrid1.SetFocus;

    //--- Insere os números dos Bicos no ComboBox ---
    DBCombobox1.Items.clear;
    for x:=1 to 4 do
     DBCombobox1.Items.Add(inttostr(x));

    //--- Retorna a Query ao estado normal mostrando todos os produtos cadastrados ---
    QryProdutos.Close;
    QryProdutos.UnPrepare;
    QryProdutos.SQL.clear;
    QryProdutos.SQL.Add('select COD_PRODUTOS, NOME, ID_PRODUTOS from PRODUTOS');
    QryProdutos.SQL.Add('Order By NOME');
    QryProdutos.Prepare;
    QryProdutos.Open;
   end;
   
  dsInsert, dsEdit:
   begin
    DBGrid1.Enabled:=False;
    Panel1.Enabled:=False;
    GroupBox1.Enabled:=True;
    DBLookupComboBox2.SetFocus;
   end;
 end;
end;

procedure TBicoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstBico, BicoCadFrm.QryBomba, BicoCadFrm.QryTanque, BicoCadFrm.QryProdutos]);
 DM1.DefSenderDtsStateChange(DM1.DstBico);
 Habilita;

 //--- Testa se há Bombas Cadastradas ---
 if QryBomba.RecordCount < 1 then
  begin
   If Dm1.DstBico.state in [dsedit, dsinsert] then
    PrincipalFrm.speedbutton6.click;
    Application.MessageBox('Não há Bombas cadastradas' + #13+
                           'Cadastre uma "Bomba" e só então tente cadastrar um "Bico de Bomba"' + #13#13 +
                           'Para Cadastrar uma Bomba, clique em:'+#13+
                           'Programa >Cadastro >Bomba', 'Informação', mb_ok + mb_iconinformation);
    self.close;
    exit;
  end;

 //--- Coloca DbLookUp no primeiro registro ---
 if VarIsNull(Dblookupcombobox1.KeyValue) then
  Dblookupcombobox1.KeyValue := Dblookupcombobox1.ListSource.DataSet.Fields.FieldByName(Dblookupcombobox1.KeyField).asinteger;
end;

procedure TBicoCadFrm.New(Sender: TObject);
begin
 //--- Faz a leitura dos números dos bicos a serem retirados do ComboBox ---
 DM1.DstBico.First;
 while not DM1.DstBico.EOF do
  begin
   DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstBico['ID_BICO']));
   DM1.DstBico.Next;
  end;

 with QryProdutos do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select COD_PRODUTOS, NOME, ID_PRODUTOS from PRODUTOS');
   SQL.Add('where COD_PRODUTOS not in (select COD_PRODUTOS from BICO where COD_BOMBA = :COD_BOMBA)');
   SQL.Add('Order By NOME');
   ParamByName('COD_BOMBA').AsInteger := DBLookupComboBox1.KeyValue;
   Prepare;
   Open;
  end;

 //--- Envia mensagem de erro ao acabar a lista de produtos travando a opção de inserção ---
 if QryProdutos.RecordCount < 1 then
  begin
   Application.MessageBox('Não há mais produtos, ou nenhum produto foi cadastrado' + #13+
                          'Cadastre um "Produto" e só então tente cadastrar um "Bico de Bomba"' + #13#13 +
                          'Para Cadastrar um Produto, clique em:'+#13+
                          'Programa >Cadastro >Produto', 'Informação', mb_ok + mb_iconinformation);
  end
 else if dbcombobox1.Items.Count < 1 then
  begin
   Application.MessageBox('Não há mais Produtos cadastrados' + #13+
                          'Cadastre um "Produto" e só então tente cadastrar um "Bico de Bomba"' + #13#13 +
                          'Para Cadastrar um Produto, clique em:'+#13+
                          'Programa >Cadastro >Produto', 'Informação', mb_ok + mb_iconinformation);
  end
 else
  begin
   if DM1.NewSave(DM1.DstBico) then
    begin
     DM1.DstBico['COD_FRENTISTA'] := -1;
     DM1.DstBico['COD_TANQUE'] := -1;
    end;
  end;

 Habilita;
end;

procedure TBicoCadFrm.Save(Sender: TObject);
var
 Insere: Boolean;
begin
 DM1.DstBico.UpdateRecord;
 DM1.DstBico['COD_PRODUTOS'] := QryProdutos['COD_PRODUTOS'];
 if CamposPreenchidos then
  begin
   Insere := (DM1.DstBico.State = dsInsert);
   if DM1.NewSave(DM1.DstBico) then
    begin
     if Insere then
      begin
       with SQLCascadeCheck do
        begin
         Close;
         SQL.Clear;
         SQL.Add('Update Bomba set Qnt_Bico = Qnt_Bico + 1 where (Cod_Bomba = :Cod_Bomba)');
         Params.ByName('Cod_Bomba').Asinteger := QryBomba['Cod_Bomba'];
         Prepare;
         ExecQuery;
         Transaction.CommitRetaining;
        end;
      end;

     //Retorna os valores originais da Query de Tanques
     with QryProdutos do
      begin
       Close;
       UnPrepare;
       SQL.Clear;
       SQL.Add('select COD_PRODUTOS, NOME, ID_PRODUTOS from PRODUTOS');
       SQL.Add('Order By NOME');
       Prepare;
       Open;
      end;

     Habilita;
    end;
  end
 else
  begin
   Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
                          'Atenção', mb_iconinformation+mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: '+ PrincipalFrm.caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end
end;

procedure TBicoCadFrm.EditCancel(Sender: TObject);
var
 id_bicoalteradO, bicoalterado: integer;
begin
 if DM1.DstBico.State = dsBrowse then
  begin
   //--- Faz a leitura dos números dos bicos a serem retirados do ComboBox ---
   if DM1.DstBico.RecordCount > 0 then
    begin
     if not varisnull(DM1.DstBico['COD_BICO']) then
      begin
       BicoAlterado := DM1.DstBico['COD_BICO'];
       ID_BicoAlterado := DM1.DstBico['ID_BICO'];
      end;

     DM1.DstBico.First;
     while not DM1.DstBico.EOF do
      begin
       if DBCombobox1.Items.Strings[DBcombobox1.Items.IndexOf(DM1.DstBico['ID_BICO'])] <> inttostr(id_BicoAlterado) then
        DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstBico['ID_BICO']));
       DM1.DstBico.Next;
      end;

     DM1.DstBico.Locate('COD_BICO', BicoAlterado, []);
    end;

   //Não pode haver dois bicos com o mesmo produto em 1 bomba
   with QryProdutos do
    begin
     Close;
     UnPrepare;
     SQL.Clear;
     SQL.Add('select COD_PRODUTOS, NOME, ID_PRODUTOS from PRODUTOS');
     SQL.Add('where COD_PRODUTOS not in (select COD_PRODUTOS from BICO where COD_BOMBA = :COD_BOMBA');
     SQL.Add(' and ID_BICO <> :ID_BICO)');
     SQL.Add('Order By NOME');
     ParamByName('COD_BOMBA').AsInteger := DBLookupComboBox1.KeyValue;
     ParamByName('ID_BICO').AsInteger := BicoAlterado;
     Prepare;
     Open;
    end;
  end;

 if DM1.EditCancel(DM1.DstBico) then
  begin
   Habilita;

   dbcombobox1.ItemIndex := Dbcombobox1.Items.IndexOf(DM1.DstBico['ID_BICO'] );
  end;
end;

procedure TBicoCadFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := DM1.CanCloseFrm(DM1.DstBico);
end;

procedure TBicoCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

Procedure TBicoCadFrm.Del (Sender: TObject);
begin
 if DM1.Del(DM1.DstBico) then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Update Bomba set Qnt_Bico = Qnt_Bico - 1 where (Cod_Bomba = :Cod_Bomba)');
     Params.ByName('Cod_Bomba').Asinteger := QryBomba['Cod_Bomba'];
     Prepare;
     ExecQuery;
     Transaction.CommitRetaining;
    end;
  end;
end;

procedure TBicoCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(sender).color:=claqua;
end;

procedure TBicoCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(sender).color:=clwindow;
end;

procedure TBicoCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
   key := #0;
   perform(wm_nextdlgctl,1,0);
  end;
 if key = #13 then
   PrincipalFrm.SpeedButton5.Click;
end;

procedure TBicoCadFrm.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;
 if key = #13 then
  begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
  end;
end;

procedure TBicoCadFrm.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
   key := #0;
   perform(wm_nextdlgctl,1,0);
  end;
   if key = #13 then
  begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
  end;
end;

procedure TBicoCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
  self.close;

 if key = vk_delete then
  PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
  PrincipalFrm.speedbutton1.click;
end;

procedure TBicoCadFrm.FormCreate(Sender: TObject);
begin
 DM1.DstBico.DataSource := DtsQryBomba;
end;

procedure TBicoCadFrm.QryBombaBeforeScroll(DataSet: TDataSet);
begin
DM1.DefSenderDtsStateChange(DM1.DstBico);
end;

procedure TBicoCadFrm.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = vk_escape then
  self.close;
end;

procedure TBicoCadFrm.DBGrid1DblClick(Sender: TObject);
begin
  PrincipalFrm.SpeedButton2.Click;
end;

function TBicoCadFrm.CamposPreenchidos: Boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(BicoCadFrm.Label3);
 PrincipalFrm.CamposPreenchidos(BicoCadFrm.Label4);

 if VarIsNull(DM1.DstBico['ID_BICO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(BicoCadFrm.Label4);
   Result := False;
   if DBComboBox1.CanFocus then DBComboBox1.SetFocus;
  end;

 if VarIsNull(DM1.DstBico['COD_PRODUTOS']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(BicoCadFrm.Label3);
   Result := False;
   if DBLookupComboBox2.CanFocus then DBLookupComboBox2.SetFocus;
  end;
end;

procedure TBicoCadFrm.DtsDstBicoDataChange(Sender: TObject; Field: TField);
begin
 if not VarIsNull(DM1.DstBico['COD_BICO']) then
  begin
   DBLookupComboBox2.KeyValue := DM1.DstBico['COD_PRODUTOS'];
   if not VarIsNull(DM1.DstBico['ID_BICO']) then
    DbComboBox1.ItemIndex := DBComboBox1.Items.IndexOf(DM1.DstBico['ID_BICO']);
  end;
end;

procedure TBicoCadFrm.Label1MouseEnter(Sender: TObject);
begin
 if PrincipalFrm.BombaMnu.Visible then
  PrincipalFrm.Hyperlink_On(Sender);
end;

procedure TBicoCadFrm.Label1MouseLeave(Sender: TObject);
begin
 if PrincipalFrm.BombaMnu.Visible then
  PrincipalFrm.Hyperlink_Off(Sender);
end;

procedure TBicoCadFrm.Label1Click(Sender: TObject);
begin
 if Principalfrm.BombaMnu.visible then
  begin
   Principalfrm.BombaMnu.Click;

   if Dm1.DstBomba.state = dsbrowse then
    Dm1.DstBomba.Locate('COD_BOMBA', Dblookupcombobox1.keyvalue, []);
  end;

end;

procedure TBicoCadFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 TDBLookupComboBox(sender).color:=claqua;
end;

procedure TBicoCadFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 TDBLookupComboBox(sender).color:=clwindow;
end;

procedure TBicoCadFrm.DBComboBox1Enter(Sender: TObject);
begin
 TDBComboBox(sender).color:=claqua;
end;

procedure TBicoCadFrm.DBComboBox1Exit(Sender: TObject);
begin
 TDBComboBox(sender).color:=clwindow;
end;

end.

