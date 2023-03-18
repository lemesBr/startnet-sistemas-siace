unit UnitNFSaida_Sem_DB;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Grids, DBGrids, Mask, ToolEdit, ExtCtrls, CurrEdit, ComCtrls,
 Buttons, RDprint, Variants, DateUtils, Inifiles, DB, IBCustomDataSet,
 IBQuery, Placemnt, IBSQL, DBCtrls;

type
  TSaidaNFAvulsoFrm = class(TForm)
    ScrollBox1: TScrollBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit14: TEdit;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit3: TEdit;
    DateEdit4: TDateEdit;
    DateEdit5: TDateEdit;
    DateTimePicker1: TDateTimePicker;
    GroupBox6: TGroupBox;
    Label30: TLabel;
    CurrencyEdit12: TCurrencyEdit;
    Edit13: TEdit;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit35: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    ComboBox3: TComboBox;
    ComboBox1: TComboBox;
    CurrencyEdit15: TCurrencyEdit;
    CurrencyEdit16: TCurrencyEdit;
    CurrencyEdit17: TCurrencyEdit;
    CurrencyEdit18: TCurrencyEdit;
    GroupBox7: TGroupBox;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    CurrencyEdit11: TCurrencyEdit;
    Panel1: TPanel;
    Label26: TLabel;
    Label25: TLabel;
    Label23: TLabel;
    Label47: TLabel;
    Label31: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit13: TCurrencyEdit;
    CurrencyEdit14: TCurrencyEdit;
    Panel100: TPanel;
    Label21: TLabel;
    Label24: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    RDprint1: TRDprint;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    DstQryCFOP: TDataSource;
    QryCFOP: TIBQuery;
    ListView1: TListView;
    Edit200: TEdit;
    Edit500: TEdit;
    Edit1500: TEdit;
    Edit1600: TEdit;
    Edit1700: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    CurrencyEdit100: TCurrencyEdit;
    CurrencyEdit200: TCurrencyEdit;
    CurrencyEdit300: TCurrencyEdit;
    CurrencyEdit1900: TCurrencyEdit;
    CurrencyEdit2000: TCurrencyEdit;
    CurrencyEdit2100: TCurrencyEdit;
    Label56: TLabel;
    GroupBox8: TGroupBox;
    Label52: TLabel;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    DateEdit1: TDateEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QrySintegra: TIBQuery;
    RadioGroup1: TRadioGroup;
    ComboBox5: TComboBox;
    QryContato: TIBQuery;
    procedure NotaBorda;
    procedure LoadDefaultIniVars;
    procedure abilita;
    procedure Seleciona_Cliente(Sender: TObject);
    procedure Seleciona_Produto(Sender: TObject);
    procedure Seleciona_Trasportador(Sender: TObject);
    procedure LimpaItens;
    Procedure CarregaContatos;

    procedure Edit6Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure DateEdit4Enter(Sender: TObject);
    procedure DateEdit4Exit(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit200KeyPress(Sender: TObject; var Key: Char);
    procedure DstQryCFOPDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CurrencyEdit2100KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit500KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Filtra_CFOP(Estado: string);
    procedure Edit200KeyPress(Sender: TObject; var Key: Char);
    procedure ListView1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaidaNFAvulsoFrm: TSaidaNFAvulsoFrm;
  SELECT_COD_CLI : integer;

implementation

uses UnitNotaFiscalConfig, UnitFrmPrincipal, UnitDataM1, UnitSelect,
  Unit_Config_Duplicata;

{$R *.dfm}

procedure TSaidaNFAvulsoFrm.abilita;
begin
 if Edit13.CanFocus then
  Edit13.SetFocus;
  
 //Campos do Grupo Produto
 edit200.MaxLength  := SaidaNFConfigFrm.currencyedit160.asinteger;              //Referencia
 edit500.MaxLength  := SaidaNFConfigFrm.currencyedit163.asinteger;              //Produto
 edit1500.MaxLength := SaidaNFConfigFrm.currencyedit197.asinteger;              //Cl_Fis
 edit1600.MaxLength := SaidaNFConfigFrm.currencyedit201.asinteger;              //Sit_Trib
 edit1700.MaxLength := SaidaNFConfigFrm.currencyedit154.asinteger;              //Und
 currencyedit100.MaxLength  := SaidaNFConfigFrm.currencyedit187.asinteger;      //Quantidade
 currencyedit200.MaxLength  := SaidaNFConfigFrm.currencyedit192.asinteger;      //Preço
 currencyedit300.MaxLength  := SaidaNFConfigFrm.currencyedit166.asinteger;      //Sub_Total
 currencyedit1900.MaxLength := SaidaNFConfigFrm.currencyedit205.asinteger;      //ICMS
 currencyedit2000.MaxLength := SaidaNFConfigFrm.currencyedit178.asinteger;      //IPI
 currencyedit2100.MaxLength := SaidaNFConfigFrm.currencyedit170.asinteger;      //Valor_IPI

 //Campos do Grupo Imposto
 currencyedit14.MaxLength := SaidaNFConfigFrm.currencyedit85.asinteger;         //Base_ICMS
 currencyedit13.MaxLength := SaidaNFConfigFrm.currencyedit13.asinteger;         //Valor_ICMS
 currencyedit8.MaxLength  := SaidaNFConfigFrm.currencyedit89.asinteger;         //Base_ICMS_Subst
 currencyedit6.MaxLength  := SaidaNFConfigFrm.currencyedit8.asinteger;          //Valor_ICMS_Subst
 currencyedit4.MaxLength  := SaidaNFConfigFrm.currencyedit4.asinteger;          //Valor_Produtos
 currencyedit11.MaxLength := SaidaNFConfigFrm.currencyedit95.asinteger;         //Valor_Frete
 currencyedit10.MaxLength := SaidaNFConfigFrm.currencyedit98.asinteger;         //Valor_Seguro
 currencyedit5.MaxLength  := SaidaNFConfigFrm.currencyedit101.asinteger;        //Outras_Despesas
 currencyedit7.MaxLength  := SaidaNFConfigFrm.currencyedit5.asinteger;          //Valor_IPI
 currencyedit9.MaxLength  := SaidaNFConfigFrm.currencyedit104.asinteger;        //Valor_Nota

 //Campos do Grupo Transportadora
 edit35.MaxLength         := SaidaNFConfigFrm.currencyedit7.asinteger;          //Nome_Rz._Social
 edit37.MaxLength         := SaidaNFConfigFrm.currencyedit111.asinteger;        //Placa_Veiculo
 edit38.MaxLength         := SaidaNFConfigFrm.currencyedit117.asinteger;        //CNPJ
 edit39.MaxLength         := SaidaNFConfigFrm.currencyedit120.asinteger;        //Endereco
 edit40.MaxLength         := SaidaNFConfigFrm.currencyedit123.asinteger;        //Municipio
 edit41.MaxLength         := SaidaNFConfigFrm.currencyedit129.asinteger;        //Insc.Est
 currencyedit15.MaxLength := SaidaNFConfigFrm.currencyedit132.asinteger;        //Qnt
 edit43.MaxLength         := SaidaNFConfigFrm.currencyedit135.asinteger;        //Especie
 edit44.MaxLength         := SaidaNFConfigFrm.currencyedit138.asinteger;        //Marca
 currencyedit16.MaxLength := SaidaNFConfigFrm.currencyedit141.asinteger;        //Numero
 currencyedit17.MaxLength := SaidaNFConfigFrm.currencyedit144.asinteger;        //peso_bruto
 currencyedit18.MaxLength := SaidaNFConfigFrm.currencyedit147.asinteger;        //peso_liquido

 //Campos do Grupo Cliente
 edit6.MaxLength  := SaidaNFConfigFrm.currencyedit32.asinteger;                 //rz_social
 edit7.MaxLength  := SaidaNFConfigFrm.currencyedit35.asinteger;                 //cnpj
 edit8.MaxLength  := SaidaNFConfigFrm.currencyedit38.asinteger;                 //endereco
 edit9.MaxLength  := SaidaNFConfigFrm.currencyedit41.asinteger;                 //bairro
 edit10.MaxLength := SaidaNFConfigFrm.currencyedit44.asinteger;                 //cep
 //edit2.MaxLength  := SaidaNFConfigFrm.currencyedit183.asinteger;                //vencimento
 edit11.MaxLength := SaidaNFConfigFrm.currencyedit45.asinteger;                 //municipio
 ComboBox5.MaxLength := SaidaNFConfigFrm.currencyedit12.asinteger;                 //fone
 edit14.MaxLength := SaidaNFConfigFrm.currencyedit14.asinteger;                 //insc_est

 //Outros Campos
 edit4.MaxLength  := SaidaNFConfigFrm.currencyedit172.asinteger;                //num_controle
 edit13.MaxLength := SaidaNFConfigFrm.currencyedit17.asinteger;                 //num_nf
 edit3.MaxLength  := SaidaNFConfigFrm.currencyedit27.asinteger;                 //insc_est_s_trib
end;

procedure TSaidaNFAvulsoFrm.FormCreate(Sender: TObject);
begin
 LoadDefaultIniVars;
 DateEdit4.Date := StartOfTheMonth(now);
 DateEdit5.Date := EndOfTheMonth(now);
 DateTimePicker1.Time := Now;
end;

procedure TSaidaNFAvulsoFrm.NotaBorda;
var
 linha, x: integer;
begin
 try
  begin
   if application.messagebox('Imprimir NOTA FISCAL?' + #13#13 +
     'Certifique-se de ter preenchido todos os campos corretamente.', 'Atenção!',
     mb_yesno + mb_iconquestion) = idYes then
    begin
     //------ Parametros para a NOTA FISCAL ------
     rdprint1.TamanhoQteLinhas := 110;                  // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas := 140; // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao := s17cpp;  // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := Preview; //Enable Preview - Tela de Config
     RDprint1.Abrir;

     //------ Cabecalho da Nota ------
     // Nº da Nota
     if SaidaNFConfigFrm.CheckBox1.Checked then
       RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit16.asinteger, SaidaNFConfigFrm.CurrencyEdit15.asinteger, edit13.text, [negrito, comp12]);
     if RadioGroup1.ItemIndex = 0 then //Saida
      begin
       if SaidaNFConfigFrm.CheckBox25.Checked then
        RDprint1.impF(SaidaNFConfigFrm.CurrencyEdit81.asinteger, SaidaNFConfigFrm.CurrencyEdit82.asinteger, '[X]', [negrito]);
      end
     else if RadioGroup1.ItemIndex = 1 then //Entrada
      begin
       if SaidaNFConfigFrm.CheckBox26.Checked then
        RDprint1.impF(SaidaNFConfigFrm.CurrencyEdit83.asinteger,SaidaNFConfigFrm.CurrencyEdit84.asinteger,'[X]', [negrito]);
      end;
     //Natureza da Operaçao
     if SaidaNFConfigFrm.CheckBox4.Checked then
      RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit22.asinteger, SaidaNFConfigFrm.CurrencyEdit23.asinteger, Copy(edit1.Text, 0, SaidaNFConfigFrm.CurrencyEdit21.asinteger));
     //CFOP
     if SaidaNFConfigFrm.CheckBox5.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit25.asinteger, SaidaNFConfigFrm.CurrencyEdit26.asinteger, DBLookupComboBox1.Text);
     //Insc.Est.S.T.
     if SaidaNFConfigFrm.CheckBox6.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit28.asinteger, SaidaNFConfigFrm.CurrencyEdit29.asinteger, Edit3.Text);
     //Data Emissao
     if (DateEdit4.Text <> '  /  /  ') and (DateEdit4.Text <> '  /  /    ') then
       if SaidaNFConfigFrm.CheckBox2.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit19.asinteger, SaidaNFConfigFrm.CurrencyEdit20.asinteger, FormatDateTime('dd/mm/yyyy', DateEdit4.Date));
     //Data Saida/Entrada
     if (DateEdit5.Text <> '  /  /  ') and (DateEdit5.Text <> '  /  /    ') then
       if SaidaNFConfigFrm.CheckBox52.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit150.asinteger, SaidaNFConfigFrm.CurrencyEdit152.asinteger, FormatDateTime('dd/mm/yyyy', DateEdit5.Date));
     //Hora Saida/Entrada
     if (Timetostr(DateTimePicker1.Time) <> '  :  :  ') and (Timetostr(DateTimePicker1.Time) <> '00:00:00') then
       if SaidaNFConfigFrm.CheckBox63.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit161.asinteger, SaidaNFConfigFrm.CurrencyEdit164.asinteger, TimeToStr(DateTimePicker1.Time));

     //------ Destinatario / Remetente ------
     //Nome/Razao Soc.
     if SaidaNFConfigFrm.CheckBox7.Checked then
      RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit31.asinteger, SaidaNFConfigFrm.CurrencyEdit30.asinteger, Edit6.Text);
     //CNPJ/CPF
     if SaidaNFConfigFrm.CheckBox8.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit34.asinteger, SaidaNFConfigFrm.CurrencyEdit33.asinteger, Edit7.Text);
     //Endereço
     if SaidaNFConfigFrm.CheckBox12.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit37.asinteger, SaidaNFConfigFrm.CurrencyEdit36.asinteger, Edit8.Text);
     //Bairro/Distrito
     if SaidaNFConfigFrm.CheckBox11.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit40.asinteger, SaidaNFConfigFrm.CurrencyEdit39.asinteger, Edit9.Text);
     //Cep
     if SaidaNFConfigFrm.CheckBox13.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit43.asinteger, SaidaNFConfigFrm.CurrencyEdit42.asinteger, Edit10.Text);
     //Municipio
     if SaidaNFConfigFrm.CheckBox9.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit46.asinteger, SaidaNFConfigFrm.CurrencyEdit47.asinteger, Edit11.Text);
     //Fone/Fax
     if SaidaNFConfigFrm.CheckBox10.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit49.asinteger, SaidaNFConfigFrm.CurrencyEdit50.asinteger, ComboBox5.Text);
     //Vencimento
     if (DateEdit1.Text <> '  /  /  ') and (DateEdit1.Text <> '  /  /    ') then
      if SaidaNFConfigFrm.CheckBox67.Checked then
        RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit176.asinteger, SaidaNFConfigFrm.CurrencyEdit177.asinteger, DateToStr(DateEdit1.date));
     //UF
     if SaidaNFConfigFrm.CheckBox15.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit55.asinteger, SaidaNFConfigFrm.CurrencyEdit54.asinteger, ComboBox4.Text);

     //TODO: Campo FONE!?!

     //Insc.Est.
     if SaidaNFConfigFrm.CheckBox14.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit52.asinteger, SaidaNFConfigFrm.CurrencyEdit53.asinteger, Edit14.Text);

     //------ Dados do Produto ------
     linha := SaidaNFConfigFrm.CurrencyEdit151.asinteger;
     // Linha inicial dos produtos...
     for x := 0 to (Listview1.items.Count - 1) do
      begin
       if  x = SaidaNFConfigFrm.CurrencyEdit200.asinteger then
         Break;
       //Referencia
       if SaidaNFConfigFrm.CheckBox54.Checked then
        RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit162.asinteger, Listview1.Items.Item[x].Caption, [comp20]);
       //Descricao
       if SaidaNFConfigFrm.CheckBox56.Checked then
        RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit165.asinteger, Listview1.Items.Item[x].SubItems.Strings[0], [comp20]);
       //Sit. Trib
       if SaidaNFConfigFrm.CheckBox60.Checked then
        RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit203.asinteger, Listview1.Items.Item[x].SubItems.Strings[2], [comp20]);
       //Unidade
       if SaidaNFConfigFrm.CheckBox3.Checked then
        RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit155.asinteger, Listview1.Items.Item[x].SubItems.Strings[3], [comp20]);
       //Classif. Fical
       if SaidaNFConfigFrm.CheckBox59.Checked then
        RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit199.asinteger, Listview1.Items.Item[x].SubItems.Strings[1], [comp20]);
       //ICMS
       if SaidaNFConfigFrm.CheckBox61.Checked then
         RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit207.asinteger, Listview1.Items.Item[x].SubItems.Strings[7], [comp20]);
       //IPI
       if SaidaNFConfigFrm.CheckBox64.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit175.asinteger, Listview1.Items.Item[x].SubItems.Strings[8], [comp20]);
       //Quantidade
       if SaidaNFConfigFrm.CheckBox55.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit189.asinteger, Listview1.Items.Item[x].SubItems.Strings[4], [comp20]);
       //Preço de Venda
       if SaidaNFConfigFrm.CheckBox57.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit194.asinteger, Listview1.Items.Item[x].SubItems.Strings[5], [comp20]);
       //Valor SubTotal
       if SaidaNFConfigFrm.CheckBox58.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit168.asinteger, Listview1.Items.Item[x].SubItems.Strings[6], [comp20]);
       //Valor IPI
       if SaidaNFConfigFrm.CheckBox66.Checked then
         RDprint1.ImpD(linha, SaidaNFConfigFrm.CurrencyEdit171.asinteger, Listview1.Items.Item[x].SubItems.Strings[9], [comp20]);
       inc(linha);
      end;

     //Desconto
     if SaidaNFConfigFrm.CheckBox62.Checked then
       RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit168.asinteger - length('Desconto (-): ' + formatfloat('###,##0.00', currencyedit12.Value)), 'Desconto (-): ' + formatfloat('###,##0.00', currencyedit12.Value), []);

     //------ Calculo do Imposto ------
     //Base de Calc. ICMS
     if currencyedit13.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox27.Checked then
        RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit86.asinteger, SaidaNFConfigFrm.CurrencyEdit87.asinteger, formatfloat('###,##0.00', currencyedit14.Value), []);
     //Valor ICMS
     if currencyedit14.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox28.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit14.asinteger, SaidaNFConfigFrm.CurrencyEdit88.asinteger, formatfloat('###,##0.00', currencyedit13.Value), []);
     //Base de Calc. ICMS Subst.
     if currencyedit8.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox29.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit90.asinteger, SaidaNFConfigFrm.CurrencyEdit91.asinteger, formatfloat('###,##0.00', currencyedit8.Value), []);
     //Valor ICMS Subst.
     if currencyedit6.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox30.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit92.asinteger, SaidaNFConfigFrm.CurrencyEdit93.asinteger, formatfloat('###,##0.00', currencyedit6.Value), []);
     //Valor Total Produtos
     if currencyedit4.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox31.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit6.asinteger, SaidaNFConfigFrm.CurrencyEdit94.asinteger, formatfloat('###,##0.00', currencyedit4.Value), []);
     //Valor Frete
     if currencyedit11.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox32.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit96.asinteger, SaidaNFConfigFrm.CurrencyEdit97.asinteger, formatfloat('###,##0.00', currencyedit11.Value), []);
     //Valor Seguro
     if currencyedit10.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox33.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit99.asinteger, SaidaNFConfigFrm.CurrencyEdit100.asinteger, formatfloat('###,##0.00', currencyedit10.Value), []);
     //Outras Despesas
     if currencyedit5.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox34.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit102.asinteger, SaidaNFConfigFrm.CurrencyEdit103.asinteger, formatfloat('###,##0.00', currencyedit5.Value), []);
     //Valor IPI
     if currencyedit7.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox35.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit10.asinteger, SaidaNFConfigFrm.CurrencyEdit11.asinteger, formatfloat('###,##0.00', currencyedit7.Value), []);
     //Valor Total Nota
     if currencyedit9.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox36.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit105.asinteger, SaidaNFConfigFrm.CurrencyEdit106.asinteger, formatfloat('###,##0.00', currencyedit9.Value), []);

     //------ Transportador / Volumes Transportados ------
     //Nome/Rz. Social
     if SaidaNFConfigFrm.CheckBox37.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit9.asinteger, SaidaNFConfigFrm.CurrencyEdit107.asinteger, Edit35.Text);
     //Frete por Conta
     if SaidaNFConfigFrm.CheckBox38.Checked then
      if combobox3.ItemIndex = 1 then //Remetente
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger, SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[1]')
      else if combobox3.ItemIndex = 2 then //Destinatário
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger, SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[2]');
     //Placa
     if SaidaNFConfigFrm.CheckBox39.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit112.asinteger, SaidaNFConfigFrm.CurrencyEdit113.asinteger, Edit37.Text);
     //UF
     if SaidaNFConfigFrm.CheckBox40.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit115.asinteger, SaidaNFConfigFrm.CurrencyEdit116.asinteger, Combobox1.Text);
     //CNPJ/CPF
     if SaidaNFConfigFrm.CheckBox41.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit118.asinteger, SaidaNFConfigFrm.CurrencyEdit119.asinteger, Edit38.Text);
     //Endereco
     if SaidaNFConfigFrm.CheckBox42.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit121.asinteger, SaidaNFConfigFrm.CurrencyEdit122.asinteger, Edit39.Text);
     //Municipio
     if SaidaNFConfigFrm.CheckBox43.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit124.asinteger, SaidaNFConfigFrm.CurrencyEdit125.asinteger, Edit40.Text);
     //UF
     if SaidaNFConfigFrm.CheckBox44.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit127.asinteger, SaidaNFConfigFrm.CurrencyEdit128.asinteger, ComboBox2.Text);
     //Ins. Est.
     if SaidaNFConfigFrm.CheckBox45.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit130.asinteger, SaidaNFConfigFrm.CurrencyEdit131.asinteger, Edit41.Text);
     //Quantidade
     if CurrencyEdit15.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox46.Checked then
        RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit133.asinteger, SaidaNFConfigFrm.CurrencyEdit134.asinteger, FormatFloat('###,##0.00', CurrencyEdit15.Value), []);
     //Especie
     if SaidaNFConfigFrm.CheckBox47.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit136.asinteger, SaidaNFConfigFrm.CurrencyEdit137.asinteger, Edit43.Text);
     //Marca
     if SaidaNFConfigFrm.CheckBox48.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit139.asinteger, SaidaNFConfigFrm.CurrencyEdit140.asinteger, Edit44.Text);
     //Numero
     if CurrencyEdit16.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox49.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit142.asinteger, SaidaNFConfigFrm.CurrencyEdit143.asinteger, FormatFloat('###,##0.00', CurrencyEdit16.Value), []);
     //Peso Bruto
     if CurrencyEdit17.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox50.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit145.asinteger, SaidaNFConfigFrm.CurrencyEdit146.asinteger, Trim(CurrencyEdit17.DisplayText), []);
     //Peso Liquido
     if CurrencyEdit18.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox51.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit148.asinteger, SaidaNFConfigFrm.CurrencyEdit149.asinteger, Trim(CurrencyEdit18.DisplayText), []);
     //------ Dados Adicionais ------
     linha := SaidaNFConfigFrm.CurrencyEdit157.asinteger;
     for x := 0 to SaidaNFConfigFrm.CurrencyEdit159.asinteger do
      begin
       //Dados Adicionais
       RDprint1.imp(linha, SaidaNFConfigFrm.CurrencyEdit158.asinteger, memo1.Lines.Strings[x]);
       inc(linha);
      end;
     //---------Nº de Controle do Formulário
     //Nº Controle do Formulário
     if SaidaNFConfigFrm.CheckBox65.Checked then
      RDprint1.ImpD(SaidaNFConfigFrm.CurrencyEdit173.asinteger, SaidaNFConfigFrm.CurrencyEdit174.asinteger, edit4.Text, [negrito, comp12]);
     // Nº da Nota (Notas com Rodapé)
     if SaidaNFConfigFrm.CheckBox68.Checked then
      RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit181.asinteger, SaidaNFConfigFrm.CurrencyEdit180.asinteger, edit13.text, [negrito, comp12]);
     RDprint1.Fechar;
    end;
  end;
 except
  RDprint1.Fechar;
 end;
end;


procedure TSaidaNFAvulsoFrm.Edit6Enter(Sender: TObject);
begin
 TEdit(Sender).color := claqua;
end;

procedure TSaidaNFAvulsoFrm.Edit6Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TSaidaNFAvulsoFrm.CurrencyEdit1Enter(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := claqua;
end;

procedure TSaidaNFAvulsoFrm.CurrencyEdit1Exit(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := clwindow;
end;



procedure TSaidaNFAvulsoFrm.DateEdit4Enter(Sender: TObject);
begin
 TDateEdit(Sender).color := claqua;
end;


procedure TSaidaNFAvulsoFrm.DateEdit4Exit(Sender: TObject);
begin
 TDateEdit(Sender).color := clwindow;
end;


procedure TSaidaNFAvulsoFrm.ComboBox3Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TSaidaNFAvulsoFrm.ComboBox3Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TSaidaNFAvulsoFrm.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
   Button1.Click;

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFAvulsoFrm.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFAvulsoFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Button2.Click;
end;

procedure TSaidaNFAvulsoFrm.Button2Click(Sender: TObject);
begin
 Self.Close;
end;

procedure TSaidaNFAvulsoFrm.Button1Click(Sender: TObject);
begin
 NotaBorda;
end;

procedure TSaidaNFAvulsoFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TSaidaNFAvulsoFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 TDBLookupComboBox(Sender).Color := clAqua;
end;

procedure TSaidaNFAvulsoFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 TDBLookupComboBox(Sender).Color := clWindow;

end;

procedure TSaidaNFAvulsoFrm.Button5Click(Sender: TObject);
begin
 if Listview1.Items.Count < 16 then
  begin
   ListView1.Items.Insert(0);
   Listview1.Items.Item[0].Caption := Edit200.Text; //Referência
   Listview1.Items.Item[0].SubItems.Insert(0, Edit500.Text);  //Produtos
   Listview1.Items.Item[0].SubItems.Insert(1, Edit1500.Text); //C.T.
   Listview1.Items.Item[0].SubItems.Insert(2, Edit1600.Text); //Sit. Trib.
   Listview1.Items.Item[0].SubItems.Insert(3, Edit1700.Text); //Unidade de venda
   Listview1.Items.Item[0].SubItems.Insert(4, CurrencyEdit100.DisplayText); //Quantidade
   Listview1.Items.Item[0].SubItems.Insert(5, CurrencyEdit200.DisplayText); //Valor Unitário
   Listview1.Items.Item[0].SubItems.Insert(6, CurrencyEdit300.DisplayText); //Valor Total Produtos
   Listview1.Items.Item[0].SubItems.Insert(7, CurrencyEdit1900.Text); //ICMS
   Listview1.Items.Item[0].SubItems.Insert(8, CurrencyEdit2000.Text); //IPI
   Listview1.Items.Item[0].SubItems.Insert(9, CurrencyEdit2100.DisplayText); //Valor IPI

   LimpaItens;

   if Edit200.CanFocus then
    Edit200.SetFocus;

  end
 else
  Application.MessageBox('Só podem ser lançados 16 produtos por Nota Fiscal.', 'Atenção!', MB_OK + MB_ICONINFORMATION);
end;

procedure TSaidaNFAvulsoFrm.LoadDefaultIniVars;
begin
 Application.CreateForm(TSaidaNFConfigFrm, SaidaNFConfigFrm);
 SaidaNFConfigFrm.WindowState := wsMinimized;
 SaidaNFConfigFrm.Show;
 SaidaNFConfigFrm.Hide;

 //------------------- Habilita / Desabilita Campos ---------------

 //-------------- Cabeçalho da Nota Fiscal ----------------
 //Natureza Operação
 if SaidaNFConfigFrm.CheckBox4.Checked then
  begin
   label27.Enabled := True;
  end
 else
  begin
   label27.Enabled := False;
  end;

 //CFOP
 if SaidaNFConfigFrm.CheckBox5.Checked then
  begin
   DBLookupComboBox1.Enabled := True;
   label28.Enabled := True;
  end
 else
  begin
   DBLookupComboBox1.Enabled := False;
   label28.Enabled := False;
  end;

 //Insc. Est. Subst. Tributario
 if SaidaNFConfigFrm.CheckBox6.Checked then
  begin
   Edit3.Enabled := True;
   label29.Enabled := True;
  end
 else
  begin
   Edit3.Enabled := False;
   label29.Enabled := False;
  end;

 //Nº da Nota Fiscal
 if SaidaNFConfigFrm.CheckBox1.Checked then
  begin
   Edit13.Enabled := True;
   label51.Enabled := True;
  end
 else
  begin
   Edit13.Enabled := False;
   label51.Enabled := False;
  end;

 //Data Emissão
 if SaidaNFConfigFrm.CheckBox2.Checked then
  begin
   DateEdit4.Enabled := True;
   label48.Enabled := True;
  end
 else
  begin
   dateEdit4.Enabled := False;
   label48.Enabled := False;
  end;

 //Data Entrada/Saida
 if SaidaNFConfigFrm.CheckBox52.Checked then
  begin
   dateEdit5.Enabled := True;
   label49.Enabled := True;
   label53.Enabled := True;
  end
 else
  begin
   dateEdit5.Enabled := False;
   label49.Enabled := False;
   label53.Enabled := False;
  end;

 //Hora Saida
 if SaidaNFConfigFrm.CheckBox63.Checked then
  begin
   DateTimePicker1.Enabled := True;
   label50.Enabled := True;
  end
 else
  begin
   DateTimePicker1.Enabled := False;
   label50.Enabled := False;
  end;

 //------------------ Dados do Comprador ---------------
 //Nome / Razão Social
 if SaidaNFConfigFrm.CheckBox7.Checked then
  begin
   Edit6.Enabled := True;
   label17.Enabled := True;
  end
 else
  begin
   Edit6.Enabled := False;
   label17.Enabled := False;
  end;

 //Bairro
 if SaidaNFConfigFrm.CheckBox11.Checked then
  begin
   Edit9.Enabled := True;
   label15.Enabled := True;
  end
 else
  begin
   Edit9.Enabled := False;
   label15.Enabled := False;
  end;

 //CPF / CNPJ
 if SaidaNFConfigFrm.CheckBox8.Checked then
  begin
   Edit7.Enabled := True;
   label18.Enabled := True;
  end
 else
  begin
   Edit7.Enabled := False;
   label18.Enabled := False;
  end;

 //Endereço
 if SaidaNFConfigFrm.CheckBox12.Checked then
  begin
   Edit8.Enabled := True;
   label14.Enabled := True;
  end
 else
  begin
   Edit8.Enabled := False;
   label14.Enabled := False;
  end;

 //Fone/Fax
 if SaidaNFConfigFrm.CheckBox10.Checked then
  begin
   ComboBox5.Enabled := True;
   label11.Enabled := True;
  end
 else
  begin
   ComboBox5.Enabled := False;
   label11.Enabled := False;
  end;

 //Vencimento
 if SaidaNFConfigFrm.CheckBox67.Checked then
  begin
   Label56.Enabled := True;
   DateEdit1.Enabled := True;
  end
 else
  begin
   Label56.Enabled := False;
   DateEdit1.Enabled := False;
  end;

 //CEP
 if SaidaNFConfigFrm.CheckBox13.Checked then
  begin
   Edit10.Enabled := True;
   label16.Enabled := True;
  end
 else
  begin
   Edit10.Enabled := False;
   label16.Enabled := False;
  end;

 //Município
 if SaidaNFConfigFrm.CheckBox9.Checked then
  begin
   Edit11.Enabled := True;
   label10.Enabled := True;
  end
 else
  begin
   Edit11.Enabled := False;
   label10.Enabled := False;
  end;

 //UF
 if SaidaNFConfigFrm.CheckBox15.Checked then
  begin
   ComboBox4.Enabled := True;
   label12.Enabled := True;
  end
 else
  begin
   ComboBox4.Enabled := False;
   label12.Enabled := False;
  end;

 //Insc. Estadual
 if SaidaNFConfigFrm.CheckBox14.Checked then
  begin
   Edit14.Enabled := True;
   label13.Enabled := True;
  end
 else
  begin
   Edit14.Enabled := False;
   label13.Enabled := False;
  end;

{ //----------------- Fatura ------------------
 //Numero Fatura 01
 if SaidaNFConfigFrm.CheckBox16.Checked then
  begin
   Edit15.Enabled := True;
   label1.Enabled := True;
  end
 else
  begin
   Edit15.Enabled := False;
   label1.Enabled := False;
  end;

 //Numero Fatura 02
 if SaidaNFConfigFrm.CheckBox21.Checked then
  begin
   Edit18.Enabled := True;
   label4.Enabled := True;
  end
 else
  begin
   Edit18.Enabled := False;
   label4.Enabled := False;
  end;

 //Numero Fatura 03
 if SaidaNFConfigFrm.CheckBox24.Checked then
  begin
//   Edit21.Enabled := True;
   label7.Enabled := True;
  end
 else
  begin
//   Edit21.Enabled := False;
   label7.Enabled := False;
  end;

 //Vencimento Fatura 01
 if SaidaNFConfigFrm.CheckBox17.Checked then
  begin
//   DateEdit1.Enabled := True;
   label2.Enabled := True;
  end
 else
  begin
//   DateEdit1.Enabled := False;
   label2.Enabled := False;
  end;

 //Vencimento Fatura 02
 if SaidaNFConfigFrm.CheckBox20.Checked then
  begin
//   DateEdit2.Enabled := True;
   label5.Enabled := True;
  end
 else
  begin
//   DateEdit2.Enabled := False;
   label5.Enabled := False;
  end;

 //Vencimento Fatura 03
 if SaidaNFConfigFrm.CheckBox23.Checked then
  begin
//   DateEdit3.Enabled := True;
   label8.Enabled := True;
  end
 else
  begin
//   DateEdit3.Enabled := False;
   label8.Enabled := False;
  end;

 //Valor Fatura 01
 if SaidaNFConfigFrm.CheckBox18.Checked then
  begin
   CurrencyEdit1.Enabled := True;
   label3.Enabled := True;
  end
 else
  begin
   CurrencyEdit1.Enabled := False;
   label3.Enabled := False;
  end;

 //Valor Fatura 02
 if SaidaNFConfigFrm.CheckBox19.Checked then
  begin
   CurrencyEdit2.Enabled := True;
   label6.Enabled := True;
  end
 else
  begin
   CurrencyEdit2.Enabled := False;
   label6.Enabled := False;
  end;

 //Valor Fatura 03
 if SaidaNFConfigFrm.CheckBox22.Checked then
  begin
   CurrencyEdit3.Enabled := True;
   label9.Enabled := True;
  end
 else
  begin
   CurrencyEdit3.Enabled := False;
   label9.Enabled := False;
  end;}

 //-------------- Cálculo de Imposto ---------------
 //Base Cálculo ICMS
 if SaidaNFConfigFrm.CheckBox27.Checked then
  begin
   CurrencyEdit14.Enabled := True;
   label31.Enabled := True;
  end
 else
  begin
   CurrencyEdit14.Enabled := False;
   label31.Enabled := False;
  end;

 //Valor ICMS
 if SaidaNFConfigFrm.CheckBox28.Checked then
  begin
   CurrencyEdit13.Enabled := True;
   label47.Enabled := True;
  end
 else
  begin
   CurrencyEdit13.Enabled := False;
   label47.Enabled := False;
  end;

 //Base ICMS Substituto
 if SaidaNFConfigFrm.CheckBox29.Checked then
  begin
   CurrencyEdit8.Enabled := True;
   label23.Enabled := True;
  end
 else
  begin
   CurrencyEdit8.Enabled := False;
   label23.Enabled := False;
  end;

 //Valor ICMS Substituto
 if SaidaNFConfigFrm.CheckBox30.Checked then
  begin
   CurrencyEdit6.Enabled := True;
   label25.Enabled := True;
  end
 else
  begin
   CurrencyEdit6.Enabled := False;
   label25.Enabled := False;
  end;

 //Valor Total Produtos
 if SaidaNFConfigFrm.CheckBox31.Checked then
  begin
   CurrencyEdit4.Enabled := True;
   label26.Enabled := True;
  end
 else
  begin
   CurrencyEdit4.Enabled := False;
   label26.Enabled := False;
  end;

 //Valor Frete
 if SaidaNFConfigFrm.CheckBox32.Checked then
  begin
   CurrencyEdit11.Enabled := True;
   label19.Enabled := True;
  end
 else
  begin
   CurrencyEdit11.Enabled := False;
   label19.Enabled := False;
  end;

 //Valor Seguro
 if SaidaNFConfigFrm.CheckBox33.Checked then
  begin
   CurrencyEdit10.Enabled := True;
   label20.Enabled := True;
  end
 else
  begin
   CurrencyEdit10.Enabled := False;
   label20.Enabled := False;
  end;

 //Outras Despesas
 if SaidaNFConfigFrm.CheckBox34.Checked then
  begin
   CurrencyEdit5.Enabled := True;
   label22.Enabled := True;
  end
 else
  begin
   CurrencyEdit5.Enabled := False;
   label22.Enabled := False;
  end;

 //Valor Total IPI
 if SaidaNFConfigFrm.CheckBox35.Checked then
  begin
   CurrencyEdit7.Enabled := True;
   label24.Enabled := True;
  end
 else
  begin
   CurrencyEdit7.Enabled := False;
   label24.Enabled := False;
  end;

 //Valor Total Nota Fiscal
 if SaidaNFConfigFrm.CheckBox36.Checked then
  begin
   CurrencyEdit9.Enabled := True;
   label21.Enabled := True;
  end
 else
  begin
   CurrencyEdit9.Enabled := False;
   label21.Enabled := False;
  end;

 //----------------- Transportadora ------------------
 //Nome / Razão Social
 if SaidaNFConfigFrm.CheckBox37.Checked then
  begin
   Edit35.Enabled := True;
   label32.Enabled := True;
  end
 else
  begin
   Edit35.Enabled := False;
   label32.Enabled := False;
  end;

 //Frete por Conta
 if SaidaNFConfigFrm.CheckBox38.Checked then
  begin
   combobox3.Enabled := True;
   label41.Enabled := True;
  end
 else
  begin
   combobox3.Enabled := False;
   label41.Enabled := False;
  end;

 //Placa Veículo
 if SaidaNFConfigFrm.CheckBox39.Checked then
  begin
   Edit37.Enabled := True;
   label40.Enabled := True;
  end
 else
  begin
   Edit37.Enabled := False;
   label40.Enabled := False;
  end;

 //UF Veículo
 if SaidaNFConfigFrm.CheckBox40.Checked then
  begin
   combobox1.Enabled := True;
   label37.Enabled := True;
  end
 else
  begin
   combobox1.Enabled := False;
   label37.Enabled := False;
  end;

 //CNPJ/CPF
 if SaidaNFConfigFrm.CheckBox41.Checked then
  begin
   Edit38.Enabled := True;
   label39.Enabled := True;
  end
 else
  begin
   Edit38.Enabled := False;
   label39.Enabled := False;
  end;

 //Endereço
 if SaidaNFConfigFrm.CheckBox42.Checked then
  begin
   Edit39.Enabled := True;
   label35.Enabled := True;
  end
 else
  begin
   Edit39.Enabled := False;
   label35.Enabled := False;
  end;

 //Município
 if SaidaNFConfigFrm.CheckBox43.Checked then
  begin
   Edit40.Enabled := True;
   label34.Enabled := True;
  end
 else
  begin
   Edit40.Enabled := False;
   label34.Enabled := False;
  end;

 //UF Município
 if SaidaNFConfigFrm.CheckBox44.Checked then
  begin
   ComboBox2.Enabled := True;
   label36.Enabled := True;
  end
 else
  begin
   ComboBox2.Enabled := False;
   label36.Enabled := False;
  end;

 //Inscrição Estadual
 if SaidaNFConfigFrm.CheckBox45.Checked then
  begin
   Edit41.Enabled := True;
   label33.Enabled := True;
  end
 else
  begin
   Edit41.Enabled := False;
   label33.Enabled := False;
  end;

 //Quantidade
 if SaidaNFConfigFrm.CheckBox46.Checked then
  begin
   CurrencyEdit15.Enabled := True;
   label42.Enabled := True;
  end
 else
  begin
   CurrencyEdit15.Enabled := False;
   label42.Enabled := False;
  end;

 //Espécie
 if SaidaNFConfigFrm.CheckBox47.Checked then
  begin
   Edit43.Enabled := True;
   label43.Enabled := True;
  end
 else
  begin
   Edit43.Enabled := False;
   label43.Enabled := False;
  end;

 //Marca
 if SaidaNFConfigFrm.CheckBox48.Checked then
  begin
   Edit44.Enabled := True;
   label44.Enabled := True;
  end
 else
  begin
   Edit44.Enabled := False;
   label44.Enabled := False;
  end;

 //Número
 if SaidaNFConfigFrm.CheckBox49.Checked then
  begin
   CurrencyEdit16.Enabled := True;
   label38.Enabled := True;
  end
 else
  begin
   CurrencyEdit16.Enabled := False;
   label38.Enabled := False;
  end;

 //Peso Bruto
 if SaidaNFConfigFrm.CheckBox50.Checked then
  begin
   CurrencyEdit17.Enabled := True;
   label45.Enabled := True;
  end
 else
  begin
   CurrencyEdit17.Enabled := False;
   label45.Enabled := False;
  end;

 //Peso Líquido
 if SaidaNFConfigFrm.CheckBox51.Checked then
  begin
   CurrencyEdit18.Enabled := True;
   label46.Enabled := True;
  end
 else
  begin
   CurrencyEdit18.Enabled := False;
   label46.Enabled := False;
  end;

 //---------------- Fim da Nota Fiscal ------------------
 //Dados Adicionais
 if SaidaNFConfigFrm.CheckBox53.Checked then
  begin
   groupbox7.Enabled := True;
  end
 else
  begin
   groupbox7.Enabled := False;
  end;

 //Nº Controle do Formulário
 if SaidaNFConfigFrm.CheckBox65.Checked then
  begin
   GroupBox8.Enabled := True;
  end
 else
  begin
   GroupBox8.Enabled := False;
  end;
end;

procedure TSaidaNFAvulsoFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([SaidaNFAvulsoFrm.QryCFOP]);

 abilita;
end;

procedure TSaidaNFAvulsoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 SaidaNFConfigFrm.Close;
 DM1.CloseIBArray([SaidaNFAvulsoFrm.QryCFOP]);
 Action := caFree;
end;

procedure TSaidaNFAvulsoFrm.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
  Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
  Button2.Click;
end;

procedure TSaidaNFAvulsoFrm.ListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_delete then
  begin
   if listview1.Items.Count > 0 then
    begin
     if Application.MessageBox('Deseja excluir este produto da lista?', 'Atenção!', MB_YESNO) = idYes then
      begin
       if not listview1.ItemIndex < 0 then
        begin
         listview1.Items.Item[listview1.ItemIndex].Delete;
        end;
      end;
    end;
  end;
end;

procedure TSaidaNFAvulsoFrm.CurrencyEdit200KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = '.' then
   key := ',';

 if key = '-' then
   key := #0;


end;

procedure TSaidaNFAvulsoFrm.DstQryCFOPDataChange(Sender: TObject;
  Field: TField);
begin
 if not VarIsNull(QryCFOP['DESC_OPERACAO']) then
  Edit1.Text := QryCFOP['DESC_OPERACAO'];
end;

procedure TSaidaNFAvulsoFrm.BitBtn1Click(Sender: TObject);
begin
 SelectFrm.Caption := 'Selecione o Cliente...';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Cliente;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT codcli, nome, endereco, cep, cidade, cgccpf, inscestrg, uf, tipopessoa, bairro');
   IBQuery1.sql.Add('FROM CADASTRO');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFAvulsoFrm.Seleciona_Cliente(Sender: TObject);
begin
 Edit6.Clear;
 Edit7.Clear;
 Edit8.Clear;
 Edit9.Clear;
 Edit10.Clear;
 Edit11.Clear;
 ComboBox4.ItemIndex := -1;
 Edit14.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  edit6.Text := SelectFrm.IBQuery1.fieldByname('NOME').AsString;
 if not varisnull(SelectFrm.IBQuery1['CGCCPF']) then
  edit7.Text := SelectFrm.IBQuery1.fieldByname('CGCCPF').AsString;
 if not varisnull(SelectFrm.IBQuery1['ENDERECO']) then
  edit8.Text := SelectFrm.IBQuery1.fieldByname('ENDERECO').AsString;
 if not varisnull(SelectFrm.IBQuery1['BAIRRO']) then
  edit9.Text := SelectFrm.IBQuery1.fieldByname('BAIRRO').AsString;
 if not varisnull(SelectFrm.IBQuery1['CEP']) then
  edit10.Text := SelectFrm.IBQuery1.fieldByname('CEP').AsString;
 if not varisnull(SelectFrm.IBQuery1['CIDADE']) then
  edit11.Text := SelectFrm.IBQuery1.fieldByname('CIDADE').AsString;
 if not varisnull(SelectFrm.IBQuery1['UF']) then
  ComboBox4.ItemIndex := ComboBox1.Items.IndexOf(SelectFrm.IBQuery1.fieldByname('UF').AsString);
 if not varisnull(SelectFrm.IBQuery1['INSCESTRG']) then
  edit14.Text := SelectFrm.IBQuery1.fieldByname('INSCESTRG').AsString;

 if not VarIsNull(SelectFrm.IBQuery1['UF']) then
  Filtra_CFOP(SelectFrm.IBQuery1['UF']);
 if not varisnull(SelectFrm.IBQuery1['CODCLI']) then
  begin
   SELECT_COD_CLI := SelectFrm.IBQuery1['CODCLI'];
   QryContato.Close;
   QryContato.UnPrepare;
   QryContato.Params[0].AsInteger := SELECT_COD_CLI;
   QryContato.Prepare;
   QryContato.Open;
   CarregaContatos;
  end;
 SelectFrm.close;
end;

procedure TSaidaNFAvulsoFrm.Seleciona_Produto(Sender: TObject);
begin
 //Produto
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  edit500.Text := SelectFrm.IBQuery1['NOME'];
 //Referência
 if not varisnull(SelectFrm.IBQuery1['REFERENCIA']) then
  edit200.Text := SelectFrm.IBQuery1['REFERENCIA'];
 //Classificação Tributaria
 if not varisnull(SelectFrm.IBQuery1['CODIGO_NCM']) then
  edit1500.Text := SelectFrm.IBQuery1['CODIGO_NCM'];
 //Situação Tributaria
 if not varisnull(SelectFrm.IBQuery1['S_TRIB']) then
  edit1600.Text := SelectFrm.IBQuery1['S_TRIB'];
 //Unidade de Venda
 if not varisnull(SelectFrm.IBQuery1['APR_UND']) then
  edit1700.Text := SelectFrm.IBQuery1['APR_UND'];
 //Valor Unitario
 if not varisnull(SelectFrm.IBQuery1['PRC_CUSTO']) then
  CurrencyEdit200.value := SelectFrm.IBQuery1['PRC_CUSTO'];
 //IPI
 if not varisnull(SelectFrm.IBQuery1['ALIQUOTA_IPI']) then
  CurrencyEdit2000.value := SelectFrm.IBQuery1['ALIQUOTA_IPI'];
 //ICMS
 if not varisnull(SelectFrm.IBQuery1['ALIQUOTA_ICMS']) then
  CurrencyEdit1900.value := SelectFrm.IBQuery1['ALIQUOTA_ICMS'];
 selectFrm.Close;
end;

procedure TSaidaNFAvulsoFrm.BitBtn2Click(Sender: TObject);
begin
 Selectfrm.Caption := 'Selecione o Produto...';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Produto;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT NOME, cod_produtos, nome, s_trib, referencia, cl_fis, apr_und, prc_custo, aliquota_ipi, aliquota_icms, CODIGO_NCM');   IBQuery1.sql.Add('FROM produtos where COD_PRODUTOS > 0');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFAvulsoFrm.BitBtn3Click(Sender: TObject);
begin
 SelectFrm.Caption := 'Selecione o Trasportador...';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Trasportador;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT codcli, nome, cgccpf, endereco, cidade, uf, inscestrg');
   IBQuery1.sql.Add('FROM CADASTRO');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFAvulsoFrm.Seleciona_Trasportador(Sender: TObject);
begin
 Edit35.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  edit35.Text := SelectFrm.IBQuery1.fieldByname('NOME').AsString;
 if not varisnull(SelectFrm.IBQuery1['CGCCPF']) then
  edit38.Text := SelectFrm.IBQuery1.fieldByname('CGCCPF').AsString;
 if not varisnull(SelectFrm.IBQuery1['ENDERECO']) then
  edit39.Text := SelectFrm.IBQuery1.fieldByname('ENDERECO').AsString;
 if not varisnull(SelectFrm.IBQuery1['CIDADE']) then
  edit40.Text := SelectFrm.IBQuery1.fieldByname('CIDADE').AsString;
 if not varisnull(SelectFrm.IBQuery1['UF']) then
  ComboBox2.ItemIndex := ComboBox1.Items.IndexOf(SelectFrm.IBQuery1.fieldByname('UF').AsString);
 if not varisnull(SelectFrm.IBQuery1['INSCESTRG']) then
  edit41.Text := SelectFrm.IBQuery1.fieldByname('INSCESTRG').AsString;
 SelectFrm.close;
end;



procedure TSaidaNFAvulsoFrm.LimpaItens;
begin
 edit200.Clear;
 edit500.Clear;
 edit1500.Clear;
 edit1600.Clear;
 edit1700.Clear;
 CurrencyEdit100.Clear;
 CurrencyEdit200.Clear;
 CurrencyEdit300.Clear;
 CurrencyEdit1900.Clear;
 CurrencyEdit2000.Clear;
 CurrencyEdit2100.Clear;
end;

procedure TSaidaNFAvulsoFrm.CurrencyEdit2100KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = vk_return then
   Button5Click(Self);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFAvulsoFrm.Edit500KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
  if Edit200.Text = '' then
   begin
    if CurrencyEdit14.CanFocus then
     CurrencyEdit14.SetFocus;
   end
  else
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;



procedure TSaidaNFAvulsoFrm.Filtra_CFOP(Estado: string);
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
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 5')
   else if (Estado <> QrySintegra['UF']) and (Estado <> 'EX') and
     not (Estado = '') and not (VarIsNull(Estado)) then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 6')
   else if Estado = 'EX' then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 7')
   else
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 5 or cod_cfop_codigo starting with 6 or cod_cfop_codigo starting with 7');
   SQL.Add('order by cod_cfop_codigo');
   Prepare;
   Open;
  end;
end;

procedure TSaidaNFAvulsoFrm.Edit200KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #$20 then
   BitBtn2Click(Self);
end;

procedure TSaidaNFAvulsoFrm.ListView1Click(Sender: TObject);
begin
 if listview1.Items.Count > 0 then
  begin
   if not listview1.ItemIndex < 0 then
     begin
      edit200.Text          := Listview1.Items.Item[listview1.ItemIndex].Caption;                //Referência
      edit500.Text          := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[0];    //Produto
      edit1500.Text         := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[1];    //Classificação Tributaria
      edit1600.Text         := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[2];    //Situação Tributaria
      edit1700.Text         := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[3];    //Unidade de Venda
      CurrencyEdit100.text  := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[4];    //Quantidade
      CurrencyEdit200.text  := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[5];    //Valor Unitario
      CurrencyEdit300.text  := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[6];    //Valor Total Produtos
      CurrencyEdit1900.text := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[7];    //ICMS
      CurrencyEdit2000.text := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[8];    //IPI
      CurrencyEdit2100.text := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[9];    //Valor IPI
     end;
  end;
end;

procedure TSaidaNFAvulsoFrm.CarregaContatos;
begin
 ComboBox5.Items.Clear;
 QryContato.First;
 while not QryContato.Eof do
  begin
   ComboBox5.Items.Add(QryContato.Fields.FieldByName('Valor').AsString);
   QryContato.Next;
  end;
end;

end.
