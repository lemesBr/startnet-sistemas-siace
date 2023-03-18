unit UnitCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ToolEdit, CurrEdit, StdCtrls, Mask,
  DBCtrls, DB, IBSQL, IBCustomDataSet;

type
  TProdCombustivelCadFrm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    DBEdit1: TDBEdit;
    DtsDstProdCombustivel: TDataSource;
    SQLCascadeCheck: TIBSQL;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label6: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    CurrencyEdit1: TCurrencyEdit;
    Label7: TLabel;
    Edit1: TEdit;
    DBEdit5: TDBEdit;
    SQLProduto: TIBSQL;
    DBGrid1: TDBGrid;
    procedure Habilita;
    Procedure New(Sender: TObject);
    Procedure Save(Sender: TObject);
    Procedure EditCancel (Sender: TObject);
    Procedure Del (Sender: TObject);
    function CamposPreenchidos: Boolean;

    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit2Enter(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdCombustivelCadFrm: TProdCombustivelCadFrm;
  editcod: string = '';

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.dfm}

procedure TProdCombustivelCadFrm.Habilita;
var
 x: integer;
begin
 case DM1.DstProdCombustivel.state of
  dsbrowse:
   begin
    PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label1);
    PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label3);
    PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label5);
    PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label6);
    CurrencyEdit1.Visible:=False;
    CurrencyEdit2.Visible:=False;
    Edit1.Visible := false;
    dbgrid1.enabled:=true;
    dbgrid1.setfocus;
    GroupBox1.enabled:=false;
    CurrencyEdit1.value:=0;
    CurrencyEdit2.value:=0;

    //--- Insere os números dos produtos no ComboBox ---
    DBCombobox1.Items.clear;
    for x:=1 to 254 do
     DBCombobox1.Items.Add(inttostr(x));
   end;

  dsinsert, dsedit:
   begin
    CurrencyEdit2.Visible:=True;
    if not VarIsnull(DM1.DstProdCombustivel['Prc_Venda']) then
     CurrencyEdit2.value:= DM1.DstProdCombustivel['Prc_Venda'];

    CurrencyEdit1.Visible:=True;
    if not Varisnull(DM1.DstProdCombustivel['EST_ATUAL']) then
     CurrencyEdit1.value:= DM1.DstProdCombustivel['EST_ATUAL'];

    Edit1.Visible := True;
    if not Varisnull(DM1.DstProdCombustivel['REFERENCIA']) then
     Edit1.Text := DM1.DstProdCombustivel['REFERENCIA'];

    dbgrid1.enabled:=false;
    groupbox1.enabled:=true;
    Edit1.SetFocus;
   end;
 end;
end;

Procedure TProdCombustivelCadFrm.New (Sender: TObject);
begin
 //--- Faz a leitura dos números dos produtos a serem retirados do ComboBox ---
 DM1.DstProdCombustivel.First;

 editcod := '';
 edit1.text := '';

 while not DM1.DstProdCombustivel.EOF do
  begin
   DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstProdCombustivel['ID_PRODUTOS']));
   DM1.DstProdCombustivel.Next;
  end;

 if dbcombobox1.Items.Count < 1 then
  begin
   Application.MessageBox('Não há mais Produtos cadastrados' + #13+
                          'Cadastre um "Produto" e só então tente cadastrar um "Bico de Bomba"' + #13#13 +
                          'Para Cadastrar um Produto, clique em:'+#13+
                          'Programa >Financeiro >Grupo Financeiro', 'Informação', mb_ok + mb_iconinformation);
   Habilita;
  end
 else
  begin
   if DM1.NewSave(DM1.DstProdCombustivel) then
    begin
//Tipo_Produto: 1 - Combustível
//              0 - Produtos de Loja
     DM1.DstProdCombustivel['TIPO_PRODUTO'] := 1;
     DBComboBox2.ItemIndex := 0;
     Habilita;
    end;
  end;
end;

Procedure TProdCombustivelCadFrm.Save (Sender: TObject);
 //--- Coloca os valores nos campos de Edição e de Inserção para salvar no Banco de Dados ---
begin
DM1.DstProdCombustivel.UpdateRecord;
 if CamposPreenchidos then
  begin
   with SQLProduto do
   begin
    Close;
    SQL.Clear;
    SQL.Add('Select REFERENCIA, NOME from PRODUTOS');
    SQL.Add('Where REFERENCIA=:REF');
    Params.ByName('REF').AsString := edit1.Text;
    ExecQuery;
   end;

   if ((SQLProduto.RecordCount <= 0) or (editcod = edit1.Text)) then   //editcod = referencia do produto editado
   begin
    DM1.DstProdCombustivel['PRC_VENDA']  := CurrencyEdit2.Value;
    DM1.DstProdCombustivel['EST_ATUAL']  := CurrencyEdit1.Value;
    DM1.DstProdCombustivel['REFERENCIA'] := edit1.Text;
    DM1.DstProdCombustivel['EST_MIN']    := 0;
    DM1.DstProdCombustivel['ENABLE_NUMSERIE']:=0;
    if DM1.newsave(DM1.DstProdCombustivel) then
     Habilita;
    editcod := '';
   end
   else begin
     ShowMessage('Referência já cadastrada!' + #13#10 +  'Digite uma outra diferente.');
     edit1.SetFocus;
     edit1.selectall;
   end;
  end

 else
  begin
   Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
                          'Atenção', mb_iconinformation+mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: '+ PrincipalFrm.caption, True);
  end;
end;


Procedure TProdCombustivelCadFrm.EditCancel (Sender: TObject);
var
 ProdutoAlterado, ID_ProdutoAlterado : integer;
begin
 if not VarIsNull(DM1.DstProdCombustivel['REFERENCIA']) then
  EditCod := DM1.DstProdCombustivel['REFERENCIA'];
 if DM1.DstProdCombustivel.State = dsBrowse then
  begin
   //--- Faz a leitura dos números dos produtos a serem retirados do ComboBox ---
   if DM1.DstProdCombustivel.RecordCount > 0 then
    begin
     if not varisnull(DM1.DstProdCombustivel['COD_PRODUTOS']) then
      begin
       ProdutoAlterado := DM1.DstProdCombustivel['COD_PRODUTOS'];
       ID_ProdutoAlterado := DM1.DstProdCombustivel['ID_PRODUTOS'];
      end;

     DM1.DstProdCombustivel.First;
     while not DM1.DstProdCombustivel.EOF do
      begin
       if DBCombobox1.Items.Strings[DBcombobox1.Items.IndexOf(DM1.DstProdCombustivel['ID_PRODUTOS'])] <> inttostr(id_ProdutoAlterado) then
        DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstProdCombustivel['ID_PRODUTOS']));
       DM1.DstProdCombustivel.Next;
      end;

     DM1.DstProdCombustivel.Locate('COD_PRODUTOS', ProdutoAlterado, []);

    end;
  end;

 if DM1.EditCancel(DM1.DstProdCombustivel) then
  begin
   Habilita;
   dbcombobox1.ItemIndex := Dbcombobox1.Items.IndexOf(DM1.DstProdCombustivel['ID_PRODUTOS'] );
  end;
end;

Procedure TProdCombustivelCadFrm.Del (Sender: TObject);
var
 Continuar : Boolean;
begin
 Continuar := True;
with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from Bico where COD_PRODUTOS = :COD_PRODUTOS');
   Params.ByName('COD_PRODUTOS').AsString := DM1.DstProdCombustivel['COD_PRODUTOS'];
   Prepare;
   ExecQuery;
  end;
 if SQLCascadeCheck.Fields[0].asinteger > 0 then
  if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString + ' Bicos relacionado(s) ao Produto - ' + Dm1.DstProdCombustivel.FieldByName('nome').asstring + #13+
                            'Todos os Bicos relacionados serão excluídos...' + #13#13+
                            'Tem certeza que deseja excluir?'),
                            'Atenção', mb_iconquestion + mb_YesNo) = idno then
   Continuar := False;
 
 if Continuar then
   DM1.Del(DM1.DstProdCombustivel);
end;

{Procedure TVendedorCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption:='Consulta de Atendente';
 ConsultaGeralListFrm.SetStrValues(DM1.DstVend, nil, 'ATENDENTE', '', ['CodVend', 'Nome', 'OBS'],
                                                 ['CodVend', 'Atendente', 'Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end; }

procedure TProdCombustivelCadFrm.DBEdit2Enter(Sender: TObject);
begin
 tdbedit(sender).color:=claqua;
end;

procedure TProdCombustivelCadFrm.DBEdit2Exit(Sender: TObject);
begin
 tdbedit(sender).color:=clwindow;
end;

procedure TProdCombustivelCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
 PrincipalFrm.speedbutton6.click;

if key = #13 then
 begin
  key := #0;
  perform(wm_nextdlgctl,0,0);
 end;
end;

procedure TProdCombustivelCadFrm.CurrencyEdit1Enter(Sender: TObject);
begin
tcurrencyedit(sender).color:=claqua;
end;

procedure TProdCombustivelCadFrm.CurrencyEdit1Exit(Sender: TObject);
begin
tcurrencyedit(sender).color:=clwindow;
end;

procedure TProdCombustivelCadFrm.CurrencyEdit1KeyPress(Sender: TObject;
  var Key: Char);
Begin
if key = #13 then
 begin
  key := #0;
  perform(wm_nextdlgctl,0,0);
 end;

if key = #27 then
 begin
  key := #0;
  perform(wm_nextdlgctl,1,0);
 end;

if key = '.' then
 key := ',';
end;

procedure TProdCombustivelCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstProdCombustivel]);
 DM1.DefSenderDtsStateChange(DM1.DstProdCombustivel);
 Habilita;
end;

procedure TProdCombustivelCadFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := DM1.CanCloseFrm(DM1.DstProdCombustivel);
end;

procedure TProdCombustivelCadFrm.CurrencyEdit2Enter(Sender: TObject);
begin
 TCurrencyEdit(sender).color:= claqua;
 //tdbedit(sender).color:=claqua;
end;

procedure TProdCombustivelCadFrm.CurrencyEdit2Exit(Sender: TObject);
begin
 TCurrencyEdit(sender).color:= clWindow;
 //tdbedit(sender).color:=clwindow;
end;

procedure TProdCombustivelCadFrm.CurrencyEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
 begin
  key := #0;
  perform(wm_nextdlgctl,0,0);
 end;

if key = #27 then
 begin
  key := #0;
  perform(wm_nextdlgctl,1,0);
 end;

if key = '.' then
 key := ',';

end;

procedure TProdCombustivelCadFrm.DBGrid1DblClick(Sender: TObject);
begin
  PrincipalFrm.SpeedButton2.Click;
end;

procedure TProdCombustivelCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 self.close;

if key = vk_delete then
 PrincipalFrm.speedbutton3.click;

if key = VK_ADD then
 PrincipalFrm.speedbutton1.click;
end;

procedure TProdCombustivelCadFrm.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
 begin
  key := #0;
  perform(wm_nextdlgctl,1,0);
 end;

if key = #13 then
 PrincipalFrm.speedbutton5.click;
end;

function TProdCombustivelCadFrm.CamposPreenchidos: Boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label1);
 PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label3);
 PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label5);
 PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label6);
 PrincipalFrm.CamposPreenchidos(ProdCombustivelCadFrm.Label7);

 if VarIsNull(DM1.DstProdCombustivel['APR_UND']) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(ProdCombustivelCadFrm.Label6);
   if DBComboBox2.CanFocus then DBComboBox2.SetFocus;
  end;

 if VarIsNull(DM1.DstProdCombustivel['ID_PRODUTOS']) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(ProdCombustivelCadFrm.Label5);
   if DBComboBox1.CanFocus then DBComboBox1.SetFocus;
  end;

 if (CurrencyEdit2.Value = 0) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(ProdCombustivelCadFrm.Label3);
   if CurrencyEdit2.CanFocus then CurrencyEdit2.SetFocus
  end;

 if VarIsNull(DM1.DstProdCombustivel['NOME']) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(ProdCombustivelCadFrm.Label1);
   if DBEdit2.CanFocus then DBEdit2.SetFocus
  end;

 if Edit1.text = '' then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(ProdCombustivelCadFrm.Label7);
   if Edit1.CanFocus then Edit1.SetFocus
  end;

end;

procedure TProdCombustivelCadFrm.DBComboBox1Enter(Sender: TObject);
begin
 TDBComboBox(Sender).color := claqua;
end;

procedure TProdCombustivelCadFrm.DBComboBox1Exit(Sender: TObject);
begin
 TDBComboBox(Sender).color := clWindow;
end;

end.
