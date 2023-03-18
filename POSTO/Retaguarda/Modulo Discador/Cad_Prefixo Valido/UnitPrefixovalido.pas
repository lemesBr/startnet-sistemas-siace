unit UnitPrefixovalido;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, DB, Mask,
 IBCustomDataSet, IBQuery, Placemnt;

type
 TPrefixoValidoCadFrm = class(TForm)
   Panel1: TPanel;
   Label3: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   DBGrid1: TDBGrid;
   DtsDstPrefixoValido: TDataSource;
   Panel2: TPanel;
   GroupBox1: TGroupBox;
   DBEdit1: TDBEdit;
   Label2: TLabel;
   DtsQrySetorUser: TDataSource;
   QrySetorUser: TIBQuery;
   FormStorage1: TFormStorage;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);

   procedure FormActivate(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1ColEnter(Sender: TObject);
   procedure DBLookupComboBox1CloseUp(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: char);
   procedure Label3Click(Sender: TObject);
   procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure Label3MouseLeave(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 PrefixoValidoCadFrm: TPrefixoValidoCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitFuncoes, UnitCad_Usuario;


{$R *.dfm}

procedure TPrefixoValidoCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstPrefixoValido);
end;

procedure TPrefixoValidoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstPrefixoValido, QrySetorUser]);
 DM1.DefSenderDtsStateChange(DM1.DstPrefixoValido);
 Abilita;

 //--- Testa se há Usuário Cadastrado
 if QrySetorUser.RecordCount < 1 then
  begin
   if Dm1.DstPrefixoValido.state in [dsedit, dsinsert] then
     PrincipalFrm.speedbutton6.click;
   if Application.MessageBox('Não há Usuário cadastrado' + #13 +
     'Cadastre um "Usuário" e só então tente cadastrar um "Prefixo Válido"' +
     #13#13 +
     'Para Cadastrar um Usuário, clique em:' + #13 +
     'Programa >Sistema >Login >Usuário',
     'Informação', mb_ok + mb_iconinformation) = idOk then
     self.Close;
   exit;
  end;

 if VarIsNull(Dblookupcombobox1.KeyValue) then
   Dblookupcombobox1.KeyValue := Dblookupcombobox1.ListSource.DataSet.Fields.FieldByName
     (Dblookupcombobox1.KeyField).AsInteger;
end;

procedure TPrefixoValidoCadFrm.abilita;
begin
 case DM1.DstPrefixoValido.State of
   dsBrowse:
      begin
       PrincipalFrm.CamposPreenchidos(PrefixoValidoCadFrm.Label2);
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

procedure TPrefixoValidoCadFrm.New(Sender: TObject);
begin
 if dblookupcombobox1.KeyValue <> null then
  begin
   if DM1.newsave(DM1.DstPrefixoValido) then
     Abilita;
  end
 else
   application.messagebox('Nenhum Usuário selecionado', 'Atenção', mb_ok + mb_iconerror);
end;

procedure TPrefixoValidoCadFrm.Save(Sender: TObject);
begin
 DM1.DstPrefixoValido.UpdateRecord;
 if not VarIsNull(DM1.DstPrefixoValido['PREFIXO']) then
  begin
   DM1.DstPrefixoValido['CODSETOR'] := QrySetorUser['CODSETOR'];
   DM1.DstPrefixoValido['CODSETORUSER'] := QrySetorUser['CODSETORUSER'];
   if DM1.newsave(DM1.DstPrefixoValido) then
     Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(PrefixovalidoCadFrm.Label2);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não preenchidos', False);
  end;
end;

procedure TPrefixoValidoCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstPrefixoValido) then
   Abilita;
end;

procedure TPrefixoValidoCadFrm.Del(Sender: TObject);
begin
 DM1.Del(DM1.DstPrefixoValido);
end;

procedure TPrefixoValidoCadFrm.FormCreate(Sender: TObject);
begin
 DM1.DstPrefixoValido.DataSource := DtsQrySetorUser;
end;

procedure TPrefixoValidoCadFrm.DBGrid1KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_escape then
   if dblookupcombobox1.CanFocus then dblookupcombobox1.SetFocus;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TPrefixoValidoCadFrm.DBEdit1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   PrincipalFrm.speedbutton6.click;
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;
end;

procedure TPrefixoValidoCadFrm.DBGrid1ColEnter(Sender: TObject);
begin
 DM1.DefSenderDtsStateChange(DM1.DstPrefixoValido);
end;

procedure TPrefixoValidoCadFrm.DBLookupComboBox1CloseUp(Sender: TObject);
begin
 DM1.DefSenderDtsStateChange(DM1.DstPrefixoValido);
end;

procedure TPrefixoValidoCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TPrefixoValidoCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TPrefixoValidoCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TPrefixoValidoCadFrm.DBLookupComboBox1KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;
end;

procedure TPrefixoValidoCadFrm.DBLookupComboBox1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   self.Close;
  end;
end;

procedure TPrefixoValidoCadFrm.Label3Click(Sender: TObject);
begin
 PrincipalFrm.AddAChild(TUsuarioCadFrm, UsuarioCadFrm);
 Dm1.DstSetorUser.Locate('CODSETORUSER', Dblookupcombobox1.keyvalue, []);
end;

procedure TPrefixoValidoCadFrm.Label3MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 TLabel(Sender).Font.Color := clBlue;
 TLabel(Sender).Font.Style := [FsUnderline];
end;

procedure TPrefixoValidoCadFrm.Label3MouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Color := clWindowText;
 TLabel(Sender).Font.Style := [];
end;

end.
