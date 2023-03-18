unit Unitcad_info_sintegra;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Placemnt, DB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask,
 IBSQL, IBCustomDataSet, IBQuery;

type
 TSintegraInfoCadFrm = class(TForm)
   DsDstSintegra_Info: TDataSource;
   FormStorage1: TFormStorage;
   DBGrid1: TDBGrid;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   DBEdit2: TDBEdit;
   DBEdit3: TDBEdit;
   DBEdit4: TDBEdit;
   DBEdit5: TDBEdit;
   DBEdit7: TDBEdit;
   DBComboBox4: TDBComboBox;
   Label2: TLabel;
   Label3: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label7: TLabel;
   DsDstSintegra_LooKup_Operacoes: TDataSource;
   Qry_Operacoes: TIBQuery;
   Qry_Finalidade: TIBQuery;
   Qry_Convenio: TIBQuery;
   DsDstSintegra_LooKup_Finalidade: TDataSource;
   DsDstSintegra_LooKup_Convenio: TDataSource;
   Label16: TLabel;
   Label11: TLabel;
   Label12: TLabel;
   Label15: TLabel;
   Label14: TLabel;
   Label13: TLabel;
   Label17: TLabel;
   DBEdit16: TDBEdit;
   DBEdit11: TDBEdit;
   DBEdit12: TDBEdit;
   DBEdit15: TDBEdit;
   DBEdit14: TDBEdit;
   DBEdit13: TDBEdit;
   DBEdit17: TDBEdit;
   CheckBox1: TCheckBox;
   GroupBox2: TGroupBox;
   DBCheckBox3: TDBCheckBox;
   DBCheckBox2: TDBCheckBox;
   DBCheckBox1: TDBCheckBox;
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure Consulta(Sender: TObject);

   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBEdit4Enter(Sender: TObject);
   procedure DBEdit4Exit(Sender: TObject);
   procedure DBComboBox4Enter(Sender: TObject);
   procedure DBComboBox4Exit(Sender: TObject);
   procedure DBEdit15KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit4KeyPress(Sender: TObject; var Key: char);
   procedure CheckBox1Click(Sender: TObject);
   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: char);
   function CamposPreenchidos: boolean;


 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SintegraInfoCadFrm: TSintegraInfoCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, UnitFuncoes,
  Unit_Connect_Sintegra32;

{$R *.dfm}

procedure TSintegraInfoCadFrm.Abilita;
begin
 case DM1.DstSintegra_Info.State of
  dsbrowse:
   begin
    PrincipalFrm.CamposPreenchidos(Label2);
    PrincipalFrm.CamposPreenchidos(Label3);
    PrincipalFrm.CamposPreenchidos(Label15);
    dbgrid1.Enabled := True;
    dbgrid1.SetFocus;
    groupbox1.Enabled := False;
   end;
  dsinsert, dsedit:
   begin
    dbgrid1.Enabled := False;
    groupbox1.Enabled := True;
    dbedit4.SetFocus;
   end;
  end;
end;

procedure TSintegraInfoCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Informante SIntegra';
 ConsultaGeralListFrm.SetStrValues(DM1.DstSintegra_Info, nil, 'SINTEGRA_INFO', '',
   ['Cod_Sintegra_Info', 'NOME_CONTRIBUINTE',
   'CGC', 'Insc_Est'],
   ['Cod_Sintegra_Info', 'Informante',
   'CNPJ', 'Insc_Estadual'],
   [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TSintegraInfoCadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
begin
 Continuar := True;
{  with SQLCheck do
   begin
    Close;
    UnPrepare;
    SQL.Clear;
    SQL.Add('Select count(*) from SINTEGRA_INFO where Cod_Sintegra_Info = :Cod_Sintegra_Info');
    Params.ByName('Cod_Sintegra_Info').AsString := DM1.DstSintegra_Info['Cod_Sintegra_Info'];
    Prepare;
    ExecQuery;
   end;
  if SQLCheck.Fields[0].asinteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCheck.Fields[0].AsString + ' Clientes relacionado(s) ao Evento - ' + Dm1.DstEventos.FieldByName('nome').asstring +#13+
                             'Todos os Clientes relacionados terão a relação perdida...' + #13#13+
                             'Tem certeza que deseja excluir?'),
                             'Atenção', mb_iconquestion + mb_YesNo) = idno then
    Continuar := False;
 }
 if Continuar then
   DM1.Del(DM1.DstSintegra_Info);
end;

procedure TSintegraInfoCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.EditCancel(DM1.DstSintegra_Info) then
   Abilita;
end;

procedure TSintegraInfoCadFrm.New(Sender: TObject);
begin
 If DM1.DstSintegra_Info.RecordCount <= 0 then
  Begin
   if DM1.NewSave(DM1.DstSintegra_Info) then
    begin
     DM1.DstSintegra_Info['ENABLED_SINTEGRA'] := 0;
     DM1.DstSintegra_Info['CONTRIBUINTE_IPI'] := 0;
     DM1.DstSintegra_Info['SUBSTITUTO_TRIBUTARIO'] := 0;
     Abilita;
    end;
  end
 else
  application.messagebox('Já existe um informante cadastrado. Escolha Alterar.',
                         'Atenção', mb_iconerror + mb_ok);
end;

procedure TSintegraInfoCadFrm.Save(Sender: TObject);
var
 Continuar: Boolean;
 temp, temp2: string;
begin
 //------ Verifica Integridade do CPF, CNPJ e Insc.Est ------
 temp2 := '';
 Continuar := True;
 temp := dbedit2.Text;
 temp := RemoveInvalid('.', temp);
 temp := RemoveInvalid('-', temp);
 temp := RemoveInvalid('/', temp);
 if dbedit2.Text <> '' then
  begin
   if not Verifica_CNPJ(temp) then
    begin
     temp2 := temp2 + PChar(#13 + ' - O número de C.N.P.J. - ' + dbedit2.Text + ' não é um número de C.N.P.J. correto.');
     PrincipalFrm.CamposNaoPreenchidos(Label2);
    end;
  end;

 if dbedit3.Text <> '' then
  begin
   if not Verifica_InscEst(dbedit3.text, DBComboBox4.Text) then
    begin
     temp2 := temp2 + PChar(#13 + ' - O número de Inscrição Estadual - ' + dbedit3.text +' não é um número de Inscrição Estadual correto.');
     PrincipalFrm.CamposNaoPreenchidos(Label3);
    end;
  end;

 if dbedit15.Text <> '' then
  begin
   if not Verifica_CEP_UF(dbedit15.text, DBComboBox4.Text) then
    begin
     temp2 := temp2 + PChar(#13 + ' - O CEP - ' + dbedit15.text +' não é CEP correto.');
     PrincipalFrm.CamposNaoPreenchidos(Label15);
    end;
  end;

 if temp2 <> '' then
  begin
   Application.MessageBox(PChar('Aviso:' + temp2), 'Atenção', mb_iconinformation + mb_ok);
   Continuar := False;
  end;

 if Continuar then
  begin
   DM1.DstSintegra_Info.UpdateRecord;
   if CamposPreenchidos then
    begin
     DM1.DstSintegra_Info['cod_finalidade'] := 1;
     if DM1.NewSave(DM1.DstSintegra_Info) then
      Abilita;
    end
   else
    Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
       'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TSintegraInfoCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;



procedure TSintegraInfoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstSintegra_Info, SintegraInfoCadFrm.Qry_Operacoes,
   SintegraInfoCadFrm.Qry_Finalidade, SintegraInfoCadFrm.Qry_Convenio]);
 DM1.DefSenderDtsStateChange(DM1.DstSintegra_Info);
 abilita;
end;

procedure TSintegraInfoCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstSintegra_Info);
end;

procedure TSintegraInfoCadFrm.DBEdit4Enter(Sender: TObject);
begin
 TDbedit(Sender).color := claqua;
end;

procedure TSintegraInfoCadFrm.DBEdit4Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

procedure TSintegraInfoCadFrm.DBComboBox4Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TSintegraInfoCadFrm.DBComboBox4Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TSintegraInfoCadFrm.DBEdit15KeyPress(Sender: TObject;
 var Key: char);
begin
 if key in ['x', '(', ')', '-', '1', '2', '3', '4', '5', '6', '7', '8',
   '9', '0', #08, #09, #32, #27, #13] then
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
  end
 else
   key := #0;
end;

procedure TSintegraInfoCadFrm.DBEdit4KeyPress(Sender: TObject; var Key: char);
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

function TSintegraInfoCadFrm.CamposPreenchidos: boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(Label2);
 PrincipalFrm.CamposPreenchidos(Label3);
 PrincipalFrm.CamposPreenchidos(Label4);
 PrincipalFrm.CamposPreenchidos(Label5);
 PrincipalFrm.CamposPreenchidos(Label6);
 PrincipalFrm.CamposPreenchidos(Label7);
 PrincipalFrm.CamposPreenchidos(Label16);// nome
 PrincipalFrm.CamposPreenchidos(Label17); //fone
 PrincipalFrm.CamposPreenchidos(Label12);//nro  *ou
 PrincipalFrm.CamposPreenchidos(Label13);//compl *ou
 PrincipalFrm.CamposPreenchidos(Label14);// bairro
 PrincipalFrm.CamposPreenchidos(Label15); //cep *
 PrincipalFrm.CamposPreenchidos(Label11);//lagradouro

 if VarIsNull(DM1.DstSintegra_Info['CGC']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Info['INSC_EST']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label3);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Info['NOME_CONTRIBUINTE']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label4);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Info['MUNICIPIO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label5);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Info['UF']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label6);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Info['FAX']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label7);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_Info['NRO']) and
   VarIsNull(DM1.DstSintegra_Info['COMPLEMENTO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label13);
   PrincipalFrm.CamposNaoPreenchidos(Label12);
   Result := False;
  end;

 if VarIsNull(DM1.DstSintegra_Info['CEP']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label15);
   Result := False;
  end;
end;

procedure TSintegraInfoCadFrm.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
  begin
   DBEdit11.Text := 's/n';
   DBEdit13.Text := '';
   DBEdit13.Enabled := False;
   DBEdit11.Enabled := False;
  end
 else 
  begin
   DBEdit11.Text := '';
   DBEdit13.Enabled := True;
   DBEdit11.Enabled := True;
  end;
end;

procedure TSintegraInfoCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: char);
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

procedure TSintegraInfoCadFrm.DBLookupComboBox3KeyPress(Sender: TObject;
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
