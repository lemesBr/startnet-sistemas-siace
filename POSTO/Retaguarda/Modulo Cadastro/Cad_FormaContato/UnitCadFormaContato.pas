unit UnitCadFormaContato;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, IBSQL,
 Placemnt;

type
 TFormaContatoCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   DtsDstTipo: TDataSource;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit2: TDBEdit;
   DBEdit1: TDBEdit;
   DBRadioGroup1: TDBRadioGroup;
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
 FormaContatoCadFrm: TFormaContatoCadFrm;

implementation

uses UnitDataM1, UnitConsultaGeral, UnitFrmPrincipal;

{$R *.dfm}

procedure TFormaContatoCadFrm.abilita;
begin
 case DM1.DstTipoFrm.state of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(FormaContatoCadFrm.Label2);
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

procedure TFormaContatoCadFrm.New(Sender: TObject);
begin
 if DM1.newsave(DM1.DstTipoFrm) then
  begin
   Abilita;
   dbradiogroup1.ItemIndex := 0;
  end
end;

procedure TFormaContatoCadFrm.Save(Sender: TObject);
begin
 DM1.DstTipoFrm.UpdateRecord;
 if not VarIsNull(DM1.DstTipoFrm['Nome']) then
  begin
   if DM1.newsave(DM1.DstTipoFrm) then
     Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(FormaContatoCadFrm.Label2);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TFormaContatoCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstTipoFrm) then
   Abilita;
end;

procedure TFormaContatoCadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
begin
 Continuar := True;
 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from CADASTROFRM where CodTIPOFrm = :CodTipoFrm');
   Params.ByName('CodTipoFrm').AsString := DM1.DstTipoFrm['CodTipoFrm'];
   Prepare;
   ExecQuery;
  end;
 if SQLCascadeCheck.Fields[0].AsInteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
     ' Forma(s) de Contato de Empresas/Pessoa Física relacionada(s) ao Tipo de Forma de Contato - ' +
     Dm1.DstTipoFrm.FieldByName('nome').AsString + #13 +
     'Todos os Forma(s) de Contato de Empresas/Pessoa Física relacionados serão excluídas...'
     + #13#13 +
     'Tem certeza que deseja excluir?'),
     'Atenção', mb_iconquestion + mb_YesNo) = idNo then
     Continuar := False;

 if Continuar then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select count(*) from CONTATOFRM where CodTIPOFrm = :CodTipoFrm');
     Params.ByName('CodTipoFrm').AsString := DM1.DstTipoFrm['CodTipoFrm'];
     Prepare;
     ExecQuery;
    end;
   if SQLCascadeCheck.Fields[0].AsInteger > 0 then
     if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
       ' Forma(s) de Contato de Contatos de Empresas/Pessoa Física relacionada(s) ao Tipo de Forma de Contato - ' +
       Dm1.DstTipoFrm.FieldByName('nome').AsString + #13 +
       'Todos os Forma(s) de Contato de Contatos de Empresas/Pessoa Física relacionados serão excluídas...'
       + #13#13 +
       'Tem certeza que deseja excluir?'),
       'Atenção', mb_iconquestion + mb_YesNo) = idNo then
       Continuar := False;
  end;

 if Continuar then
   DM1.Del(DM1.DstTipoFrm);
end;

procedure TFormaContatoCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Formas de Contato';
 ConsultaGeralListFrm.SetStrValues(DM1.DstTipoFrm, nil, 'TIPOFRM', '',
   ['CodTipoFrm', 'Nome', 'OBS'],
   ['CodTipoFrm',
   'Forma_Contato', 'Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TFormaContatoCadFrm.DBEdit2Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TFormaContatoCadFrm.DBEdit2Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TFormaContatoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstTipoFrm]);
 DM1.DefSenderDtsStateChange(DM1.DstTipoFrm);
 abilita;
end;

procedure TFormaContatoCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstTipoFrm);
end;

procedure TFormaContatoCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TFormaContatoCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TFormaContatoCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: char);
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
