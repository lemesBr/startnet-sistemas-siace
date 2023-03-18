unit UnitCadFrentista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, db, ComCtrls, Buttons, ExtCtrls,
  CurrEdit, ToolEdit, Variants, IBSQL;
                      
type
  TFrentistaCadFrm = class(TForm)
    DBGrid1: TDBGrid;
    DtsDstFrentista: TDataSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    CurrencyEdit1: TCurrencyEdit;
    SQLCascadeCheck: TIBSQL;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure Habilita;
    Procedure New(Sender: TObject);
    Procedure Save(Sender: TObject);
    Procedure EditCancel (Sender: TObject);
    //Procedure Consulta(Sender: TObject);
    Procedure Del (Sender: TObject);

    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrentistaCadFrm: TFrentistaCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.DFM}

procedure tFrentistaCadFrm.Habilita;
begin
 case DM1.DstFrentista.state of
  dsbrowse:
   begin
    PrincipalFrm.CamposPreenchidos(FrentistaCadFrm.Label2);
    currencyedit1.Visible:=false;
    dbgrid1.enabled:=true;
    dbgrid1.setfocus;
    groupbox1.enabled:=false;
    currencyedit1.value:=0;
   end;
  dsinsert, dsedit:
   begin
    currencyedit1.Visible:=true;
    if not VarIsnull(DM1.DstFrentista['Comissao']) then
     currencyedit1.value := DM1.DstFrentista['Comissao'];
    dbgrid1.enabled := false;
    groupbox1.enabled := true;
    dbedit2.setfocus;
   end;
 end;
end;

Procedure tFrentistaCadFrm.New (Sender: TObject);
begin
 if DM1.newsave(DM1.DstFrentista) then
  begin
   DM1.DstFrentista['ID_FRENTISTA'] := 0;
   Habilita;
  end;
end;

Procedure TFrentistaCadFrm.Save (Sender: TObject);
begin
DM1.DstFrentista.UpdateRecord;
 if not VarIsNull(DM1.DstFrentista['Nome']) and not VarIsnull(currencyedit1.value) then
  begin
   DM1.DstFrentista['Comissao']:=currencyedit1.value;
   if DM1.newsave(DM1.DstFrentista) then
    Habilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(FrentistaCadFrm.Label2);
   Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
                          'Atenção', mb_iconinformation+mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: '+ PrincipalFrm.caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
   if VarIsNull(DM1.DstFrentista['Nome']) then
    (if DBEdit2.CanFocus then DBEdit2.SetFocus)
  end;
end;


Procedure tFrentistaCadFrm.EditCancel (Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstFrentista) then
  Habilita;
end;

Procedure TFrentistaCadFrm.Del (Sender: TObject);
var
 Continuar : Boolean;
 CodFrentistaExcluido : integer;
begin
Continuar := True;
with SQLCascadeCheck do
 begin
  Close;
  SQL.Clear;
  SQL.Add('Select count(*) from Bomba where CodFrentista = :CodFrentista');
  Params.ByName('CodFrentista').AsString := DM1.DstFrentista['CodFrentista'];
  Prepare;
  ExecQuery;
 end;
if SQLCascadeCheck.Fields[0].asinteger > 0 then
 if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString + ' Bomba(s) Relacionada(s) ao Frentista - ' + Dm1.DstFrentista.FieldByName('nome').asstring + #13+
                           'Todos os Lançamentos relacionados terão a relação perdida...' + #13#13+
                           'Tem certeza que deseja excluir?'),
                           'Atenção', mb_iconquestion + mb_YesNo) = idno then
  Continuar := False;

CodFrentistaExcluido := DM1.DstFrentista['CodFrentista'];
 if DM1.Del(DM1.DstFrentista) then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Update Bomba set CODFrentista = null where (CodFrentista = :CodFrentista)');
     Params.ByName('CodFrentista').Asinteger := CodFrentistaExcluido;
     Prepare;
     ExecQuery;
     Transaction.CommitRetaining;
    end;
  end;
end;

{Procedure TVendedorCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption:='Consulta de Atendente';
 ConsultaGeralListFrm.SetStrValues(DM1.DstVend, nil, 'ATENDENTE', '', ['CodVend', 'Nome', 'OBS'],
                                                 ['CodVend', 'Atendente', 'Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end; }

procedure TFrentistaCadFrm.DBEdit2Enter(Sender: TObject);
begin
 tdbedit(sender).color:=claqua;
end;

procedure TFrentistaCadFrm.DBEdit2Exit(Sender: TObject);
begin
 tdbedit(sender).color:=clwindow;
end;

procedure TFrentistaCadFrm.CurrencyEdit1Enter(Sender: TObject);
begin
 TCurrencyEdit(sender).color:= claqua;
// currencyedit1.color:=claqua;
end;

procedure TFrentistaCadFrm.CurrencyEdit1Exit(Sender: TObject);
begin
 TCurrencyEdit(sender).color:= clWindow;
// currencyedit1.color:=clwindow;
end;

procedure TFrentistaCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstFrentista]);
 DM1.DefSenderDtsStateChange(DM1.DstFrentista);
 Habilita;
end;

procedure TFrentistaCadFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= DM1.CanCloseFrm(DM1.DstFrentista);
end;

procedure TFrentistaCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 self.close;

if key = vk_delete then
 PrincipalFrm.speedbutton3.click;

if key = VK_ADD then
 PrincipalFrm.speedbutton1.click;

end;

procedure TFrentistaCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
 PrincipalFrm.speedbutton6.click;

if key = #13 then
 begin
  key := #0;
  perform(wm_nextdlgctl,0,0);
 end;
end;

procedure TFrentistaCadFrm.CurrencyEdit1KeyPress(Sender: TObject;
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

procedure TFrentistaCadFrm.DBGrid1DblClick(Sender: TObject);
begin
  PrincipalFrm.SpeedButton2.Click;  
end;

procedure TFrentistaCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
   key := #0;
   perform(wm_nextdlgctl,1,0);
  end;
 if key = #13 then
   PrincipalFrm.SpeedButton5.Click;
end;

end.
