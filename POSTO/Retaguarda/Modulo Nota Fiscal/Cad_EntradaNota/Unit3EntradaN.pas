unit Unit3EntradaN;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Grids, DBGrids, ToolEdit, Mask, CurrEdit, StdCtrls, ExtCtrls,
 DB, IBCustomDataSet, IBQuery, Buttons, DBCtrls, RXDBCtrl, IBSQL, ComCtrls, dateutils,
 Placemnt;

type
 TEntradaNFCadFrm = class(TForm)
   Panel2: TPanel;
   Label8: TLabel;
   Edit3: TEdit;
   Label9: TLabel;
   Qry1Prod: TIBQuery;
   DtsQry1Prod: TDataSource;
   GroupBox1: TGroupBox;
   Label15: TLabel;
   Edit4: TEdit;
   BitBtn2: TBitBtn;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Timer1: TTimer;
   DtsDstNFEntrada: TDataSource;
   DBDateEdit2: TDBDateEdit;
   DBDateEdit1: TDBDateEdit;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
   DtsDst_NF_Entrada_Produtos: TDataSource;
   SQLinsert: TIBSQL;
   SQLUpdate: TIBSQL;
   Panel1: TPanel;
   Label2: TLabel;
   Label3: TLabel;
   Label11: TLabel;
   Label13: TLabel;
   CurrencyEdit1: TCurrencyEdit;
   CurrencyEdit10: TCurrencyEdit;
   CurrencyEdit11: TCurrencyEdit;
   CurrencyEdit12: TCurrencyEdit;
   Label10: TLabel;
   Label17: TLabel;
   CurrencyEdit15: TCurrencyEdit;
   Label18: TLabel;
   CurrencyEdit16: TCurrencyEdit;
   CurrencyEdit17: TCurrencyEdit;
   Panel5: TPanel;
   Label7: TLabel;
   Label27: TLabel;
   Label12: TLabel;
   SQLCascadeCheck: TIBSQL;
   IBNserie: TIBSQL;
   Panel6: TPanel;
   CheckBox1: TCheckBox;
   GroupBox8: TGroupBox;
   Label28: TLabel;
   Label32: TLabel;
   DateEdit1: TDateEdit;
   Edit1: TEdit;
   Edit8: TEdit;
   Label30: TLabel;
   DBEdit3: TDBEdit;
   DstQryCFOP: TDataSource;
   QryCFOP: TIBQuery;
   DBEdit4: TDBEdit;
   QryFornecedor: TIBQuery;
   DBEdit5: TDBEdit;
   QrySintegra: TIBQuery;
   Dts_NF_Entrada: TDataSource;
   Dts_NF_Entrada_Itens: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label29: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Edit5: TEdit;
    Panel7: TPanel;
    SQLEntrada: TIBSQL;
    QryUpdate: TIBQuery;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ListView1: TListView;
    TabSheet2: TTabSheet;
    ListView2: TListView;
    ListView3: TListView;
    TabSheet7: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    Label21: TLabel;
    Label26: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    Panel9: TPanel;
    Label23: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label25: TLabel;
    Label44: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit13: TCurrencyEdit;
    CurrencyEdit14: TCurrencyEdit;
    CurrencyEdit22: TCurrencyEdit;
    CurrencyEdit24: TCurrencyEdit;
    ComboBox1: TComboBox;
    CurrencyEdit21: TCurrencyEdit;
    ComboBox2: TComboBox;
    CurrencyEdit23: TCurrencyEdit;
    CurrencyEdit25: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit27: TCurrencyEdit;
    Panel10: TPanel;
    Label24: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit18: TCurrencyEdit;
    CurrencyEdit19: TCurrencyEdit;
    CurrencyEdit20: TCurrencyEdit;
    CurrencyEdit26: TCurrencyEdit;
    ComboBox3: TComboBox;
    Panel11: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Panel14: TPanel;
    Label68: TLabel;
    Label69: TLabel;

   procedure abilita;
   procedure LimparCampos(tipo: integer);
   procedure New;
   procedure Save;
   procedure SalvaCampos;
   procedure EditCancel;

   procedure AdicionaItem;
   procedure AdicionaNserie;
   function  CamposPreenchidos: Boolean;
   procedure ExcluiItem(Referencia:string);
   procedure Resumo;

   procedure Mostrar;
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure BitBtn2Click(Sender: TObject);
   procedure Edit4KeyPress(Sender: TObject; var Key: char);
   procedure Edit4KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Seleciona_Forn(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit4Enter(Sender: TObject);
   procedure Edit4Exit(Sender: TObject);
   procedure DateEdit2KeyPress(Sender: TObject; var Key: char);
   procedure Edit5KeyPress(Sender: TObject; var Key: char);
   procedure Edit5Change(Sender: TObject);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure Sql;
   procedure Timer1Timer(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure DBGrid1KeyPress(Sender: TObject; var Key: char);
   procedure FormActivate(Sender: TObject);
   procedure CurrencyEdit16KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit9KeyPress(Sender: TObject; var Key: char);

   function LocalizaItem(RefStr: string): integer;
   procedure Edit3KeyPress(Sender: TObject; var Key: char);
   procedure Edit3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit3Change(Sender: TObject);
   procedure FormKeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit17KeyPress(Sender: TObject; var Key: char);
   procedure Edit7KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit13KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit17Change(Sender: TObject);
   procedure CurrencyEdit15Change(Sender: TObject);
   procedure CurrencyEdit11Change(Sender: TObject);
   procedure CurrencyEdit16Change(Sender: TObject);
   procedure CurrencyEdit7Change(Sender: TObject);
   procedure CurrencyEdit13Change(Sender: TObject);
   procedure CurrencyEdit9Change(Sender: TObject);
   procedure DBDateEdit1KeyPress(Sender: TObject; var Key: char);
   procedure PageControl1Change(Sender: TObject);
   procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
     Selected: boolean);
   procedure Edit1Change(Sender: TObject);
   procedure DateEdit1Change(Sender: TObject);
   procedure Edit8Change(Sender: TObject);
   procedure DateEdit1KeyPress(Sender: TObject; var Key: char);
   procedure DBDateEdit1Exit(Sender: TObject);
   procedure DBDateEdit2Exit(Sender: TObject);
   procedure DateEdit1Exit(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure DBLookupComboBox1MouseMove(Sender: TObject;
     Shift: TShiftState; X, Y: integer);
   procedure Filtra_CFOP(Estado: string);
    procedure Label15MouseEnter(Sender: TObject);
    procedure Label15MouseLeave(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label8MouseEnter(Sender: TObject);
    procedure Label8MouseLeave(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl3Change(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit14Change(Sender: TObject);
    procedure CurrencyEdit18Change(Sender: TObject);
    procedure CurrencyEdit4Change(Sender: TObject);
    procedure ListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 EntradaNFCadFrm: TEntradaNFCadFrm;
 SELECT_COD_CLI, OLD_NUM_NF: integer;
 NUM_NF_ALTERADO: boolean = False;
 Nota_Cancelada: boolean = False;

implementation

uses UnitDataM1, UnitSelect, UnitFrmPrincipal, UnitListEntradaN, UnitFuncoes;
//  UnitCPR;

{$R *.dfm}

procedure TEntradaNFCadFrm.abilita;
begin
 case dm1.Dst_NF_Entrada.state of
   dsbrowse:
      begin
       dm1.Dst_NF_Entrada.First;
       // O primeiro registro da tabela de NF_ENTRADA deve ser vazio
       if dm1.Dst_NF_Entrada['COD_NF_ENTRADA'] = 0 then
        DM1.HandleBtn(True, False, False, False, False, True, True, True, True, True, True);
       LimparCampos(0);
       panel2.Enabled := False;
       Edit5.Enabled := False;
       groupbox1.Enabled := False;
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label21);
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label26);
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label4);
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label6);
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label1);
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label15);
       Self.KeyPreview := True;                         //sair da tela com esc
       BitBtn2.Enabled := False;
       Panel8.Enabled  := False;
       Panel9.Enabled  := False;
       Panel10.Enabled := False;
       Panel11.Enabled := False;
      end;

   dsinsert:
      begin
       Self.KeyPreview := False;                        //sair da tela com esc
       panel2.Enabled := True;
       Edit5.Enabled := True;
       groupbox1.Enabled := True;
       Edit4.SetFocus;
       LimparCampos(0);
       DBDateEdit2.Date := now;
       BitBtn2.Enabled := True;
       Panel8.Enabled  := True;
       Panel9.Enabled  := True;
       Panel10.Enabled := True;
       Panel11.Enabled := True;
      end;

   dsedit:
      begin
       Self.KeyPreview := False;//sair da tela com esc
       panel2.Enabled := True;
       Edit5.Enabled := True;
       groupbox1.Enabled := True;
       Edit4.SetFocus;
       BitBtn2.Enabled := True;
       Panel8.Enabled  := True;
       Panel9.Enabled  := True;
       Panel10.Enabled := True;
       Panel11.Enabled := True;   
      end;
  end;

 Panel14.Visible         := Nota_Cancelada;
 PageControl3.ActivePage := TabSheet6;
 PageControl1.ActivePage := TabSheet1;
 PageControl1Change(self);
end;

procedure TEntradaNFCadFrm.LimparCampos(tipo: integer);
begin
 //limpa todos os campos de formulario
 if tipo = 0 then
  begin
   Edit4.Text := '';
   CurrencyEdit2.Clear;
   CurrencyEdit3.Clear;
   CurrencyEdit4.Clear;
   CurrencyEdit5.Clear;
   CurrencyEdit6.Clear;
   CurrencyEdit7.Clear;
   CurrencyEdit8.Clear;
   CurrencyEdit9.Clear;
   Edit3.Clear;
   Edit5.Clear;
   DBEdit5.Clear;
   CurrencyEdit1.Clear;
   CurrencyEdit10.Clear;
   CurrencyEdit11.Clear;
   CurrencyEdit12.Clear;
   CurrencyEdit13.Clear;
   CurrencyEdit14.Clear;
   CurrencyEdit15.Clear;
   CurrencyEdit16.Clear;
   CurrencyEdit17.Clear;
   CurrencyEdit18.Clear;
   CurrencyEdit19.Clear;
   CurrencyEdit20.Clear;
   CurrencyEdit21.Clear;
   CurrencyEdit22.Clear;
   CurrencyEdit23.Clear;
   CurrencyEdit24.Clear;
   CurrencyEdit25.Clear;
   CurrencyEdit26.Clear;
   CurrencyEdit27.Clear;
   ComboBox2.ItemIndex := 0;
   ComboBox3.ItemIndex := 0;
   ListView1.Items.Clear;
   ListView2.Items.Clear;
   ListView3.Items.Clear;
   CheckBox1.Checked := False;
   GroupBox8.Visible := False;
  end;

 //limpa apenas os campos referentes a cadastro de produto
 if tipo = 1 then
  begin
   CurrencyEdit1.Clear;
   CurrencyEdit10.Clear;
   CurrencyEdit11.Clear;
   CurrencyEdit12.Clear;
   CurrencyEdit15.Clear;
   CurrencyEdit16.Clear;
   CurrencyEdit17.Clear;
   DBEdit5.Clear;
  end;
end;

procedure TEntradaNFCadFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Edit4.SetFocus;
  end;
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TEntradaNFCadFrm.BitBtn2Click(Sender: TObject);
begin
 Selectfrm.Caption := 'Selecione o Fornecedor';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Forn;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT CODCLI, NOME, UF');
   IBQuery1.sql.Add('FROM CADASTRO WHERE CODCLI > 0 or TIPO = ' + quotedstr('F'));
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TEntradaNFCadFrm.Seleciona_Forn(Sender: TObject);
var
 ESTADO: string;
begin
 edit4.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit4.Text := SelectFrm.IBQuery1['NOME'];
   SELECT_COD_CLI := SelectFrm.IBQuery1['CODCLI'];
   if not VarIsNull(SelectFrm.IBQuery1['UF']) then
    ESTADO := SelectFrm.IBQuery1['UF'];
  end;
 selectFrm.Close;
 Filtra_CFOP(ESTADO);
end;

procedure TEntradaNFCadFrm.Edit4KeyPress(Sender: TObject; var Key: char);
begin
 if key = #$20 then
   BitBtn2Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2Click(self);
  end;
  
 if key = #27 then
  begin
   key := #0;
   PrincipalFrm.SpeedButton6.Click;
  end;

 if key = #13 then
  begin
   key := #0;
   if DBLookUpComboBox1.CanFocus then
    DBLookUpComboBox1.SetFocus;
  end;
end;

procedure TEntradaNFCadFrm.Edit4KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_delete then
  begin
   tedit(Sender).Text := '';
  end;
end;


procedure TEntradaNFCadFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ListView1.ItemIndex := -1;
 Self.KeyPreview := False;
 Action := DM1.CanCloseFrm(DM1.Dst_NF_Entrada);
end;

procedure TEntradaNFCadFrm.Edit4Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
end;

procedure TEntradaNFCadFrm.Edit4Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TEntradaNFCadFrm.DateEdit2KeyPress(Sender: TObject; var Key: char);
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

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TEntradaNFCadFrm.Edit5KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   if panel3.Visible = False then
     if Edit3.CanFocus then
      Edit3.SetFocus
   else
    begin
     Edit5.Text := '';
     panel3.Visible := False;
    end;
  end;

 if key = #13 then
  begin
   key := #0;
   if edit5.Text <> '' then
    begin
     if (edit5.Text = Qry1Prod['NOME']) and (panel3.Visible = False) then
      begin
       if CurrencyEdit17.CanFocus then
         CurrencyEdit17.SetFocus;
      end
     else
      begin
       if Qry1Prod.RecordCount = 1 then
         dbgrid1dblclick(self)       //abre registro
       else
        begin
         if Qry1Prod.RecordCount <> 0 then
          begin
           if dbgrid1.CanFocus then
             dbgrid1.SetFocus;
          end
         else
          begin
           Panel3.Visible := False;
           Application.MessageBox('Produto não Cadastrado.', 'Atenção!', mb_ok + mb_iconerror);
           if edit5.CanFocus then
             edit5.Clear;
          end;
        end;
      end;
    end
   else
    begin
     if Edit3.Text = '' then
      begin
{       Panel8.Enabled  := True;
       Panel9.Enabled  := True;
       Panel10.Enabled := True;
       Panel11.Enabled := True;   }
       PageControl3.ActivePage := TabSheet7;
       PageControl2.ActivePage := TabSheet3;
        if CurrencyEdit14.CanFocus then
         CurrencyEdit14.SetFocus;
      end
     else
      Perform(wm_nextdlgctl, 1,0)
    end;
  end;
end;

procedure TEntradaNFCadFrm.Edit5Change(Sender: TObject);
begin
 timer1.Enabled := False;
 timer1.Enabled := True;
 //---desabilita e limpa campos ao apagar nome Produto--
 if edit5.Text = '' then
  begin
   LimparCampos(1);
   PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label10);
   PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label3);
   PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label11);
   PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label17);
   PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label18);
   PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label2);
   Panel1.Enabled := False;
   Panel5.Enabled := False;
  end;
end;

procedure TEntradaNFCadFrm.DBGrid1DblClick(Sender: TObject);
 //grid de listagem de produtos
begin
 edit5.onchange := nil;
 edit3.onchange := nil;
 edit3.Text := Qry1Prod['REFERENCIA'];
 edit5.Text := Qry1Prod['NOME'];

 if Qry1Prod['Enable_Numserie'] = 0 then
   CheckBox1.Checked := False
 else
   CheckBox1.Checked := True;

 edit5.OnChange := edit5change;
 edit3.OnChange := edit3change;
 Panel3.Visible := False;
 Panel1.Enabled := True;
 panel5.Enabled := True;
 Timer1.Enabled := False;
 if CurrencyEdit17.CanFocus then
  CurrencyEdit17.SetFocus;
end;

procedure TEntradaNFCadFrm.Sql;//sql de seleção de produtos
begin
 with Qry1Prod do
  begin
   Close;
   sql.Clear;
   //--para nome de produtos-----
   if Edit5.Focused then
    begin
     sql.add('Select Cod_Produtos,REFERENCIA, Nome, APR_UND, Enable_Numserie, S_TRIB, CL_FIS,');
     sql.add('ALIQUOTA_ICMS, ALIQUOTA_IPI from Produtos where UPPER(NOME) LIKE UPPER(:1)');
     SQL.Add('order by NOME');
     params[0].AsString := '%' + edit5.Text + '%';
     prepare;
     Open;
     panel3.Visible := True;
    end;
   //--para referencia de produtos-----
   if Edit3.Focused then
    begin
     sql.add('Select Cod_Produtos,REFERENCIA, Nome, APR_UND, Enable_Numserie, S_TRIB, CL_FIS,');
     sql.add('ALIQUOTA_ICMS, ALIQUOTA_IPI from Produtos where UPPER(REFERENCIA) LIKE UPPER(:1)');
     params[0].AsString := edit3.Text;
     prepare;
     Open;
     if Qry1Prod.RecordCount <> 0 then
      DBGrid1DblClick(self);
    end;
  end;
end;

procedure TEntradaNFCadFrm.Timer1Timer(Sender: TObject);
begin
 if edit5.Focused then
   edit3.Text := '';

 if (edit5.Text <> '') or (edit3.Text <> '') then
  begin
   Sql;
  end
 else
  begin
   panel3.Visible := False;
  end;
 timer1.Enabled := False;
end;

procedure TEntradaNFCadFrm.FormCreate(Sender: TObject);
begin
 panel3.width := Edit5.Width;
 panel3.left := Edit5.Left;
 panel3.Top  := (Edit5.Top + Edit5.Height) + 1;
 DBgrid1.Columns[0].Width := Panel3.Width - 24;
 
 PageControl1.ActivePage := TabSheet1;
 TabSheet2.TabVisible := False;
 DM1.Dst_NF_Entrada_Itens.DataSource := DtsDstNFEntrada; //masterdetail Nfentrada X NF_ENTRADA_ITENS
 DM1.Dst_NF_Entrada_NSerie.DataSource := DtsDst_NF_Entrada_Produtos;//masterdetail NF_ENTRADA_ITENS X NF_ENTRADA_NSERIE
 Application.HintHidePause := 10000;
 Application.HintColor := clYellow;
end;

procedure TEntradaNFCadFrm.DBGrid1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
  begin
   dbgrid1dblclick(self);
  end;

 if key = #27 then
  begin
   edit5.SetFocus;
   Panel3.Visible := False;
   edit5.Text := '';
  end;
end;

procedure TEntradaNFCadFrm.New;
begin
 if DM1.newsave(dm1.Dst_NF_Entrada) then
  begin
   DM1.Dst_NF_Entrada['FISCAL'] := 0;
   DM1.Dst_NF_Entrada['SITUACAO_NF'] := 'N';
   DM1.Dst_NF_Entrada['ICMS_SUBST_INT'] := 0;
   DM1.Dst_NF_Entrada['ESPECIE'] := 'NF';
   abilita;
  end;
end;

procedure TEntradaNFCadFrm.EditCancel;
begin
 if DM1.EditCancel(dm1.Dst_NF_Entrada) then
  begin
   Abilita;
  end;
end;

procedure TEntradaNFCadFrm.Save;
begin
 DM1.Dst_NF_Entrada.UpdateRecord;
 if ListView1.Items.Count <= 0 then
  begin
   Application.MessageBox('A Nota Fiscal deve ter pelo menos um item cadastrado.', 'Atenção!', MB_OK + MB_ICONINFORMATION);
  end
 else
  begin
   if DM1.Dst_NF_Entrada.State = dsInsert then
    begin
     SQLEntrada.Close;
     SQLEntrada.SQL.Clear;
     SQLEntrada.SQL.Add('select num_nf from nf_entrada');
     SQLEntrada.SQL.Add('where cod_cli_fornecedor = :Fornecedor and num_nf = :num_nf');
     SQLEntrada.Params.ByName('Fornecedor').AsInteger := SELECT_COD_CLI;
     SQLEntrada.Params.ByName('num_nf').AsString := DBEdit1.Text;
     SQLEntrada.ExecQuery;

     if SQLEntrada.RecordCount > 0 then
      Application.MessageBox(PChar('Já existe uma Nota Fiscal de Entrada com o Nº: ' + DBEdit1.Text + #13 +
                             ' para o Fornecedor: ' + Edit4.Text + '. Verifique!'),
                             'Atenção!', MB_ICONINFORMATION + MB_OK)
     else
      begin
       SalvaCampos;
      end;
    end
   else if DM1.Dst_NF_Entrada.State = dsEdit then
    begin
     SQLEntrada.Close;
     SQLEntrada.SQL.Clear;
     SQLEntrada.SQL.Add('select num_nf from nf_entrada');
     SQLEntrada.SQL.Add('where cod_cli_fornecedor = :Fornecedor and num_nf = :num_nf');
     SQLEntrada.SQL.Add('and COD_NF_ENTRADA <> :cod_nf');
     SQLEntrada.Params.ByName('cod_nf').AsInteger := DM1.Dst_NF_Entrada['COD_NF_ENTRADA'];
     SQLEntrada.Params.ByName('Fornecedor').AsInteger := SELECT_COD_CLI;
     SQLEntrada.Params.ByName('num_nf').AsString := DBEdit1.Text;
     SQLEntrada.ExecQuery;

     if SQLEntrada.RecordCount > 0 then
      Application.MessageBox(PChar('Já existe uma Nota Fiscal de Entrada com o Nº: ' + DBEdit1.Text + #13 +
                             ' para o Fornecedor: ' + Edit4.Text + '. Verifique!'),
                             'Atenção!', MB_ICONINFORMATION + MB_OK)
     else
      SalvaCampos;
    end;
  end;
end;

procedure TEntradaNFCadFrm.SalvaCampos;
var
 x, y, CodEntrad, CodEntradProd, teste, Count: integer;
 NumNota: string;
// Lanca_Financeiro: boolean;
begin
// Lanca_Financeiro := False;
 CodEntrad := 0;
 teste := 0;
 //------verifica se nº de serie bate com QUANTIDADE cadastrada-----
 for x := 0 to ListView1.Items.Count - 1 do
  begin
   if ListView1.Items[x].SubItems.Strings[13] = '1' then
    begin
     teste := 0;
     Count := 0;

     for y := 0 to ListView3.Items.Count - 1 do
      begin
       if ListView1.Items[x].SubItems.Strings[11] = ListView3.Items[y].Caption then
         Count := Count + 1;
      end;

     if Count = StrToFloat(ListView1.Items[x].SubItems.Strings[4]) then
       teste := 0
     else
       teste := teste + 1;
    end;
  end;

 if teste = 0 then //verificaçao N.SERIE X QUANTIDADE.
  begin
   if CamposPreenchidos then
    begin
     // Busca informações do Fornecedor
     with QryFornecedor do
      begin
       Close;
       UnPrepare;
       SQL.Clear;
       SQL.Add('Select CODCLI, NOME, ENDERECO, BAIRRO, CIDADE, FONE, CEP, CGCCPF, INSCESTRG, UF');
       SQL.Add('from CADASTRO where codcli = ' + IntToStr(SELECT_COD_CLI));
       Prepare;
       Open;
      end;

     if dm1.Dst_NF_Entrada.State = dsEdit then
      begin
       CodEntrad := DM1.Dst_NF_Entrada['COD_NF_ENTRADA']; //para salvar produtos na nota

       if not Nota_Cancelada then
        begin
         with QryUpdate do
          begin
           Close;
           UnPrepare;
           Prepare;
           Open;
          end;

         QryUpdate.First;

         while not QryUpdate.Eof do
          begin
           with SQLUpdate do
            begin
             Close;
             SQL.Clear;
             SQL.Add('update PRODUTOS set EST_ATUAL = EST_ATUAL - :QUANTIDADE');
             SQL.Add('where Cod_Produtos = :Cod_Produtos');
             Params.ByName('QUANTIDADE').AsFloat := QryUpdate.FieldByName('QUANTIDADE').AsFloat;
             Params.ByName('Cod_Produtos').AsInteger := QryUpdate.FieldByName('COD_PRODUTOS').AsInteger;
             Prepare;
             ExecQuery;
             Transaction.CommitRetaining;
             QryUpdate.Next;
            end;
          end;

         //------delete de antigos nº de serie--------
         //--tabela NF_ENTRADA_NSERIE--
         with SQLinsert do
          begin
           Close;
           SQL.Clear;
           SQL.Add('delete from NF_ENTRADA_NSERIE where COD_NF_ENTRADA_ITENS=:COD_NF_ENTRADA_ITENS');
           Params.ByName('COD_NF_ENTRADA_ITENS').AsInteger := DM1.Dst_NF_Entrada_Itens['COD_NF_ENTRADA_ITENS'];
           Prepare;
           ExecQuery;
           Transaction.CommitRetaining;
          end;
         //------tabela Produtos_NSerie--------
         with SQLinsert do
          begin
           Close;
           SQL.Clear;
           SQL.Add('delete from Produtos_NSerie where COD_NF_ENTRADA=:COD_NF_ENTRADA');
           Params.ByName('COD_NF_ENTRADA').AsInteger := dm1.Dst_NF_Entrada['COD_NF_ENTRADA'];
           Prepare;
           ExecQuery;
           Transaction.CommitRetaining;
          end;

         //------delete de antigos produtos--------
         with SQLinsert do
          begin
           Close;
           SQL.Clear;
           SQL.Add('delete from NF_ENTRADA_ITENS where COD_NF_ENTRADA=:COD_NF_ENTRADA');
           Params.ByName('COD_NF_ENTRADA').AsInteger := dm1.Dst_NF_Entrada['COD_NF_ENTRADA'];
           Prepare;
           ExecQuery;
           Transaction.CommitRetaining;
          end;
        end;
      end

     else if dm1.Dst_NF_Entrada.State = dsInsert then
      begin
       Dm1.IBSQLGen_id.Close;
       Dm1.IBSQLGen_id.SQL.Clear;
       Dm1.IBSQLGen_id.SQL.add('SELECT GEN_ID(GCOD_NF_ENTRADA, 0) FROM RDB$DATABASE');
       Dm1.IBSQLGen_id.ExecQuery;
       CodEntrad := Dm1.IBSQLGen_id.Fields[0].AsInteger + 1;
//       if Application.MessageBox('Deseja lançar essa Nota Fiscal no Financeiro?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
//        Lanca_Financeiro := True;
      end;

     dm1.Dst_NF_Entrada['COD_CLI_FORNECEDOR'] := SELECT_COD_CLI;  //codcli do fornecedor vindo da tela select
     dm1.Dst_NF_Entrada['ICMS_ANTECIPADO'] := CurrencyEdit23.Value;
     dm1.Dst_NF_Entrada['COD_FISCAL_ICMS'] := ComboBox2.ItemIndex;
     dm1.Dst_NF_Entrada['COD_FISCAL_IPI'] := ComboBox3.ItemIndex;
     dm1.Dst_NF_Entrada['ALIQUOTA_ICMS_DIF'] := CurrencyEdit21.Value;
     dm1.Dst_NF_Entrada['VALOR_ICMS_DIF'] := CurrencyEdit24.Value;
     dm1.Dst_NF_Entrada['BASE_IPI'] := CurrencyEdit18.Value;
     dm1.Dst_NF_Entrada['OUTRAS_IPI'] := CurrencyEdit19.Value;
     dm1.Dst_NF_Entrada['ICMS_SUBST_INT'] := ComboBox1.ItemIndex;
     dm1.Dst_NF_Entrada['VALOR_ISENTO_ICMS'] := CurrencyEdit8.Value;
     dm1.Dst_NF_Entrada['VALOR_ISENTO_IPI'] := CurrencyEdit20.Value;
     dm1.Dst_NF_Entrada['VALOR_IPI'] := CurrencyEdit7.Value;
     dm1.Dst_NF_Entrada['ALIQUOTA_ICMS'] := CurrencyEdit25.Value;
     dm1.Dst_NF_Entrada['ALIQUOTA_IPI'] := CurrencyEdit26.Value;
     dm1.Dst_NF_Entrada['OUTRAS_ICMS'] := CurrencyEdit22.Value;
     dm1.Dst_NF_Entrada['VALOR_FRETE'] := CurrencyEdit2.Value;
     dm1.Dst_NF_Entrada['MODELO_NF'] := '1A';
     dm1.Dst_NF_Entrada['EMITENTE_NF'] := 'T';
     dm1.Dst_NF_Entrada['VALOR_SEGURO'] := CurrencyEdit3.Value;
     dm1.Dst_NF_Entrada['VALOR_TOTALPRODUTO'] := CurrencyEdit4.Value;
     dm1.Dst_NF_Entrada['OUTRAS_DESPESAS'] := CurrencyEdit5.Value;
     dm1.Dst_NF_Entrada['VALOR_ICMS_SUBST'] := CurrencyEdit6.Value;
     dm1.Dst_NF_Entrada['BASE_ICMS_SUBST'] := CurrencyEdit27.Value;
     dm1.Dst_NF_Entrada['VALOR_TOTALNF'] := CurrencyEdit9.Value;
     dm1.Dst_NF_Entrada['BASE_ICMS'] := CurrencyEdit14.Value;
     dm1.Dst_NF_Entrada['VALOR_ICMS'] := CurrencyEdit13.Value;
     if not VarIsNull(QryFornecedor['NOME']) then
      dm1.Dst_NF_Entrada['NOME_FORNECEDOR'] := QryFornecedor['NOME'];
     if not VarIsNull(QryFornecedor['ENDERECO']) then
      dm1.Dst_NF_Entrada['ENDERECO_FORNECEDOR'] := QryFornecedor['ENDERECO'];
     if not VarIsNull(QryFornecedor['BAIRRO']) then
      dm1.Dst_NF_Entrada['BAIRRO_FORNECEDOR'] := QryFornecedor['BAIRRO'];
     if not VarIsNull(QryFornecedor['CIDADE']) then
      dm1.Dst_NF_Entrada['CIDADE_FORNECEDOR'] := QryFornecedor['CIDADE'];
     if not VarIsNull(QryFornecedor['FONE']) then
      dm1.Dst_NF_Entrada['FONE_FORNECEDOR'] := QryFornecedor['FONE'];
     if not VarIsNull(QryFornecedor['CEP']) then
      dm1.Dst_NF_Entrada['CEP_FORNECEDOR'] := QryFornecedor['CEP'];
     if not VarIsNull(QryFornecedor['CGCCPF']) then
      dm1.Dst_NF_Entrada['CNPJ_FORNECEDOR'] := QryFornecedor['CGCCPF'];
     if not VarIsNull(QryFornecedor['INSCESTRG']) then
      dm1.Dst_NF_Entrada['IE_FORNECEDOR'] := QryFornecedor['INSCESTRG'];
     if not VarIsNull(QryFornecedor['UF']) then
      dm1.Dst_NF_Entrada['UF_FORNECEDOR'] := QryFornecedor['UF'];
     if not VarIsNull(QryCFOP['DESC_OPERACAO']) then
      dm1.Dst_NF_Entrada['NATUREZA_OP'] := QryCFOP['DESC_OPERACAO'];

     NumNota := DBEdit1.Text;
     DM1.NewSave(dm1.Dst_NF_Entrada);

     if not Nota_Cancelada then
      begin
       //-----------loop para leitura de dados da listview-------------
       for x := 0 to ListView1.Items.Count - 1 do
        begin
         //--------valor do codentrada de produto que sera usado no nº de serie-----
         Dm1.IBSQLGen_id.Close;
         Dm1.IBSQLGen_id.SQL.Clear;
         Dm1.IBSQLGen_id.SQL.add('SELECT GEN_ID(GCOD_NF_ENTRADA_ITENS, 0) FROM RDB$DATABASE');
         Dm1.IBSQLGen_id.ExecQuery;
         CodEntradProd := Dm1.IBSQLGen_id.Fields[0].AsInteger + 1;
         //--------------salva dados inseridos na tabela NF_ENTRADA_ITENS (listview1)-----------
         with SQLinsert do
          begin
           Close;
           SQL.Clear;
           SQL.Add('insert into NF_ENTRADA_ITENS(COD_PRODUTOS,COD_NF_ENTRADA, CL_FIS, S_TRIB, QUANTIDADE, APR_UND, PRC_CUSTO, VALOR_DESCONTO, SUBTOTAL,ALIQUOTA_ICMS, ALIQUOTA_IPI, VALOR_IPI,ULTATUALCODSETORUSER,ULTATUALCODSETOR,DATAHORA,ULTATUAL,');
           SQL.Add('ENABLE_NUMSERIE, REF_PRODUTOS, BASE_ICMS, BASE_ICMS_SUBST, PERC_DESCONTO, PRODUTO, NUM_ITEM)');
           SQL.Add('VALUES (:COD_PRODUTOS,:COD_NF_ENTRADA, :CL_FIS, :S_TRIB, :QUANTIDADE, :APR_UND, :PRC_CUSTO, :VALOR_DESCONTO, :SUBTOTAL,:ALIQUOTA_ICMS, :ALIQUOTA_IPI, :VALOR_IPI,:ULTATUALCODSETORUSER,:ULTATUALCODSETOR,:DATAHORA,:ULTATUAL,');
           SQL.Add(':ENABLE_NUMSERIE, :REF_PRODUTOS, :BASE_ICMS, :BASE_ICMS_SUBST, :PERC_DESCONTO, :PRODUTO, :NUM_ITEM)');
           Params.ByName('COD_NF_ENTRADA').AsInteger := CodEntrad;
           Params.ByName('REF_PRODUTOS').AsString := ListView1.Items[x].Caption;
           Params.ByName('PRODUTO').AsString := ListView1.Items[x].SubItems.Strings[0];
           Params.ByName('CL_FIS').AsString := ListView1.Items[x].SubItems.Strings[1];
           Params.ByName('S_TRIB').AsString := ListView1.Items[x].SubItems.Strings[2];
           Params.ByName('APR_UND').AsString := ListView1.Items[x].SubItems.Strings[3];
           Params.ByName('QUANTIDADE').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[4]);
           Params.ByName('PRC_CUSTO').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[5]);
           Params.ByName('PERC_DESCONTO').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[6]);
           Params.ByName('SUBTOTAL').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[7]);
//           if not (ListView1.Items[x].SubItems.Strings[8] = '') then
            Params.ByName('ALIQUOTA_ICMS').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[8]);
//           else
//            Params.ByName('ALIQUOTA_ICMS').AsFloat := 0.00;
//           if not (ListView1.Items[x].SubItems.Strings[9] = '') then
            Params.ByName('ALIQUOTA_IPI').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[9]);
//           else
//            Params.ByName('ALIQUOTA_IPI').AsFloat := 0.00;
           Params.ByName('VALOR_IPI').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[10]);
           Params.ByName('COD_PRODUTOS').AsInteger := StrToInt(ListView1.Items[x].SubItems.Strings[11]);
           Params.ByName('ENABLE_NUMSERIE').AsInteger := StrToInt(ListView1.Items[x].SubItems.Strings[13]);
           Params.ByName('VALOR_DESCONTO').AsFloat := StrToFloat(ListView1.Items[x].SubItems.Strings[14]);
           Params.ByName('DATAHORA').AsDate := Now;
           Params.ByName('ULTATUAL').AsDateTime := Now;
           Params.ByName('ULTATUALCODSETORUSER').AsInteger := CodSetorUser;
           Params.ByName('ULTATUALCODSETOR').AsInteger := CodSetor;
           Params.ByName('BASE_ICMS_SUBST').AsFloat := CurrencyEdit8.Value;
           Params.ByName('BASE_ICMS').AsFloat := CurrencyEdit14.Value;
           Params.ByName('NUM_ITEM').AsInteger := x + 1;
           Prepare;
           ExecQuery;
          end;
         //-------- update na tabela de PRODUTOS (string 12 pode ser 0 (mostra) e 1, 2 (adicionaitems))
         if (ListView1.Items[x].SubItems.Strings[12] = '1') or (ListView1.Items[x].SubItems.Strings[12] = '2') then
          begin
           with SQLUpdate do
            begin
             Close;
             SQL.Clear;
             SQL.Add('update PRODUTOS set CL_FIS = :CL_FIS, EST_ATUAL = EST_ATUAL + :QUANTIDADE, S_TRIB = :S_TRIB, APR_UND = :APR_UND,ALIQUOTA_ICMS=:ALIQUOTA_ICMS,ALIQUOTA_IPI=:ALIQUOTA_IPI,PRC_CUSTO=:PRC_CUSTO');
             SQL.Add(', COD_CLI_FORNECEDOR = :COD_CLI_FORNECEDOR, ENABLE_NUMSERIE = :ENABLE_NUMSERIE, ULT_COMPRA = :ULT_COMPRA');
             SQL.Add('where Cod_Produtos = :Cod_Produtos');
             Params.ByName('Cod_Produtos').AsInteger := StrToInt(ListView1.Items[x].SubItems.Strings[11]);
             Params.ByName('CL_FIS').AsVariant := ListView1.Items[x].SubItems.Strings[1];
             Params.ByName('S_TRIB').AsVariant := ListView1.Items[x].SubItems.Strings[2];
             Params.ByName('QUANTIDADE').AsFloat := strtofloat(ListView1.Items[x].SubItems.Strings[4]);
             Params.ByName('APR_UND').AsString := ListView1.Items[x].SubItems.Strings[3];
             Params.ByName('PRC_CUSTO').AsFloat := strtofloat(ListView1.Items[x].SubItems.Strings[7]) / strtofloat(ListView1.Items[x].SubItems.Strings[4]);
             Params.ByName('ALIQUOTA_ICMS').AsFloat := strtofloat(ListView1.Items[x].SubItems.Strings[8]);
             Params.ByName('ALIQUOTA_IPI').AsFloat := strtofloat(ListView1.Items[x].SubItems.Strings[9]);
             Params.ByName('COD_CLI_FORNECEDOR').AsInteger := SELECT_COD_CLI; //codcli do fornecedor vindo da tela select
             Params.ByName('ENABLE_NUMSERIE').AsString := ListView1.Items[x].SubItems.Strings[13];
             Prepare;
             ExecQuery;
            end;
          end;
         SQLinsert.Transaction.CommitRetaining;

         //----------------SALVANDO O Nº DE SERIE (listview3) NF_ENTRADA_NSERIE----------------------
         if ListView3.Items.Count > 0 then
          begin
           for y := 0 to ListView3.Items.Count - 1 do
             if StrToInt(ListView3.Items.Item[y].Caption) = StrToInt(ListView1.Items[x].SubItems.Strings[11]) then
              begin
               with SQLinsert do
                begin
                 Close;
                 SQL.Clear;
                 SQL.Add('insert into NF_ENTRADA_NSERIE(COD_NF_ENTRADA_NSERIE, COD_NF_ENTRADA_ITENS, COD_NF_ENTRADA, NUM_SERIE,COD_PRODUTOS,ULTATUALCODSETORUSER,ULTATUALCODSETOR,DATAHORA,ULTATUAL,GARANTIA_POSVENDA,FIM_GARANTIA_FABRICANTE)');
                 SQL.Add('VALUES (:COD_NF_ENTRADA_NSERIE, :COD_NF_ENTRADA_ITENS, :COD_NF_ENTRADA, :NUM_SERIE, :COD_PRODUTOS,:ULTATUALCODSETORUSER,:ULTATUALCODSETOR,:DATAHORA,:ULTATUAL,:GARANTIA_POSVENDA,:FIM_GARANTIA_FABRICANTE)');
                 Params.ByName('COD_NF_ENTRADA_NSERIE').AsInteger := 0;
                 Params.ByName('COD_NF_ENTRADA_ITENS').AsInteger := CodEntradProd;
                 Params.ByName('COD_NF_ENTRADA').AsInteger := CodEntrad;
                 Params.ByName('NUM_SERIE').AsVariant := ListView3.Items[y].SubItems.Strings[0];
                 Params.ByName('GARANTIA_POSVENDA').AsVariant := ListView3.Items[y].SubItems.Strings[1];
                 Params.ByName('FIM_GARANTIA_FABRICANTE').Asdate := strtodate(ListView3.Items[y].SubItems.Strings[2]);
                 Params.ByName('COD_PRODUTOS').AsVariant := ListView3.Items[y].Caption;
                 Params.ByName('DATAHORA').AsDateTime := now;
                 Params.ByName('ULTATUAL').AsDateTime := now;
                 Params.ByName('ULTATUALCODSETORUSER').AsInteger := CodSetorUser;
                 Params.ByName('ULTATUALCODSETOR').AsInteger := CodSetor;
                 Prepare;
                 ExecQuery;
                end;

               //----------------SALVANDO O Nº DE SERIE (listview3) Produtos_NSerie----------------------
               with SQLUpdate do
                begin
                 Close;
                 SQL.Clear;
                 SQL.Add('insert into Produtos_NSerie (NUM_SERIE, COD_NF_ENTRADA_ITENS, Cod_Produtos, ULTATUAL, ULTATUALCODSETORUSER,ULTATUALCODSETOR,DATA_COMPRA,GARANTIA_POSVENDA,FIM_GARANTIA_FABRICANTE,PRC_CUSTO,COD_NF_ENTRADA)');
                 SQL.Add('values (:NUM_SERIE, :COD_NF_ENTRADA_ITENS, :Cod_Produtos, :ULTATUAL, :ULTATUALCODSETORUSER, :ULTATUALCODSETOR,:DATA_COMPRA,:GARANTIA_POSVENDA,:FIM_GARANTIA_FABRICANTE,:PRC_CUSTO,:COD_NF_ENTRADA)');
                 Params.ByName('COD_NF_ENTRADA_ITENS').AsInteger := CodEntradProd;
                 Params.ByName('NUM_SERIE').AsString := ListView3.Items[y].SubItems.Strings[0];
                 Params.ByName('GARANTIA_POSVENDA').AsVariant := ListView3.Items[y].SubItems.Strings[1];
                 Params.ByName('FIM_GARANTIA_FABRICANTE').AsVariant := ListView3.Items[y].SubItems.Strings[2];
                 Params.ByName('PRC_CUSTO').AsVariant := strtofloat(ListView1.Items[x].SubItems.Strings[7]) / strtofloat(ListView1.Items[x].SubItems.Strings[4]);
                 Params.ByName('COD_NF_ENTRADA').AsInteger := CodEntrad;
                 Params.ByName('Cod_Produtos').AsVariant := ListView3.Items[y].Caption;
                 Params.ByName('DATA_COMPRA').AsVariant := dbdateedit2.Date;
                 Params.ByName('ULTATUAL').AsDateTime := now;
                 Params.ByName('ULTATUALCODSETORUSER').AsInteger := CodSetorUser;
                 Params.ByName('ULTATUALCODSETOR').AsInteger := CodSetor;
                 Prepare;
                 ExecQuery;
                end;
               SQLinsert.Transaction.CommitRetaining;
              end;
          end;
         //-----update da data de compra-------------
         with SQLUpdate do
          begin
           Close;
           SQL.Clear;
           SQL.Add('update PRODUTOS set ULT_COMPRA = :ULT_COMPRA');
           SQL.Add('where Cod_Produtos=:Cod_Produtos');
           Params.ByName('Cod_Produtos').AsInteger := StrToInt(ListView1.Items[x].SubItems.Strings[11]);
           Params.ByName('ULT_COMPRA').AsVariant := dbdateedit2.Date;
           Prepare;
           ExecQuery;
          end;
         SQLinsert.Transaction.CommitRetaining;
        end;
      end;

    { if Lanca_Financeiro then
      begin
       PrincipalFrm.AddaChild(TCprCadFrm, CprCadFrm);
      end;}
    Abilita;
    end
   else
    begin
     Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
       'Atenção!', mb_iconinformation + mb_ok);
    end;
  end
 else
  begin
   for x := 0 to ListView1.Items.Count - 1 do
    begin
     Count := 0;
     for y := 0 to ListView3.Items.Count - 1 do
      begin
       if ListView1.Items.Item[x].SubItems.Strings[11] = ListView3.Items.Item[y].Caption then
         Count := Count + 1;
      end;
     if (ListView1.Items.Item[x].SubItems.Strings[13] = '1') and
       (Count <> strtofloat(ListView1.Items.Item[x].SubItems.Strings[4])) then
       Break;
    end;
   Application.messagebox(PChar('A Quantidade de Nº Serie Cadastrada para o Produto abaixo' +
     #13 + 'é diferente da Quantidade declarada, Por favor Verifique!' +
     #13#13 + 'Produto: ' + ListView1.Items.Item[x].SubItems.Strings[0] +
     #13 + 'Referencia: ' + ListView1.Items.Item[x].Caption),
     'Atenção!', mb_iconinformation + mb_ok);
   edit3.SetFocus;
  end;
end;

procedure TEntradaNFCadFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([dm1.Dst_NF_Entrada, DM1.Dst_NF_Entrada_Itens,
   DM1.Dst_NF_ENTRADA_NSERIE, EntradaNFCadFrm.QrySIntegra,
   EntradaNFCadFrm.Qry1Prod, EntradaNFCadFrm.QryCFOP,
   EntradaNFCadFrm.QryFornecedor]);

 DM1.DefSenderDtsStateChange(dm1.Dst_NF_Entrada);
 Nota_Cancelada := (DM1.Dst_NF_Entrada.FieldByName('SITUACAO_NF').AsString = 'S');
 if dm1.Dst_NF_Entrada.State = dsbrowse then
   abilita;
end;

procedure TEntradaNFCadFrm.CurrencyEdit16KeyPress(Sender: TObject;
 var Key: char);
 var Continuar : boolean;
begin
 Continuar := true;
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 //---------adicionando produtos a nota-------------
 if key = #13 then
  begin
   key := #0;
   if (CurrencyEdit1.Value <> 0) and (CurrencyEdit15.Value <> 0) and
     (CurrencyEdit17.Value <> 0) and (edit5.Text <> '') and
     (edit3.Text <> '') or (LocalizaItem(edit3.Text)<>-1) then
    begin
     if not (CurrencyEdit17.Value = 0) then
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label10);
     if not (CurrencyEdit15.Value = 0) then
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label17);
     if not (CurrencyEdit1.Value = 0) then
       PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label2);

       
     if (CurrencyEdit17.Value * CurrencyEdit1.Value - (CurrencyEdit17.Value * CurrencyEdit1.Value * CurrencyEdit12.Value / 100) <> CurrencyEdit15.Value) and
                (CurrencyEdit15.Value * CurrencyEdit11.Value <> CurrencyEdit16.Value)then
        Continuar := Application.MessageBox('Os valores calculados para "Sub-Total" e "Valor IPI" não conferem.' + #13
                                             + 'Deseja continuar?', 'Atenção!', MB_YESNO) = idYes
        else if (CurrencyEdit17.Value * CurrencyEdit1.Value - (CurrencyEdit17.Value * CurrencyEdit1.Value * CurrencyEdit12.Value / 100) <> CurrencyEdit15.Value) then
              Continuar := Application.MessageBox('O valor calculado para "Sub-Total" não confere.' + #13
                                                   + 'Deseja continuar?', 'Atenção!', MB_YESNO) = idYes
           else if (CurrencyEdit15.Value * CurrencyEdit11.Value / 100 <> CurrencyEdit16.Value) then
                 Continuar := Application.MessageBox('O valor calculado para "Valor IPI" não confere.' + #13
                                                     + 'Deseja continuar?', 'Atenção!', MB_YESNO) = idYes;
     if continuar then
       AdicionaItem;//adiciona produto

     //------muda tabsheet para inseçao de numero de serie----------------
     if CheckBox1.Checked then
      begin
       TabSheet2.TabVisible := True;
       GroupBox8.Visible := True;
       PageControl1.ActivePage := TabSheet2;
       PageControl1Change(self);
       Timer1.Enabled := False;
       CheckBox1.Checked := False;
      end;
    end
   else
    begin
     if CurrencyEdit17.Value = 0 then//QUANTIDADE. for 0
       AdicionaItem
     else
      begin
       Application.messagebox(
         'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
         'Atenção!', mb_iconinformation + mb_ok);
       if (CurrencyEdit15.Value = 0) then
        begin
         PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label17);
         if CurrencyEdit15.canfocus then
          begin
           CurrencyEdit15.SetFocus;
           CurrencyEdit15.SelectAll;
          end;
        end
       else
         PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label17);
       if (trim(Edit5.Text) = '') then
         PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label8)
       else
         PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label8);
       if (CurrencyEdit1.Value = 0) then
        begin
         PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label2);
         if currencyedit1.canfocus then
          begin
           CurrencyEdit1.SetFocus;
           CurrencyEdit1.SelectAll;
          end;
        end
       else
         PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label2);
      end;
    end;
  end;
end;

procedure TEntradaNFCadFrm.CurrencyEdit9KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = '.' then
  key := ',';
  
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PrincipalFrm.SpeedButton5.Click;
  end;
end;

function TEntradaNFCadFrm.LocalizaItem(RefStr: string): integer;
var
 x: integer;
begin
 Result := -1;
 for x := 0 to Listview1.Items.Count - 1 do
  begin
   if Listview1.Items.Item[x].Caption = RefStr then
    begin
     Result := x;
     Break;
    end;
  end;
end;

procedure TEntradaNFCadFrm.AdicionaNserie;
begin
 if trim(edit3.Text) <> '' then
  begin
   Listview3.Items.Insert(0);
   if ListView1.ItemIndex <> -1 then//se houver item selecionado (para alteraçao)
    Listview3.Items.Item[0].Caption := ListView1.Items[ListView1.ItemIndex].SubItems.Strings[11]
   else// se nao houver (para inserçao)
    Listview3.Items.Item[0].Caption := qry1prod['Cod_Produtos'];

   Listview3.Items.Item[0].SubItems.Insert(0, edit3.Text);
   Listview3.Items.Item[0].SubItems.Insert(1, edit8.Text);
   Listview3.Items.Item[0].SubItems.Insert(2, datetostr(dateedit1.date));

   Listview2.Items.Insert(0);
   Listview2.Items.Item[0].Caption := edit3.Text;
  end;
end;

//--------------- Adiciona Item a Lista  ------------------------
procedure TEntradaNFCadFrm.AdicionaItem;
var
 index, x: integer;
begin
 index := LocalizaItem(edit3.Text);
 if index = -1 then
  begin
   if CurrencyEdit17.Value <> 0 then//se QUANTIDADE. nao for 0
    begin
     Listview1.Items.Insert(0);
     Listview1.Items.Item[0].Caption := edit3.Text;
     Listview1.Items.Item[0].SubItems.Insert(0, Edit5.Text);
     Listview1.Items.Item[0].SubItems.Insert(1, DBEdit3.Field.AsString);
     Listview1.Items.Item[0].SubItems.Insert(2, DBEdit4.Field.AsString);
     Listview1.Items.Item[0].SubItems.Insert(3, DBEdit5.Field.AsString);
     Listview1.Items.Item[0].SubItems.Insert(4, FormatCurr('0.00', CurrencyEdit17.Value));
     Listview1.Items.Item[0].SubItems.Insert(5, FormatCurr('0.000000', CurrencyEdit1.Value));
     Listview1.Items.Item[0].SubItems.Insert(6, FormatCurr('0.00', CurrencyEdit12.Value));
     Listview1.Items.Item[0].SubItems.Insert(7, FormatCurr('0.00', CurrencyEdit15.Value));
     Listview1.Items.Item[0].SubItems.Insert(8, FormatCurr('0.00', CurrencyEdit10.Value));
     Listview1.Items.Item[0].SubItems.Insert(9, FormatCurr('0.00', CurrencyEdit11.Value));
     Listview1.Items.Item[0].SubItems.Insert(10, FormatCurr('0.00', CurrencyEdit16.Value));
     Listview1.Items.Item[0].SubItems.Insert(11, Qry1Prod['Cod_Produtos']);
     Listview1.Items.Item[0].SubItems.Insert(12, '1');     //Inserindo Produto
     Listview1.Items.Item[0].SubItems.Insert(13, '0');     //Valor do Desconto
     Listview1.Items.Item[0].SubItems.Insert(14, FormatCurr('0.00', ((CurrencyEdit17.Value * CurrencyEdit1.Value * CurrencyEdit12.Value) / 100)));

     if CheckBox1.Checked then
      ListView1.Items[0].SubItems.Strings[13] := '1';

     Resumo;

     if CurrencyEdit7.Value <> 0 then
      begin
       Label24.Font.Color := clblue;
       Label24.Font.Style := [];
      end
     else if Label24.Font.Color <> clred then
       Label24.Font.Color := clWindowText;

     if CurrencyEdit13.Value <> 0 then
      begin
       Label16.Font.Color := clblue;
       Label16.Font.Style := [];
      end
     else if Label16.Font.Color <> clred then
       Label16.Font.Color := clWindowText;

     Edit3.SetFocus;
     if not checkbox1.Checked then
       Edit3.Clear;
    end
   else// QUANTIDADE = 0 e produto nao listado
    begin
     Application.messagebox('Para adicionar um Produto, Quantidade deve ser diferente de zero',
       'Atenção!', mb_iconinformation + mb_ok);
     CurrencyEdit17.SetFocus;
    end;
  end
 else
  begin
   //-----------exclusao de um item-----------------------------
   // QUANTIDADE = 0 e produto listado
   if CurrencyEdit17.Value = 0 then
    begin
       ExcluiItem(Edit3.Text);
    end
   else// QUANTIDADE <> 0 e produto listado
    begin
     if Listview1.Items.Item[index].SubItems.Strings[13] = '1' then
      begin
       Listview1.Items.Item[0].SubItems.Insert(12, '2');//alterando produto
       Listview1.Items.Item[0].SubItems.Insert(13, '1');//ENABLENSERIE true
      end
     else
      begin
       Listview1.Items.Item[0].SubItems.Insert(12, '2');//alterando produto
       Listview1.Items.Item[0].SubItems.Insert(13, '0');//ENABLENSERIE false
      end;
     //quantidade
     Listview1.Items.Item[index].SubItems.Strings[4] := formatcurr('0.00', CurrencyEdit17.Value + StrToFloat(Listview1.Items.Item[index].SubItems.Strings[4]));
     //sub-total
     Listview1.Items.Item[index].SubItems.Strings[7] := formatcurr('0.00', StrToFloat(Listview1.Items.Item[index].SubItems.Strings[7]) + ((CurrencyEdit17.Value * strtofloat(Listview1.Items.Item[index].SubItems.Strings[5])) - (CurrencyEdit17.Value * strtofloat(Listview1.Items.Item[index].SubItems.Strings[5]) * (strtofloat(Listview1.Items.Item[index].SubItems.Strings[6]) / 100))));
     //Valor IPI
     Listview1.Items.Item[index].SubItems.Strings[10] := formatcurr('0.00', StrToFloat(Listview1.Items.Item[index].SubItems.Strings[7]) * (strtofloat(Listview1.Items.Item[index].SubItems.Strings[9]) / 100));

     //-----Incremento do item adicionado ao total da lista---------
     //se houve ICMS
     if StrToFloat(Listview1.Items.Item[index].SubItems.Strings[8]) > 0 then
      begin
       //base calculo ICMS
       CurrencyEdit14.Value := CurrencyEdit14.Value + StrToFloat(Listview1.Items.Item[index].SubItems.Strings[7]);
      end;
     Resumo;
 
     if Listview1.Items.Item[index].SubItems.Strings[13] = '1' then//ENABLENSERIE true
      begin
       ListView1.Items.Item[index].Selected := True;
       TabSheet2.TabVisible := True;
       PageControl1.ActivePage := TabSheet2;
       PageControl1Change(self);
       Edit3.SetFocus;
      end
     else
      begin
       edit3.Clear;
       Edit3.SetFocus;
      end;
    end;
  end;
 if CurrencyEdit9.Value <> 0 then
  begin
   Label21.Font.Color := clblue;
   Label21.Font.Style := [];
  end
 else if Label21.Font.Color <> clred then
   Label21.Font.Color := clWindowText;
end;


procedure TEntradaNFCadFrm.Edit3KeyPress(Sender: TObject; var Key: char);
begin
{if PageControl1.ActivePage=TabSheet1 then
 if not (key in ['1','2','3','4','5','6','7','8','9','0',#08,#09]) then
  key:=#0;
if PageControl1.ActivePage=TabSheet2 then
 if not (key in ['1','2','3','4','5','6','7','8','9','0','.','-',#08,#09]) then
  key:=#0;}
end;

procedure TEntradaNFCadFrm.Edit3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
var
 QuantList1: integer;
 //,x,index2,index3:integer;
 // SerieRepitido:Boolean;
begin
 //----tratando dos produtos (Referencia)----------------
 if PageControl1.ActivePage = TabSheet1 then
  begin
   if key = vk_return then
    begin
     if edit3.Text <> '' then
      begin
       if edit5.Text <> '' then
        begin
         if CurrencyEdit17.CanFocus then
          CurrencyEdit17.SetFocus;
        end
       else
        begin
         sql;
         if Qry1Prod.RecordCount = 0 then
          begin
           application.messagebox(PChar(edit3.Text + #13#10 + 'Referência não cadastrada.'),
             'Atenção!', mb_Ok + mb_iconerror);
           Edit3.Text := '';
           CheckBox1.Checked := False;
          end;
         edit3.SelectAll;
        end;
      end
     else
      begin
       if Edit5.CanFocus then
        Edit5.SetFocus;
      end;
    end;

   if key = vk_escape then
     Perform(wm_nextdlgctl, 1,0);
   timer1.Enabled := False
  end;
 //----tratando dos nº de serie (Nº de Serie)----------------
 if PageControl1.ActivePage = TabSheet2 then
  begin
   if key = vk_return then
    begin
     Perform(wm_nextdlgctl, 0,0);
    end;
   if key = vk_escape then
    begin
     if ListView2.Items.Count < QuantList1 then
       application.messagebox(PChar('O Quantidade de Itens Cadastrado(s) é superior a Quantidade de Nº de Série ('
         + FormatFloat('0.00', ListView2.Items.Count) + ').' + #13 +
         'Por favor, corrija os dados do Produto antes de Salvar a Nota.'),
         'Atenção!', MB_ICONWARNING + mb_OK);
     PageControl1.ActivePage := TabSheet1;
     PageControl1Change(self);
     edit3.SetFocus;
    end;
  end;
end;

procedure TEntradaNFCadFrm.Edit3Change(Sender: TObject);
begin
 Edit5.Text := '';
 CheckBox1.Checked := False;
 Timer1.Enabled := False;
end;

procedure TEntradaNFCadFrm.FormKeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Self.Close;
  end;
end;

procedure TEntradaNFCadFrm.CurrencyEdit17KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   if Edit5.CanFocus then
    Edit5.SetFocus;
  end;

 if key = #13 then
  begin
   if LocalizaItem(edit3.Text)<>-1 then
     CurrencyEdit16KeyPress(self, key)
   else
     Perform(wm_nextdlgctl, 0,0);
   key := #0;
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', #08, #09]) then
   key := #0;
end;

procedure TEntradaNFCadFrm.Edit7KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0)
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TEntradaNFCadFrm.CurrencyEdit13KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Edit3.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0)
  end;
end;
//----valores sugestionados para o subtotal---------

procedure TEntradaNFCadFrm.CurrencyEdit17Change(Sender: TObject);
begin
 if CurrencyEdit12.Value <> 0 then
   CurrencyEdit15.Value := CurrencyEdit17.Value * CurrencyEdit1.Value -
     CurrencyEdit17.Value * CurrencyEdit1.Value * (CurrencyEdit12.Value / 100)
 else
   CurrencyEdit15.Value := CurrencyEdit17.Value * CurrencyEdit1.Value;
 if CurrencyEdit15.Value <> 0 then
  begin
   Label17.Font.Color := clblue;
   Label17.Font.Style := [];
  end
 else if Label17.Font.Color <> clred then
   Label17.Font.Color := clWindowText
end;

procedure TEntradaNFCadFrm.CurrencyEdit15Change(Sender: TObject);
begin
 if Label17.Font.Color <> clred then
   Label17.Font.Color := clWindowText;
 CurrencyEdit11Change(Self);
end;

//---valor sugestionado para Valor IPI--------
procedure TEntradaNFCadFrm.CurrencyEdit11Change(Sender: TObject);
begin
 CurrencyEdit16.Value := CurrencyEdit15.Value * (CurrencyEdit11.Value / 100);
 if CurrencyEdit16.Value <> 0 then
   Label18.Font.Color := clblue
 else if Label18.Font.Color <> clred then
   Label18.Font.Color := clWindowText
end;

procedure TEntradaNFCadFrm.CurrencyEdit16Change(Sender: TObject);
begin
 Label18.Font.Color := clWindowText
end;

procedure TEntradaNFCadFrm.CurrencyEdit7Change(Sender: TObject);
begin
 if CurrencyEdit7.Value > 0 then
  if Label24.Font.Color <> clred then
    Label24.Font.Color := clBlue;
end;

procedure TEntradaNFCadFrm.CurrencyEdit13Change(Sender: TObject);
begin
 if CurrencyEdit13.Value > 0 then
  if Label16.Font.Color <> clred then
    Label16.Font.Color := clBlue;
end;

procedure TEntradaNFCadFrm.CurrencyEdit9Change(Sender: TObject);
begin
 if CurrencyEdit9.Value > 0 then
  if Label21.Font.Color <> clred then
    Label21.Font.Color := clBlue;
end;

procedure TEntradaNFCadFrm.DBDateEdit1KeyPress(Sender: TObject; var Key: char);
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

procedure TEntradaNFCadFrm.Mostrar;
begin
 FormActivate(self);
 //--------localiza no dataset a nota da listagem-----------
 if dm1.Dst_NF_Entrada.Locate('COD_NF_ENTRADA', EntradaNFListFrm.QryEntradaProd['COD_NF_ENTRADA'], []) then
  begin
   SELECT_COD_CLI := DM1.Dst_NF_Entrada.FieldByName('COD_CLI_FORNECEDOR').AsInteger;
   Nota_Cancelada := (DM1.Dst_NF_Entrada.FieldByName('SITUACAO_NF').AsString = 'S');
  end;

 Panel14.Visible := Nota_Cancelada;
 //-------pega valores da QRY da listagem de notas-------------
 if not varisnull(EntradaNFListFrm.QryEntradaProd['NOME']) then
   edit4.Text := EntradaNFListFrm.QryEntradaProd['NOME'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_FRETE']) then
   CurrencyEdit2.Value := EntradaNFListFrm.QryEntradaProd['VALOR_FRETE'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_SEGURO']) then
   CurrencyEdit3.Value := EntradaNFListFrm.QryEntradaProd['VALOR_SEGURO'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_TOTALPRODUTO']) then
   CurrencyEdit4.Value := EntradaNFListFrm.QryEntradaProd['VALOR_TOTALPRODUTO'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['OUTRAS_DESPESAS']) then
   CurrencyEdit5.Value := EntradaNFListFrm.QryEntradaProd['OUTRAS_DESPESAS'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_TOTALNF']) then
   CurrencyEdit9.Value := EntradaNFListFrm.QryEntradaProd['VALOR_TOTALNF'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_ICMS_SUBST']) then
   CurrencyEdit6.Value := EntradaNFListFrm.QryEntradaProd['VALOR_ICMS_SUBST'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_IPI']) then
   CurrencyEdit7.Value := EntradaNFListFrm.QryEntradaProd['VALOR_IPI'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['BASE_ICMS_SUBST']) then
   CurrencyEdit27.Value := EntradaNFListFrm.QryEntradaProd['BASE_ICMS_SUBST'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_ICMS']) then
   CurrencyEdit13.Value := EntradaNFListFrm.QryEntradaProd['VALOR_ICMS'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['BASE_ICMS']) then
   CurrencyEdit14.Value := EntradaNFListFrm.QryEntradaProd['BASE_ICMS'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['BASE_IPI']) then
   CurrencyEdit18.Value := EntradaNFListFrm.QryEntradaProd['BASE_IPI'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_ISENTO_ICMS']) then
   CurrencyEdit8.Value := EntradaNFListFrm.QryEntradaProd['VALOR_ISENTO_ICMS'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['OUTRAS_ICMS']) then
   CurrencyEdit22.Value := EntradaNFListFrm.QryEntradaProd['OUTRAS_ICMS'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['ALIQUOTA_ICMS_DIF']) then
   CurrencyEdit21.Value := EntradaNFListFrm.QryEntradaProd['ALIQUOTA_ICMS_DIF'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_ICMS_DIF']) then
   CurrencyEdit24.Value := EntradaNFListFrm.QryEntradaProd['VALOR_ICMS_DIF'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['ICMS_ANTECIPADO']) then
   CurrencyEdit23.Value := EntradaNFListFrm.QryEntradaProd['ICMS_ANTECIPADO'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['ALIQUOTA_ICMS']) then
   CurrencyEdit25.Value := EntradaNFListFrm.QryEntradaProd['ALIQUOTA_ICMS'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['VALOR_ISENTO_IPI']) then
   CurrencyEdit20.Value := EntradaNFListFrm.QryEntradaProd['VALOR_ISENTO_IPI'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['OUTRAS_IPI']) then
   CurrencyEdit19.Value := EntradaNFListFrm.QryEntradaProd['OUTRAS_IPI'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['ALIQUOTA_IPI']) then
   CurrencyEdit26.Value := EntradaNFListFrm.QryEntradaProd['ALIQUOTA_IPI'];
 if not varisnull(EntradaNFListFrm.QryEntradaProd['ICMS_SUBST_INT']) then
   ComboBox1.ItemIndex := EntradaNFListFrm.QryEntradaProd.FieldByName('ICMS_SUBST_INT').AsInteger;
 if not varisnull(EntradaNFListFrm.QryEntradaProd['COD_FISCAL_ICMS']) then
   ComboBox2.ItemIndex := EntradaNFListFrm.QryEntradaProd.FieldByName('COD_FISCAL_ICMS').AsInteger;
 if not varisnull(EntradaNFListFrm.QryEntradaProd['COD_FISCAL_IPI']) then
   ComboBox3.ItemIndex := EntradaNFListFrm.QryEntradaProd.FieldByName('COD_FISCAL_IPI').AsInteger;

 DM1.Dst_NF_Entrada_Itens.First;
 //--------------preenche o listview de produtos -----------
 while not DM1.Dst_NF_Entrada_Itens.EOF do
  begin
   Listview1.Items.Insert(0);

   if not VarIsNull(DM1.Dst_NF_Entrada_Itens['REF_PRODUTOS']) then
     Listview1.Items.Item[0].Caption := DM1.Dst_NF_Entrada_Itens['REF_PRODUTOS']
   else
     Listview1.Items.Item[0].Caption := '';

   if not VarIsNull(DM1.Dst_NF_Entrada_Itens['PRODUTO']) then
     Listview1.Items.Item[0].SubItems.Insert(0, DM1.Dst_NF_Entrada_Itens['PRODUTO'])
   else
     Listview1.Items.Item[0].SubItems.Insert(0, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['CL_FIS']) then
     Listview1.Items.Item[0].SubItems.Insert(1, DM1.Dst_NF_Entrada_Itens['CL_FIS'])
   else
     Listview1.Items.Item[0].SubItems.Insert(1, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['S_TRIB']) then
     Listview1.Items.Item[0].SubItems.Insert(2, DM1.Dst_NF_Entrada_Itens['S_TRIB'])
   else
     Listview1.Items.Item[0].SubItems.Insert(2, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['APR_UND']) then
     Listview1.Items.Item[0].SubItems.Insert(3, DM1.Dst_NF_Entrada_Itens['APR_UND'])
   else
     Listview1.Items.Item[0].SubItems.Insert(3, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['QUANTIDADE']) then
     Listview1.Items.Item[0].SubItems.Insert(4, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['QUANTIDADE']))
   else
     Listview1.Items.Item[0].SubItems.Insert(4, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['PRC_CUSTO']) then
     Listview1.Items.Item[0].SubItems.Insert(5, FormatCurr('0.000', DM1.Dst_NF_Entrada_Itens['PRC_CUSTO']))
   else
     Listview1.Items.Item[0].SubItems.Insert(5, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['PERC_DESCONTO']) then
     Listview1.Items.Item[0].SubItems.Insert(6, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['PERC_DESCONTO']))
   else
     Listview1.Items.Item[0].SubItems.Insert(6, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['SUBTOTAL']) then
     Listview1.Items.Item[0].SubItems.Insert(7, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['SUBTOTAL']))
   else
     Listview1.Items.Item[0].SubItems.Insert(7, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['ALIQUOTA_ICMS']) then
     Listview1.Items.Item[0].SubItems.Insert(8, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['ALIQUOTA_ICMS']))
   else
     Listview1.Items.Item[0].SubItems.Insert(8, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['ALIQUOTA_IPI']) then
     Listview1.Items.Item[0].SubItems.Insert(9, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['ALIQUOTA_IPI']))
   else
     Listview1.Items.Item[0].SubItems.Insert(9, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['VALOR_IPI']) then
     Listview1.Items.Item[0].SubItems.Insert(10, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['VALOR_IPI']))
   else
     Listview1.Items.Item[0].SubItems.Insert(10, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['COD_PRODUTOS']) then
     Listview1.Items.Item[0].SubItems.Insert(11, IntToStr(DM1.Dst_NF_Entrada_Itens['COD_PRODUTOS']))
   else
     Listview1.Items.Item[0].SubItems.Insert(11, '');

   Listview1.Items.Item[0].SubItems.Insert(12, '0');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['ENABLE_NUMSERIE']) then
     Listview1.Items.Item[0].SubItems.Insert(13, IntToStr(DM1.Dst_NF_Entrada_Itens['ENABLE_NUMSERIE']))
   else
     Listview1.Items.Item[0].SubItems.Insert(13, '');

   if not varisnull(DM1.Dst_NF_Entrada_Itens['VALOR_DESCONTO']) then
     Listview1.Items.Item[0].SubItems.Insert(14, FormatCurr('0.00', DM1.Dst_NF_Entrada_Itens['VALOR_DESCONTO']))
   else
     Listview1.Items.Item[0].SubItems.Insert(14, '');

   //------carrega os nº de serie de cada produto--------------------
   while not DM1.Dst_NF_Entrada_NSerie.EOF do
    begin
     Listview3.Items.Insert(0);
     if not varisnull(DM1.Dst_NF_Entrada_NSerie['COD_PRODUTOS']) then
       Listview3.Items.Item[0].Caption := IntToStr(DM1.Dst_NF_Entrada_NSerie['COD_PRODUTOS'])
     else
       Listview3.Items.Item[0].Caption := '';

     if not varisnull(DM1.Dst_NF_Entrada_NSerie['NUM_SERIE']) then
       Listview3.Items.Item[0].SubItems.Insert(0, DM1.Dst_NF_Entrada_NSerie['NUM_SERIE'])
     else
       Listview3.Items.Item[0].SubItems.Insert(0, '');

     if not varisnull(DM1.Dst_NF_Entrada_NSerie['GARANTIA_POSVENDA']) then
       Listview3.Items.Item[0].SubItems.Insert(1, DM1.Dst_NF_Entrada_NSerie['GARANTIA_POSVENDA'])
     else
       Listview3.Items.Item[0].SubItems.Insert(1, '');

     if not varisnull(DM1.Dst_NF_Entrada_NSerie['FIM_GARANTIA_FABRICANTE']) then
       Listview3.Items.Item[0].SubItems.Insert(2, DM1.Dst_NF_Entrada_NSerie['FIM_GARANTIA_FABRICANTE'])
     else
       Listview3.Items.Item[0].SubItems.Insert(2, '');

     DM1.Dst_NF_Entrada_NSerie.Next;
    end;
   DM1.Dst_NF_Entrada_Itens.Next;
  end;

 DM1.HandleBtn(True, False, True, False, False, True, True, True, True, True, True);
end;

procedure TEntradaNFCadFrm.PageControl1Change(Sender: TObject);
begin
 if PageControl1.ActivePage = TabSheet1 then
  begin
   Panel5.Visible := True;
   Panel1.Visible := True;
   DBEdit3.Visible := True;
   DBEdit4.Visible := True;
   edit5.Visible := True;
   Label8.Visible := True;
   Label9.Caption := 'Referência:';
   edit3.Clear;
   edit8.Text := '0';
   Listview2.Items.Clear;
   ListView1.ItemIndex := -1;
   TabSheet2.TabVisible := False;
   Label30.Visible := False;
   GroupBox8.Visible := False;
   Edit8.Visible := False;
  end;

 if PageControl1.ActivePage = TabSheet2 then
  begin
   if dm1.Dst_NF_Entrada.State <> dsbrowse then
    begin
     Panel5.Visible := False;
     Panel1.Visible := False;
     DBEdit3.Visible := False;
     DBEdit4.Visible := False;
     edit5.Visible := False;
     Label8.Visible := False;
     Label9.Caption := 'Nº de Série:';
     Label30.Visible := True;
     GroupBox8.Visible := True;
     Edit8.Visible := True;
     DateEdit1.date := DBDateEdit2.Date;
     edit3.Clear;
    end;
  end;
end;

procedure TEntradaNFCadFrm.ListView1SelectItem(Sender: TObject;
 Item: TListItem; Selected: boolean);
var
 x: integer;
 selecCOD_PRODUTOS, selecEnable: string;
begin
 Listview2.Items.Clear;
 if selected = True then
  begin
   selecCOD_PRODUTOS := ListView1.Items.Item[ListView1.ItemIndex].SubItems.Strings[11];
   selecEnable := ListView1.Items.Item[ListView1.ItemIndex].SubItems.Strings[13];
  end;
 //---------mostra o nº de serie do produto selecionada--------
 try
    begin
     for x := 0 to ListView3.Items.Count - 1 do
      begin
       if ListView3.Items.Item[x].Caption = selecCOD_PRODUTOS then
        begin
         Listview2.Items.Insert(0);
         Listview2.Items.Item[0].Caption := ListView3.Items.Item[x].SubItems.Strings[0];

         if trim(ListView3.Items.Item[x].SubItems.Strings[2]) <> '' then
           Listview2.Items.Item[0].SubItems.Insert(0,'          ' +
             ListView3.Items.Item[x].SubItems.Strings[2])
         else
           Listview2.Items.Item[0].SubItems.Insert(0,'        - sem garantia -');

         Listview2.Items.Item[0].SubItems.Insert(1,'       ' +
           ListView3.Items.Item[x].SubItems.Strings[1] + ' ' + 'dia(s)');
        end;
      end;
     if (ListView2.Items.Count > 0) or (selecEnable = '1') then
       TabSheet2.TabVisible := True
     else
       TabSheet2.TabVisible := False;
    end;
 except
   TabSheet2.TabVisible := False;
  end;
end;

procedure TEntradaNFCadFrm.Edit1Change(Sender: TObject);
begin
 if (trim(Edit1.Text) = '') then
   Edit1.Text := '0';
 if (PageControl1.ActivePage = TabSheet2) and (trim(Edit1.Text) <> '') then
  begin
   DateEdit1.OnChange := nil;
   DateEdit1.Date := DBDateEdit2.Date + StrToInt(Edit1.Text);
   DateEdit1.OnChange := DateEdit1Change;
  end;
end;

procedure TEntradaNFCadFrm.DateEdit1Change(Sender: TObject);
begin
 if PageControl1.ActivePage = TabSheet2 then
  begin
   Edit1.OnChange := nil;
   Edit1.Text := IntToStr(DaysBetween(DateEdit1.date, DBDateEdit2.Date));
   Edit1.OnChange := Edit1Change;
  end;
end;

procedure TEntradaNFCadFrm.Edit8Change(Sender: TObject);
begin
 if (trim(Edit8.Text) = '') then
   Edit8.Text := '0';
end;

procedure TEntradaNFCadFrm.DateEdit1KeyPress(Sender: TObject;
 var Key: char);
var
 QuantList1, x, index2, index3: integer;
 SerieRepitido: boolean;
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   SerieRepitido := False;
   index2 := -1;
   //---procura index do produto se houver listview2 e listview3---
   for x := 0 to ListView2.Items.Count - 1 do
     if Edit3.Text = ListView2.Items.Item[x].Caption then
       index2 := x;
   for x := 0 to ListView3.Items.Count - 1 do
     if Edit3.Text = ListView3.Items.Item[x].SubItems.Strings[0] then
      begin
       index3 := x;
       SerieRepitido := True;
      end;
   if SerieRepitido = False then//nº repetido?
    begin
     with IBNserie do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Select Cod_Produtos,NUM_SERIE,Produtos.Nome,PRODUTOS.REFERENCIA from Produtos_NSerie');
       SQL.Add('LEFT OUTER JOIN PRODUTOS on (Produtos_NSerie.Cod_Produtos = Produtos.Cod_Produtos)');
       SQL.Add('Where (NUM_SERIE=:NUM_SERIE) or (PRODUTOS.REFERENCIA=:REFERENCIA)');
       Params.ByName('NUM_SERIE').AsString := edit3.Text;
       Params.ByName('REFERENCIA').AsString := edit3.Text;
       ExecQuery;
      end;
     with SQLinsert do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Select REFERENCIA,Nome from PRODUTOS');
       SQL.Add('Where (REFERENCIA=:REFERENCIA)');
       Params.ByName('REFERENCIA').AsString := edit3.Text;
       ExecQuery;
      end;
     with SQLCascadeCheck do
      begin
       Close;
       SQL.Clear;
       SQL.Add('Select NUM_SERIE,Produto,Produtos.REFERENCIA from Pedidos_Itens');
       SQL.Add('LEFT OUTER JOIN PRODUTOS on (Pedidos_Itens.Cod_Produtos = Produtos.Cod_Produtos)');
       SQL.Add('Where NUM_SERIE=:NUM_SERIE');
       SQL.Add('Group by NUM_SERIE,Produto,Produtos.REFERENCIA');
       Params.ByName('NUM_SERIE').AsString := edit3.Text;
       ExecQuery;
      end;
     if (SQLinsert.RecordCount <= 0) then//teste n serie = referencia
      begin
       if (SQLCascadeCheck.RecordCount <= 0) then//teste n serie em PedidoItem
        begin
         if (IBNserie.RecordCount <= 0) then//teste n serie em Produtos_NSerie
          begin
           if ListView1.ItemIndex <> -1 then//se houver produto selecionado
             QuantList1 := VarAsType(ListView1.Items[ListView1.ItemIndex].SubItems.Strings[4],
               $0003)
           else
             QuantList1 := VarAsType(ListView1.Items[0].SubItems.Strings[4], $0003);
           //---testa se o a quantidade cadastrada é igual a QUANTIDADE. de nº de serie---
           if ListView2.Items.Count < QuantList1 then
            begin
             AdicionaNserie;
             if ListView2.Items.Count = QuantList1 then
              begin
               PageControl1.ActivePage := TabSheet1;
               PageControl1Change(self);
               if edit3.canfocus then
                 edit3.SetFocus;
               Listview2.Items.Clear;
              end;
            end
           else
            begin
             if edit3.Text <> '' then
              begin
               if index2 = -1 then//nao ha item repetido
                begin
                 application.messagebox(PChar('O Quantidade de Itens Cadastrado(s) é inferior a Quantidade de Nº de Série ('
                   + FormatFloat('0.00', ListView2.Items.Count + 1) + ') que está tentando Cadastrar.' +
                   #13#13 +
                   'Por favor Corrija os dados do Produto.'),
                   'Atenção!', MB_ICONWARNING + mb_OK);
                 edit3.SetFocus;
                end
               else//perg. se quer apagar item repetido
                begin
                 if application.messagebox('Esse Nº já está sendo utilizado nessa Nota.' +
                   #13 + 'Deseja Exclui-lo?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
                  begin
                   ListView2.Items.Item[index2].Delete;
                   ListView3.Items.Item[index3].Delete;
                  end;
                end;
              end;
             PageControl1.ActivePage := TabSheet1;
             PageControl1Change(self);
             edit3.SetFocus;
             Listview2.Items.Clear;
            end;
           Edit3.Clear;
          end
         else //teste n serie em Produtos_NSerie
          begin
           ShowMessage('Esse Nº de Série já está Cadastrado para o Produto:' +
             #13#10 + IBNserie.Fields[2].AsString + '  Referência: ' +
             IBNserie.Fields[3].AsString + #13#10 + 'Digite um outro diferente.');
           edit3.SetFocus;
           edit3.selectall;
          end;
        end
       else//teste n serie em PedidoItem
        begin
         ShowMessage('Esse Nº de Série já foi utilizado para a venda do' +
           #13 + 'Produto: ' + SQLCascadeCheck.Fields[1].AsString + #13 +
           'Referência: ' + SQLCascadeCheck.Fields[2].AsString + #13#10 + 'Digite um outro diferente.');
         edit3.SetFocus;
         edit3.selectall;
        end;
      end
     else //teste n serie = referencia
      begin
       ShowMessage('Esse Nº de Série já está Cadastrado para o Produto:' +
         #13#10 + SQLinsert.Fields[1].AsString + ' como Referência.' + #13#10 +
         'Digite um outro diferente.');
       edit3.SetFocus;
       edit3.selectall;
      end;
    end
   else //nº repetido?
    begin
     if index2 <> -1 then
      begin
       if application.messagebox('Esse Nº Série já está sendo utilizado nessa Nota.' + #13 +
         'Deseja Exclui-lo?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
        begin
         ListView2.Items.Item[index2].Delete;
         ListView3.Items.Item[index3].Delete;
        end;
      end
     else
       application.messagebox('Esse Nº Série já está sendo utilizado nessa Nota.',
         'Atenção!', MB_OK + MB_ICONEXCLAMATION);
     edit3.SetFocus;
     edit3.selectall;
    end;
   if edit3.CanFocus then
     edit3.SetFocus;
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;
end;

procedure TEntradaNFCadFrm.DBDateEdit1Exit(Sender: TObject);
begin
 try
   DBDateEdit1.CheckValidDate;
   DBDateEdit1.Color := clwindow;
 except
   DBDateEdit1.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TEntradaNFCadFrm.DBDateEdit2Exit(Sender: TObject);
begin
 try
   DBDateEdit2.CheckValidDate;
   DBDateEdit2.Color := clwindow;
 except
   DBDateEdit2.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TEntradaNFCadFrm.DateEdit1Exit(Sender: TObject);
begin
 try
   DateEdit1.CheckValidDate;
   DateEdit1.Color := clwindow;
 except
   DateEdit1.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TEntradaNFCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TEntradaNFCadFrm.DBLookupComboBox1MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 if not VarIsNull(DBLookupComboBox1.KeyValue) then
   DBLookupComboBox1.Hint := QryCFOP['DESC_OPERACAO']
end;

//-------Procedure de filtragem do campo de CFOP-------------
//-------Só podem aparecer os CFOP's válidos-------
procedure TEntradaNFCadFrm.Filtra_CFOP(Estado: string);
begin
 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('Select * from SINTEGRA_INFO');
   Prepare;
   Open;
  end;

 with QryCFOP do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   if Estado = QrySintegra['UF'] then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 1')
    else if (Estado <> QrySintegra['UF']) and (Estado <> 'EX') and
     not (Estado = '') and not (VarIsNull(Estado)) then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 2')
   else if Estado = 'EX' then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 3')
   else
     SQL.Add('select * from cfop_codigo');
   SQL.Add('order by cod_cfop_codigo');
   Prepare;
   Open;
  end;
end;

procedure TEntradaNFCadFrm.Label15MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TEntradaNFCadFrm.Label15MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TEntradaNFCadFrm.Label15Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

procedure TEntradaNFCadFrm.Label8MouseEnter(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TEntradaNFCadFrm.Label8MouseLeave(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TEntradaNFCadFrm.Label8Click(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.ProdutosMnu.click;
end;

procedure TEntradaNFCadFrm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   if Edit4.CanFocus then
    Edit4.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
  key := #0
 else
  QryCFOP.Locate('COD_CFOP_OPERACAO', DBLookupComboBox1.Text, [loPartialKey]);
end;

procedure TEntradaNFCadFrm.CurrencyEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   if Edit5.CanFocus then
    Edit5.SetFocus;
    PageControl3.ActivePage := TabSheet6;
    PageControl1.ActivePage := TabSheet1;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TEntradaNFCadFrm.PageControl3Change(Sender: TObject);
begin
 if PageControl3.ActivePage = TabSheet6 then
  begin
   PageControl1.ActivePage := TabSheet1;
  end
 else if PageControl3.ActivePage = TabSheet7 then
  begin
   PageControl2.ActivePage := TabSheet3;
  end;
end;

procedure TEntradaNFCadFrm.ComboBox1KeyPress(Sender: TObject;
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
end;

procedure TEntradaNFCadFrm.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl2.ActivePage := TabSheet4;
   if CurrencyEdit18.CanFocus then
    CurrencyEdit18.SetFocus;
  end;
end;

procedure TEntradaNFCadFrm.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl2.ActivePage := TabSheet5;
   if CurrencyEdit2.CanFocus then
    CurrencyEdit2.SetFocus;
  end;
end;

procedure TEntradaNFCadFrm.CurrencyEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl2.ActivePage := TabSheet3;
   if ComboBox2.CanFocus then
    ComboBox2.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TEntradaNFCadFrm.CurrencyEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl2.ActivePage := TabSheet4;
   if ComboBox3.CanFocus then
    ComboBox3.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

function TEntradaNFCadFrm.CamposPreenchidos: Boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label21);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label26);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label1);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label4);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label6);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label15);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label42);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label43);
 PrincipalFrm.CamposPreenchidos(EntradaNFCadFrm.Label29);

 if (CurrencyEdit9.Value = 0) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label21);
   if CurrencyEdit9.CanFocus then
    CurrencyEdit9.SetFocus;
   Result := False;
  end;

 if (CurrencyEdit4.Value = 0) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label26);
   if edit3.CanFocus then
    edit3.SetFocus;
   Result := False;
  end;

 if (dbedit2.Text = '') then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label1);
   if dbedit2.CanFocus then
    dbedit2.SetFocus;
   Result := False;
  end;

 if (dbedit1.Text = '') then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label4);
   if dbedit1.CanFocus then
    dbedit1.SetFocus;
   Result := False;
  end;

 if (Length(trim(dbdateedit1.Text)) < 8) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label6);
   if dbdateedit1.CanFocus then
    dbdateedit1.SetFocus;
   Result := False;
  end;

 if (edit4.Text = '') then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label15);
   if edit4.CanFocus then
    edit4.SetFocus;
   Result := False;
  end;

 if (ComboBox2.ItemIndex <= 0) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label42);
   if ComboBox2.CanFocus then
    ComboBox2.SetFocus;
   Result := False;
  end;

 if (ComboBox3.ItemIndex <= 0) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label43);
   if ComboBox3.CanFocus then
    ComboBox3.SetFocus;
   Result := False;
  end;

 if VarIsNull(DM1.Dst_NF_Entrada['CFOP']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(EntradaNFCadFrm.Label29);
   if DBLookupComboBox1.CanFocus then
    DBLookupComboBox1.SetFocus;
   Result := False;
  end;
end;

procedure TEntradaNFCadFrm.CurrencyEdit14Change(Sender: TObject);
begin
 CurrencyEdit13.Value := (CurrencyEdit14.Value * (CurrencyEdit25.Value / 100));
end;

procedure TEntradaNFCadFrm.CurrencyEdit18Change(Sender: TObject);
begin
 CurrencyEdit7.Value := (CurrencyEdit18.Value * (CurrencyEdit26.Value / 100));
end;

procedure TEntradaNFCadFrm.CurrencyEdit4Change(Sender: TObject);
begin
 if CurrencyEdit4.Value > 0 then
  if Label26.Font.Color <> clred then
    Label26.Font.Color := clBlue;
end;

procedure TEntradaNFCadFrm.ExcluiItem(Referencia:string);
var x, index : integer;
begin
 index := LocalizaItem(Referencia);
 if Application.MessageBox(PChar('Deseja Realmente excluir esse Produto  (Ref. ' + Referencia + ') da sua Lista?'),
       'Atenção!', MB_ICONQUESTION + MB_YESNO) = idYes then
  begin
   //---apaga os nº de serie da listview3------
   CheckBox1.Checked := False;
   for x := ListView3.Items.Count - 1 downto 0 do
    begin
     if Listview3.Items.Item[x].Caption = ListView1.Items[index].SubItems.Strings[11] then
       ListView3.Items.Item[x].Delete;
    end;

   ListView1.Items.Item[index].Delete;
   Resumo;
   if ListView1.Items.Count <= 0 then
    begin
     CurrencyEdit4.Clear;
     CurrencyEdit18.Clear;
     CurrencyEdit7.Clear;
     CurrencyEdit14.Clear;
     CurrencyEdit13.Clear;
     CurrencyEdit25.Clear;
     CurrencyEdit26.Clear;
     CurrencyEdit9.Clear;
    end;
   edit3.Clear;
   Edit3.SetFocus;
  end;
end;

procedure TEntradaNFCadFrm.Resumo;
//Varre o ListView fazendo o somatório das variáveis gerais
var i : integer;
    Sub_Total, Total_Produtos, Base_ICMS, Valor_ICMS, Base_IPI, Valor_IPI, Al_ICMS, Al_IPI: Double;
begin

 Sub_Total      := 0;
 Total_Produtos := 0;

 Base_ICMS      := 0;
 Valor_ICMS     := 0;

 Base_IPI       := 0;
 Valor_IPI      := 0;


for i := 0 to  Listview1.Items.Count - 1 do
 begin
  try
   Al_IPI  := StrToFloat(Listview1.Items.Item[i].SubItems.Strings[9]);         //Al.IPI
  except
  {}
  end;

  try
   Al_ICMS := StrToFloat(Listview1.Items.Item[i].SubItems.Strings[8]);         //Al.ICMS
  except
  {}
  end;

  if Al_ICMS > 0 then           //Al.ICMS > 0
  begin
   try
    CurrencyEdit26.Value := Al_IPI;          // Aliquota IPI
    Base_ICMS := Base_ICMS + StrToFloat(ListView1.Items.Item[i].SubItems.Strings[7]);// + Sub_Total
    //Valor_CMS := Valor_ICMS +  Sub_Total * Al_ICMS(%)
    Valor_ICMS := Valor_ICMS + StrToFloat(Listview1.Items.Item[i].SubItems.Strings[7]) * (Al_ICMS/100);
   except
   {}
   end;
  end;

  if Al_IPI > 0 then           //Al.IPI > 0
  begin
   try
    CurrencyEdit25.Value := Al_ICMS;         // Aliquota ICMS
    Base_IPI := Base_IPI + StrToFloat(ListView1.Items.Item[i].SubItems.Strings[7]); // + Sub_Total
    //Valor_IPI := Valor_IPI +  Sub_Total * Al_IPI(%)
    Valor_IPI  := Valor_IPI +  StrToFloat(Listview1.Items.Item[i].SubItems.Strings[7]) * (Al_IPI/100);
   except
   {}
   end;
  end;

  Sub_Total := Sub_Total + StrToFloat(Listview1.Items.Item[i].SubItems.Strings[7]);  //Valor Total
 end;

  Total_Produtos := Sub_Total +
                    Valor_IPI +
                    CurrencyEdit2.Value +
                    CurrencyEdit3.Value +
                    CurrencyEdit5.Value;

  CurrencyEdit14.Value := Base_ICMS;       // base calculo ICMS
  CurrencyEdit13.Value := Valor_ICMS;      // Valor ICMS
  CurrencyEdit18.Value := Base_IPI;        // base calculo IPI
  CurrencyEdit7.Value  := Valor_IPI;       // Valor IPI
  CurrencyEdit4.Value  := Sub_Total;       // valor total dos produtos
  CurrencyEdit9.Value  := Total_Produtos;  // valor total nota
end;

procedure TEntradaNFCadFrm.ListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((listview1.Items.Count > 0) and  (not listview1.ItemIndex < 0)) then
 if Key = vk_Delete then
  ExcluiItem(Listview1.Items.Item[listview1.ItemIndex].Caption);
end;

end.
