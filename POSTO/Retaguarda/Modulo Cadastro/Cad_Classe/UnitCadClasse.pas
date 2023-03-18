unit UnitCadClasse;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, DB, Grids, DBGrids, Mask, DBCtrls, Placemnt, ExtCtrls,
 IBSQL;

type
 TClasseCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   DtsDstClasse: TDataSource;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit2: TDBEdit;
   DBEdit1: TDBEdit;
   SQLCascadeCheck: TIBSQL;
   FormStorage1: TFormStorage;
   procedure DBEdit2Enter(Sender: TObject);
   procedure DBEdit2Exit(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure Consulta(Sender: TObject);

   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ClasseCadFrm: TClasseCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.DFM}

procedure TClasseCadFrm.abilita;
begin
 case DM1.DstClasse.state of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(ClasseCadFrm.Label2);
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
      end;
   dsinsert, dsedit:
      begin
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       dbedit2.SetFocus;
      end;
  end;
end;

procedure TClasseCadFrm.New(Sender: TObject);
begin
 if DM1.newsave(DM1.DstClasse) then
   Abilita;
end;

procedure TClasseCadFrm.Save(Sender: TObject);
begin
 DM1.DstClasse.UpdateRecord;
 if not VarIsNull(DM1.DstClasse['Nome']) then
  begin
   if DM1.newsave(DM1.DstClasse) then
     Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(ClasseCadFrm.Label2);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
  end;
end;

procedure TClasseCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstClasse) then
   Abilita;
end;

procedure TClasseCadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
 CodClasseExcluido: integer;
begin
 Continuar := True;
 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from CADASTRO where CodClasse = :CodClasse');
   Params.ByName('CodClasse').AsString := DM1.DstClasse['CodClasse'];
   Prepare;
   ExecQuery;
  end;
 if SQLCascadeCheck.Fields[0].AsInteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
     ' Empresa/Pessoa Física relacionado(s) a Classe Cadastral - ' +
     Dm1.DstClasse.FieldByName('nome').AsString + #13 +
     'Todos as Empresas/Pessoas Físicas relacionados terão a relação perdida...' +
     #13#13 +
     'Tem certeza que deseja excluir?'),
     'Atenção', mb_iconquestion + mb_YesNo) = idNo then
     Continuar := False;

 CodClasseExcluido := DM1.DstClasse['CodClasse'];
 if Continuar then
   if DM1.Del(DM1.DstClasse) then
    begin
     with SQLCascadeCheck do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Update CADASTRO set CODCLASSE = null where (CodClasse = :CodClasse)');
       Params.ByName('CodClasse').AsInteger := CodClasseExcluido;
       Prepare;
       ExecQuery;
       Transaction.CommitRetaining;
      end;
    end;
end;

procedure TClasseCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Classe Cadastral';
 ConsultaGeralListFrm.SetStrValues(DM1.DstClasse, nil, 'CLASSE', '',
   ['CodClasse', 'Nome', 'OBS'],
   ['CodClasse',
   'Classe_Cadastral', 'Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TClasseCadFrm.DBEdit2Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TClasseCadFrm.DBEdit2Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TClasseCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstClasse]);
 DM1.DefSenderDtsStateChange(DM1.DstClasse);
 abilita;
end;

procedure TClasseCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstClasse);
end;

procedure TClasseCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;
 
 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TClasseCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   PrincipalFrm.speedbutton6.click;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TClasseCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;
end;

end.
