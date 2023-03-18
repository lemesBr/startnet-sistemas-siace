unit UnitOperadoraDDD;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB, Placemnt;

type
 TOperadoraDDDCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   DtsDstOperadoraDDD: TDataSource;
   DBEdit3: TDBEdit;
   DBEdit4: TDBEdit;
   Label3: TLabel;
   Label4: TLabel;
   FormStorage1: TFormStorage;

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit3KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit4KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 OperadoraDDDCadFrm: TOperadoraDDDCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitFuncoes;

{$R *.DFM}

procedure TOperadoraDDDCadFrm.abilita;
begin
 case DM1.DstOperadoraDDD.State of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(OperadoraDDDCadFrm.Label2);
       PrincipalFrm.CamposPreenchidos(OperadoraDDDCadFrm.Label1);
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

procedure TOperadoraDDDCadFrm.New(Sender: TObject);
begin
 if DM1.newsave(DM1.DstOperadoraDDD) then
   Abilita;
end;

procedure TOperadoraDDDCadFrm.Save(Sender: TObject);
begin
 DM1.DstOperadoraDDD.UpdateRecord;
 if not VarIsNull(DM1.DstOperadoraDDD['NUMAREA']) and
   not Varisnull(dm1.DstOperadoraDDD['NUMOPERADORA']) then
  begin
   if DM1.newsave(DM1.DstOperadoraDDD) then
     Abilita;
  end
 else
  begin
   if VarIsNull(DM1.DstOperadoraDDD['NUMAREA']) then
     PrincipalFrm.CamposNaoPreenchidos(OperadoraDDDCadFrm.Label2)
   else
     PrincipalFrm.CamposPreenchidos(OperadoraDDDCadFrm.Label2);
   if Varisnull(dm1.DstOperadoraDDD['NUMOPERADORA']) then
     PrincipalFrm.CamposNaoPreenchidos(OperadoraDDDCadFrm.Label1)
   else
     PrincipalFrm.CamposPreenchidos(OperadoraDDDCadFrm.Label1);

   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não preenchidos', False);
  end;
end;


procedure TOperadoraDDDCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstOperadoraDDD) then
   Abilita;
end;

procedure TOperadoraDDDCadFrm.Del(Sender: TObject);
begin
 DM1.Del(DM1.DstOperadoraDDD);
end;

procedure TOperadoraDDDCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TOperadoraDDDCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TOperadoraDDDCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstOperadoraDDD]);
 DM1.DefSenderDtsStateChange(DM1.DstOperadoraDDD);
 abilita;
end;

procedure TOperadoraDDDCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstOperadoraDDD);
end;

procedure TOperadoraDDDCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
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

procedure TOperadoraDDDCadFrm.DBEdit3KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TOperadoraDDDCadFrm.DBEdit4KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   principalfrm.SpeedButton5.Click;
  end;
end;

procedure TOperadoraDDDCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

end.
