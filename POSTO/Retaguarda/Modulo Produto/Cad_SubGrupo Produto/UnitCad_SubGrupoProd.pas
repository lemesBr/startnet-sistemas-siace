unit UnitCad_SubGrupoProd;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, ExtCtrls,
 IBCustomDataSet, IBQuery, IBSQL, Placemnt;

type
 TProdutoSubgrupoCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   DtsQryGrupoP: TDataSource;
   DtsDstSubGrupoP: TDataSource;
   Panel1: TPanel;
   Label3: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   Panel2: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   QryGrupoP: TIBQuery;
   SQLCascadeCheck: TIBSQL;
   FormStorage1: TFormStorage;
   QryGrupoPCODGRUPOP: TIntegerField;
   QryGrupoPNOME: TIBStringField;

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
   procedure FormCreate(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure Label3MouseLeave(Sender: TObject);
   procedure Label3Click(Sender: TObject);
   procedure QryGrupoPBeforeScroll(DataSet: TDataSet);
   procedure DtsQryGrupoPDataChange(Sender: TObject; Field: TField);
    procedure Label3MouseEnter(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ProdutoSubgrupoCadFrm: TProdutoSubgrupoCadFrm;

implementation


uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes,
 UnitCad_GrupoProd;

{$R *.DFM}

procedure TProdutoSubgrupoCadFrm.abilita;
begin
 case DM1.DstSubGrupoP.State of
   dsBrowse:
      begin
       PrincipalFrm.CamposPreenchidos(ProdutoSubgrupoCadFrm.Label2);
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
       panel1.Enabled := True;
      end;
   dsinsert, dsedit:
      begin
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       dbedit1.SetFocus;
       panel1.Enabled := False;
      end;
  end;
end;

procedure tProdutoSubgrupoCadFrm.New(Sender: TObject);
begin
 if dblookupcombobox1.KeyValue <> null then
  begin
   if DM1.newsave(DM1.DstSubGrupoP) then
     Abilita;
  end
 else
   application.messagebox('Nenhum Grupo de Produto selecionado' + #13 +
     'Selecione um "Grupo Financeiro" e tente novamente...',
     'Atençao', mb_ok + mb_iconerror);
end;

procedure tProdutoSubgrupoCadFrm.Save(Sender: TObject);
begin
 DM1.DstSubGrupoP.UpdateRecord;
 if not VarIsNull(DM1.DstSubGrupoP['Nome']) then
  begin
   if DM1.newsave(DM1.DstSubGrupoP) then
     Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(ProdutoSubgrupoCadFrm.Label2);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end;
end;


procedure tProdutoSubgrupoCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstSubGrupoP) then
   Abilita;
end;

procedure tProdutoSubgrupoCadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
 CodSUBGRUPOPExcluido: integer;
begin
 Continuar := True;
 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from PRODUTOS where Cod_SubGrupoP = :CodSubGrupoP');
   Params.ByName('CodSubGrupoP').AsString := DM1.DstSubGrupoP['CodSubGrupoP'];
   Prepare;
   ExecQuery;
  end;
 if SQLCascadeCheck.Fields[0].AsInteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
     ' Produto(s) relacionado(s) ao Sub-Grupo de Produto - ' +
     Dm1.DstSubGrupoP.FieldByName('nome').AsString + #13 +
     'Todos os Produtos relacionados terão a relação perdida...' +
     #13#13 +
     'Tem certeza que deseja excluir?'),
     'Atenção', mb_iconquestion + mb_YesNo) = idNo then
     Continuar := False;

 CodSUBGRUPOPExcluido := DM1.DstSubGrupoP['CodSubGrupoP'];
 if Continuar then
   if DM1.Del(DM1.DstSubGrupoP) then
    begin
     with SQLCascadeCheck do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Update PRODUTOS set COD_SUBGRUPOP = null where (Cod_SUBGRUPOP = :CodSUBGRUPOP)');
       Params.ByName('CodSUBGRUPOP').AsInteger := CodSUBGRUPOPExcluido;
       Prepare;
       ExecQuery;
       Transaction.CommitRetaining;
       DBLookupComboBox1.KeyValue := QryGrupoPCODGRUPOP.Value;
      end;
    end;
end;

procedure TProdutoSubgrupoCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de SubGrupo de Produto';
 ConsultaGeralListFrm.SetStrValues(TIBDataset(QrygrupoP), DM1.DstSubGrupoP,
   'GRUPOP', 'SUBGRUPOP', ['CodSubGrupoP', 'CodgrupoP', 'GrupoP.nome', 'Nome', 'OBS'],
   ['', '', 'Grupo',
   'SubGrupo_de_Produto', 'Descritivo'], [0, 1]);
 ConsultaGeralListFrm.showmodal;
 if dbgrid1.CanFocus then dbgrid1.SetFocus;
end; 

procedure TProdutoSubgrupoCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TProdutoSubgrupoCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TProdutoSubgrupoCadFrm.DBEdit2Enter(Sender: TObject);
begin
 dbedit2.color := claqua;
end;

procedure TProdutoSubgrupoCadFrm.DBEdit2Exit(Sender: TObject);
begin
 dbedit2.color := clwindow;
end;

procedure TProdutoSubgrupoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstSubGrupoP, ProdutoSubgrupoCadFrm.QryGrupoP]);
 DM1.DefSenderDtsStateChange(DM1.DstSubGrupoP);
 abilita;

 //--- Testa se há Grupo de Produto Cadastrado
 if QryGrupoP.RecordCount < 1 then
  begin
   if Dm1.DstSubGrupoP.state in [dsedit, dsinsert] then
     PrincipalFrm.speedbutton6.click;
   if Application.MessageBox('Não há Grupo de Produto cadastrado' + #13 +
     'Cadastre um "Grupo de Produto" e só então tente cadastrar um "Sub-Grupo de Produto"'
     + #13#13 +
     'Para Cadastrar um Grupo de Produto, clique em:' + #13 +
     'Programa >Produto >Grupo de Produto',
     'Informação', mb_ok + mb_iconinformation) = idOk then
     self.Close;
   exit;
  end;

 //--- Coloca DbLookUp no primeiro registro ---
 if VarIsNull(Dblookupcombobox1.KeyValue) then
   Dblookupcombobox1.KeyValue := Dblookupcombobox1.ListSource.DataSet.Fields.FieldByName
     (Dblookupcombobox1.KeyField).AsInteger;
end;

procedure TProdutoSubgrupoCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstSubGrupoP);
end;

procedure TProdutoSubgrupoCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TProdutoSubgrupoCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoSubgrupoCadFrm.DBEdit2KeyPress(Sender: TObject;
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

procedure TProdutoSubgrupoCadFrm.FormCreate(Sender: TObject);
begin
 DM1.DstSubGrupoP.DataSource := DtsQryGrupoP;
end;

procedure TProdutoSubgrupoCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TProdutoSubgrupoCadFrm.Label3MouseLeave(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TProdutoSubgrupoCadFrm.Label3Click(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  begin
   Principalfrm.Hyperlink_On(sender);

   if Dm1.DstGrupoP.state = dsbrowse then
    Dm1.DstGrupoP.Locate('CODGRUPOP', Dblookupcombobox1.keyvalue, []);
  end;  
end;

procedure TProdutoSubgrupoCadFrm.QryGrupoPBeforeScroll(DataSet: TDataSet);
begin
 DM1.DefSenderDtsStateChange(DM1.DstSubGrupoP);
end;

procedure TProdutoSubgrupoCadFrm.DtsQryGrupoPDataChange(Sender: TObject;
 Field: TField);
begin
 Dblookupcombobox1.KeyValue := DM1.DstSubGrupoP['CodGrupoP'];
end;

procedure TProdutoSubgrupoCadFrm.Label3MouseEnter(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

end.
