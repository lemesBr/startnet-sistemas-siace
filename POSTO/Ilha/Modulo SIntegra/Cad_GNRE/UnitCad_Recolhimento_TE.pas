unit UnitCad_Recolhimento_TE;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, ExtCtrls;

type
 TSintegraCad_Tributos_Estaduais = class(TForm)
   Panel1: TPanel;
   DBGrid1: TDBGrid;
   DSDstSintegra_Tributos_Estaduais: TDataSource;
   GroupBox1: TGroupBox;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   DBEdit3: TDBEdit;
   DBEdit4: TDBEdit;
   DBEdit5: TDBEdit;
   DBEdit6: TDBEdit;
   DBEdit7: TDBEdit;
   DBEdit8: TDBEdit;
   DBEdit9: TDBEdit;
   DBEdit10: TDBEdit;
   DBEdit11: TDBEdit;
   Label1: TLabel;
   Label2: TLabel;
   Label3: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label7: TLabel;
   Label8: TLabel;
   Label9: TLabel;
   Label10: TLabel;
   Label11: TLabel;
   DBEdit12: TDBEdit;
   Label12: TLabel;
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
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SintegraCad_Tributos_Estaduais: TSintegraCad_Tributos_Estaduais;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral;

{$R *.dfm}

procedure TSintegraCad_Tributos_Estaduais.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstSintegra_Info);
end;

procedure TSintegraCad_Tributos_Estaduais.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstSintegra_Tributos_Estaduais]);
 DM1.DefSenderDtsStateChange(DM1.DstSintegra_Tributos_Estaduais);
 abilita;
end;

procedure TSintegraCad_Tributos_Estaduais.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Recolhimento de Tributos Estaduais';
 ConsultaGeralListFrm.SetStrValues(DM1.DstSintegra_Tributos_Estaduais,
   nil, 'Sintegra_GNRE', '',
   ['COD_SINTEGRA_GNRE', 'CNPJ_SUBST',
   'Insc_Est', 'NRO_GNRE', 'DATA_VENCIMENTO', 'VALOR_GNRE'],
   ['COD_SINTEGRA_GNRE', 'CNPJ',
   'Insc_Estadual', 'NRO_GNRE', 'DATA_VENCIMENTO', 'VALOR_GNRE'],
   [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TSintegraCad_Tributos_Estaduais.Del(Sender: TObject);
var
 Continuar: boolean;
begin
 Continuar := True;
{
    Continuar := False;
 }
 if Continuar then
   DM1.Del(DM1.DstSintegra_Tributos_Estaduais);
end;

procedure TSintegraCad_Tributos_Estaduais.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstSintegra_Tributos_Estaduais) then
   Abilita;
end;

procedure TSintegraCad_Tributos_Estaduais.New(Sender: TObject);
begin
 if DM1.NewSave(DM1.DstSintegra_Tributos_Estaduais) then
   Abilita;
end;

procedure TSintegraCad_Tributos_Estaduais.Save(Sender: TObject);
begin
 DM1.DstSintegra_Tributos_Estaduais.UpdateRecord;
 if CamposPreenchidos then
  begin
   if DM1.NewSave(DM1.DstSintegra_Tributos_Estaduais) then
     Abilita;
  end
 else
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
end;

procedure TSintegraCad_Tributos_Estaduais.Abilita;
begin
 case DM1.DstSintegra_Tributos_Estaduais.State of
   dsbrowse:
      begin
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

procedure TSintegraCad_Tributos_Estaduais.DBEdit1Enter(Sender: TObject);
begin
 TDbedit(Sender).color := claqua;
end;

procedure TSintegraCad_Tributos_Estaduais.DBEdit1Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

function TSintegraCad_Tributos_Estaduais.CamposPreenchidos: boolean;
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
 PrincipalFrm.CamposPreenchidos(Label10);
 PrincipalFrm.CamposPreenchidos(Label11);
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['CNPJ_SUBST']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label1);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['INSC_EST']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['DATAHORA']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label3);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['UF_SUBST']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label4);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['UF_FAVORECIDA']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label5);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['BANCO_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label6);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['AGENCIA_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label7);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['VALOR_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label8);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['DATA_VENCIMENTO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label9);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['MES_ANO_REFERENCIA']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label10);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['NRO_CONVENIO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label11);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Tributos_Estaduais['NRO_GNRE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label12);
   Result := False;
  end;
end;

end.
