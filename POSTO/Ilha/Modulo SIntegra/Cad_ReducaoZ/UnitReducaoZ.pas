//TODO: ERRO => Dados não são atualizados após cancelamento durante inserção
//TODO: Implementar CONSULTA por data de emissão
unit UnitReducaoZ;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Grids, DBGrids, ExtCtrls, ToolEdit, CurrEdit, StdCtrls, Mask,
 DBCtrls, DB, RXDBCtrl, IBSQL, DateUtil, Placemnt;

type
 TSintegraReducaoZCadFrm = class(TForm)
   Panel1: TPanel;
   DBGrid1: TDBGrid;
   GroupBox1: TGroupBox;
   DBEdit2: TDBEdit;
   DBEdit3: TDBEdit;
   DBEdit4: TDBEdit;
   DBEdit5: TDBEdit;
   DBEdit6: TDBEdit;
   DBEdit7: TDBEdit;
   DBEdit8: TDBEdit;
   DBEdit9: TDBEdit;
   Label2: TLabel;
   Label3: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label7: TLabel;
   Label8: TLabel;
   Label9: TLabel;
   DBEdit10: TDBEdit;
   DBEdit11: TDBEdit;
   DBEdit12: TDBEdit;
   Label10: TLabel;
   Label11: TLabel;
   Label12: TLabel;
   GroupBox2: TGroupBox;
   CurrencyEdit1: TCurrencyEdit;
   CurrencyEdit2: TCurrencyEdit;
   CurrencyEdit4: TCurrencyEdit;
   CurrencyEdit5: TCurrencyEdit;
   CurrencyEdit7: TCurrencyEdit;
   CurrencyEdit8: TCurrencyEdit;
   CurrencyEdit10: TCurrencyEdit;
   CurrencyEdit11: TCurrencyEdit;
   CurrencyEdit13: TCurrencyEdit;
   CurrencyEdit14: TCurrencyEdit;
   Label14: TLabel;
   Label15: TLabel;
   Label16: TLabel;
   CurrencyEdit16: TCurrencyEdit;
   CurrencyEdit18: TCurrencyEdit;
   CurrencyEdit19: TCurrencyEdit;
   CurrencyEdit20: TCurrencyEdit;
   CurrencyEdit21: TCurrencyEdit;
   CurrencyEdit22: TCurrencyEdit;
   DataSource1: TDataSource;
   DBEdit13: TDBEdit;
   DBEdit14: TDBEdit;
   DBEdit16: TDBEdit;
   DBEdit17: TDBEdit;
   DBEdit19: TDBEdit;
   DBEdit20: TDBEdit;
   DBEdit22: TDBEdit;
   DBEdit23: TDBEdit;
   DBEdit25: TDBEdit;
   DBEdit26: TDBEdit;
   Label22: TLabel;
   DBEdit15: TDBEdit;
   SQLReducaoZ: TIBSQL;
   DBEdit18: TDBEdit;
   Label23: TLabel;
   CurrencyEdit3: TCurrencyEdit;
   Panel2: TPanel;
   Label1: TLabel;
   Label21: TLabel;
   DBEdit1: TDBEdit;
   DBDateEdit1: TDBDateEdit;
   SQLReducaoZ_Edit: TIBSQL;
   CurrencyEdit6: TCurrencyEdit;
   CurrencyEdit9: TCurrencyEdit;
   CurrencyEdit12: TCurrencyEdit;
   CurrencyEdit15: TCurrencyEdit;
   CurrencyEdit17: TCurrencyEdit;
   CurrencyEdit23: TCurrencyEdit;
   CurrencyEdit24: TCurrencyEdit;
   FormStorage1: TFormStorage;
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure Consulta(Sender: TObject);
   function CamposPreenchidos(): boolean;
   function EdicaoCorreta: boolean;
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit15KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   procedure DBEdit14Change(Sender: TObject);
   procedure CurrencyEdit14KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBDateEdit1Exit(Sender: TObject);
   procedure DBEdit2Exit(Sender: TObject);
   procedure AtualizaT_Geral;
   procedure Panel2Exit(Sender: TObject);
   procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure CurrencyEdit18KeyPress(Sender: TObject; var Key: Char);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SintegraReducaoZCadFrm: TSintegraReducaoZCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral;

{$R *.dfm}

procedure TSintegraReducaoZCadFrm.Abilita;
begin
 case DM1.DstSintegra_R60.State of
   dsbrowse:
      begin
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
       groupbox2.Enabled := False;

       currencyedit16.Visible := False;
       currencyedit18.Visible := False;
       currencyedit19.Visible := False;
       currencyedit20.Visible := False;
       currencyedit21.Visible := False;
       currencyedit22.Visible := False;
       currencyedit1.Visible := False;
       currencyedit2.Visible := False;
       currencyedit4.Visible := False;
       currencyedit5.Visible := False;
       currencyedit7.Visible := False;
       currencyedit8.Visible := False;
       currencyedit10.Visible := False;
       currencyedit11.Visible := False;
       currencyedit13.Visible := False;
       currencyedit14.Visible := False;
       currencyedit3.Visible := False;

       currencyedit16.Value := 0;
       currencyedit18.Value := 0;
       currencyedit19.Value := 0;
       currencyedit20.Value := 0;
       currencyedit21.Value := 0;
       currencyedit22.Value := 0;
       currencyedit1.Value := 0;
       currencyedit2.Value := 0;
       currencyedit4.Value := 0;
       currencyedit5.Value := 0;
       currencyedit7.Value := 0;
       currencyedit8.Value := 0;
       currencyedit10.Value := 0;
       currencyedit11.Value := 0;
       currencyedit13.Value := 0;
       currencyedit14.Value := 0;
      end;

   dsinsert, dsedit:
      begin
       currencyedit16.Visible := True;
       currencyedit18.Visible := True;
       currencyedit19.Visible := True;
       currencyedit20.Visible := True;
       currencyedit21.Visible := True;
       currencyedit22.Visible := True;
       currencyedit1.Visible := True;
       currencyedit2.Visible := True;
       currencyedit3.Visible := True;
       currencyedit4.Visible := True;
       currencyedit5.Visible := True;
       currencyedit7.Visible := True;
       currencyedit8.Visible := True;
       currencyedit10.Visible := True;
       currencyedit11.Visible := True;
       currencyedit13.Visible := True;
       currencyedit14.Visible := True;

       if not VarIsnull(DM1.DstSintegra_R60['VALOR_TOTAL_GERAL']) then
         currencyedit16.Value := DM1.DstSintegra_R60['VALOR_TOTAL_GERAL'];
       if not VarIsnull(DM1.DstSintegra_R60['CANCELAMENTO']) then
         currencyedit18.Value := DM1.DstSintegra_R60['CANCELAMENTO'];
       if not VarIsnull(DM1.DstSintegra_R60['DESCONTO']) then
         currencyedit3.Value := DM1.DstSintegra_R60['DESCONTO'];
       if not VarIsnull(DM1.DstSintegra_R60['SUBSTITUICAO_TRIBUTARIA']) then
         currencyedit19.Value := DM1.DstSintegra_R60['SUBSTITUICAO_TRIBUTARIA'];
       if not VarIsnull(DM1.DstSintegra_R60['ISENTO']) then
         currencyedit20.Value := DM1.DstSintegra_R60['ISENTO'];
       if not VarIsnull(DM1.DstSintegra_R60['NAO_INCIDENCIA']) then
         currencyedit21.Value := DM1.DstSintegra_R60['NAO_INCIDENCIA'];
       if not VarIsnull(DM1.DstSintegra_R60['ISSQN']) then
         currencyedit22.Value := DM1.DstSintegra_R60['ISSQN'];

       if not VarIsnull(DM1.DstSintegra_R60['ALIQUOTA01']) then
         currencyedit1.Value := DM1.DstSintegra_R60['ALIQUOTA01'];
       if not VarIsnull(DM1.DstSintegra_R60['VALOR_TPARCIAL01']) then
         currencyedit2.Value := DM1.DstSintegra_R60['VALOR_TPARCIAL01'];

       if not VarIsnull(DM1.DstSintegra_R60['ALIQUOTA02']) then
         currencyedit4.Value := DM1.DstSintegra_R60['ALIQUOTA02'];
       if not VarIsnull(DM1.DstSintegra_R60['VALOR_TPARCIAL02']) then
         currencyedit5.Value := DM1.DstSintegra_R60['VALOR_TPARCIAL02'];

       if not VarIsnull(DM1.DstSintegra_R60['ALIQUOTA03']) then
         currencyedit7.Value := DM1.DstSintegra_R60['ALIQUOTA03'];
       if not VarIsnull(DM1.DstSintegra_R60['VALOR_TPARCIAL03']) then
         currencyedit8.Value := DM1.DstSintegra_R60['VALOR_TPARCIAL03'];

       if not VarIsnull(DM1.DstSintegra_R60['ALIQUOTA04']) then
         currencyedit10.Value := DM1.DstSintegra_R60['ALIQUOTA04'];
       if not VarIsnull(DM1.DstSintegra_R60['VALOR_TPARCIAL04']) then
         currencyedit11.Value := DM1.DstSintegra_R60['VALOR_TPARCIAL04'];

       if not VarIsnull(DM1.DstSintegra_R60['ALIQUOTA05']) then
         currencyedit13.Value := DM1.DstSintegra_R60['ALIQUOTA05'];
       if not VarIsnull(DM1.DstSintegra_R60['VALOR_TPARCIAL05']) then
         currencyedit14.Value := DM1.DstSintegra_R60['VALOR_TPARCIAL05'];

       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       groupbox2.Enabled := True;

       if DM1.DstSintegra_R60.State = dsinsert then
         DBDateEdit1.Date := Now;

       if DBEdit1.CanFocus then
         DBEdit1.SetFocus;
      end;
  end;
end;

function TSintegraReducaoZCadFrm.CamposPreenchidos: boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(Label1);
 PrincipalFrm.CamposPreenchidos(Label2);
 PrincipalFrm.CamposPreenchidos(Label3);
 PrincipalFrm.CamposPreenchidos(Label4);
 PrincipalFrm.CamposPreenchidos(Label5);
 PrincipalFrm.CamposPreenchidos(Label6);
 PrincipalFrm.CamposPreenchidos(Label21);
 PrincipalFrm.CamposPreenchidos(Label22);

 if VarIsNull(DM1.DstSintegra_R60['DATA_EMISSAO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label21);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['CONTADOR_REINICIO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label22);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['NRO_SERIE_EQP']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label1);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['NRO_ORDEM_EQP']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['NRO_CONTADOR_INICIO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label3);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['NRO_CONTADOR_FIM']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label4);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['NRO_CONTADOR_Z']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label5);
   Result := False;
  end;
 if VarIsNull(DM1.DstSintegra_R60['VALOR_TOTAL_GERAL']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label6);
   Result := False;
  end;
end;

procedure TSintegraReducaoZCadFrm.Del(Sender: TObject);
begin
 DM1.Del(DM1.DstSintegra_R60);
end;

procedure TSintegraReducaoZCadFrm.EditCancel(Sender: TObject);
begin
 PrincipalFrm.CamposPreenchidos(Label1);
 PrincipalFrm.CamposPreenchidos(Label2);
 PrincipalFrm.CamposPreenchidos(Label3);
 PrincipalFrm.CamposPreenchidos(Label4);
 PrincipalFrm.CamposPreenchidos(Label5);
 PrincipalFrm.CamposPreenchidos(Label6);
 PrincipalFrm.CamposPreenchidos(Label21);
 PrincipalFrm.CamposPreenchidos(Label22);

 if DM1.EditCancel(DM1.DstSintegra_R60) then
   Abilita;
end;

procedure TSintegraReducaoZCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstSintegra_R60]);
 DM1.DefSenderDtsStateChange(DM1.DstSintegra_R60);
 abilita;
end;

procedure TSintegraReducaoZCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstSintegra_R60);
end;

procedure TSintegraReducaoZCadFrm.New(Sender: TObject);
begin
 currencyedit3.Value := 0;
 currencyedit6.Value := 0;
 currencyedit9.Value := 0;
 currencyedit12.Value := 0;
 currencyedit15.Value := 0;
 currencyedit17.Value := 0;
 currencyedit23.Value := 0;
 currencyedit24.Value := 0;

 if DM1.NewSave(DM1.DstSintegra_R60) then
   Abilita;
end;

procedure TSintegraReducaoZCadFrm.Save(Sender: TObject);
var 
 Tem_Erro: boolean;
begin
 DM1.DstSintegra_R60['VALOR_TOTAL_GERAL'] := currencyedit16.Value;
 DM1.DstSintegra_R60['DESCONTO'] := currencyedit3.Value;
 DM1.DstSintegra_R60['CANCELAMENTO'] := currencyedit18.Value;
 DM1.DstSintegra_R60['SUBSTITUICAO_TRIBUTARIA'] := currencyedit19.Value;
 DM1.DstSintegra_R60['ISENTO'] := currencyedit20.Value;
 DM1.DstSintegra_R60['NAO_INCIDENCIA'] := currencyedit21.Value;
 DM1.DstSintegra_R60['ISSQN'] := currencyedit22.Value;
 DM1.DstSintegra_R60['ALIQUOTA01'] := currencyedit1.Value;
 DM1.DstSintegra_R60['VALOR_TPARCIAL01'] := currencyedit2.Value;
 DM1.DstSintegra_R60['ALIQUOTA02'] := currencyedit4.Value;
 DM1.DstSintegra_R60['VALOR_TPARCIAL02'] := currencyedit5.Value;
 DM1.DstSintegra_R60['ALIQUOTA03'] := currencyedit7.Value;
 DM1.DstSintegra_R60['VALOR_TPARCIAL03'] := currencyedit8.Value;
 DM1.DstSintegra_R60['ALIQUOTA04'] := currencyedit10.Value;
 DM1.DstSintegra_R60['VALOR_TPARCIAL04'] := currencyedit11.Value;
 DM1.DstSintegra_R60['ALIQUOTA05'] := currencyedit13.Value;
 DM1.DstSintegra_R60['VALOR_TPARCIAL05'] := currencyedit14.Value;
 DM1.DstSintegra_R60['MODELO_DOC'] := '2D';

 DM1.DstSintegra_R60.UpdateRecord;

 Tem_Erro := False;
 if (DM1.DstSintegra_R60.State = dsedit) then
   Tem_Erro := not EdicaoCorreta;

 if not Tem_Erro then
   if CamposPreenchidos then
    begin
     if DM1.NewSave(DM1.DstSintegra_R60) then
       Abilita;
    end
   else
     Application.messagebox(
       'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
       'Atenção', mb_iconinformation + mb_ok);
end;

procedure TSintegraReducaoZCadFrm.DBEdit1KeyPress(Sender: TObject;
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

procedure TSintegraReducaoZCadFrm.CurrencyEdit15KeyPress(Sender: TObject;
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

procedure TSintegraReducaoZCadFrm.DBEdit2KeyPress(Sender: TObject;
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

procedure TSintegraReducaoZCadFrm.DBEdit1Enter(Sender: TObject);
begin
 TDbedit(Sender).color := claqua;
end;

procedure TSintegraReducaoZCadFrm.DBEdit1Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

procedure TSintegraReducaoZCadFrm.DBEdit14Change(Sender: TObject);
 //Atualiza campos calculados de "Imposto devido"  referente a cada "Lançamento" e "Totais"
begin
 try
   if (Sender = CurrencyEdit1) or (Sender = CurrencyEdit2) then
     CurrencyEdit6.Value := (CurrencyEdit1.Value) * (CurrencyEdit2.Value) / 100

   else if (Sender = CurrencyEdit4) or (Sender = CurrencyEdit5) then
     CurrencyEdit9.Value := (CurrencyEdit4.Value) * (CurrencyEdit5.Value) / 100

   else if (Sender = CurrencyEdit7) or (Sender = CurrencyEdit8) then
     CurrencyEdit12.Value := (CurrencyEdit7.Value) * (CurrencyEdit8.Value) / 100

   else if (Sender = CurrencyEdit10) or (Sender = CurrencyEdit11) then
     CurrencyEdit15.Value := (CurrencyEdit10.Value) * (CurrencyEdit11.Value) / 100

   else if (Sender = CurrencyEdit13) or (Sender = CurrencyEdit14) then
     CurrencyEdit17.Value := (CurrencyEdit13.Value) * (CurrencyEdit14.Value) / 100;

   CurrencyEdit23.Value := CurrencyEdit2.Value +
     CurrencyEdit5.Value +
     CurrencyEdit8.Value +
     CurrencyEdit11.Value +
     CurrencyEdit14.Value;

   CurrencyEdit24.Value := CurrencyEdit6.Value +
     CurrencyEdit9.Value +
     CurrencyEdit12.Value +
     CurrencyEdit15.Value +
     CurrencyEdit17.Value;

   AtualizaT_Geral;
 except
  end;
end;

procedure TSintegraReducaoZCadFrm.CurrencyEdit14KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;
 if key = '.' then      //Substitue "." por ","
   key := ',';
end;

procedure TSintegraReducaoZCadFrm.DBGrid1KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TSintegraReducaoZCadFrm.DBDateEdit1Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

procedure TSintegraReducaoZCadFrm.DBEdit2Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

procedure TSintegraReducaoZCadFrm.AtualizaT_Geral;
begin
 if ((DM1.DstSintegra_R60.State = dsinsert) or (DM1.DstSintegra_R60.State = dsedit)) then
  begin
   DM1.DstSintegra_R60['VALOR_VENDA_BRUTA'] := CurrencyEdit18.Value +   //CANCELAENTO
                                               CurrencyEdit3.Value +   //DESCONTO
                                               CurrencyEdit19.Value +  //SUBSTITUICAO_TRIBUTARIA
                                               CurrencyEdit20.Value +  //ISENTO
                                               CurrencyEdit21.Value +  //NAO_INCIDENCIA
                                               CurrencyEdit22.Value +  //ISSQN
                                               CurrencyEdit2.Value +   //VALOR_TPARCIAL01
                                               CurrencyEdit5.Value +   //VALOR_TPARCIAL02
                                               CurrencyEdit8.Value +   //VALOR_TPARCIAL03
                                               CurrencyEdit11.Value +  //VALOR_TPARCIAL04
                                               CurrencyEdit14.Value;   //VALOR_TPARCIAL05

   if (DM1.DstSintegra_R60.State = dsinsert) then
    begin
     if SQLReducaoZ.Open then
       CurrencyEdit16.Value := SQLReducaoZ.FieldByName('VALOR_TOTAL_GERAL').Value +
         DM1.DstSintegra_R60['VALOR_VENDA_BRUTA'];
    end
   else if (DM1.DstSintegra_R60.State = dsedit) then
    begin
     if SQLReducaoZ.Open then
       CurrencyEdit16.Value := SQLReducaoZ.FieldByName('VALOR_TOTAL_GERAL').Value -
         SQLReducaoZ.FieldByName('VALOR_VENDA_BRUTA').Value +
         DM1.DstSintegra_R60['VALOR_VENDA_BRUTA'];
    end;
   //modo edição =>  VALOR_TOTAL_GERAL := VALOR_TOTAL_GERAL anterior + Atualização da VALOR_VENDA_BRUTA(variação)
  end;
end;

procedure TSintegraReducaoZCadFrm.Panel2Exit(Sender: TObject);
begin
 //O teste da data deve ser feito sob o DBDateEdit1, como assim não foi feito tornou-se necessário garantir que
 // a data já tenha sido passada para o BD antes do teste
 if DM1.DstSintegra_R60.State = dsinsert then
  begin
   DM1.DstSintegra_R60['DATA_EMISSAO'] := DBDateEdit1.Date;
   if (DBEdit1.Text = '') then
    begin
     application.messagebox('É necessário um valor para  Nº Série.' + #13#10 +
       'Digite o valor referente ao Nº de Série do Equipamento',
       'Atenção!', mb_iconerror + mb_ok);
     if DBEdit1.CanFocus then
       DBEdit1.SetFocus;
    end
   else if VarIsNull(DM1.DstSintegra_R60['DATA_EMISSAO']) then
    begin
     application.messagebox('DATA inválida.' + #13#10 +
       'Digite ou selecione uma Data válida',
       'Atenção', mb_iconerror + mb_ok);
     if DBDateEdit1.CanFocus then
       DBDateEdit1.SetFocus;
    end
   else
    begin
     with SQLReducaoZ do
      begin
       Close;
       SQL.Clear;
       SQL.Add(
         'Select NRO_SERIE_EQP, NRO_CONTADOR_FIM from SINTEGRA_R60 where DATA_EMISSAO = :Data and NRO_SERIE_EQP = :NRO_EQP');
       ParamByName('Data').AsDate := DBDateEdit1.Date;
       ParamByName('NRO_EQP').AsString := DBEdit1.Text;
       Prepare;
       ExecQuery;
       if RecordCount > 0 then
        begin
         application.messagebox('Já existe, com esta DATA, um registro para este Nº de SERIE.' +
           #13#10 +
           'Digite uma Data ou um Nº de Série diferente',
           'Atenção', mb_iconerror + mb_ok);
         if DBDateEdit1.CanFocus then
           DBDateEdit1.SetFocus;
        end
       else
        begin
         Close;
         SQL.Clear;
         SQL.Add(
           'Select NRO_CONTADOR_FIM, CONTADOR_REINICIO, VALOR_TOTAL_GERAL, NRO_ORDEM_EQP, NRO_CONTADOR_Z, NRO_CONTADOR_FIM  from SINTEGRA_R60 where  COD_SINTEGRA_R60 IN');
         Sql.Add('(Select max(COD_SINTEGRA_R60) from SINTEGRA_R60 WHERE NRO_SERIE_EQP = :NRO_EQP)');
         ParamByName('NRO_EQP').AsString := DBEdit1.Text;
         Prepare;
         ExecQuery;

         DM1.DstSintegra_R60['NRO_CONTADOR_Z'] :=
           FieldByName('NRO_CONTADOR_Z').AsInteger + 1;
         DM1.DstSintegra_R60['NRO_CONTADOR_INICIO'] :=
           FieldByName('NRO_CONTADOR_FIM').AsInteger + 2;
         DM1.DstSintegra_R60['CONTADOR_REINICIO'] :=
           FieldByName('CONTADOR_REINICIO').AsInteger;
         DM1.DstSintegra_R60['VALOR_TOTAL_GERAL'] :=
           FieldByName('VALOR_TOTAL_GERAL').Value;
         currencyedit16.Value := FieldByName('VALOR_TOTAL_GERAL').Value;
         DM1.DstSintegra_R60['NRO_ORDEM_EQP'] := FieldByName('NRO_ORDEM_EQP').Value;

         if ((DBEdit2.Text <> '') and (DBEdit4.CanFocus)) then
           DBEdit4.SetFocus
         else if DBEdit2.CanFocus then
           DBEdit2.SetFocus;
        end;
      end;
    end
  end

 else if DM1.DstSintegra_R60.State = dsedit then
 //Obter  VALOR_TOTAL_GERAL do registro em edição para
  begin                                                     //atualização em "procedure TSitegraReducaoZFrm.AtualizaT_Geral"
   with SQLReducaoZ do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select VALOR_TOTAL_GERAL, VALOR_VENDA_BRUTA  from SINTEGRA_R60 where  COD_SINTEGRA_R60 = :COD');
     ParamByName('COD').AsInteger := DM1.DstSintegra_R60['COD_SINTEGRA_R60'];
     Prepare;
     ExecQuery;
    end;
  end;
end;

function TSintegraReducaoZCadFrm.EdicaoCorreta: boolean;
begin
 Result := True;

 with SQLReducaoZ_Edit do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select COD_SINTEGRA_R60 from SINTEGRA_R60 where');
   SQL.Add('DATA_EMISSAO = :Data and NRO_SERIE_EQP = :NRO_EQP and COD_SINTEGRA_R60 <> :COD');
   ParamByName('Data').AsDate := DBDateEdit1.Date;
   ParamByName('NRO_EQP').AsString := DBEdit1.Text;
   ParamByName('COD').AsInteger := DM1.DstSintegra_R60['COD_SINTEGRA_R60'];
   Prepare;
   ExecQuery;

   if RecordCount > 0 then
    begin
     application.messagebox('Já existe, com esta DATA, um registro para este Nº de SERIE.' +
       #13#10 +
       'Digite uma Data ou um Nº de Série diferente e tente novamente...',
       'Atenção!', mb_iconerror + mb_ok);
     if DBDateEdit1.CanFocus then
       DBDateEdit1.SetFocus;
     Result := False;
    end;
  end;
end;

procedure TSintegraReducaoZCadFrm.Consulta(Sender: TObject);
begin
 ConsultaGeralListFrm.Caption := 'Consulta  Redução Z';
 ConsultaGeralListFrm.SetStrValues(DM1.DstSintegra_R60, nil, 'SINTEGRA_R60', '',
   ['COD_SINTEGRA_R60', 'NRO_SERIE_EQP'],
   ['COD_SINTEGRA_R60', 'NRO_SERIE'],
   [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TSintegraReducaoZCadFrm.DataSource1DataChange(Sender: TObject;
 Field: TField);
begin
//Durante a alteração/edição, este evento é disparado a cada mudança dos currencys, porém os
//valores alterados ainda não estão gravados no Dst. Desta forma, estas operações a baixo
//"reatualizam" os campos calculados para avalores antigos, o que dá a impressão de não atualização
// destes campos. Por esta razão, este evento não deve ser disparado se DM1.DstSintegra_R60.State = dsedit
if not (DM1.DstSintegra_R60.State = dsedit) then
  begin
   if not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL01']) and
     not varisnull(DM1.DstSintegra_R60['ALIQUOTA01']) then
     CurrencyEdit6.Value := (DM1.DstSintegra_R60['VALOR_TPARCIAL01'] *
       DM1.DstSintegra_R60['ALIQUOTA01']) / 100;
   if not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL02']) and
     not varisnull(DM1.DstSintegra_R60['ALIQUOTA02']) then
     CurrencyEdit9.Value := (DM1.DstSintegra_R60['VALOR_TPARCIAL02'] *
       DM1.DstSintegra_R60['ALIQUOTA02']) / 100;
   if not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL03']) and
     not varisnull(DM1.DstSintegra_R60['ALIQUOTA03']) then
     CurrencyEdit12.Value := (DM1.DstSintegra_R60['VALOR_TPARCIAL03'] *
       DM1.DstSintegra_R60['ALIQUOTA03']) / 100;
   if not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL04']) and
     not varisnull(DM1.DstSintegra_R60['ALIQUOTA04']) then
     CurrencyEdit15.Value := (DM1.DstSintegra_R60['VALOR_TPARCIAL04'] *
       DM1.DstSintegra_R60['ALIQUOTA04']) / 100;
   if not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL05']) and
     not varisnull(DM1.DstSintegra_R60['ALIQUOTA05']) then
     CurrencyEdit17.Value := (DM1.DstSintegra_R60['VALOR_TPARCIAL05'] *
       DM1.DstSintegra_R60['ALIQUOTA05']) / 100;

   if not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL01']) and
     not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL02']) and
     not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL03']) and
     not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL04']) and
     not varisnull(DM1.DstSintegra_R60['VALOR_TPARCIAL05']) then
     CurrencyEdit23.Value := DM1.DstSintegra_R60['VALOR_TPARCIAL01'] +
       DM1.DstSintegra_R60['VALOR_TPARCIAL02'] +
       DM1.DstSintegra_R60['VALOR_TPARCIAL03'] +
       DM1.DstSintegra_R60['VALOR_TPARCIAL04'] +
       DM1.DstSintegra_R60['VALOR_TPARCIAL05'];

   CurrencyEdit24.Value := CurrencyEdit6.Value +
     CurrencyEdit9.Value +
     CurrencyEdit12.Value +
     CurrencyEdit15.Value +
     CurrencyEdit17.Value;
  end;
end;

procedure TSintegraReducaoZCadFrm.CurrencyEdit18KeyPress(Sender: TObject;
  var Key: Char);
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

  if key = '.' then                                               //Substitue "." por ","
   key := ',';
end;

end.
