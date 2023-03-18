unit UnitCad_GrupoProd;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, IBCustomDataSet,
 ExtCtrls, IBSQL, Placemnt;

type
 TProdutoGrupoCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   DtsDstGrupoP: TDataSource;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   SQLCascadeCheck: TIBSQL;
   FormStorage1: TFormStorage;

   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
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
 ProdutoGrupoCadFrm: TProdutoGrupoCadFrm;

implementation


uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.DFM}

procedure tProdutoGrupoCadFrm.abilita;
begin
 case DM1.DstGrupoP.State of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(ProdutoGrupoCadFrm.Label2);
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
      end;
   dsinsert, dsedit:
      begin
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       dbedit1.SetFocus;
      end;
  end;
end;

procedure tProdutoGrupoCadFrm.New(Sender: TObject);
begin
 if DM1.newsave(DM1.DstGrupoP) then
   Abilita;
end;

procedure tProdutoGrupoCadFrm.Save(Sender: TObject);
begin
 DM1.DstGrupoP.UpdateRecord;
 if not VarIsNull(DM1.DstGrupoP['Nome']) then
  begin
   if DM1.newsave(DM1.DstGrupoP) then
     Abilita;
  end
 else 
  begin
   PrincipalFrm.CamposNaoPreenchidos(ProdutoGrupoCadFrm.Label2);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end;
end;


procedure tProdutoGrupoCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstGrupoP) then
   Abilita;
end;

procedure tProdutoGrupoCadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
 CodGrupoPExcluido: integer;
begin
 Continuar := True;

 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from SUBGRUPOP where CODGRUPOP = :CodGrupoP');
   Params.ByName('CodGrupoP').AsString := DM1.DstGrupoP['CodGrupoP'];
   Prepare;
   ExecQuery;
  end;

 if SQLCascadeCheck.Fields[0].AsInteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
     ' Sub-Grupo(s) de Produto relacionado(s) ao Grupo de Produto - ' +
     Dm1.DstGrupoP.FieldByName('nome').AsString + #13 +
     'Todos os Sub-Grupos de Produto relacionados serão excluídos...' +
     #13#13 +
     'Tem certeza que deseja excluir?'),
     'Atenção', mb_iconquestion + mb_YesNo) = idNo then
     Continuar := False;

 if Continuar then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select count(*) from PRODUTOS where Cod_GrupoP = :CodGrupoP');
     Params.ByName('CodGrupoP').AsString := DM1.DstGrupoP['CodGrupoP'];
     Prepare;
     ExecQuery;
    end;

   if SQLCascadeCheck.Fields[0].AsInteger > 0 then
     if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
       ' Produto(s) relacionado(s) ao Grupo de Produto - ' +
       Dm1.DstGrupoP.FieldByName('nome').AsString + #13 +
       'Todos os Produtos relacionados terão a relação perdida...' +
       #13#13 +
       'Tem certeza que deseja excluir?'),
       'Atenção!', mb_iconquestion + mb_YesNo) = idNo then
       Continuar := False;
  end;

 CodGrupoPExcluido := DM1.DstGrupoP['CodGrupoP'];
 if Continuar then
   if DM1.Del(DM1.DstGrupoP) then
    begin
     with SQLCascadeCheck do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Update PRODUTOS set COD_GRUPOP = null where (Cod_GRUPOP = :CodGRUPOP)');
       Params.ByName('CodGRUPOP').AsInteger := CodGRUPOPExcluido;
       Prepare;
       ExecQuery;
       Transaction.CommitRetaining;
      end;
    end;
end;

procedure TProdutoGrupoCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Grupos de Produto';
 ConsultaGeralListFrm.SetStrValues(DM1.DstGrupoP, nil, 'GRUPOP', '',
   ['CodGrupoP', 'Nome', 'OBS'],
   ['CodGrupoP',
   'Grupo_de_Produtos', 'Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end; 

procedure TProdutoGrupoCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TProdutoGrupoCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TProdutoGrupoCadFrm.DBEdit2Enter(Sender: TObject);
begin
 dbedit2.color := claqua;
end;

procedure TProdutoGrupoCadFrm.DBEdit2Exit(Sender: TObject);
begin
 dbedit2.color := clwindow;
end;

procedure TProdutoGrupoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstGrupoP]);
 DM1.DefSenderDtsStateChange(DM1.DstGrupoP);
 abilita;
end;

procedure TProdutoGrupoCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstGrupoP);
end;

procedure TProdutoGrupoCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TProdutoGrupoCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoGrupoCadFrm.DBEdit2KeyPress(Sender: TObject;
 var Key: char);
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
