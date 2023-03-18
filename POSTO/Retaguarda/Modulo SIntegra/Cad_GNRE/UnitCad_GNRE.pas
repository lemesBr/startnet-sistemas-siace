unit UnitCad_GNRE;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, ExtCtrls, ToolEdit,
 RXDBCtrl, CurrEdit, IBSQL, Placemnt;

type
 TSintegraGNRECadFrm = class(TForm)
   Panel1: TPanel;
   DBGrid1: TDBGrid;
   DSDstSintegra_GNRE: TDataSource;
   GroupBox1: TGroupBox;
   DBEdit6: TDBEdit;
   DBEdit7: TDBEdit;
   DBEdit8: TDBEdit;
   DBEdit10: TDBEdit;
   DBEdit11: TDBEdit;
   Label1: TLabel;
   Label9: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label8: TLabel;
   Label4: TLabel;
   Label2: TLabel;
   Label3: TLabel;
   DBEdit12: TDBEdit;
   Label7: TLabel;
   DBDateEdit1: TDBDateEdit;
   DBDateEdit2: TDBDateEdit;
   DBComboBox4: TDBComboBox;
   CurrencyEdit1: TCurrencyEdit;
   SQLInformante: TIBSQL;
   FormStorage1: TFormStorage;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure FormActivate(Sender: TObject);
   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure Consulta(Sender: TObject);
   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   function CamposPreenchidos(): boolean;
   procedure DBEdit10KeyPress(Sender: TObject; var Key: char);
   procedure DBDateEdit1KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: char);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SintegraGNRECadFrm: TSintegraGNRECadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral;

{$R *.dfm}

procedure TSintegraGNRECadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstSintegra_Info);
end;

procedure TSintegraGNRECadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstSintegra_GNRE]);
 DM1.DefSenderDtsStateChange(DM1.DstSintegra_GNRE);
 abilita;
end;

procedure TSintegraGNRECadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Recolhimento de Tributos Estaduais';
 ConsultaGeralListFrm.SetStrValues(DM1.DstSintegra_GNRE, nil, 'Sintegra_GNRE', '',
   ['COD_SINTEGRA_GNRE', 'DATA_VENCIMENTO', 'VALOR_GNRE'],
   ['COD_SINTEGRA_GNRE', 'DATA_VENCIMENTO', 'VALOR_GNRE'],
   [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TSintegraGNRECadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
begin
 Continuar := True;
{
    Continuar := False;
 }
 if Continuar then
   DM1.Del(DM1.DstSintegra_GNRE);
end;

procedure TSintegraGNRECadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstSintegra_GNRE) then
   Abilita;
end;

procedure TSintegraGNRECadFrm.New(Sender: TObject);
begin
 if DM1.NewSave(DM1.DstSintegra_GNRE) then
   Abilita;
end;

procedure TSintegraGNRECadFrm.Save(Sender: TObject);
begin
 DM1.DstSintegra_GNRE.UpdateRecord;
 if CamposPreenchidos then
  begin
   DM1.DstSintegra_GNRE['VALOR_GNRE'] := currencyedit1.Value;
   SQLInformante.ExecQuery;
   DM1.DstSintegra_GNRE['CNPJ_SUBST'] := SQLInformante.FieldByName('CGC').AsString;
   DM1.DstSintegra_GNRE['IE_SUBST'] := SQLInformante.FieldByName('INSC_EST').AsString;
   DM1.DstSintegra_GNRE['UF_SUBST'] := SQLInformante.FieldByName('UF').AsString;
   SQLInformante.Close;
   if DM1.NewSave(DM1.DstSintegra_GNRE) then
     Abilita;
  end
 else
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
end;

procedure TSintegraGNRECadFrm.Abilita;
begin
 case DM1.DstSintegra_GNRE.State of
   dsbrowse:
      begin
       currencyedit1.Visible := False;
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
       currencyedit1.Value := 0;
      end;
   dsinsert, dsedit:
      begin
       currencyedit1.Visible := True;
       if not VarIsnull(DM1.DstSintegra_GNRE['VALOR_GNRE']) then
         currencyedit1.Value := DM1.DstSintegra_GNRE['VALOR_GNRE'];
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       DBDateEdit1.SetFocus;
      end;
  end;
end;

procedure TSintegraGNRECadFrm.DBEdit1Enter(Sender: TObject);
begin
 TDbedit(Sender).color := claqua;
end;

procedure TSintegraGNRECadFrm.DBEdit1Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

function TSintegraGNRECadFrm.CamposPreenchidos: boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(Label1);
 PrincipalFrm.CamposPreenchidos(Label2);
 PrincipalFrm.CamposPreenchidos(Label3);
 PrincipalFrm.CamposPreenchidos(Label4);
 PrincipalFrm.CamposPreenchidos(Label5);
 PrincipalFrm.CamposPreenchidos(Label6);
 PrincipalFrm.CamposPreenchidos(Label7);
 PrincipalFrm.CamposPreenchidos(Label8);
 PrincipalFrm.CamposPreenchidos(Label9);

 if VarIsNull(DM1.DstSintegra_GNRE['DATAHORA_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label1);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['UF_FAVORECIDA']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label9);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['BANCO_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label5);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['AGENCIA_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label6);
   Result := False;
  end;
 if VarIsNull(currencyedit1.Value) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label8);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['DATA_VENCIMENTO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label4);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['MES_ANO_REFERENCIA']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['NRO_CONVENIO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label3);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_GNRE['NRO_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label7);
   Result := False;
  end;
end;

procedure TSintegraGNRECadFrm.DBEdit10KeyPress(Sender: TObject;
 var Key: char);
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

procedure TSintegraGNRECadFrm.DBDateEdit1KeyPress(Sender: TObject;
 var Key: char);
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

procedure TSintegraGNRECadFrm.CurrencyEdit1KeyPress(Sender: TObject;
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
