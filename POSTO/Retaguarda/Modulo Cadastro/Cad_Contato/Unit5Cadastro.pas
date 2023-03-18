unit Unit5Cadastro;

interface
                                                                     
uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BDE,
 Mask, DBCtrls, StdCtrls, ComCtrls, Grids, db, DBGrids, Buttons, Menus,
 ExtCtrls, DBLookup,
 Variants, shellapi, ToolEdit, RXDBCtrl, IBCustomDataSet, IBQuery,
 Placemnt;

type
 TContatoCadFrm = class(TForm)
   PageControl1: TPageControl;
   TabSheet1: TTabSheet;
   TabSheet2: TTabSheet;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   DBEdit1: TDBEdit;
   Label7: TLabel;
   DBEdit8: TDBEdit;
   Label8: TLabel;
   DBEdit2: TDBEdit;
   DtsDstContatoFrm: TDataSource;
   Panel1: TPanel;
   DBGrid1: TDBGrid;
   Panel5: TPanel;
   Panel6: TPanel;
   DBGrid3: TDBGrid;
   SpeedButton2: TSpeedButton;
   SpeedButton1: TSpeedButton;
   SpeedButton3: TSpeedButton;
   SpeedButton5: TSpeedButton;
   SpeedButton4: TSpeedButton;
   Bevel1: TBevel;
   Label1: TLabel;
   Bevel2: TBevel;
   Label30: TLabel;
   DBText1: TDBText;
   Label4: TLabel;
   DBText2: TDBText;
   Label3: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label9: TLabel;
   Label10: TLabel;
   Label11: TLabel;
   DBEdit5: TDBEdit;
   DBComboBox2: TDBComboBox;
   dbedit4: TDBEdit;
   DBEdit3: TDBEdit;
   DBEdit6: TDBEdit;
   DBEdit7: TDBEdit;
   Label12: TLabel;
   dbedit9: TDBEdit;
   Label13: TLabel;
   dbedit10: TDBEdit;
   Label14: TLabel;
   DBDateEdit1: TDBDateEdit;
   DBEdit11: TDBEdit;
   Label15: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   IBCheck: TIBQuery;
   FormStorage1: TFormStorage;
   procedure FormCreate(Sender: TObject);
   procedure DBEdit3Enter(Sender: TObject);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure DBEdit3Exit(Sender: TObject);
   procedure DBEdit22KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit12KeyPress(Sender: TObject; var Key: char);

   procedure Abilita;
   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Del(Sender: TObject);
   procedure DBEdit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure FormShow(Sender: TObject);
   procedure DBMemo1KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);

   procedure Inserir2Click(Sender: TObject);
   procedure alterar2Click(Sender: TObject);
   procedure excluir2Click(Sender: TObject);
   procedure Salvar2Click(Sender: TObject);
   procedure Cancelar1Click(Sender: TObject);

   procedure DtsDstContatoFrmStateChange(Sender: TObject);

   procedure ComboBox2Enter(Sender: TObject);
   procedure ComboBox2Exit(Sender: TObject);
   procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure Label1Click(Sender: TObject);
   procedure ExecutaAcao;
   procedure DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure FormActivate(Sender: TObject);
   procedure DBGrid3KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1KeyPress(Sender: TObject; var Key: char);
   procedure FormKeyPress(Sender: TObject; var Key: char);
   procedure DBEdit11KeyPress(Sender: TObject; var Key: char);
   procedure dbedit10KeyPress(Sender: TObject; var Key: char);
   procedure DBDateEdit1Enter(Sender: TObject);
   procedure DBDateEdit1Exit(Sender: TObject);
   procedure DBComboBox2Enter(Sender: TObject);
   procedure DBComboBox2Exit(Sender: TObject);
   procedure DBComboBox2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure dbedit9KeyPress(Sender: TObject; var Key: char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ContatoCadFrm: TContatoCadFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, Unit2, UnitConsultaGeral,
 UnitDiscadorFrm, UnitFuncoes, Unit_Connect_Sintegra32;


{$R *.DFM}

procedure TContatoCadFrm.Abilita;
begin
 case DM1.DstContato.State of
   dsbrowse:
      begin
       label1.Visible := True;
       PrincipalFrm.CamposPreenchidos(ContatoCadFrm.Label2);
       groupbox1.Enabled := False;
       if not tabsheet2.Visible then
        begin
         tabsheet2.Visible := True;
         tabsheet1.Show;
        end;
       //formas de contato de Contatos
       SpeedButton1.Visible := False;
       SpeedButton2.Visible := False;
       SpeedButton3.Visible := False;
       SpeedButton4.Visible := False;
       SpeedButton5.Visible := False;
       if DM1.DstContato.RecordCount < 1 then
         panel5.Enabled := False
       else if DM1.DstContatoFrm.RecordCount < 1 then
         panel5.Enabled := False
       else
         panel5.Enabled := True;

       dbgrid3.ReadOnly := True;

       DM1.DstContatoFrmTIPO.ReadOnly := True;

       DtsDstContatoFrm.OnStateChange := nil;
       if dbgrid3.canfocus then
         dbgrid3.SetFocus;
      end;
   dsinsert, dsedit:
      begin
       label1.Visible := False;
       tabsheet2.Visible := False;
       tabsheet1.Show;
       groupbox1.Enabled := True;

       panel5.Enabled := True;

       //formas de contato de Contatos
       SpeedButton5.Visible := True;
       SpeedButton3.Visible := True;
       SpeedButton2.Visible := True;
       dbgrid3.ReadOnly := False;
       DM1.DstContatoFrmTIPO.ReadOnly := False;

       speedbutton3.Visible := (DM1.DstContatoFrm.state = dsbrowse) and
         (DM1.DstContatoFrm.RecordCount > 0);
       speedbutton2.Visible := (DM1.DstContatoFrm.state = dsbrowse) and
         (DM1.DstContatoFrm.RecordCount > 0);

       DtsDstContatoFrm.OnStateChange := DtsDstContatoFrmStateChange;
       if dbedit1.CanFocus then
         dbedit1.SetFocus;
      end;
  end;
end;

procedure TContatoCadFrm.FormCreate(Sender: TObject);
begin
 ClienteCadFrm.Enabled := False;
 DM1.DstContatoFrm.AfterScroll := ClienteCadFrm.DstContatoFrmAfterScroll;
end;

procedure TContatoCadFrm.DBEdit3Enter(Sender: TObject);
begin
 if Sender is tdbedit then
   tdbedit(Sender).color := claqua;
end;

procedure TContatoCadFrm.DBGrid1DblClick(Sender: TObject);
begin
 Tabsheet1.Show;
 abilita;
end;

procedure TContatoCadFrm.DBEdit3Exit(Sender: TObject);
begin
 if Sender is tdbedit then
   tdbedit(Sender).color := clwindow;
end;

procedure TContatoCadFrm.DBEdit22KeyPress(Sender: TObject; var Key: char);
begin
 if not (key in ['x', '(', ')', '-', '1', '2', '3', '4', '5', '6', '7',
   '8', '9', '0', #08, #09, #32]) then
  begin
   messagebeep(Mb_ok);
   key := #0;
  end;
end;

procedure TContatoCadFrm.DBEdit12KeyPress(Sender: TObject; var Key: char);
begin
 if not (key in ['x', '.', '-', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #08, #09]) then
  begin
   messagebeep(Mb_ok);
   key := #0;
  end;
end;

procedure TContatoCadFrm.DBEdit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);
 if key = vk_escape then
   self.Close;
end;

procedure TContatoCadFrm.New(Sender: TObject);
begin
 if DM1.newsave(DM1.DstContato) then
   Abilita;
end;

procedure TContatoCadFrm.Save(Sender: TObject);
var
 Continuar, CGCCPFExiste: boolean;
 temp: string;
begin
 DM1.DstContato.UpdateRecord;
 if Dm1.DstContatoFrm.State in [dsedit, dsinsert] then
   Dm1.DstContatoFrm.Post;

 //------ Verifica Integridade do CPF, CNPJ e Insc.Est ------
 Continuar := True;
 temp := dbedit9.Text;
 temp := RemoveInvalid('.', temp);
 temp := RemoveInvalid('-', temp);
 temp := RemoveInvalid('/', temp);

 if not Verifica_CPF(temp) then
   if application.messagebox(PChar('O número de C.P.F - ' + dbedit9.Text +
     ' não é um número de C.P.F correto...' + #13 +
     'Deseja salvar o registro de Contato mesmo assim?'),
     'Atenção', mb_iconinformation + mb_yesno) = idNo then
     Continuar := False;

 //------ Verifica se CGC ou CPF já cadastrado ------
 CGCCPFExiste := False;
 if not varisnull(Dm1.DstContato['CGCCPF']) then
  begin
   with IBCheck do
    begin
     Close;
     SQL.Clear;
     SQL.add('Select Nome from CONTATO where (CGCCPF = :CGCCPF) and (CodCont <> :CodCont)');
     ParamByName('CGCCPF').AsString := Dm1.DstContato['CGCCPF'];
     ParamByName('CodCont').AsString := Dm1.DstContato['CodCont'];
     Prepare;
     Open;

     if IBCheck.RecordCount > 0 then
       CGCCPFExiste := True;
    end;
  end;

 if continuar then
   if CGCCPFExiste then
    begin
     application.MessageBox(PChar('Já existe um Contato já cadastrada com o C.P.F - ' +
       dbedit9.Text + #13 +
       'cadastrado com o nome: ' +
       IBCheck.FieldByName('Nome').AsString + #13 +
       'Impossível inserir C.P.F duplicados, verifique e tente novamente...'),
       'Atenção', mb_iconinformation + mb_ok)
    end
   else
    begin
     if not VarIsNull(DM1.DstContato['NOME']) then
      begin
       if DM1.newsave(DM1.DstContato) then
         Abilita;
      end
     else
      begin
       PrincipalFrm.CamposNaoPreenchidos(ContatoCadFrm.Label2);
       Application.messagebox(
         'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
         'Atenção', mb_iconinformation + mb_ok);
      end;
    end;
end;

procedure TContatoCadFrm.Del(Sender: TObject);
begin
 DM1.Del(DM1.DstContato);
end;

procedure TContatoCadFrm.EditCancel(Sender: TObject);
begin
 if DM1.DstContatoFrm.state in [dsinsert, dsedit] then
   DM1.DstContatoFrm.Cancel;
 if DM1.EditCancel(DM1.DstContato) then
   Abilita;
end;

procedure TContatoCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstContato);
 if action = cafree then
  begin
   ClienteCadFrm.Enabled := True;
   DM1.DstContatoFrm.AfterScroll := nil;
   ContatoCadFrm := nil;
  end;
end;

procedure TContatoCadFrm.FormShow(Sender: TObject);
begin
 // dblookup é usado para travar registro quando
 // salvarmos ou cancelarmos algum registro
 DBLookupComboBox1.KeyValue := DM1.DstCadastro['CODCLI'];
end;

procedure TContatoCadFrm.DBMemo1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
   PrincipalFrm.speedbutton5.click;
 if key = #27 then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TContatoCadFrm.DBEdit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;
end;

procedure TContatoCadFrm.Inserir2Click(Sender: TObject);
begin
 DM1.dstcontatofrm.Append;
end;

procedure TContatoCadFrm.alterar2Click(Sender: TObject);
begin
 DM1.dstcontatofrm.edit;
end;

procedure TContatoCadFrm.excluir2Click(Sender: TObject);
var 
 tipo, valor: string;
begin           // EXCLUI FORMA DE CONTATO
 try
   if DM1.DstContato.RecordCount > 0 then
    begin
     tipo := DM1.DstContatoFrm['TIPO'];   // nome do tipo de contato (ex.: tel,fax, etc.)
     valor := DM1.DstContatoFrm['VALOR']; // valor referente ao tipo de contato
     if application.MessageBox(PChar('Tem certeza que deseja excluir a Forma de Contato?' +
       #13#13 +
       '" ' + tipo + ' - ' + valor + ' "'),
       'Confirmação', MB_IconInformation + MB_YESNO) = idYes then
      begin
       DM1.DstContatoFrm.Delete;
       DM1.DstContatoFrm.ApplyUpdates;
       DtsDstContatoFrmStateChange(Self);
      end;
    end;
 except
   {}
  end;
end;

procedure TContatoCadFrm.Cancelar1Click(Sender: TObject);
begin
 DM1.dstcontatofrm.cancel;
end;

procedure TContatoCadFrm.Salvar2Click(Sender: TObject);
begin
 Dm1.DstContatoFrm.UpDateRecord;
 if (Dm1.DstContatoFrm['TIPO'] <> null) and (Dm1.DstContatoFrm['VALOR'] <> null) then
  begin
   DM1.DstContatoFrm.DisableControls;
   DM1.DstContatoFrm.post;
   DM1.DstContatoFrm.EnableControls;
  end;
end;

procedure TContatoCadFrm.DtsDstContatoFrmStateChange(Sender: TObject);
begin
 if DM1.DstContato.state in [dsinsert, dsedit] then
  begin
   speedbutton5.Visible := DM1.DstContatoFrm.state = dsbrowse;
   speedbutton4.Visible := DM1.DstContatoFrm.state in [dsedit, dsinsert];

   speedbutton3.Visible := (DM1.DstContatoFrm.state in [dsbrowse]) and
     (DM1.DstContatoFrm.RecordCount > 0);
   speedbutton2.Visible := (DM1.DstContatoFrm.state in [dsbrowse]) and
     (DM1.DstContatoFrm.RecordCount > 0);
   speedbutton1.Visible := (DM1.DstContatoFrm.State in [dsedit, dsinsert]);

   label1.Visible := (DM1.DstContato.state = dsbrowse) and
     (DM1.DstContatoFrm.state = dsbrowse) and (DM1.DstContatoFrm.RecordCount > 0);
  end;

{
 //BOTOES
 speedbutton5.Visible := DM1.DstContatoFrm.state = dsbrowse;
 speedbutton4.Visible := DM1.DstContatoFrm.state in [dsedit, dsinsert];

 speedbutton3.visible := (DM1.DstContatoFrm.state in [dsedit, dsinsert]) and (DM1.DstContatoFrm.recordcount > 0);
 speedbutton2.visible := (DM1.DstContatoFrm.state in [dsedit, dsinsert]) and (DM1.DstContatoFrm.recordcount > 0);
 speedbutton1.Visible := not (DM1.DstContatoFrm.State in [dsbrowse, dsinactive]);

 label1.Visible := (DM1.DstContatoFrm.state = dsbrowse) and (DM1.DstContatoFrm.recordcount > 0);

 if (DM1.DstContatoFrm.RecordCount > 0) and (DM1.DstContatoFrm.State=dsbrowse) and VarIsNull(DM1.DstContatoFrm['VALOR']) then
  DM1.DstContatoFrm.Delete;
}
end;

procedure TContatoCadFrm.ComboBox2Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TContatoCadFrm.ComboBox2Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TContatoCadFrm.Label1MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 label1.Font.Style := [fsunderline];
end;

procedure TContatoCadFrm.Panel6MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 label1.Font.Style := [];
end;

procedure TContatoCadFrm.Label1Click(Sender: TObject);
begin
 ExecutaAcao;
end;

procedure TContatoCadFrm.ExecutaAcao;
var
 mail, site: string;
begin
 screen.Cursor := crhourglass;
 with ClienteCadFrm.sp_proc_acao do
  begin
   if active then Close;
   if not varisnull(DM1.DstContatoFrm['CODTIPOFRM']) then
    begin
     ParamByName('tipo').Value := DM1.DstContatoFrm['CODTIPOFRM'];
     //valor de entrada da procedure
     execproc;                                                   //executa stored procedure

     // executa acoes de acordo com CODACAO retornado pela stored procedure
     case ClienteCadFrm.sp_proc_acao.ParamByName('acao').Value of
       0:   //ACAO -> "NENHUMA"
          begin
           application.messagebox('Não há Ação associada a este Tipo de Forma de Contato',
             'Atenção', mb_iconinformation + mb_ok);
          end;
       1:   //ACAO -> "DISCAR'NUMERO"
          begin
           lockwindowupdate(handle);
           DiscadorFrm.Show;
           lockwindowupdate(0);
           DiscadorFrm.combobox2.Text := DM1.dstcontatoFrm['VALOR'];
           DiscadorFrm.BitBtn2.click;
           DiscadorFrm.Close;
          end;
       2:   //ACAO -> "ENVIAR E-MAIL"
          begin
           mail := DM1.DstContatoFrm['VALOR'];
           ShellExecute(Self.Handle, nil, PChar('mailto:' + mail +
             '?Subject=E-mail TKS Software&Body=E-mail enviado a partir do Software Gerencial v1.0 - TKS Software - www.igara.com.br'
             ), nil, nil, SW_NORMAL)
          end;
       3:   //ACAO -> "ACESSAR PÁGINA NA INTERNET"
          begin
           site := DM1.DstContatoFrm['VALOR'];
           ShellExecute(Self.Handle, nil, PChar(site), nil, nil, SW_NORMAL);
          end;
      end;
    end
   else
    begin
     screen.Cursor := crdefault;
     application.messagebox('Nenhuma forma de contato selecionada...',
       'Atenção', mb_iconinformation + mb_ok);
    end;
  end;
 screen.Cursor := crdefault;
end;

procedure TContatoCadFrm.DBGrid3MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 label1.Font.Style := [];
end;

procedure TContatoCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstContato, DM1.DstContatoFrm]);
 DM1.DefSenderDtsStateChange(DM1.DstContato);
 abilita;
end;

procedure TContatoCadFrm.DBGrid3KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   if DM1.DstContatoFrm.state = dsbrowse then
    begin
     with TStringGrid(DBGrid3) do
      begin
       if Col > 1 then
        begin
         if canfocus then
          begin
           Col := col - 1;
           SetFocus;
          end;
        end
       else
        begin
         if DM1.DstContato.state in [dsedit, dsinsert] then
          begin
           if dbedit10.CanFocus then
             dbedit10.SetFocus
           else
             Perform(wm_nextdlgctl, 1,0);
          end
         else if DM1.DstContato.state = dsbrowse then
           self.Close;
        end;
      end;
    end;
  end;

 if key = #13 then
  begin
   key := #0;
   if DM1.DstContato.state = dsbrowse then
     ExecutaAcao
   else if DM1.DstContato.state in [dsedit, dsinsert] then
    begin
     with TStringGrid(DBGrid3) do
      begin
       if Col < 3 then
        begin
         if canfocus then
          begin
           Col := col + 1;
           SetFocus;
          end;
        end
       else
        begin
         if DM1.DstContatoFrm.state in [dsedit, dsinsert] then
          begin
           if ContatoCadFrm.Speedbutton4.Visible then
             ContatoCadFrm.Speedbutton4.click;
          end
         else if DM1.DstContatoFrm.state = dsbrowse then
           if DM1.DstContato.state in [dsedit, dsinsert] then
             PrincipalFrm.speedbutton5.Click;
        end;
      end;
    end;
  end;
end;

procedure TContatoCadFrm.DBGrid1KeyPress(Sender: TObject; var Key: char);
begin
 if key in [#13, #27] then
   DBGrid1DblClick(Self);
end;

procedure TContatoCadFrm.FormKeyPress(Sender: TObject; var Key: char);
begin
 if DM1.DstContato.State = dsbrowse then
  begin
   if key = #27 then
    begin
     self.Close;
     Key := #0;
    end;
  end;
end;

procedure TContatoCadFrm.DBEdit11KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
   Perform(wm_nextdlgctl, 0,0);

 if key = #27 then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TContatoCadFrm.dbedit10KeyPress(Sender: TObject; var Key: char);
begin
 if key in ['/', '.', '-', '1', '2', '3', '4', '5', '6', '7', '8', '9',
   '0', #08, #09, #32, #27, #13] then
  begin
   if key = #13 then
    begin
     with TStringGrid(DBGrid3) do
      begin
       if canfocus then
        begin
         Row := 1;
         Col := 1;
         SetFocus;
        end;
      end;
    end;

   if key = #27 then
     Perform(wm_nextdlgctl, 1,0);
  end
 else
   key := #0;
end;

procedure TContatoCadFrm.DBDateEdit1Enter(Sender: TObject);
begin
 dbdateedit1.color := claqua;
end;

procedure TContatoCadFrm.DBDateEdit1Exit(Sender: TObject);
begin
 dbdateedit1.color := clwindow;
end;

procedure TContatoCadFrm.DBComboBox2Enter(Sender: TObject);
begin
 dbcombobox2.Color := claqua;
end;

procedure TContatoCadFrm.DBComboBox2Exit(Sender: TObject);
begin
 dbcombobox2.Color := clwindow;
end;

procedure TContatoCadFrm.DBComboBox2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TContatoCadFrm.dbedit9KeyPress(Sender: TObject; var Key: char);
begin
 if key in ['/', '.', '-', '1', '2', '3', '4', '5', '6', '7', '8', '9',
   '0', #08, #09, #32, #27, #13] then
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

procedure TContatoCadFrm.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
 if key in ['-', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', #08, #09, #32, #27, #13] then
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

end.
