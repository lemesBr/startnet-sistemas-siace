unit UnitCadTanque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Grids, DBGrids,
  Mask, ExtCtrls, IBSQL, ToolEdit, CurrEdit;

type
  TTanqueCadFrm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBComboBox1: TDBComboBox;
    DtsDstTanque: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    QryProdutos: TIBQuery;
    DtsQryProdutos: TDataSource;
    SQLCascadeCheck: TIBSQL;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    procedure Habilita;
    procedure New(Sender: TObject);
    procedure Save(Sender: TObject);
    procedure EditCancel (Sender: TObject);
    procedure Del (Sender: TObject);
    function CamposPreenchidos: Boolean;
    
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure CurrencyEdit2Enter(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TanqueCadFrm: TTanqueCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitFuncoes;

{$R *.dfm}

{ TTanqueCadFrm }

procedure TTanqueCadFrm.Del(Sender: TObject);
var
 Continuar : Boolean;
begin
 Continuar := True;
 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from BICO where COD_TANQUE = :COD_TANQUE');
   Params.ByName('COD_TANQUE').AsString := DM1.DstTanque['COD_TANQUE'];
   Prepare;
   ExecQuery;
  end;
 if SQLCascadeCheck.Fields[0].asinteger > 0 then
  if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString + ' Bico(s) relacionado(s) a este Tanque - ' + Dm1.DstTanque.FieldByName('ID_TANQUE').asstring + #13+
                            'Todos os Bicos relacionados serão excluídos...' + #13+
                            'Tem certeza que deseja excluir?'),
                            'Atenção', mb_iconquestion + mb_YesNo) = idno then
   Continuar := False;

 if Continuar then
  DM1.Del(DM1.DstTanque);
end;

procedure TTanqueCadFrm.EditCancel(Sender: TObject);
var
 id_tanquealterado, tanquealterado: integer;
begin
 if DM1.DstTanque.State = dsBrowse then
  begin
   //--- Faz a leitura dos números dos tanques a serem retirados do ComboBox ---
   if DM1.DstTanque.RecordCount > 0 then
    begin
     if not varisnull(DM1.DstTanque['COD_TANQUE']) then
      begin
       tanqueAlterado := DM1.DstTanque['COD_TANQUE'];
       ID_tanqueAlterado := DM1.DstTanque['ID_TANQUE'];
      end;

     DM1.DstTanque.First;
     while not DM1.DstTanque.EOF do
      begin
       if DBCombobox1.Items.Strings[DBcombobox1.Items.IndexOf(DM1.DstTanque['ID_TANQUE'])] <> inttostr(id_tanqueAlterado) then
        DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstTanque['ID_TANQUE']));
       DM1.DstTanque.Next;
      end;

     DM1.DstTanque.Locate('COD_TANQUE', tanqueAlterado, []);

    end;
  end;

 if DM1.EditCancel(DM1.DstTanque) then
  begin
   Habilita;

   dbcombobox1.ItemIndex := Dbcombobox1.Items.IndexOf(DM1.DstTanque['ID_TANQUE'] );
  end;
end;

procedure TTanqueCadFrm.Habilita;
begin
 case DM1.DstTanque.State of
  dsBrowse:
   begin
     PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label1);
     PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label2);
     PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label3);
     PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label5);

     CurrencyEdit1.Visible:=False;
     CurrencyEdit2.Visible:=False;
     CurrencyEdit1.value:=0;
     CurrencyEdit2.value:=0;

     DBGrid1.Enabled := True;
     DBGrid1.SetFocus;
     GroupBox1.Enabled := False;
   end;
  dsInsert, dsEdit:
   begin
    CurrencyEdit2.Visible:=True;
    if not VarIsnull(DM1.DstProduto['LITROS_ATUAL']) then
     CurrencyEdit2.value:= DM1.DstProduto['LITROS_ATUAL'];

    CurrencyEdit1.Visible:=True;
    if not Varisnull(DM1.DstProduto['LITROS']) then
     CurrencyEdit1.value:= DM1.DstProduto['LITROS'];

    DBGrid1.Enabled := False;
    GroupBox1.Enabled := True;
    DBComboBox1.SetFocus;
   end;
 end;
end;

procedure TTanqueCadFrm.New(Sender: TObject);
begin
 //--- Faz a leitura dos números dos tanques a serem retirados do ComboBox ---
 DM1.DstTanque.First;
 while not DM1.DstTanque.EOF do
  begin
   DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstTanque['ID_TANQUE']));
   DM1.DstTanque.Next;
  end;

 if DM1.NewSave(DM1.DstTanque) then
  begin
   DM1.DstTanque['COD_PRODUTOS'] := 0;
   DM1.DstTanque['LITROS'] := 0;
   Habilita;
  end;
end;

procedure TTanqueCadFrm.Save(Sender: TObject);
begin
 DM1.DstTanque.UpdateRecord;
 if DM1.DstTanque.FieldByName('LITROS_ATUAL').AsInteger <= DM1.DstTanque.FieldByName('LITROS').AsInteger then
  begin
   if CamposPreenchidos then
    begin
     DM1.DstProduto['LITROS_ATUAL']:=CurrencyEdit2.Value;
     DM1.DstProduto['LITROS']:=CurrencyEdit1.Value;
     if DM1.NewSave(DM1.DstTanque) then
      Habilita;
    end
   else
    begin
     Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
                            'Atenção', mb_iconinformation+mb_ok);
     logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: '+ PrincipalFrm.caption, True);
     logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
    end
  end
 else
  begin
   Application.messagebox('Volume atual não pode ser maior que Capacidade, verifique o preenchimento dos campos em negrito e tente novamente...',
                          'Atenção', mb_iconinformation+mb_ok);
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   PrincipalFrm.CamposNaoPreenchidos(Label5);
   if DBEdit3.CanFocus then DBEdit3.SetFocus;
  end
end;

procedure TTanqueCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstTanque, TanqueCadFrm.QryProdutos]);
 DM1.DefSenderDtsStateChange(DM1.DstTanque);
 Habilita;
end;

procedure TTanqueCadFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstTanque);
end;

procedure TTanqueCadFrm.DBComboBox1KeyPress(Sender: TObject;
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

procedure TTanqueCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TTanqueCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
   key := #0;
   perform(wm_nextdlgctl,1,0);
  end;
 if key = #13 then
   PrincipalFrm.SpeedButton5.Click;
end;

procedure TTanqueCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
  self.close;

 if key = vk_delete then
  PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
  PrincipalFrm.speedbutton1.click;
end;

procedure TTanqueCadFrm.DBGrid1DblClick(Sender: TObject);
begin
  PrincipalFrm.SpeedButton2.Click;
end;

procedure TTanqueCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

function TTanqueCadFrm.CamposPreenchidos: Boolean;
begin
 Result := True ;
 PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label1);
 PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label2);
 PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label3);
 PrincipalFrm.CamposPreenchidos(TanqueCadFrm.Label5);

 if VarIsNull(DM1.DstTanque['COD_PRODUTOS']) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(TanqueCadFrm.Label3);
   if DBLookupComboBox1.CanFocus then DBLookupComboBox1.SetFocus;
  end;

 if VarIsNull(DM1.DstTanque['LITROS']) or (DM1.DstTanque.FieldByName('LITROS').AsFloat = 0) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(TanqueCadFrm.Label2);
   if DBEdit1.CanFocus then DBEdit1.SetFocus;
  end;

 if VarIsNull(DM1.DstTanque['ID_TANQUE']) then
  begin
   Result := False;
   PrincipalFrm.CamposNaoPreenchidos(TanqueCadFrm.Label1);
   if DBComboBox1.CanFocus then DBComboBox1.SetFocus;
  end;
end;

procedure TTanqueCadFrm.DBComboBox1Enter(Sender: TObject);
begin
 TDBComboBox(Sender).color := claqua;
end;

procedure TTanqueCadFrm.DBComboBox1Exit(Sender: TObject);
begin
 TDBComboBox(Sender).color := clWindow;
end;

procedure TTanqueCadFrm.DBEdit3Enter(Sender: TObject);
begin
 tdbedit(sender).color:= claqua;
end;

procedure TTanqueCadFrm.DBEdit3Exit(Sender: TObject);
begin
 tdbedit(sender).color:= clWindow;
end;

procedure TTanqueCadFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 TDBLookupComboBox(Sender).color := claqua;
end;

procedure TTanqueCadFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 TDBLookupComboBox(Sender).color := clWindow;
end;

procedure TTanqueCadFrm.CurrencyEdit2Enter(Sender: TObject);
begin
tcurrencyedit(sender).color:=claqua;
end;

procedure TTanqueCadFrm.CurrencyEdit2Exit(Sender: TObject);
begin
tcurrencyedit(sender).color:=clwindow;
end;

procedure TTanqueCadFrm.CurrencyEdit2KeyPress(Sender: TObject;
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

end.
