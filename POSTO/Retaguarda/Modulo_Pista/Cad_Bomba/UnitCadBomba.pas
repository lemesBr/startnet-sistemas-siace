unit UnitCadBomba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, IBSQL,
  IBCustomDataSet, IBQuery;

type
  TBombaCadFrm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DtsDstBomba: TDataSource;
    DBText1: TDBText;
    SQLCascadeCheck: TIBSQL;
    Label3: TLabel;
    DtsQryFrentista: TDataSource;
    QryFrentista: TIBQuery;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DtsQryTanque: TDataSource;
    QryTanque: TIBQuery;
    CheckBox1: TCheckBox;
    procedure Habilita;
    procedure New(Sender: TObject);
    procedure Save(Sender: TObject);
    procedure EditCancel (Sender: TObject);
    procedure Del (Sender: TObject);
    function CamposPreenchidos: Boolean;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DtsDstBombaDataChange(Sender: TObject; Field: TField);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BombaCadFrm: TBombaCadFrm;

implementation

{$R *.dfm}

uses
  UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

procedure TBombaCadFrm.Habilita;
var
 x: integer;
begin
 case DM1.DstBomba.State of
  dsBrowse:
   begin
     PrincipalFrm.CamposPreenchidos(BombaCadFrm.Label1);
     DBGrid1.Enabled := True;
     DBGrid1.SetFocus;
     GroupBox1.Enabled := False;

     //--- Insere os números das Bombas no ComboBox ---
     //TODO: Este valor depende do número de bombas disponíveis na tela de monitoria
     //TODO: Este valor depende do número de bombas vendido ao cliente (programar no)
     DBCombobox1.Items.clear;
     for x := 1 to 20 do
      DBCombobox1.Items.Add(inttostr(x));
   end;

  dsInsert, dsEdit:
   begin
     DBGrid1.Enabled := False;
     GroupBox1.Enabled := True;
     DBComboBox1.Enabled := True;
     DBComboBox1.SetFocus;
   end;
 end;
end;

procedure TBombaCadFrm.New(Sender: TObject);
begin
 //Remove os numeros das bombas ja cadastradas
 DM1.DstBomba.First;
 while not DM1.DstBomba.EOF do
  begin
   DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstBomba['ID_BOMBA']));
   DM1.DstBomba.Next;
  end;

 if DM1.NewSave(DM1.DstBomba) then
  begin
   DM1.DstBomba['QNT_BICO'] := 0;
   DM1.DstBomba['AUTO_AUTORIZA'] := 1;
   Habilita;
  end;
end;

procedure TBombaCadFrm.Save(Sender: TObject);
begin
DM1.DstBomba.UpdateRecord;
 if CamposPreenchidos then
  begin
   if CheckBox1.Checked then
    begin
     DM1.DstBomba['AUTO_AUTORIZA'] := 1;
    end
   else
     DM1.DstBomba['AUTO_AUTORIZA'] := 0;

   if DM1.NewSave(DM1.DstBomba) then
    begin
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

procedure TBombaCadFrm.EditCancel(Sender: TObject);
var
 id_bombaalterada, bombaalterada: integer;
begin
 if DM1.DstBomba.State = dsBrowse then
  begin
   //--- Faz a leitura dos números das bombas a serem retirados do ComboBox ---
   if DM1.DstBomba.RecordCount > 0 then
    begin
     if not varisnull(DM1.DstBomba['COD_BOMBA']) then
      begin
       BombaAlterada := DM1.DstBomba['COD_BOMBA'];
       ID_BombaAlterada := DM1.DstBomba['ID_BOMBA'];
      end;

     DM1.DstBomba.First;
     while not DM1.DstBomba.EOF do
      begin
       if DBCombobox1.Items.Strings[DBcombobox1.Items.IndexOf(DM1.DstBomba['ID_BOMBA'])] <> inttostr(id_BombaAlterada) then
        DBCombobox1.Items.Delete(DBcombobox1.Items.IndexOf(DM1.DstBomba['ID_BOMBA']));
       DM1.DstBomba.Next;
      end;

     DM1.DstBomba.Locate('COD_BOMBA', BombaAlterada, []);

    end;
  end;

  if DM1.EditCancel(DM1.DstBomba) then
   begin
    Habilita;

    dbcombobox1.ItemIndex := Dbcombobox1.Items.IndexOf(DM1.DstBomba['ID_BOMBA'] );
   end;
end;

procedure TBombaCadFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := DM1.CanCloseFrm(DM1.DstBomba);
end;

procedure TBombaCadFrm.DBEdit1Enter(Sender: TObject);
begin
tdbedit(sender).color:=claqua;
end;

procedure TBombaCadFrm.DBEdit1Exit(Sender: TObject);
begin
tdbedit(sender).color:=clwindow;
end;

procedure TBombaCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;
 if key = #13 then
  begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
  end;
end;

procedure TBombaCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstBomba, BombaCadFrm.QryFrentista]);
 DM1.DefSenderDtsStateChange(DM1.DstBomba);
 Habilita;
end;

procedure TBombaCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 self.close;

if key = vk_delete then
 PrincipalFrm.speedbutton3.click;

if key = VK_ADD then
 PrincipalFrm.speedbutton1.click;
end;

Procedure TBombaCadFrm.Del (Sender: TObject);
var
 Continuar : Boolean;
begin
 Continuar := True;
with SQLCascadeCheck do
 begin
  Close;
  SQL.Clear;
  SQL.Add('Select count(*) from BICO where Cod_Bomba = :Cod_Bomba');
  Params.ByName('Cod_Bomba').AsString := DM1.DstBomba['Cod_Bomba'];
  Prepare;
  ExecQuery;
 end;
if SQLCascadeCheck.Fields[0].asinteger > 0 then
 if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString + ' Bico(s) relacionado(s) a Bomba Nº ' + Dm1.DstBomba.FieldByName('ID_BOMBA').asstring + '.' + #13+
                           'Todos os Bicos relacionados serão excluídos...' + #13+
                           'Tem certeza que deseja excluir?'),
                           'Atenção', mb_iconquestion + mb_YesNo) = idno then
  Continuar := False;

if Continuar then
 DM1.Del(DM1.DstBomba);
end;

procedure TBombaCadFrm.DBLookupComboBox1KeyPress(Sender: TObject;
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
end;

procedure TBombaCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

procedure TBombaCadFrm.DBGrid1DblClick(Sender: TObject);
begin
  PrincipalFrm.SpeedButton2.Click;
end;

procedure TBombaCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
 begin
  key := #0;
  perform(wm_nextdlgctl,1,0);
 end;
if key = #13 then
 PrincipalFrm.SpeedButton5.Click;
end;

procedure TBombaCadFrm.DtsDstBombaDataChange(Sender: TObject;
  Field: TField);
begin
 CheckBox1.Checked := (DM1.DstBomba['AUTO_AUTORIZA'] = 1);
end;

procedure TBombaCadFrm.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   PrincipalFrm.SpeedButton6.Click;
  end;

 if key = #13 then
  begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
  end;
end;

function TBombaCadFrm.CamposPreenchidos: Boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(BombaCadFrm.Label1);

 if VarIsNull(DM1.DstBomba['ID_BOMBA']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(BombaCadFrm.Label1);
   Result := False;
   if DBComboBox1.CanFocus then DBComboBox1.SetFocus;
  end;
end;

procedure TBombaCadFrm.DBEdit2Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TBombaCadFrm.DBEdit2Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow
end;

procedure TBombaCadFrm.DBComboBox1Enter(Sender: TObject);
begin
 TDBComboBox(Sender).color := claqua;
end;

procedure TBombaCadFrm.DBComboBox1Exit(Sender: TObject);
begin
 TDBComboBox(Sender).color := clwindow
end;

procedure TBombaCadFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 TDBLookupComboBox(Sender).color := clwindow
end;

procedure TBombaCadFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 TDBLookupComboBox(Sender).color := claqua;
end;

end.
