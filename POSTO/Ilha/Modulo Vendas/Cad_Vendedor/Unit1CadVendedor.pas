unit Unit1CadVendedor;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Mask, DBCtrls, Grids, DBGrids, db, ComCtrls, Buttons, ExtCtrls,
 CurrEdit, ToolEdit, Variants, Placemnt;
                      
type
 TVendedorCadFrm = class(TForm)
   DBGrid1: TDBGrid;
   DtsDstVend: TDataSource;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label6: TLabel;
   DBEdit2: TDBEdit;
   DBEdit3: TDBEdit;
   CurrencyEdit1: TCurrencyEdit;
   FormStorage1: TFormStorage;
   procedure DBEdit2Enter(Sender: TObject);
   procedure DBEdit2Exit(Sender: TObject);
   procedure CurrencyEdit1Enter(Sender: TObject);
   procedure CurrencyEdit1Exit(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Consulta(Sender: TObject);
   procedure Del(Sender: TObject);

   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: char);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendedorCadFrm: TVendedorCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes;

{$R *.DFM}

procedure tVendedorCadFrm.abilita;
begin
 case DM1.DstVend.state of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(VendedorCadFrm.Label2);
       currencyedit1.Visible := False;
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
       currencyedit1.Value := 0;
      end;
   dsinsert, dsedit:
      begin
       currencyedit1.Visible := True;
       if not VarIsnull(DM1.DstVend['Comissao']) then
         currencyedit1.Value := DM1.DstVend['Comissao'];
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       dbedit2.SetFocus;
      end;
  end;
end;

procedure tVendedorCadFrm.New(Sender: TObject);
begin
 if DM1.newsave(DM1.DstVend) then
   Abilita;
end;

procedure tVendedorCadFrm.Save(Sender: TObject);
begin
 DM1.DstVend.UpdateRecord;
 if not VarIsNull(DM1.DstVend['Nome']) and not VarIsnull(currencyedit1.Value) then
  begin
   DM1.DstVend['Comissao'] := currencyedit1.Value;
   if DM1.newsave(DM1.DstVend) then
     Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(VendedorCadFrm.Label2);
   Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end;
end;


procedure tVendedorCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstVend) then
   Abilita;
end;

procedure tVendedorCadFrm.Del(Sender: TObject);
begin
 DM1.Del(DM1.DstVend);
end;

procedure TVendedorCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Atendente';
 ConsultaGeralListFrm.SetStrValues(DM1.DstVend, nil, 'VENDEDOR', '',
   ['CodVend', 'Nome', 'OBS'],
   ['CodVend', 'Atendente', 'Descritivo'],
   [0]);
 ConsultaGeralListFrm.showmodal;
end; 

procedure TVendedorCadFrm.DBEdit2Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TVendedorCadFrm.DBEdit2Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TVendedorCadFrm.CurrencyEdit1Enter(Sender: TObject);
begin
 currencyedit1.color := claqua;
end;

procedure TVendedorCadFrm.CurrencyEdit1Exit(Sender: TObject);
begin
 currencyedit1.color := clwindow;
end;

procedure TVendedorCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstVend]);
 DM1.DefSenderDtsStateChange(DM1.DstVend);
 abilita;
end;

procedure TVendedorCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstVend);
end;

procedure TVendedorCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TVendedorCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
   PrincipalFrm.speedbutton6.click;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TVendedorCadFrm.CurrencyEdit1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;

 if key = '-' then
   key := #0;
 if key = '.' then
   key := ',';
end;

end.
