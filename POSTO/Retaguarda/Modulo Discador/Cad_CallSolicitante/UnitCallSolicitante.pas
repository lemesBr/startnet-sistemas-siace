unit UnitCallSolicitante;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, db, Placemnt;

type
 TCallSolicitanteCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   DtsDstCallSolicitante: TDataSource;
   FormStorage1: TFormStorage;

   procedure abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure Consulta(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 CallSolicitanteCadFrm: TCallSolicitanteCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.dfm}

procedure TCallSolicitanteCadFrm.abilita;
begin
 case DM1.DstCallSolicitante.State of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(CallSolicitanteCadFrm.Label2);
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

procedure TCallSolicitanteCadFrm.New(Sender: TObject);
begin
 if DM1.NewSave(DM1.DstCallSolicitante) then
   Abilita;
end;

procedure TCallSolicitanteCadFrm.Save(Sender: TObject);
begin
 DM1.DstCallSolicitante.UpdateRecord;
 if not VarIsNull(DM1.DstCallSolicitante['NOME']) then
  begin
   if DM1.NewSave(DM1.DstCallSolicitante) then
     Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(CallSolicitanteCadFrm.Label2);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end;
end;

procedure TCallSolicitanteCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstCallSolicitante) then
   Abilita;
end;

procedure TCallSolicitanteCadFrm.Del(Sender: TObject);
begin
 DM1.Del(DM1.DstCallSolicitante);
end;

procedure TCallSolicitanteCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Solicitantes de Chamadas';
 ConsultaGeralListFrm.SetStrValues(DM1.DstCallSolicitante, nil,
   'CALLSOLICITANTE', '', ['CODCALLSOLICITANTE', 'NOME', 'OBS'],
   ['CodCallSolicitante',
   'Solicitante', 'Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TCallSolicitanteCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstCallSolicitante]);
 DM1.DefSenderDtsStateChange(DM1.DstCallSolicitante);
 abilita;
end;

procedure TCallSolicitanteCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstCallSolicitante);
end;

procedure TCallSolicitanteCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TCallSolicitanteCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TCallSolicitanteCadFrm.DBEdit2KeyPress(Sender: TObject;
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

procedure TCallSolicitanteCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tedit(Sender).color := claqua;
end;

procedure TCallSolicitanteCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tedit(Sender).color := clwindow;
end;

end.
