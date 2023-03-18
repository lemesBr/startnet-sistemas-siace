unit Unit2;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 Db, DBTables, StdCtrls, ExtCtrls, Mask, DBCtrls, ComCtrls, Buttons, Menus,
 Grids, DBGrids, DBLookup, RxLookup, ToolEdit, BDE, Variants, DateUtils, DateUtil,
 IBCustomDataSet, IBQuery, IBStoredProc, ShellApi, RXDBCtrl, CurrEdit,
 IBSQL, Placemnt, RXClock;

type
 TClienteCadFrm = class(TForm)
   Timer1: TTimer;
   Query1cad: TIBQuery;
   Query2cont: TIBQuery;
   DtsQuery1cad: TDataSource;
   DtsQuery2cont: TDataSource;
   DtsDstClasse: TDataSource;
   DtsDstCadastroFrm: TDataSource;
   Query2contCODCONT: TIntegerField;
   Query2contNOME: TIBStringField;
   Query1cadCODCLI: TIntegerField;
   Query1cadNOME: TIBStringField;
   sp_proc_acao: TIBStoredProc;
   Query2contCODCLI: TIntegerField;
   next_genid_gcodcli: TIBStoredProc;
   DtsDstCadastro: TDataSource;
   DtsDstContato: TDataSource;
   QryClasse: TIBQuery;
   next_genid_gcodcont: TIBStoredProc;
   IBCheck: TIBQuery;
   SQLCascadeCheck: TIBSQL;
   FormStorage1: TFormStorage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    dbedit10: TDBEdit;
    dbedit9: TDBEdit;
    dbedit14: TDBEdit;
    ComboBox1: TComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    dbedit4: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    dbedit2: TDBEdit;
    dbedit3: TDBEdit;
    DBEdit6: TDBEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    Label15: TLabel;
    BitBtn2: TBitBtn;
    Label22: TLabel;
    Label23: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    Label24: TLabel;
    Label25: TLabel;
    DtsQryAtendente: TDataSource;
    QryAtendente: TIBQuery;
    DBRichEdit1: TDBRichEdit;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    DBLookupComboBox3: TDBLookupComboBox;
    Panel5: TPanel;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label11: TLabel;
    DBGrid3: TDBGrid;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    Label26: TLabel;
    DBCheckBox1: TDBCheckBox;
    Edit1: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
   procedure FormCreate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1Change(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure DBGrid2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid2DblClick(Sender: TObject);
   procedure DBEdit1Enter(Sender: TObject);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure DBLookupComboBox1Enter(Sender: TObject);
   procedure DBLookupComboBox1Exit(Sender: TObject);
   procedure procsql;

   procedure New(Sender: TObject);
   procedure Save(Sender: TObject);
   procedure EditCancel(Sender: TObject);
   procedure Abilita;
   procedure Consulta(Sender: TObject);
   procedure Del(Sender: TObject);

   procedure FormActivate(Sender: TObject);
   procedure Timer1Timer(Sender: TObject);
   procedure BitBtn1Click(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   procedure ComboBox2Enter(Sender: TObject);
   procedure ComboBox2Exit(Sender: TObject);
   procedure DBEdit8KeyPress(Sender: TObject; var Key: char);
   procedure Excluir1Click(Sender: TObject);
   procedure Salvar1Click(Sender: TObject);
   procedure DtsDstCadastroFrmStateChange(Sender: TObject);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1Enter(Sender: TObject);
   procedure Edit1Click(Sender: TObject);
   procedure ExecutaAcao;
   procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure Label1Click(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure DBGrid1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid2KeyPress(Sender: TObject; var Key: char);
   procedure SpeedButton5Click(Sender: TObject);
   procedure SpeedButton3Click(Sender: TObject);
   procedure SpeedButton1Click(Sender: TObject);
   procedure DBGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
   procedure dbedit3KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid3KeyPress(Sender: TObject; var Key: char);
   procedure ComboBox1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Label18MouseLeave(Sender: TObject);
   procedure Label18Click(Sender: TObject);
   procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: char);
   procedure DBComboBox1Change(Sender: TObject);
   procedure DBComboBox2Enter(Sender: TObject);
   procedure DBComboBox2Exit(Sender: TObject);
   procedure DBDateEdit1Enter(Sender: TObject);
   procedure DBDateEdit1Exit(Sender: TObject);
   procedure DBEdit7KeyPress(Sender: TObject; var Key: char);

   //procedure DstCadastroFrmAfterInsert(DataSet: TDataSet);
   //procedure DstContatoFrmAfterInsert(DataSet: TDataSet);
   procedure DstCadastroFrmAfterScroll(DataSet: TDataSet);
   procedure DstContatoFrmAfterScroll(DataSet: TDataSet);
   procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: char);
   procedure DBEdit11KeyPress(Sender: TObject; var Key: char);
   procedure dbedit9KeyPress(Sender: TObject; var Key: char);
   procedure CheckBox1Click(Sender: TObject);
   procedure DBComboBox2Change(Sender: TObject);
   procedure CheckBox2Click(Sender: TObject);
   procedure BitBtn2Click(Sender: TObject);
   procedure Edit2KeyPress(Sender: TObject; var Key: Char);
   procedure Add_Log(Log: string; Cor: TColor; Tamanho, Posicao: byte);
    procedure Label18MouseEnter(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ClienteCadFrm: TClienteCadFrm;
 s: integer;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitConsultaGeral, Unit5Cadastro, UnitFuncoes,
 UnitDiscadorFrm, UnitCadClasse, Unit_Connect_Sintegra32;


{$R *.DFM}

{
procedure TClienteCadFrm.DstCadastroFrmAfterInsert(DataSet: TDataSet);
var
 output_sp : integer;
begin

 DM1.DstCadastroFrm['CODCLIFRM'] := 0;
 DM1.DstCadastroFrm['CODCLI'] := DM1.DstCadastro['CODCLI'];

 //insere codigo CODCLI de CADASTRO no campo CODCLI de CADASTROFRM
 if DM1.DstCadastro.State = dsinsert then
  begin
   ClienteCadFrm.next_genid_gcodcli.ExecProc;
   output_sp := ClienteCadFrm.next_genid_gcodcli.Params.ParamValues['ID'];

   DM1.DstCadastroFrm['CODCLI'] := output_sp + 1;
  end;

// DM1.QryTipo.First;
// if not varisnull(DM1.QryTipo['CODTIPO']) then
//  DM1.DstCadastroFrm['CODTIPO'] := DM1.QryTipo['CODTIPO'];
end;


procedure TClienteCadFrm.DstContatoFrmAfterInsert(DataSet: TDataSet);
//var output_sp : integer;
begin
{
 DM1.dstcontatofrm['CODCONTFRM']:=0;
 DM1.dstcontatofrm['CODCONT'] := DM1.DSTContato['CODCONT'];

 //insere codigo CODCLI de CADASTRO no campo CODCLI de CADASTROFRM
 if DM1.DstContato.State = DsInsert then
  begin
   ClienteCadFrm.next_genid_gcodcont.ExecProc;
   output_sp := ClienteCadFrm.next_genid_gcodcont.Params.ParamValues['ID'];
   DM1.DstContatoFrm['CODCONT'] := output_sp + 1;
  end;

 DM1.QryTipo.First;
 if not varisnull(DM1.QryTipo['CODTIPO']) then
  DM1.DstContatoFrm['CODTIPO'] := DM1.QryTipo['CODTIPO'];
end;
}

procedure TClienteCadFrm.DstCadastroFrmAfterScroll(DataSet: TDataSet);
begin
 //procedure para mudar caption de HIPERLINK label1 de acordo com código da ação
 //do tipo cadastrado para a forma de contato selecionada
 try
   if Dataset.State = dsbrowse then
    begin
     with ClienteCadFrm.sp_proc_acao do
      begin
       if active then Close;
       ParamByName('tipo').Value := Dataset['CODTIPOFRM'];
       //valor de entrada da procedure
       execproc;

       case ClienteCadFrm.sp_proc_acao.ParamByName('acao').AsInteger of
         0:   //ACAO -> "NENHUMA"
            begin
             ClienteCadFrm.label1.Caption := '';
             ClienteCadFrm.label1.Visible := False;
            end;
         1:   //ACAO -> "DISCAR"
            begin
             ClienteCadFrm.label1.Caption := 'Discar número';
             ClienteCadFrm.label1.Visible := True;
            end;
         2:   //ACAO -> "ENVIAR EMAIL"
            begin
             ClienteCadFrm.label1.Caption := 'Enviar e-mail';
             ClienteCadFrm.label1.Visible := True;
            end;
         3:   //ACAO -> "ACESSAR PÁGINA DA INTERNET"
            begin
             ClienteCadFrm.label1.Caption := 'Acessar página';
             ClienteCadFrm.label1.Visible := True;
            end;
        end;
       if DM1.DstCadastro.State <> dsbrowse then
         ClienteCadFrm.Label1.Visible := False;
      end;
    end;
 except
   {}
  end;
end;

procedure TClienteCadFrm.DstContatoFrmAfterScroll(DataSet: TDataSet);
begin
 //procedure para mudar caption de HIPERLINK label1 de acordo com código da ação
 //do tipo cadastrado para a forma de contato selecionada
 try
   if Dataset.State = dsbrowse then
    begin
     with ClienteCadFrm.sp_proc_acao do
      begin
       if active then Close;
       ParamByName('tipo').Value := dataset['CODTIPOFRM'];  //valor de entrada da procedure
       execproc;

       case ClienteCadFrm.sp_proc_acao.ParamByName('acao').AsInteger of
         0:   //ACAO -> "NENHUMA"
            begin
             ContatoCadFrm.label1.Caption := '';
             ContatoCadFrm.label1.Visible := False;
            end;
         1:   //ACAO -> "DISCAR"
            begin
             ContatoCadFrm.label1.Caption := 'Discar número';
             ContatoCadFrm.label1.Visible := True;
            end;
         2:   //ACAO -> "ENVIAR EMAIL"
            begin
             ContatoCadFrm.label1.Caption := 'Enviar e-mail';
             ContatoCadFrm.label1.Visible := True;
            end;
         3:   //ACAO -> "ACESSAR PÁGINA NA INTERNET"
            begin
             ContatoCadFrm.label1.Caption := 'Acessar página';
             ContatoCadFrm.label1.Visible := True;
            end;
        end;
      end;
    end
 except
   {}
  end;
end;

procedure TClienteCadFrm.Abilita;
begin
 if DM1.DstCadastro.state = dsbrowse then
  begin
   PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label2);
   PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label12);
   PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label17);
   PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label15);
   PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label25);
   BitBtn2.Enabled := False;

   if DM1.DstCadastro.RecordCount < 1 then
     panel5.Enabled := False
   else if DM1.DstCadastroFrm.RecordCount < 1 then
     panel5.Enabled := False
   else
     panel5.Enabled := True;

   if DM1.DstCadastro['CodCli'] = 0 then
    begin
     DM1.HandleBtn(True, False, False, False, False, True, True, True, True, True, True);
     dblookupcombobox1.KeyValue := null;
     dblookupcombobox2.KeyValue := null;
     groupbox2.Enabled := False;
     Label11.Enabled := False;
     Label16.Enabled := False;
     dblookupcombobox1.Enabled := False;
     Bitbtn1.Enabled := False;
    end
   else
    begin
     DM1.HandleBtn(True, False, True, False, True, True, True, True, True, True, True);
     groupbox2.Enabled := True;
     Label11.Enabled := True;
     Label16.Enabled := True;
     dblookupcombobox1.Enabled := True;
     Bitbtn1.Enabled := True;
    end;
   groupbox1.Enabled := False;
   GroupBox3.Enabled := False;

   combobox1.Visible := False;

   //Isento de ICMS
   if Dm1.DstCadastro['INSCESTRG'] = 'ISENTO' then
    CheckBox1.Checked := True
   else
    CheckBox1.Checked := False;

   //formas de contato
   SpeedButton1.Visible := False;
   SpeedButton2.Visible := False;
   SpeedButton3.Visible := False;
   SpeedButton4.Visible := False;
   SpeedButton5.Visible := False;
   label1.Visible := True;

   dbgrid3.ReadOnly := True;
   DM1.DstCadastroFrmTIPO.ReadOnly := True;

   DtsDstCadastroFrm.OnStateChange := nil;
  end
 else if DM1.DstCadastro.state in [dsedit, dsinsert] then
  begin
   panel4.Visible    := False;
   panel3.Visible    := False;
   panel5.Enabled    := True;
   groupbox1.Enabled := True;
   GroupBox3.Enabled := True;
   BitBtn2.Enabled   := True;

   if PageControl1.ActivePage = TabSheet2 then
    if Edit2.CanFocus then
     Edit2.SetFocus;

   groupbox2.Enabled := False;
   Label16.Enabled := False;
   Bitbtn1.Enabled := False;
   dblookupcombobox1.Enabled := False;

   label1.Visible := False;
   label11.Enabled := True;
   combobox1.Visible := True;
   combobox1.ItemIndex := 0;

   //formas de contato
   SpeedButton5.Visible := True;
   SpeedButton3.Visible := True;
   SpeedButton2.Visible := True;

   dbgrid3.ReadOnly := False;
   DM1.DstCadastroFrmTIPO.ReadOnly := False;

   speedbutton3.Visible := (DM1.DstCadastroFrm.state = dsbrowse) and
     (DM1.DstCadastroFrm.RecordCount > 0);
   speedbutton2.Visible := (DM1.DstCadastroFrm.state = dsbrowse) and
     (DM1.DstCadastroFrm.RecordCount > 0);

   DtsDstCadastroFrm.OnStateChange := DtsDstCadastroFrmStateChange;

   if DM1.dstcadastro.state = dsedit then
    begin
     if not varisnull(DM1.DstCadastro['TIPO']) then
       combobox1.ItemIndex := combobox1.Items.indexof(DM1.DstCadastro['TIPO']);
     edit1.OnChange := nil;
     edit1.Text := DM1.DstCadastro['Nome'];
     edit1.OnChange := edit1change;
    end;
  end;

 if Edit1.CanFocus then
  begin
   edit1.SetFocus;
   edit1.SelectAll;
  end;
end;

procedure tClienteCadFrm.procsql;
begin
 screen.cursor := crhourglass;

 with query1Cad do       // search for EMPRESA/PESSOA FISICA matchs
  begin
   Close;
   sql.Clear;
   sql.add('Select NOME, CODCLI from CADASTRO where UPPER(NOME) LIKE UPPER(:1)');
   sql.Add('order by NOME');
   params[0].AsString := '%' + edit1.Text + '%';
   Open;
  end;

 with query2Cont do         // search for CONTATO matchs
  begin
   Close;
   sql.Clear;
   sql.add('Select NOME, CODCLI, CODCONT from CONTATO where UPPER(NOME) LIKE UPPER(:1)');
   sql.Add('order by NOME');
   params[0].AsString := '%' + edit1.Text + '%';
   Open;
  end;

 if query1Cad.RecordCount <> 0 then
   panel4.Visible := True;                        //shows the EMPRESA dbgrid

 if query2Cont.RecordCount <> 0 then
   panel3.Visible := True;                       //shows the CONTATO dbgrid

 screen.cursor := crdefault;
end;

procedure TClienteCadFrm.FormCreate(Sender: TObject);
begin
 timer1.Enabled := false;
// timer1.Interval := Tempo_Digitacao;

 panel3.width := Edit1.Width div 2;
 panel3.left := Edit1.Left;
 panel3.Top  := (Edit1.Top + Edit1.Height) + 1;
 DBgrid1.Columns[0].Width := Panel3.Width - 24;

 panel4.width := panel3.width;
 panel4.left := Edit1.Left + Panel3.Width;
 panel4.Top  := Panel3.Top;
 DBgrid2.Columns[0].Width := DBgrid1.Columns[0].Width;

 DM1.DstContato.DataSource := ClienteCadFrm.DtsDstCadastro;
 DM1.DstContatoFrm.DataSource := ClienteCadFrm.DtsDstContato;
 DM1.DstCadastroFrm.DataSource := ClienteCadFrm.DtsDstCadastro;

 //DM1.DstCadastroFrm.AfterInsert := DstCadastroFrmAfterInsert;
 DM1.DstCadastroFrm.AfterScroll := DstCadastroFrmAfterScroll;
end;

procedure TClienteCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstCadastro, DM1.DstContato, DM1.DstCadastroFrm,
                  DM1.DstContatoFrm, DM1.QryTipoFrm, ClienteCadFrm.QryClasse,
                  ClienteCadFrm.QryAtendente]);
 DM1.DefSenderDtsStateChange(DM1.DstCadastro);
 Abilita;
end;

procedure TClienteCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstCadastro);
 if action = cafree then
  begin
   DM1.DstCadastroFrm.AfterScroll := nil;
   ClienteCadFrm := nil;
  end;
end;

procedure TClienteCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_right then
   if panel4.Visible = True then
     dbgrid2.SetFocus;
end;

procedure TClienteCadFrm.Edit1Change(Sender: TObject);
begin
 if DM1.DstCadastro.state = dsbrowse then
   if edit1.Text <> '' then
    begin
     timer1.Enabled := False;
     timer1.Enabled := True;
    end
   else
    begin
     dm1.DstCadastro.First;  //faz com que vá para primeiro registro que é vazio!
     panel4.Visible := False;
     panel3.Visible := False;
     abilita;
     DBComboBox1Change(self);
    end;
end;

procedure TClienteCadFrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).SelectAll;
 TEdit(Sender).color := claqua;
end;

procedure TClienteCadFrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TClienteCadFrm.DBGrid2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_left then
   if panel3.Visible = True then
     dbgrid1.SetFocus;
end;

procedure TClienteCadFrm.DBGrid2DblClick(Sender: TObject);
begin
 screen.Cursor := crHourGlass;
 DM1.DstCadastro.Locate('CODCLI', Query1cad['CODCLI'], []);
 if DM1.DstContato.RecordCount <> 0 then
   dblookupcombobox1.keyvalue := DM1.DstContato['CODCONT']
 else
   dblookupcombobox1.keyvalue := null;

 edit1.onchange := nil;
 if not varisnull(DM1.DstCadastro['NOME']) then
   edit1.Text := DM1.DstCadastro['NOME'];
 edit1.onchange := edit1change;

 if not varisnull(dm1.dstcadastro['TIPO']) then
   combobox1.Text := DM1.DstCadastro['TIPO'];

 timer1.Enabled := False;
 panel3.Visible := False;
 panel4.Visible := False;
 abilita;
 DBComboBox1Change(self);
 screen.Cursor := crdefault;
end;

procedure TClienteCadFrm.DBEdit1Enter(Sender: TObject);
begin
 TDbedit(Sender).color := claqua;
end;

procedure TClienteCadFrm.DBGrid1DblClick(Sender: TObject);
begin
 screen.Cursor := crhourglass;
 DM1.DstCadastro.locate('CODCLI', query2cont['CODCLI'], []);
 dblookupcombobox1.keyvalue := query2cont['CODCONT'];
 edit1.onchange := nil;
 if not varisnull(DM1.DstCadastro['NOME']) then
   edit1.Text := DM1.DstCadastro['NOME'];
 edit1.onchange := edit1change;
 if not varisnull(DM1.DstCadastro['TIPO']) then
   combobox1.Text := DM1.DstCadastro['TIPO'];
 timer1.Enabled := False;
 panel3.Visible := False;
 panel4.Visible := False;
 abilita;
 DBComboBox1Change(self);
 screen.Cursor := crdefault;
 bitbtn1.Click;
end;

procedure TClienteCadFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 dblookupcombobox1.Color := claqua;
end;

procedure TClienteCadFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 dblookupcombobox1.Color := clwindow;
end;

procedure TClienteCadFrm.Timer1Timer(Sender: TObject);
begin
 procsql;
 timer1.Enabled := False;
end;

procedure TClienteCadFrm.BitBtn1Click(Sender: TObject);
begin
 screen.Cursor := crHourGlass;
 if DM1.DstCadastro['CODCLI'] = 0 then
  begin
   screen.Cursor := crDefault;
   application.messagebox('Nenhuma Empresa/Pessoa Física selecionada.' + #13 +
     'Selecione uma Empresa/Pessoa e tente novamente...',
     'Erro', mb_ok + mb_iconerror);
   edit1.SetFocus;
  end
 else
  begin
   PrincipalFrm.addachild(TContatoCadFrm, ContatoCadFrm);
   if dbcombobox1.ItemIndex = 0 then
    begin
     ContatoCadFrm.dbgrid1.Columns[0].Title.Caption := 'Dependente';
     ContatoCadFrm.dbgrid1.Columns[1].Title.Caption := 'Relação';
     ContatoCadFrm.label4.Caption := 'Pessoa Física:';
     ContatoCadFrm.label30.Caption := 'Pessoa Física:';
     ContatoCadFrm.Label2.Caption := 'Dependente:';
     ContatoCadFrm.tabsheet1.Caption := ' Dependente ';
     ContatoCadFrm.Label7.Caption := 'Relação:';
     ContatoCadFrm.Pagecontrol1.ActivePageIndex := 1;
     ContatoCadFrm.Pagecontrol1.ActivePageIndex := 0;
    end
   else
    begin
     ContatoCadFrm.dbgrid1.Columns[0].Title.Caption := 'Contato';
     ContatoCadFrm.dbgrid1.Columns[1].Title.Caption := 'Cargo';
     ContatoCadFrm.label4.Caption := 'Pessoa Jurídica:';
     ContatoCadFrm.label30.Caption := 'Pessoa Jurídica:';
     ContatoCadFrm.Label2.Caption := 'Contato:';
     ContatoCadFrm.tabsheet1.Caption := ' Contato ';
     ContatoCadFrm.Label7.Caption := 'Cargo:';
     ContatoCadFrm.Pagecontrol1.ActivePageIndex := 1;
     ContatoCadFrm.Pagecontrol1.ActivePageIndex := 0;
    end;
  end;
 screen.Cursor := crDefault;
end;

procedure TClienteCadFrm.DBEdit1Exit(Sender: TObject);
begin
 TDbedit(Sender).color := clwindow;
end;

procedure TClienteCadFrm.ComboBox2Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TClienteCadFrm.ComboBox2Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TClienteCadFrm.New(Sender: TObject);
begin
 PageControl1.ActivePage := TabSheet1;
 Edit1.Text := '';
 if DM1.newsave(DM1.DstCadastro) then
  begin
   Dm1.DstCadastro['BLOQUEADO'] := 0;
   Abilita;
  end;
end;

procedure TClienteCadFrm.Save(Sender: TObject);
var
 CGCCPFExiste, Continuar: boolean;
 temp, temp2: string;
begin
 DM1.DstCadastro.UpdateRecord;

 if Dm1.DstCadastroFrm.State in [dsedit, dsinsert] then
   Dm1.DstCadastroFrm.Post;

 //------ Verifica Integridade do CPF, CNPJ e Insc.Est ------
 temp2 := '';
 Continuar := True;
 temp := dbedit9.Text;
 temp := RemoveInvalid('.', temp);
 temp := RemoveInvalid('-', temp);
 temp := RemoveInvalid('/', temp);
 if DBCombobox1.ItemIndex = 0 then
  begin
   if dbedit9.Text <> '' then
    begin
     if not Verifica_CPF(temp) then
      temp2 := temp2 + PChar(#13 + ' - O número de C.P.F - ' + dbedit9.Text + ' não é um número de C.P.F correto.');
    end
   else
    temp2 := temp2 + PChar(#13 + ' - Você não cadastrou o CPF.');
  end
 else if DBCombobox1.ItemIndex = 1 then
  begin
   if dbedit9.Text <> '' then
    begin
     if not Verifica_CNPJ(temp) then
      temp2 := temp2 + PChar(#13 + ' - O número de C.N.P.J. - ' + dbedit9.Text + ' não é um número de C.N.P.J. correto.');
    end
   else
    temp2 := temp2 + PChar(#13 + ' - Você não cadastrou o C.N.P.J..');

   if dbedit10.Text <> '' then
    begin
     if not Verifica_InscEst(dbedit10.text, DBComboBox2.Text) then
      temp2 := temp2 + PChar(#13 + ' - O número de Inscrição Estadual - ' + dbedit10.text +' não é um número de Inscrição Estadual correto.')
    end
   else
    temp2 := temp2 + PChar(#13 + ' - Você não cadastrou a Inscrição Estadual.');
  end;
 if temp2 <> '' then
  if Application.MessageBox(PChar('Aviso:' + temp2 + #13 + 'Deseja continuar assim mesmo?'), 'Atenção', mb_iconinformation + mb_yesno) = idno then
   Continuar := False;

 //------ Verifica se CGC ou CPF já cadastrado ------
 CGCCPFExiste := False;
 if not varisnull(Dm1.DstCadastro['CGCCPF']) then
  begin
   with IBCheck do
    begin
     Close;
     SQL.Clear;
     SQL.add('Select Nome from CADASTRO where (CGCCPF = :CGCCPF) and (TIPOPESSOA = :TIPOPESSOA) and (CodCli <> :CodCli)');
     ParamByName('CGCCPF').AsString := Dm1.DstCadastro['CGCCPF'];
     ParamByName('TIPOPESSOA').AsString := Dm1.DstCadastro['TIPOPESSOA'];
     ParamByName('CodCli').AsString := Dm1.DstCadastro['CodCli'];
     Prepare;
     Open;

     if IBCheck.RecordCount > 0 then
       CGCCPFExiste := True;
    end;
  end;

 if continuar then
   if CGCCPFExiste then
    begin
     if DBCombobox2.ItemIndex = 0 then
       application.MessageBox(PChar('Já existe uma Pessoa Física já cadastrada com o C.P.F - ' +
         dbedit9.Text + #13 +
         'cadastrado com o nome: ' +
         IBCheck.FieldByName('Nome').AsString + #13 +
         'Impossível inserir C.P.F duplicados, verifique e tente novamente...'),
         'Atenção', mb_iconinformation + mb_ok)
     else
       application.MessageBox(PChar('Já existe uma Pessoa Jurídica já cadastrada com o C.N.P.J - ' +
         dbedit9.Text + #13 +
         'cadastrado com o nome: ' +
         IBCheck.FieldByName('Nome').AsString + #13 +
         'Impossível inserir C.N.P.J duplicados, verifique e tente novamente...'),
         'Atenção', mb_iconinformation + mb_ok);
    end
   else
    begin
     if not (trim(edit1.Text) = '') and not (combobox1.Text = '') and
       not VarisNull(DM1.DstCadastro['TIPOPESSOA']) then
      begin
       with DM1 do
        begin
         DstCadastro['NOME'] := copy(edit1.Text, 0,49);

         if not VarIsNull(combobox1.Text) then
          begin
           if ComboBox1.ItemIndex = 1 then
             dstcadastro['TIPO'] := 'C'       // CLIENTE
           else if ComboBox1.ItemIndex = 2 then
             dstcadastro['TIPO'] := 'F';       // FORNECEDOR
          end;
        end;

       if DM1.newsave(DM1.DstCadastro) then
        begin
         Abilita;
        end;
      end
     else
      begin
       if trim(edit1.Text) = '' then
         PrincipalFrm.CamposNaoPreenchidos(ClienteCadFrm.Label2)
       else
         PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label2);

       if varisnull(dm1.DstCadastro['TIPOPESSOA']) then
         PrincipalFrm.CamposNaoPreenchidos(ClienteCadFrm.Label12)
       else
         PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label12);

       if combobox1.Text = '' then
         PrincipalFrm.CamposNaoPreenchidos(ClienteCadFrm.Label17)
       else
         PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label17);

       Application.messagebox(
         'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
         'Atenção', mb_iconinformation + mb_ok);

       if trim(edit1.Text) = '' then
         (if edit1.CanFocus then edit1.SetFocus)
         else if varisnull(dm1.DstCadastro['TIPOPESSOA']) then
           (if Dbcombobox1.CanFocus then Dbcombobox1.SetFocus)
           else if combobox1.Text = '' then
             (if combobox1.CanFocus then ComboBox1.SetFocus);
      end;
    end;
end;

procedure tClienteCadFrm.EditCancel(Sender: TObject);
var
 CanEdit: boolean;
begin
 CanEdit := True;
 if DM1.DstCadastro.state = dsbrowse then
   if DM1.DstCadastro['CodCli'] = 0 then
    begin
     CanEdit := False;
     application.MessageBox('Nenhuma Empresa/Pessoa Física selecionada' + #13 +
       'Selecione uma Empresa/Pessoa Física e tente novamente...',
       'Atenção', mb_ok + mb_iconexclamation);
     edit1.SetFocus;
    end;

 if CanEdit then
  begin
   if DM1.DstCadastroFrm.state in [dsinsert, dsedit] then
     DM1.DstCadastroFrm.Cancel;
   if DM1.EditCancel(DM1.DstCadastro) then
     Abilita;
  end;
end;

procedure TClienteCadFrm.Del(Sender: TObject);
var
 Continuar: boolean;
 CodCLIExcluido: integer;
begin
 Continuar := True;
 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from CONTATO where CodCli = :CodCli');
   Params.ByName('CodCli').AsString := DM1.DstCadastro['CodCli'];
   Prepare;
   ExecQuery;
  end;
 if SQLCascadeCheck.Fields[0].AsInteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
     ' Contatos(s) relacionado(s) a Empresa/Pessoa Física - ' +
     Dm1.DstCadastro.FieldByName('nome').AsString + #13 +
     'Todos os Contatos relacionados serão excluídos...' + #13#13 +
     'Tem certeza que deseja excluir?'),
     'Atenção', mb_iconquestion + mb_YesNo) = idNo then
     Continuar := False;

{ if Continuar then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select count(*) from CPR where CodCli = :CodCli');
     Params.ByName('CodCli').AsString := DM1.DstCadastro['CodCli'];
     Prepare;
     ExecQuery;
    end;
   if SQLCascadeCheck.Fields[0].AsInteger > 0 then
     if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
       ' Lançamento(s) Financeiro(s) relacionados a Empresa/Pessoa Física - ' +
       Dm1.DstCadastro.FieldByName('nome').AsString + #13 +
       'Todos os Lançamentos Financeiros relacionados serão excluídos...' +
       #13#13 +
       'Tem certeza que deseja excluir?'),
       'Atenção', mb_iconquestion + mb_YesNo) = idNo then
       Continuar := False;
  end;}

 if Continuar then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select count(*) from CLI_EVENTOS where CodCli = :CodCli');
     Params.ByName('CodCli').AsString := DM1.DstCadastro['CodCli'];
     Prepare;
     ExecQuery;
    end;
   if SQLCascadeCheck.Fields[0].AsInteger > 0 then
     if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
       ' Evento(s) relacionado(s) a Empresa/Pessoa Física - ' +
       Dm1.DstCadastro.FieldByName('nome').AsString + #13 +
       'Todos os Eventos relacionados terão a relação perdida...' +
       #13#13 +
       'Tem certeza que deseja excluir?'),
       'Atenção', mb_iconquestion + mb_YesNo) = idNo then
       Continuar := False;
  end;

 if Continuar then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select count(*) from PRODUTOS where Cod_Cli_FORNECEDOR = :Cod_Cli_FORNECEDOR');
     Params.ByName('Cod_Cli_FORNECEDOR').AsString := DM1.DstCadastro['CodCli'];
     Prepare;
     ExecQuery;
    end;
   if SQLCascadeCheck.Fields[0].AsInteger > 0 then
     if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
       ' Produto(s) relacionado(s) a Empresa/Pessoa Física - ' +
       Dm1.DstCadastro.FieldByName('nome').AsString + #13 +
       'Todos os Produtos relacionados terão a relação perdida...' +
       #13#13 +
       'Tem certeza que deseja excluir?'),
       'Atenção', mb_iconquestion + mb_YesNo) = idNo then
       Continuar := False;
  end;

 if Continuar then
  begin
   with SQLCascadeCheck do
    begin
     Close;
     SQL.Clear;
     SQL.Add('Select count(*) from PRODUTOS where Cod_Cli_FABRICANTE = :Cod_Cli_FABRICANTE');
     Params.ByName('Cod_Cli_FABRICANTE').AsString := DM1.DstCadastro['CodCli'];
     Prepare;
     ExecQuery;
    end;
   if SQLCascadeCheck.Fields[0].AsInteger > 0 then
     if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
       ' Produto(s) relacionado(s) a Empresa/Pessoa Física - ' +
       Dm1.DstCadastro.FieldByName('nome').AsString + #13 +
       'Todos os Produtos relacionados terão a relação perdida...' +
       #13#13 +
       'Tem certeza que deseja excluir?'),
       'Atenção', mb_iconquestion + mb_YesNo) = idNo then
       Continuar := False;
  end;

 CodCLIExcluido := DM1.DstCadastro['CodCli'];
 if Continuar then
   if DM1.Del(DM1.DstCadastro) then
    begin
     Abilita;
     edit1.Clear;

     with SQLCascadeCheck do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Update PRODUTOS set Cod_Cli_FORNECEDOR = null where (Cod_Cli_FORNECEDOR = :Cod_Cli_FORNECEDOR)');
       Params.ByName('Cod_Cli_FORNECEDOR').AsInteger := CodCLIExcluido;
       Prepare;
       ExecQuery;
       Transaction.CommitRetaining;
      end;

     with SQLCascadeCheck do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Update PRODUTOS set Cod_Cli_FABRICANTE = null where (Cod_Cli_FABRICANTE = :Cod_Cli_FABRICANTE)');
       Params.ByName('Cod_Cli_FABRICANTE').AsInteger := CodCLIExcluido;
       Prepare;
       ExecQuery;
       Transaction.CommitRetaining;
      end;
    end;
end;

procedure TClienteCadFrm.Consulta;
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Empresa / Pessoa Física';
 ConsultaGeralListFrm.SetStrValues(DM1.DstCadastro, nil, 'CADASTRO',
   '', ['CodCli', 'Nome', 'ENDERECO', 'BAIRRO', 'REFERENCIA', 'CIDADE',
   'UF', 'CEP', 'CGCCPF', 'RENDA', 'OBS'],
   ['', 'Nome', 'Endereco',
   'Bairro', 'Referencia', 'Cidade', 'UF', 'CEP', 'CGC_CPF', 'RENDA', 'OBS'], [0]);
 // ConsultaGeralListFrm.SetFullOuterJoin(True);
 // ConsultaGeralListFrm.SetStrValues(Dm1.DstContato, DM1.DstCadastro, 'CONTATO', 'CADASTRO', ['CodCont', 'Codcli', 'Nome', 'Contato.Nome', 'ENDERECO', 'BAIRRO', 'REFERENCIA', 'CIDADE', 'UF', 'CEP', 'CGCCPF', 'OBS'],
 //                                  ['CodCont', 'CodCli', 'Empresa', 'Contato', 'Endereco', 'Bairro', 'Referencia', 'Cidade', 'UF', 'CEP', 'CGC_CPF', 'OBS'],[0,1]);

 ConsultaGeralListFrm.showmodal;
 if DM1.DstCadastro['codcli'] <> 0 then
  begin
   edit1.OnChange := nil;
   edit1.Text := DM1.DstCadastro['nome'];
   edit1.OnChange := Edit1Change;
   if DM1.DstContato.RecordCount <> 0 then
     dblookupcombobox1.keyvalue := DM1.DstContato['CODCONT']
   else
     dblookupcombobox1.keyvalue := null;
   combobox1.Text := DM1.DstCadastro['TIPO'];
   abilita;
   DBComboBox1Change(self);
  end;
end;

procedure TClienteCadFrm.DBEdit8KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;
end;

procedure TClienteCadFrm.SpeedButton5Click(Sender: TObject);
begin
 with TStringGrid(DBGrid3) do
  begin
   if canfocus then
    begin
     Col := 1;
     Row := 1;
     SetFocus;
    end;
  end;

 DM1.DstCadastroFrm.Append;
 DM1.QryTipoFrm.First;
 if not varisnull(DM1.QryTipoFrm['CODTIPOFRM']) then
   DM1.DstCadastroFrm['CODTIPOFRM'] := DM1.QryTipoFrm['CODTIPOFRM'];
end;

procedure TClienteCadFrm.SpeedButton3Click(Sender: TObject);
begin
 DM1.DstCadastroFrm.Edit;
end;

procedure TClienteCadFrm.SpeedButton1Click(Sender: TObject);
begin
 DM1.DstCadastroFrm.Cancel;
end;

procedure TClienteCadFrm.Excluir1Click(Sender: TObject);
var 
 tipo, valor: string;
begin           // EXCLUI FORMA DE CONTATO
 if DM1.DstCadastroFrm.RecordCount > 0 then
  begin
   tipo := DM1.DstCadastroFrm['TIPO'];    // tipo do contato
   valor := DM1.DstCadastroFrm['VALOR'];  // valor do tipo de contato
   if application.MessageBox(PChar('Tem certeza que deseja excluir a Forma de Contato?' +
     #13#13 +
     '" ' + tipo + ' - ' + valor + ' "'),
     'Confirmação', MB_IconInformation + MB_YESNO) = idYes then
    begin
     DM1.DstCadastroFrm.Delete;
     DM1.DstCadastroFrm.ApplyUpdates;
     DtsDstCadastroFrmStateChange(Self);
    end;
  end;
end;

procedure TClienteCadFrm.Salvar1Click(Sender: TObject);
begin
 DM1.DstCadastroFrm.UpDateRecord;
 if (Dm1.DstCadastroFrm['Tipo'] <> null) and (Dm1.DstCadastroFrm['Valor'] <> null) then
  begin
   DM1.DstCadastroFrm.DisableControls;
   DM1.DstCadastroFrm.post;
   DM1.DstCadastroFrm.EnableControls;
  end;
end;

procedure TClienteCadFrm.DtsDstCadastroFrmStateChange(Sender: TObject);
begin
 if DM1.DstCadastro.state in [dsinsert, dsedit] then
  begin
   speedbutton5.Visible := DM1.DstCadastroFrm.state = dsbrowse;
   speedbutton4.Visible := DM1.DstCadastroFrm.state in [dsedit, dsinsert];

   speedbutton3.Visible := (DM1.DstCadastroFrm.state in [dsbrowse]) and
     (DM1.DstCadastroFrm.RecordCount > 0);
   speedbutton2.Visible := (DM1.DstCadastroFrm.state in [dsbrowse]) and
     (DM1.DstCadastroFrm.RecordCount > 0);
   speedbutton1.Visible := (DM1.DstCadastroFrm.State in [dsedit, dsinsert]);

   label1.Visible := (DM1.DstCadastro.state = dsbrowse) and
     (DM1.DstCadastroFrm.state = dsbrowse) and (DM1.DstCadastroFrm.RecordCount > 0);
  end;
end;

procedure TClienteCadFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   if DM1.DstCadastro.State = dsbrowse then
    begin
     if (panel3.Visible) or (panel4.Visible) then
      begin
       panel3.Visible := False;
       panel4.Visible := False;
      end
     else
       self.Close;
    end
   else
     PrincipalFrm.SpeedButton6.Click;
  end;

 if key = #13 then
   if (DM1.dstCadastro.state = dsbrowse) then
    begin
     if (query2cont.RecordCount = 0) and (query1Cad.RecordCount = 0) then
      begin
       application.MessageBox('Nenhuma Empresa/Pessoa Física encontrada',
         'Atenção', mb_Ok + mb_iconinformation);
       edit1.SetFocus;
      end
     else if (query2cont.RecordCount = 1) and (query1Cad.RecordCount = 0) then
       DBGrid1DblClick(Self)     // grid1 só com 1 reg -> abre este reg
     else if (query2cont.RecordCount = 0) and (query1Cad.RecordCount = 1) then
       DBGrid2DblClick(Self)     // grid2 só com 1 reg -> abre este reg
     else if (query2cont.RecordCount = 0) and (query1Cad.RecordCount > 1) then
       DBGrid2.SetFocus
     else
       DBGrid1.SetFocus;
    end
   else if not (DM1.DstCadastro.state = dsinactive) then
    begin
     Key := #0;
     dbcombobox1.SetFocus
    end
  end;

procedure TClienteCadFrm.DBGrid1Enter(Sender: TObject);
begin
 edit1.Color := claqua;
end;

procedure TClienteCadFrm.Edit1Click(Sender: TObject);
begin
 edit1.selectall;
end;

procedure TClienteCadFrm.ExecutaAcao;
var 
 mail, site: string;
begin
 screen.cursor := crhourglass;
 with sp_proc_acao do
  begin
   if active then Close;
   if not varisnull(DM1.DstCadastroFrm['CODTIPOFRM']) then
    begin
     ParamByName('tipo').Value := DM1.DstCadastroFrm['CODTIPOFRM'];
     //valor de entrada da procedure
     execproc;                                                    //executa stored procedure

     // executa acoes de acordo com CODACAO retornado pela stored procedure
     case sp_proc_acao.ParamByName('acao').Value of
       0:   //ACAO -> "NENHUMA"
          begin
           application.messagebox('Não há Ação associada a este Tipo de Forma de Contato.',
             'Atenção', mb_iconinformation + mb_ok);
          end;
       1:   //ACAO -> "DISCAR"
          begin
           lockwindowupdate(handle);
           DiscadorFrm.Show;
           lockwindowupdate(0);
           DiscadorFrm.combobox2.Text := DM1.DstCadastroFrm['VALOR'];
           DiscadorFrm.Bitbtn2.Click;
           DiscadorFrm.Close;
          end;
       2:   //ACAO -> "ENVIAR EMAIL"
          begin
           mail := DM1.dstcadastroFrm['VALOR'];
           ShellExecute(Self.Handle, nil, PChar('mailto:' + mail +
             '?Subject=E-mail TKS Software&Body=E-mail enviado a partir do Software Gerencial v1.0 - TKS Software - www.igara.com.br'
             ), nil, nil, SW_NORMAL)
          end;
       3:   //ACAO -> "ACESSAR PÁGINA NA INTERNET"
          begin
           site := DM1.DstCadastroFrm['VALOR'];
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
 screen.cursor := crdefault;
end;

procedure TClienteCadFrm.Label1MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 label1.Font.Style := [fsunderline];
end;

procedure TClienteCadFrm.Panel6MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 label1.Font.Style := [];
end;

procedure TClienteCadFrm.Label1Click(Sender: TObject);
begin
 ExecutaAcao;
end;

procedure TClienteCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TClienteCadFrm.DBGrid1KeyPress(Sender: TObject; var Key: char);
begin
 if key in ['a'..'z', 'A'..'Z'] then
   Query2cont.Locatenext('NOME', key, [lopartialkey, locaseinsensitive]);

 if key = #27 then
   edit1.SetFocus;

 if key = #13 then
   dbgrid1dblclick(Self);
end;

procedure TClienteCadFrm.DBGrid2KeyPress(Sender: TObject; var Key: char);
begin
 if key in ['a'..'z', 'A'..'Z'] then
   Query1cad.Locatenext('NOME', key, [lopartialkey, locaseinsensitive]);

 if key = #27 then
   edit1.SetFocus;

 if key = #13 then
   dbgrid2dblclick(Self);
end;

procedure TClienteCadFrm.DBGrid3MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 label1.Font.Style := [];
end;

procedure TClienteCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: char);
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

procedure TClienteCadFrm.dbedit3KeyPress(Sender: TObject; var Key: char);
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

procedure TClienteCadFrm.DBGrid3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 //---Evita que Ctrl+Del Exclua registros ---
 if (Shift = [ssCtrl]) and (key = 46) then
   key := 0;
end;

procedure TClienteCadFrm.DBGrid3KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   if DM1.DstCadastroFrm.state = dsbrowse then
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
         if DM1.DstCadastro.state in [dsedit, dsinsert] then
          begin
           if dbedit7.CanFocus then
             dbedit7.SetFocus
           else
             Perform(wm_nextdlgctl, 1,0);
          end
         else if DM1.DstCadastro.state = dsbrowse then
          begin
           if edit1.CanFocus then
             edit1.SetFocus
           else
             Perform(wm_nextdlgctl, 1,0);
          end;
        end;
      end;
    end;
  end;

 if key = #13 then
  begin
   key := #0;
   if DM1.DstCadastro.state = dsbrowse then
     ExecutaAcao
   else if DM1.DstCadastro.state in [dsedit, dsinsert] then
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
         if DM1.DstCadastroFrm.state in [dsedit, dsinsert] then
          begin
           if ClienteCadFrm.Speedbutton4.Visible then
             ClienteCadFrm.Speedbutton4.click;
          end
         else if DM1.DstCadastroFrm.state = dsbrowse then
          begin
           if dbedit8.CanFocus then
             dbedit8.SetFocus
           else
             Perform(wm_nextdlgctl, 0,0);
          end;
        end;
      end;
    end;
  end;
end;


procedure TClienteCadFrm.ComboBox1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);

 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);
end;

procedure TClienteCadFrm.Label18MouseLeave(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TClienteCadFrm.Label18Click(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  begin
   Principalfrm.Hyperlink_On(sender);

   if Dm1.DstClasse.state = dsbrowse then
    Dm1.DstClasse.Locate('CODCLASSE', Dblookupcombobox2.keyvalue, []);
  end;  
end;

procedure TClienteCadFrm.DBLookupComboBox2KeyPress(Sender: TObject;
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

procedure TClienteCadFrm.DBComboBox1Change(Sender: TObject);
begin
 if dbcombobox1.ItemIndex = 1 then
  begin
   label9.Caption := 'CNPJ:';
   Label10.Caption := 'Insc. Est.:';
   Label19.Caption := 'Insc. Municipal:';
   label19.Enabled := True;
   label20.Enabled := True;
   dbedit6.Enabled := True;
   dbedit11.Enabled := True;
   Label2.Caption := 'Empresa:';
   label13.Caption := 'Fundação:';
   Groupbox2.Caption := ' Contatos: ';
   label14.Caption := 'Cap. Social:';
   CheckBox1.Visible := True;
   CheckBox2.Visible := True;
  end
 else
  begin
   label9.Caption := 'CPF:';
   Label10.Caption := 'RG/IE:';
   label19.Enabled := False;
   label20.Enabled := False;
   dbedit6.Enabled := False;
   dbedit11.Enabled := False;
   Label2.Caption := 'Pessoa Física:';
   label13.Caption := 'Nascimento:';
   Groupbox2.Caption := ' Dependentes: ';
   label14.Caption := 'Renda:';
   CheckBox1.Visible := True;
   CheckBox2.Visible := False;
  end
end;

procedure TClienteCadFrm.DBComboBox2Enter(Sender: TObject);
begin
 TDBCombobox(Sender).color := claqua;
end;

procedure TClienteCadFrm.DBComboBox2Exit(Sender: TObject);
begin
 TDBCombobox(Sender).color := clwindow;
end;

procedure TClienteCadFrm.DBDateEdit1Enter(Sender: TObject);
begin
 dbdateedit1.color := claqua;
end;

procedure TClienteCadFrm.DBDateEdit1Exit(Sender: TObject);
begin
 dbdateedit1.color := clwindow;
end;

procedure TClienteCadFrm.DBEdit7KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then
  begin
   key := #0;
   with TStringGrid(DBGrid3) do
    begin
     if canfocus then
      begin
       Row := 1;
       Col := 1;
       SetFocus;
      end
     else
       Perform(wm_nextdlgctl, 0,0);
    end;
  end;
end;

procedure TClienteCadFrm.DBLookupComboBox1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
   bitbtn1.click;

 if key = #13 then
   if edit1.CanFocus then
     edit1.SetFocus;
end;

procedure TClienteCadFrm.DBEdit11KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   if dbgrid3.canfocus then
     dbgrid3.SetFocus
   else
     Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   Perform(wm_nextdlgctl, 0,0);
end;

procedure TClienteCadFrm.dbedit9KeyPress(Sender: TObject; var Key: char);
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

procedure TClienteCadFrm.DBComboBox2Change(Sender: TObject);
begin
 if DBComboBox2.Text = 'EX' then
  begin
   CheckBox1.Checked := True;
   CheckBox2.Checked := True;
   CheckBox1.Enabled := False;
   CheckBox2.Enabled := False;
  end
 else
  begin
   CheckBox1.Enabled := True;
   CheckBox2.Enabled := True;
  end
end;

procedure TClienteCadFrm.CheckBox1Click(Sender: TObject);
begin
 dbedit10.Enabled := not CheckBox1.Checked;

 if Dm1.DstCadastro.State in [dsedit, dsinsert] then
  begin
   if CheckBox1.Checked then
     dbedit10.Field.AsString := 'ISENTO'
   else
     dbedit10.Field.AsString := '';
  end;
end;

procedure TClienteCadFrm.CheckBox2Click(Sender: TObject);
begin
 dbedit9.Enabled := not CheckBox2.Checked;

 if CheckBox2.Checked then
   dbedit9.Field.AsString := '';
end;

procedure TClienteCadFrm.BitBtn2Click(Sender: TObject);
var
 Y, M, D: Word;
begin
 PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label15);
 PrincipalFrm.CamposPreenchidos(ClienteCadFrm.Label25);

 if (Trim(Edit2.Text) <> '') and (not VarIsNull(DBLookupComboBox3.KeyValue)) then
  begin
   Add_Log((DateTimeToStr(Now)+ ' - Atendente: ' + DBLookupComboBox3.Text), clGreen, 10, 0);
   Add_Log(Edit2.Text, clBlue, 10, 1);
   DM1.DstCadastro['ULTIMO_CONTATO'] := Now;
   Y := YearOf(DBDateEdit3.Date);
   M := MonthOf(DBDateEdit3.Date);
   D := DayOf(DBDateEdit3.Date);
   if not IsValidDate(Y, M, D) then
    DM1.DstCadastro['PROXIMO_CONTATO'] := IncMonth(Now, 1);
   DBDateEdit2.Refresh;
   DBDateEdit3.Refresh;
  end
 else
  begin
   if (VarIsNull(DBLookupComboBox3.KeyValue)) then
    PrincipalFrm.CamposNaoPreenchidos(Label25);

   if (Trim(Edit2.Text) = '') then
    PrincipalFrm.CamposNaoPreenchidos(Label15);

   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TClienteCadFrm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   BitBtn2.Click;
end;

procedure TClienteCadFrm.Add_Log(Log: string; Cor: TColor; Tamanho, Posicao: byte);
begin
 DBRichEdit1.SelAttributes.Color := Cor;
 DBRichEdit1.SelAttributes.Size := Tamanho;
 DBRichEdit1.Lines.Insert(Posicao, Log);
 application.ProcessMessages;
end;

procedure TClienteCadFrm.Label18MouseEnter(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

end.
