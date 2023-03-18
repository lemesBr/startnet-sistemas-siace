unit UnitNotaFiscal;

//TODO: Se contribuinte do IPI tem q ter classificação fiscal
interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Grids, DBGrids, Mask, ToolEdit, ExtCtrls, CurrEdit, ComCtrls,
 Buttons, RDprint, Variants, DateUtils, Inifiles, DB, IBCustomDataSet,
 IBQuery, Placemnt, IBSQL, DBCtrls;

type
 TSaidaNFFrm = class(TForm)
   ScrollBox1: TScrollBox;
   Label48: TLabel;
   Label49: TLabel;
   Label50: TLabel;
   GroupBox2: TGroupBox;
   Label1: TLabel;
   Label2: TLabel;
   Label3: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label7: TLabel;
   Label8: TLabel;
   Label9: TLabel;
   Edit15: TEdit;
   Edit18: TEdit;
   Edit21: TEdit;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   DateEdit3: TDateEdit;
   CurrencyEdit1: TCurrencyEdit;
   CurrencyEdit2: TCurrencyEdit;
   CurrencyEdit3: TCurrencyEdit;
   GroupBox5: TGroupBox;
   Label27: TLabel;
   Label28: TLabel;
   Edit3: TEdit;
   DateEdit4: TDateEdit;
   DateEdit5: TDateEdit;
   DateTimePicker1: TDateTimePicker;
   GroupBox6: TGroupBox;
   Edit13: TEdit;
   Label51: TLabel;
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
   GroupBox7: TGroupBox;
   Memo1: TMemo;
   RDprint1: TRDprint;
   Label30: TLabel;
   CurrencyEdit12: TCurrencyEdit;
   DtsQryItens: TDataSource;
   QryItens: TIBQuery;
   QryPedidos: TIBQuery;
   IBSQL1: TIBSQL;
   GroupBox8: TGroupBox;
   Label52: TLabel;
   Edit4: TEdit;
   QryCadastro: TIBQuery;
   DtsQryPedidos: TDataSource;
   DstQryCFOP: TDataSource;
   QryCFOP: TIBQuery;
   BitBtn5: TBitBtn;
   ComboBox1: TComboBox;
   Label29: TLabel;
   QrySintegra: TIBQuery;
   SQLImpressao: TIBSQL;
    Label53: TLabel;
    CurrencyEdit15: TCurrencyEdit;
    CurrencyEdit16: TCurrencyEdit;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    CurrencyEdit17: TCurrencyEdit;
    CurrencyEdit18: TCurrencyEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit19: TCurrencyEdit;
    CurrencyEdit20: TCurrencyEdit;
    CurrencyEdit21: TCurrencyEdit;
    CurrencyEdit22: TCurrencyEdit;
    CurrencyEdit23: TCurrencyEdit;
    CurrencyEdit24: TCurrencyEdit;
    CurrencyEdit25: TCurrencyEdit;
    CurrencyEdit26: TCurrencyEdit;
    Edit1: TEdit;
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
    Label64: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit14: TEdit;
    ComboBox4: TComboBox;
    RadioGroup1: TRadioGroup;
    ComboBox2: TComboBox;
    BitBtn6: TBitBtn;
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
    Label24: TLabel;
    Label63: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel9: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DateTimePicker2: TDateTimePicker;
    QryItensCOD_PEDIDOS_ITENS: TIntegerField;
    QryItensCOD_PEDIDOS: TIntegerField;
    QryItensCOD_PRODUTOS: TIntegerField;
    QryItensREF_PRODUTOS: TIBStringField;
    QryItensNUM_ITEM: TIntegerField;
    QryItensPRODUTO: TIBStringField;
    QryItensCOD_GRUPOP: TIntegerField;
    QryItensCOD_SUBGRUPOP: TIntegerField;
    QryItensCOD_ECF: TIntegerField;
    QryItensOBS: TIBStringField;
    QryItensPRC_VENDA: TIBBCDField;
    QryItensSUBTOTAL: TIBBCDField;
    QryItensVALOR_DESCONTO: TIBBCDField;
    QryItensPRM_ENABLED: TIntegerField;
    QryItensPRM_QUANT: TIBBCDField;
    QryItensPRM_PRC: TIBBCDField;
    QryItensQUANTIDADE: TIBBCDField;
    QryItensNUM_SERIE: TIBStringField;
    QryItensDATA_COMPRA_NSERIE: TDateTimeField;
    QryItensPRC_CUSTO_NSERIE: TIBBCDField;
    QryItensFIM_GARANTIA_FABRICANTE: TDateTimeField;
    QryItensFIM_GARANTIA_APOS_VENDA: TDateTimeField;
    QryItensCOD_NF_ENTRADA: TIntegerField;
    QryItensBASE_ICMS: TIBBCDField;
    QryItensBASE_ICMS_SUBST: TIBBCDField;
    QryItensVALOR_ICMS: TIBBCDField;
    QryItensVALOR_IPI: TIBBCDField;
    QryItensCL_FIS: TIBStringField;
    QryItensS_TRIB: TIBStringField;
    QryItensENABLED: TIntegerField;
    QryItensDATAHORA: TDateTimeField;
    QryItensULTATUALCODSETOR: TIntegerField;
    QryItensULTATUALCODSETORUSER: TIntegerField;
    QryItensULTATUAL: TDateTimeField;
    QryItensAPR_UND: TIBStringField;
    QryItensPERC_DESCONTO: TIBBCDField;
    QryItensALIQUOTA_ICMS: TIBBCDField;
    QryItensALIQUOTA_IPI: TIBBCDField;
    QryItensREDUCAO_BASE_ICMS: TIBBCDField;
    QryItensCODIGO_NCM: TIBStringField;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    DBGrid1: TDBGrid;
    Label68: TLabel;
    Label69: TLabel;
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure CurrencyEdit1Enter(Sender: TObject);
   procedure CurrencyEdit1Exit(Sender: TObject);
   procedure DateEdit1Enter(Sender: TObject);
   procedure DateEdit1Exit(Sender: TObject);
   procedure ComboBox4Enter(Sender: TObject);
   procedure ComboBox4Exit(Sender: TObject);
   procedure BitBtn1Click(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: char);
   procedure BitBtn3Click(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure FormActivate(Sender: TObject);

   procedure Salvar;

   procedure NotaBorda;
   procedure Carrega_Info_Cliente(CodCli, COD_PEDIDOS: integer);
   procedure Carrega_Info_Pedido(Cod_Pedidos: integer);
   procedure LoadDefaultIniVars;
   procedure abilita;

   procedure FormCreate(Sender: TObject);
   procedure CurrencyEdit11KeyPress(Sender: TObject; var Key: char);
   procedure CurrencyEdit11Change(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure BitBtn5Click(Sender: TObject);
   procedure Seleciona_Transp(Sender: TObject);
   procedure Seleciona_Cliente(Sender: TObject);
   procedure Edit35KeyPress(Sender: TObject; var Key: char);
   procedure Edit1Change(Sender: TObject);
   procedure Filtra_CFOP(Estado: string);
    procedure Edit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure CurrencyEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit12KeyPress(Sender: TObject; var Key: Char);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SaidaNFFrm: TSaidaNFFrm;
 COD_PEDIDOS, SELECT_COD_CLI, SELECT_COD_TRANSP: integer;
 Estado: String;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitFuncoes,
 UnitNotaFiscalConfig, UnitSelect, UnitListSaidaN;

{$R *.DFM}

procedure TSaidaNFFrm.Abilita;
begin
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
 edit11.MaxLength := SaidaNFConfigFrm.currencyedit45.asinteger;                 //municipio
 edit12.MaxLength := SaidaNFConfigFrm.currencyedit12.asinteger;                 //fone
 edit14.MaxLength := SaidaNFConfigFrm.currencyedit14.asinteger;                 //insc_est

 //Outros Campos
 edit1.MaxLength  := SaidaNFConfigFrm.currencyedit21.asinteger;                 //CFOP
 edit4.MaxLength  := SaidaNFConfigFrm.currencyedit172.asinteger;                //num_controle
 edit13.MaxLength := SaidaNFConfigFrm.currencyedit17.asinteger;                 //num_nf
 edit3.MaxLength  := SaidaNFConfigFrm.currencyedit27.asinteger;                 //insc_est_s_trib
 currencyedit12.MaxLength := SaidaNFConfigFrm.currencyedit12.asinteger;         //desconto
end;

procedure TSaidaNFFrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).color := claqua;
end;

procedure TSaidaNFFrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TSaidaNFFrm.CurrencyEdit1Enter(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := claqua;
end;

procedure TSaidaNFFrm.CurrencyEdit1Exit(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := clwindow;
end;

procedure TSaidaNFFrm.DateEdit1Enter(Sender: TObject);
begin
 TDateEdit(Sender).color := claqua;
end;

procedure TSaidaNFFrm.DateEdit1Exit(Sender: TObject);
begin
 TDateEdit(Sender).color := clwindow;
end;

procedure TSaidaNFFrm.ComboBox4Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TSaidaNFFrm.ComboBox4Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TSaidaNFFrm.NotaBorda;
var
 linha, x: integer;
 ArquivoIni: TIniFile;
 Path: string;
begin
 if QryItens.RecordCount < SaidaNFConfigFrm.CurrencyEdit200.asinteger then
  begin
   if application.messagebox('Imprimir NOTA FISCAL?' + #13#13 +
     'Certifique-se de ter preenchido todos os campos corretamente.', 'Atenção!',
     mb_yesno + mb_iconquestion) = idYes then
    begin
     //------ Parametros para a NOTA FISCAL ------
     rdprint1.TamanhoQteLinhas := 110;  // Linhas (deve ser 1 quando for CUPOM)
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
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit22.asinteger, SaidaNFConfigFrm.CurrencyEdit23.asinteger, Copy(Edit1.Text, 0, SaidaNFConfigFrm.CurrencyEdit21.asinteger));
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
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit49.asinteger, SaidaNFConfigFrm.CurrencyEdit50.asinteger, Edit12.Text);
     //Vencimento
     if SaidaNFConfigFrm.CheckBox67.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit176.asinteger, SaidaNFConfigFrm.CurrencyEdit177.asinteger, DateToStr(DateTimePicker2.Date));
     //UF
     if SaidaNFConfigFrm.CheckBox15.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit55.asinteger, SaidaNFConfigFrm.CurrencyEdit54.asinteger, ComboBox4.Text);
     //Insc.Est.
     if SaidaNFConfigFrm.CheckBox14.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit52.asinteger, SaidaNFConfigFrm.CurrencyEdit53.asinteger, Edit14.Text);

     //------ Dados do Produto ------
     linha := SaidaNFConfigFrm.CurrencyEdit151.asinteger;
     // Linha inicial dos produtos...
     QryItens.First;
     for x := 1 to SaidaNFConfigFrm.CurrencyEdit200.asinteger do
      begin
       if QryItens.EOF then
         Break;
       //Referencia
       if not VarIsNull(QryItens['Ref_Produtos']) then
        if SaidaNFConfigFrm.CheckBox54.Checked then
         RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit162.asinteger, QryItens['Ref_Produtos'], [comp20]);
       //Descricao
       if not VarIsNull(QryItens['Produto']) then
        if SaidaNFConfigFrm.CheckBox56.Checked then
         RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit165.asinteger, QryItens['Produto'], [comp20]);
       //Sit. Trib
       if not VarIsNull(QryItens['S_Trib']) then
        if SaidaNFConfigFrm.CheckBox60.Checked then
         RDprint1.ImpD(linha, SaidaNFConfigFrm.CurrencyEdit203.asinteger, QryItens['S_Trib'], [comp20]);
       //Unidade
       if not VarIsNull(QryItens['Apr_Und']) then
        if SaidaNFConfigFrm.CheckBox3.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit155.asinteger, QryItens['Apr_Und'], [comp20]);
       //Classif. Fical
       if not VarIsNull(QryItens['cl_fis']) then
        if SaidaNFConfigFrm.CheckBox59.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit199.asinteger, QryItens['cl_fis'], [comp20]);
       //ICMS
       if not VarIsNull(QryItens['Aliquota_ICMS']) then
        if SaidaNFConfigFrm.CheckBox61.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit207.asinteger, QryItens['Aliquota_ICMS'], [comp20]);
       //IPI
       if not VarIsNull(QryItens['Aliquota_IPI']) then
        if SaidaNFConfigFrm.CheckBox64.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit175.asinteger, QryItens['Aliquota_IPI'], [comp20]);
       //Quantidade
       if not VarIsNull(QryItens['Quantidade']) then
        if SaidaNFConfigFrm.CheckBox55.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit189.asinteger, formatfloat('###,##0.00', QryItens['Quantidade']), [comp20]);
       //Preço de Venda
       if not VarIsNull(QryItens['Prc_Venda']) then
        if SaidaNFConfigFrm.CheckBox57.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit194.asinteger, formatfloat('###,##0.00', QryItens['PRC_VENDA']), [comp20]);
       //Valor SubTotal
       if not VarIsNull(QryItens['SubTotal']) then
        if SaidaNFConfigFrm.CheckBox58.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit168.asinteger, formatfloat('###,##0.00', QryItens['SubTotal']), [comp20]);
       //Valor IPI
       if not VarIsNull(QryItens['Valor_IPI']) then
        if SaidaNFConfigFrm.CheckBox66.Checked then
         RDprint1.ImpD(linha, SaidaNFConfigFrm.CurrencyEdit171.asinteger, formatfloat('###,##0.00', QryItens['Valor_IPI']), [comp20]);
       inc(linha);
       QryItens.Next;
      end;
     //Desconto
     if SaidaNFConfigFrm.CheckBox62.Checked then
       RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit186.asinteger, 'Desconto (-): ' + formatfloat('###,##0.00', currencyedit12.Value), []);
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
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit9.asinteger, SaidaNFConfigFrm.CurrencyEdit107.asinteger, Copy(Edit35.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit7.Value))));
     //Frete por Conta
     if SaidaNFConfigFrm.CheckBox38.Checked then
      if combobox3.ItemIndex = 1 then //Remetente
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger, SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[1]')
      else if combobox3.ItemIndex = 2 then //Destinatário
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger, SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[2]');
     //Placa
     if SaidaNFConfigFrm.CheckBox39.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit112.asinteger, SaidaNFConfigFrm.CurrencyEdit113.asinteger, Copy(Edit37.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit111.Value))));
     //UF
     if SaidaNFConfigFrm.CheckBox40.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit115.asinteger, SaidaNFConfigFrm.CurrencyEdit116.asinteger, Combobox1.Text);
     //CNPJ/CPF
     if SaidaNFConfigFrm.CheckBox41.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit118.asinteger, SaidaNFConfigFrm.CurrencyEdit119.asinteger, Copy(Edit38.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit117.Value))));
     //Endereco
     if SaidaNFConfigFrm.CheckBox42.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit121.asinteger, SaidaNFConfigFrm.CurrencyEdit122.asinteger, Copy(Edit39.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit120.Value))));
     //Municipio
     if SaidaNFConfigFrm.CheckBox43.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit124.asinteger, SaidaNFConfigFrm.CurrencyEdit125.asinteger, Copy(Edit40.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit123.Value))));
     //UF
     if SaidaNFConfigFrm.CheckBox44.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit127.asinteger, SaidaNFConfigFrm.CurrencyEdit128.asinteger, ComboBox2.Text);
     //Ins. Est.
     if SaidaNFConfigFrm.CheckBox45.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit130.asinteger, SaidaNFConfigFrm.CurrencyEdit131.asinteger, Copy(Edit41.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit129.Value))));
     //Quantidade
     if CurrencyEdit15.Value <> 0 then
      if SaidaNFConfigFrm.CheckBox46.Checked then
        RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit133.asinteger, SaidaNFConfigFrm.CurrencyEdit134.asinteger, FormatFloat('###,##0.00', CurrencyEdit15.Value), []);
     //Especie
     if SaidaNFConfigFrm.CheckBox47.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit136.asinteger, SaidaNFConfigFrm.CurrencyEdit137.asinteger, Copy(Edit43.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit135.Value))));
     //Marca
     if SaidaNFConfigFrm.CheckBox48.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit139.asinteger, SaidaNFConfigFrm.CurrencyEdit140.asinteger, Copy(Edit44.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit138.Value))));
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

     //Desabilitado, pois a nota já vem com o Nº de Controle impresso
     //Nº Controle do Formulário
{     if SaidaNFConfigFrm.CheckBox65.Checked then
      RDprint1.ImpD(SaidaNFConfigFrm.CurrencyEdit173.asinteger, SaidaNFConfigFrm.CurrencyEdit174.asinteger, copy(edit4.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit172.Value))), [negrito, comp12]);
     // Nº da Nota (Notas com Rodapé)}
     if SaidaNFConfigFrm.CheckBox68.Checked then
      RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit181.asinteger, SaidaNFConfigFrm.CurrencyEdit180.asinteger, edit13.text, [negrito, comp12]);
     RDprint1.Fechar;

     if Application.MessageBox('A impressão foi feita corretamente?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
      begin
       Panel9.Visible := True;
       Application.ProcessMessages;

       if QryPedidos['IMP_OK'] = 0 then
        begin
         Salvar;
         Path := CreateDefaultINiFile;
         ArquivoIni := TIniFile.Create(Path);
         NumNota := NumNota + 1;
         ArquivoINI.WriteInteger('NOTAFISCAL', 'NUMNOTA', NumNota);
         Arquivoini.Free;
        end;

       with SQLImpressao do
        begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE PEDIDOS SET IMP_OK = 1 WHERE COD_PEDIDOS = ' + IntToStr(COD_PEDIDOS));
         Prepare;
         ExecQuery;
         Transaction.CommitRetaining;
        end;

       if DM1.CanCommit then
        begin
         DM1.GetRecPosIBArray(IBArray);
         SQLImpressao.Transaction.Commit;
         DM1.OpenIBArray(IBArray);
         DM1.SetRecPosIBArray(IBArray);
        end
       else
        SQLImpressao.Transaction.CommitRetaining;

        ModalResult := mrOk;
      end
//     else
//       ModalResult := mrCancel;
    end;
  end
 else
   application.MessageBox('Pedido contém mais de 23 items, o que é o máximo suportado.' +
     #13 +
     'Volte à tela de vendas e realize pedidos com no máximo 23 items cada.',
     'Atenção!', mb_iconerror + Mb_ok);
end;

procedure TSaidaNFFrm.FormCreate(Sender: TObject);
begin
 LoadDefaultIniVars;
 Application.HintHidePause := 10000;
 Application.HintColor := clYellow; 
end;

procedure TSaidaNFFrm.BitBtn1Click(Sender: TObject);
begin
 NotaBorda;
end;

procedure TSaidaNFFrm.FormShow(Sender: TObject);
begin
 if QryPedidos['IMP_OK'] = 0 then
  begin
   dateedit4.Date := Now;
   dateedit5.Date := Now;
   Datetimepicker1.Time := Now;
   Datetimepicker2.Date := Now;
  end;
end;

procedure TSaidaNFFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(WM_nextdlgctl, 0,0);
 if key = vk_escape then
   self.Close;
end;

procedure TSaidaNFFrm.CurrencyEdit1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = '.' then
   key := ',';

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', #08, #09]) then
   key := #0;   
end;

procedure TSaidaNFFrm.BitBtn3Click(Sender: TObject);
begin
 if application.MessageBox('Tem certeza que deseja sair e cancelar a impressão da Nota Fiscal?',
   'Atenção!', mb_iconquestion + mb_yesno) = idYes then
  begin
   Panel9.Visible := True;
   Application.ProcessMessages;
   ModalResult := mrOk;
  end;
end;

procedure TSaidaNFFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([SaidaNFfrm.QryItens, SaidaNFfrm.QryPedidos, SaidaNFfrm.QryCadastro,
   SaidaNFfrm.QryCFOP, SaidaNFFrm.QrySintegra]);

 abilita;  
end;

procedure TSaidaNFFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SaidaNFConfigFrm.Close;
 SaidaNFConfigFrm.Free;
 DM1.CloseIBArray([SaidaNFfrm.QryItens, SaidaNFfrm.QryPedidos, SaidaNFfrm.QryCadastro,
   SaidaNFfrm.QryCFOP, SaidaNFFrm.QrySintegra]);
 Action := caFree;
end;

procedure TSaidaNFFrm.Salvar;
var
 Path : String;
 ArquivoIni: TIniFile;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 with IBSQL1 do
  begin
   Close;
   SQL.Clear;
   SQL.Add('update PEDIDOS set VALOR_FRETE = :VALOR_FRETE, VALOR_SEGURO = :VALOR_SEGURO, OUTRAS_DESPESAS = :OUTRAS_DESPESAS, NOME_DESTINATARIO = :NOME_DESTINATARIO, IE_DESTINATARIO = :IE_DESTINATARIO,');
   SQL.Add('DATAHORA_SAIDAENTRADA = :DATAHORA_SAIDAENTRADA, DATAHORA_EMISSAO = :DATAHORA_EMISSAO, DATAHORA_SAIDA = :DATAHORA_SAIDA, FONE_DESTINATARIO = :FONE_DESTINATARIO, CEP_DESTINATARIO = :CEP_DESTINATARIO,');
   SQL.Add('CFOP = :CFOP, FAT_01 = :FAT_01, VALOR_01 = :VALOR_01, FAT_02 = :FAT_02, SUB_SERIE_NF = :SUB_SERIE_NF,');
   if DateEdit1.Text <> '  /  /    ' then
     SQL.Add('VENCIMENTO_01 = :VENCIMENTO_01,');
   if DateEdit2.Text <> '  /  /    ' then
     SQL.Add('VENCIMENTO_02 = :VENCIMENTO_02,');
   if DateEdit3.Text <> '  /  /    ' then
     SQL.Add('VENCIMENTO_03 = :VENCIMENTO_03,');
   SQL.Add('VALOR_02 = :VALOR_02, FAT_03 = :FAT_03, VALOR_03 = :VALOR_03, COD_CLI_TRANSP = :COD_CLI_TRANSP, TRANSP_NOME = :TRANSP_NOME, ENDERECO_DESTINATARIO = :ENDERECO_DESTINATARIO,');
   SQL.Add('TRANSP_FRETE_CONTA = :TRANSP_FRETE_CONTA, TRANSP_PLACA_VEICULO = :TRANSP_PLACA_VEICULO, TRANSP_UF_VEICULO = :TRANSP_UF_VEICULO, BAIRRO_DESTINATARIO = :BAIRRO_DESTINATARIO,');
   SQL.Add('TRANSP_CNPJ_CPF = :TRANSP_CNPJ_CPF, TRANSP_ENDER = :TRANSP_ENDER, TRANSP_MUNICIPIO = :TRANSP_MUNICIPIO, TRANSP_UF = :TRANSP_UF, CIDADE_DESTINATARIO = :CIDADE_DESTINATARIO,');
   SQL.Add('TRANSP_IE = :TRANSP_IE, TRANSP_QNT = :TRANSP_QNT, TRANSP_ESPECIE = :TRANSP_ESPECIE, TRANSP_MARCA = :TRANSP_MARCA, TRANSP_NRO = :TRANSP_NRO, VALOR_TOTALNF = :VALOR_TOTALNF,');
   SQL.Add('TRANSP_PESO_B = :TRANSP_PESO_B, TRANSP_PESO_L = :TRANSP_PESO_L, NUM_VIA = :NUM_VIA, NUM_FORM = :NUM_FORM, SERIE_FORM = :SERIE_FORM, IE_SUBST_TRIB = :IE_SUBST_TRIB, NUM_NF = :NUM_NF,');
   SQL.Add('SERIE_NF = :SERIE_NF, SITUACAO_NF = :SITUACAO_NF, DADOS_ADICIONAIS = :DADOS_ADICIONAIS, OBS = :OBS, MODELO_NF = :MODELO_NF, VALOR_TOTALPRODUTO = :VALOR_TOTALPRODUTO, DESCONTO = :DESCONTO,');
   SQL.Add('BASE_ICMS = :BASE_ICMS, VALOR_ICMS = :VALOR_ICMS, BASE_ICMS_SUBST = :BASE_ICMS_SUBST, VALOR_ICMS_SUBST = :VALOR_ICMS_SUBST, VALOR_IPI = :VALOR_IPI, VENCIMENTO = :VENCIMENTO,');
   SQL.Add('ESPECIE = :ESPECIE, COD_FISCAL_ICMS = :COD_FISCAL_ICMS, COD_FISCAL_IPI = :COD_FISCAL_IPI, VALOR_ISENTO_ICMS = :VALOR_ISENTO_ICMS, VALOR_ISENTO_IPI = :VALOR_ISENTO_IPI,');
   SQL.Add('OUTRAS_ICMS = :OUTRAS_ICMS, ICMS_ANTECIPADO = :ICMS_ANTECIPADO, BASE_IPI = :BASE_IPI, ALIQUOTA_IPI = :ALIQUOTA_IPI, OUTRAS_IPI = :OUTRAS_IPI,');
   SQL.Add('ALIQUOTA_ICMS = :ALIQUOTA_ICMS, NATUREZA_OP = :NATUREZA_OP where COD_PEDIDOS = :COD_PEDIDOS');
   Params.ByName('COD_PEDIDOS').AsInteger := COD_PEDIDOS;
   //Dados do Cliente
   Params.ByName('IE_SUBST_TRIB').AsString := Edit3.Text;
   Params.ByName('NOME_DESTINATARIO').AsString := Edit6.Text;
   Params.ByName('ENDERECO_DESTINATARIO').AsString := Edit8.Text;
   Params.ByName('BAIRRO_DESTINATARIO').AsString := Edit9.Text;
   Params.ByName('CIDADE_DESTINATARIO').AsString := Edit11.Text;
   Params.ByName('FONE_DESTINATARIO').AsString := Edit12.Text;
   Params.ByName('CEP_DESTINATARIO').AsString := Edit10.Text;
   Params.ByName('IE_DESTINATARIO').AsString := Edit14.Text;
   Params.ByName('VENCIMENTO').AsDate := DateTimePicker2.Date;
   //Dados das Faturas
   if DateEdit1.Text <> '  /  /    ' then
     Params.ByName('VENCIMENTO_01').AsDate := DateEdit1.Date;
   if DateEdit2.Text <> '  /  /    ' then
     Params.ByName('VENCIMENTO_02').AsDate := DateEdit2.Date;
   if DateEdit3.Text <> '  /  /    ' then
     Params.ByName('VENCIMENTO_03').AsDate := DateEdit3.Date;
   Params.ByName('FAT_01').AsString := Edit15.Text;
   Params.ByName('VALOR_01').AsFloat := CurrencyEdit1.Value;
   Params.ByName('FAT_02').AsString := Edit18.Text;
   Params.ByName('VALOR_02').AsFloat := CurrencyEdit2.Value;
   Params.ByName('FAT_03').AsString := Edit21.Text;
   Params.ByName('VALOR_03').AsFloat := CurrencyEdit3.Value;
   //Dados dos Impostos
   Params.ByName('DESCONTO').AsFloat := CurrencyEdit12.Value;
   Params.ByName('VALOR_FRETE').AsFloat := CurrencyEdit11.Value;
   Params.ByName('VALOR_SEGURO').AsFloat := CurrencyEdit10.Value;
   Params.ByName('OUTRAS_DESPESAS').AsFloat := CurrencyEdit5.Value;
   Params.ByName('ESPECIE').AsString := 'NF';
   Params.ByName('VALOR_ISENTO_ICMS').AsFloat := CurrencyEdit21.Value;
   Params.ByName('ICMS_ANTECIPADO').AsFloat := CurrencyEdit20.Value;
   Params.ByName('OUTRAS_ICMS').AsFloat := CurrencyEdit19.Value;
   Params.ByName('BASE_IPI').AsFloat := CurrencyEdit26.Value;
   Params.ByName('BASE_ICMS').AsFloat := CurrencyEdit14.Value;
   Params.ByName('VALOR_ICMS').AsFloat := CurrencyEdit13.Value;
   Params.ByName('BASE_ICMS_SUBST').AsFloat := CurrencyEdit8.Value;
   Params.ByName('VALOR_ICMS_SUBST').AsFloat := CurrencyEdit6.Value;
   Params.ByName('ALIQUOTA_IPI').AsFloat := CurrencyEdit25.Value;
   Params.ByName('VALOR_ISENTO_IPI').AsFloat := CurrencyEdit24.Value;
   Params.ByName('VALOR_IPI').AsFloat := CurrencyEdit7.Value;
   Params.ByName('OUTRAS_IPI').AsFloat := CurrencyEdit23.Value;
   Params.ByName('ALIQUOTA_ICMS').AsFloat := CurrencyEdit22.Value;
   if ComboBox5.ItemIndex > 0 then
    Params.ByName('COD_FISCAL_ICMS').AsInteger := ComboBox5.ItemIndex;
   if ComboBox6.ItemIndex > 0 then
    Params.ByName('COD_FISCAL_IPI').AsInteger := ComboBox5.ItemIndex;
   Params.ByName('VALOR_TOTALNF').AsFloat := CurrencyEdit9.Value;
   Params.ByName('VALOR_TOTALPRODUTO').AsFloat := CurrencyEdit4.Value;
   //Dados da Transportadora
   Params.ByName('COD_CLI_TRANSP').AsInteger := SELECT_COD_TRANSP;
   Params.ByName('TRANSP_NOME').AsString := Edit35.Text;
   Params.ByName('TRANSP_FRETE_CONTA').AsString := ComboBox3.Text;
   Params.ByName('TRANSP_PLACA_VEICULO').AsString := Edit37.Text;
   Params.ByName('TRANSP_UF_VEICULO').AsString := ComboBox1.Text;
   Params.ByName('TRANSP_CNPJ_CPF').AsString := Edit38.Text;
   Params.ByName('TRANSP_ENDER').AsString := Edit39.Text;
   Params.ByName('TRANSP_MUNICIPIO').AsString := Edit40.Text;
   Params.ByName('TRANSP_UF').AsString := ComboBox2.Text;
   Params.ByName('TRANSP_IE').AsString := Edit41.Text;
   Params.ByName('TRANSP_QNT').AsFloat := CurrencyEdit15.Value;
   Params.ByName('TRANSP_ESPECIE').AsString := Edit43.Text;
   Params.ByName('TRANSP_MARCA').AsString := Edit44.Text;
   Params.ByName('TRANSP_NRO').AsFloat := CurrencyEdit16.Value;
   Params.ByName('TRANSP_PESO_B').AsFloat := CurrencyEdit17.Value;
   Params.ByName('TRANSP_PESO_L').AsFloat := CurrencyEdit18.Value;
   //Dados do Formulário e do Pedido
   Params.ByName('DATAHORA_SAIDAENTRADA').AsDate := DateEdit5.Date;
   Params.ByName('DATAHORA_SAIDA').AsTime := DateTimePicker1.Time;
   Params.ByName('DATAHORA_EMISSAO').AsDate := DateEdit4.Date;
   Params.ByName('NUM_FORM').AsString := Edit4.Text;
   Params.ByName('NUM_NF').AsString := Edit13.Text;
   Params.ByName('MODELO_NF').AsString := ArquivoIni.ReadString('NOTAFISCAL', 'Modelo', '1A');
   Params.ByName('SERIE_NF').AsString := ArquivoIni.ReadString('NOTAFISCAL', 'Serie', 'M');
   Params.ByName('SUB_SERIE_NF').AsString := ArquivoIni.ReadString('NOTAFISCAL', 'SubSerie', '1');
   Params.ByName('DADOS_ADICIONAIS').AsString := Memo1.Text;
   Params.ByName('CFOP').AsInteger := StrToInt(DBLookupComboBox1.Text);
   Params.ByName('NATUREZA_OP').AsString := Edit1.Text;
   Prepare;
   ExecQuery;
   Transaction.CommitRetaining;
   Close;
  end
end;

procedure TSaidaNFFrm.Carrega_Info_Cliente(CODCLI, COD_PEDIDOS: integer);
begin
 if not VarIsNull(CODCLI) then
  begin
   with QryCadastro do
    begin
     Close;
     UnPrepare;
     SQL.Clear;
     SQL.Add('Select * from cadastro where CodCli = :CodCli');
     Params.ParamByName('CodCli').AsInteger := CODCLI;
     Prepare;
     Open;
    end;
  end;

 Edit6.OnKeyPress := nil;
 if QryCadastro.RecordCount > 0 then
  begin
   if not varisnull(QryCadastro['NOME']) then
     edit6.Text := QryCadastro['NOME'];
   if not VarIsNull(QryCadastro['CGCCPF']) then
     edit7.Text := QryCadastro['CGCCPF'];
   if not VarIsNull(QryCadastro['ENDERECO']) then
     edit8.Text := QryCadastro['ENDERECO'];
   if not VarIsNull(QryCadastro['BAIRRO']) then
     edit9.Text := QryCadastro['BAIRRO'];
   if not VarIsNull(QryCadastro['CEP']) then
     edit10.Text := QryCadastro['CEP'];
   if not VarIsNull(QryCadastro['CIDADE']) then
     edit11.Text := QryCadastro['CIDADE'];
   if not VarIsNull(QryCadastro['FONE']) then
     edit12.Text := IntToStr(QryCadastro['FONE']);
   if not VarIsNull(QryCadastro['INSCESTRG']) then
     edit14.Text := QryCadastro['INSCESTRG'];
   if not VarIsNull(QryCadastro['UF']) then
     ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(QryCadastro['UF']);
  end;
 Edit6.OnKeyPress := Edit35KeyPress;
 //---------------- Chama Procedure de filtragem de CFOP ---------
 Estado := VarToStr(QryCadastro['UF']);
 Filtra_CFOP(Estado);

 //---------------- Chama os itens deste pedido ------------------
 if not VarIsNull(COD_PEDIDOS) then
  begin
   with QryItens do
    begin
     Close;
     UnPrepare;
     SQL.Clear;
     SQL.Add('select * from PEDIDOS_ITENS');
     SQL.Add('where Cod_Pedidos = :Cod_Pedidos order by Num_Item');
     Params.ParamByName('Cod_Pedidos').AsInteger := COD_PEDIDOS;
     Prepare;
     Open;
    end;
  end;
end;

procedure TSaidaNFFrm.Carrega_Info_Pedido(Cod_Pedidos: integer);
begin
 try
  begin
   if not VarIsNull(COD_PEDIDOS) then
    begin
     with QryPedidos do
      begin
       Close;
       UnPrepare;
       SQL.Clear;
       SQL.Add('select * from PEDIDOS');
       SQL.Add('where Cod_Pedidos = :Cod_Pedidos');
       Params.ParamByName('Cod_Pedidos').AsInteger := COD_PEDIDOS;
       Prepare;
       Open;
      end;
    end;

   if QryPedidos['IMP_OK'] = 0 then
    begin
     Edit13.Text := IntToStr(NumNota);
    end
   else if QryPedidos['IMP_OK'] = 1 then
    begin
     if QryPedidos['SITUACAO_NF'] = 1 then
      begin
       Button1.Enabled := False;
       Button4.Enabled := False;
       Label68.Visible := True;
       Label69.Visible := True;
      end;

    //----------Dados do Cabeçalho da Nota-------
     if not VarIsNull(QryPedidos['NUM_NF']) then
      Edit13.Text := QryPedidos['NUM_NF'];
    //----------Travamento de Nota já impressa---
     Edit13.Enabled    := False;
     GroupBox1.Enabled := False;
     GroupBox2.Enabled := False;
     GroupBox3.Enabled := False;
     GroupBox4.Enabled := False;
     GroupBox5.Enabled := False;
     GroupBox6.Enabled := False;
     GroupBox8.Enabled := False;
    end;
   if not VarIsNull(QryPedidos['NOME_DESTINATARIO']) then
    Edit6.Text := QryPedidos['NOME_DESTINATARIO'];
   if not VarIsNull(QryPedidos['ENDERECO_DESTINATARIO']) then
    Edit8.Text := QryPedidos['ENDERECO_DESTINATARIO'];
   if not VarIsNull(QryPedidos['BAIRRO_DESTINATARIO']) then
    Edit9.Text := QryPedidos['BAIRRO_DESTINATARIO'];
   if not VarIsNull(QryPedidos['CIDADE_DESTINATARIO']) then
    Edit11.Text := QryPedidos['CIDADE_DESTINATARIO'];
   if not VarIsNull(QryPedidos['FONE_DESTINATARIO']) then
    Edit12.Text := QryPedidos['FONE_DESTINATARIO'];
   if not VarIsNull(QryPedidos['CEP_DESTINATARIO']) then
    Edit10.Text := QryPedidos['CEP_DESTINATARIO'];
   if not VarIsNull(QryPedidos['NATUREZA_OP']) then
    Edit1.Text := QryPedidos['NATUREZA_OP'];
   if not VarIsNull(QryPedidos['CFOP']) then
    DBLookupComboBox1.KeyValue := QryPedidos['CFOP'];
   if not VarIsNull(QryPedidos['IE_SUBST_TRIB']) then
    Edit3.Text := QryPedidos['IE_SUBST_TRIB'];
   if not VarIsNull(QryPedidos['DATAHORA_SAIDA']) then
    DateEdit5.Date := QryPedidos['DATAHORA_SAIDA'];
   if not VarIsNull(QryPedidos['DATAHORA_SAIDA']) then
    DateTimePicker1.Time := QryPedidos['DATAHORA_SAIDA'];
   if not VarIsNull(QryPedidos['DATAHORA_EMISSAO']) then
    DateEdit4.Date := QryPedidos['DATAHORA_EMISSAO'];
   if not VarIsNull(QryPedidos['VENCIMENTO']) then
    DateTimePicker2.Date := QryPedidos['VENCIMENTO'];

   //-------------Dados das Faturas-------------
   if not VarIsNull(QryPedidos['FAT_01']) then
    Edit15.Text := QryPedidos['FAT_01'];
   if not VarIsNull(QryPedidos['VENCIMENTO_01']) then
    DateEdit1.Date := QryPedidos['VENCIMENTO_01'];
   if not VarIsNull(QryPedidos['VALOR_01']) then
    CurrencyEdit1.Value := QryPedidos['VALOR_01'];
   if not VarIsNull(QryPedidos['FAT_02']) then
    Edit18.Text := QryPedidos['FAT_02'];
   if not VarIsNull(QryPedidos['VENCIMENTO_02']) then
    DateEdit2.Date := QryPedidos['VENCIMENTO_02'];
   if not VarIsNull(QryPedidos['VALOR_02']) then
    CurrencyEdit2.Value := QryPedidos['VALOR_02'];
   if not VarIsNull(QryPedidos['FAT_03']) then
    Edit21.Text := QryPedidos['FAT_03'];
   if not VarIsNull(QryPedidos['VENCIMENTO_03']) then
    DateEdit3.Date := QryPedidos['VENCIMENTO_03'];
   if not VarIsNull(QryPedidos['VALOR_03']) then
    CurrencyEdit3.Value := QryPedidos['VALOR_03'];

   //-------------Dados dos Impostos-------------
   if not VarIsNull(QryPedidos['DESCONTO']) then
    CurrencyEdit12.Value := QryPedidos['DESCONTO'];
   if not VarIsNull(QryPedidos['VALOR_FRETE']) then
    CurrencyEdit11.Value := QryPedidos['VALOR_FRETE'];
   if not VarIsNull(QryPedidos['VALOR_SEGURO']) then
    CurrencyEdit10.Value := QryPedidos['VALOR_SEGURO'];
   if not VarIsNull(QryPedidos['OUTRAS_DESPESAS']) then
    CurrencyEdit5.Value := QryPedidos['OUTRAS_DESPESAS'];
   if not VarIsNull(QryPedidos['VALOR_ISENTO_ICMS']) then
    CurrencyEdit21.Value := QryPedidos['VALOR_ISENTO_ICMS'];
   if not VarIsNull(QryPedidos['ICMS_ANTECIPADO']) then
    CurrencyEdit20.Value := QryPedidos['ICMS_ANTECIPADO'];
   if not VarIsNull(QryPedidos['OUTRAS_ICMS']) then
    CurrencyEdit19.Value := QryPedidos['OUTRAS_ICMS'];
   if not VarIsNull(QryPedidos['BASE_IPI']) then
    CurrencyEdit26.Value := QryPedidos['BASE_IPI'];
   if not VarIsNull(QryPedidos['BASE_ICMS']) then
    CurrencyEdit14.Value := QryPedidos['BASE_ICMS'];
   if not VarIsNull(QryPedidos['VALOR_ICMS']) then
    CurrencyEdit13.Value := QryPedidos['VALOR_ICMS'];
   if not VarIsNull(QryPedidos['VALOR_IPI']) then
    CurrencyEdit7.Value := QryPedidos['VALOR_IPI'];
   if not VarIsNull(QryPedidos['BASE_ICMS_SUBST']) then
    CurrencyEdit8.Value := QryPedidos['BASE_ICMS_SUBST'];
   if not VarIsNull(QryPedidos['VALOR_ICMS_SUBST']) then
    CurrencyEdit6.Value := QryPedidos['VALOR_ICMS_SUBST'];
   if not VarIsNull(QryPedidos['ALIQUOTA_IPI']) then
    CurrencyEdit25.Value := QryPedidos['ALIQUOTA_IPI'];
   if not VarIsNull(QryPedidos['VALOR_ISENTO_IPI']) then
    CurrencyEdit24.Value := QryPedidos['VALOR_ISENTO_IPI'];
   if not VarIsNull(QryPedidos['OUTRAS_IPI']) then
    CurrencyEdit23.Value := QryPedidos['OUTRAS_IPI'];
   if not VarIsNull(QryPedidos['COD_FISCAL_ICMS']) then
    ComboBox5.ItemIndex := QryPedidos['COD_FISCAL_ICMS'];
   if not VarIsNull(QryPedidos['COD_FISCAL_IPI']) then
    ComboBox6.ItemIndex := QryPedidos['COD_FISCAL_IPI'];
   if not VarIsNull(QryPedidos['ALIQUOTA_ICMS']) then
    CurrencyEdit22.Value := QryPedidos['ALIQUOTA_ICMS'];
   if not VarIsNull(QryPedidos['DATAHORA_SAIDAENTRADA']) then
    DateEdit5.Date := QryPedidos.FieldByName('DATAHORA_SAIDAENTRADA').AsDateTime;
   if not VarIsNull(QryPedidos['DATAHORA_EMISSAO']) then
    DateEdit4.Date := QryPedidos.FieldByName('DATAHORA_EMISSAO').AsDateTime;
   if not VarIsNull(QryPedidos['DATAHORA_SAIDA']) then
    DateTimePicker1.Time := QryPedidos.FieldByName('DATAHORA_SAIDA').AsDateTime;
   if not VarIsNull(QryPedidos['VALOR_TOTALNF']) then
    CurrencyEdit9.Value := QryPedidos['VALOR_TOTALNF'];
   if not VarIsNull(QryPedidos['VALOR_TOTALPRODUTO']) then
    CurrencyEdit4.Value := QryPedidos['VALOR_TOTALPRODUTO'];

{
   CurrencyEdit9.Value := CurrencyEdit14.Value + CurrencyEdit11.Value + CurrencyEdit10.Value +
                          CurrencyEdit7.Value + CurrencyEdit5.Value - CurrencyEdit12.Value;
}
   //----------Dados da Transportadora--------------
   if not VarIsNull(QryPedidos['TRANSP_NOME']) then
     Edit35.Text := QryPedidos['TRANSP_NOME'];
   if not VarIsNull(QryPedidos['TRANSP_FRETE_CONTA']) then
     ComboBox3.ItemIndex := ComboBox3.Items.IndexOf(QryPedidos['TRANSP_FRETE_CONTA']);
   if not VarIsNull(QryPedidos['TRANSP_PLACA_VEICULO']) then
     Edit37.Text := QryPedidos['TRANSP_PLACA_VEICULO'];
   if not VarIsNull(QryPedidos['TRANSP_UF_VEICULO']) then
     ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(QryPedidos['TRANSP_UF_VEICULO']);
   if not VarIsNull(QryPedidos['TRANSP_CNPJ_CPF']) then
     Edit38.Text := QryPedidos['TRANSP_CNPJ_CPF'];
   if not VarIsNull(QryPedidos['TRANSP_ENDER']) then
     Edit39.Text := QryPedidos['TRANSP_ENDER'];
   if not VarIsNull(QryPedidos['TRANSP_MUNICIPIO']) then
     Edit40.Text := QryPedidos['TRANSP_MUNICIPIO'];
   if not VarIsNull(QryPedidos['TRANSP_UF']) then
     ComboBox2.ItemIndex := ComboBox1.Items.IndexOf(QryPedidos['TRANSP_UF']);
   if not VarIsNull(QryPedidos['TRANSP_IE']) then
     Edit41.Text := QryPedidos['TRANSP_IE'];
   if not VarIsNull(QryPedidos['TRANSP_QNT']) then
     CurrencyEdit16.Value := QryPedidos['TRANSP_QNT'];
   if not VarIsNull(QryPedidos['TRANSP_ESPECIE']) then
     Edit43.Text := QryPedidos['TRANSP_ESPECIE'];
   if not VarIsNull(QryPedidos['TRANSP_MARCA']) then
     Edit44.Text := QryPedidos['TRANSP_MARCA'];
   if not VarIsNull(QryPedidos['TRANSP_NRO']) then
     CurrencyEdit16.Value := QryPedidos['TRANSP_NRO'];
   if not VarIsNull(QryPedidos['TRANSP_PESO_B']) then
     CurrencyEdit17.Value := QryPedidos['TRANSP_PESO_B'];
   if not VarIsNull(QryPedidos['TRANSP_PESO_L']) then
     CurrencyEdit18.Value := QryPedidos['TRANSP_PESO_L'];
   //Controle do Formulário
   if not VarIsNull(QryPedidos['NUM_FORM']) then
     Edit4.Text := QryPedidos['NUM_FORM'];
  end;
 except
   Application.MessageBox('Erro ao ler informações do Pedido.', 'Erro!', MB_ICONERROR + MB_OK);
  end;
end;

procedure TSaidaNFFrm.CurrencyEdit11KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = '.' then                                               //Substitue "." por ","
   key := ',';

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', #08, #09]) then
   key := #0;
end;

procedure TSaidaNFFrm.CurrencyEdit11Change(Sender: TObject);
begin
{ if not VarIsNull(CurrencyEdit11.Value) or not VarIsNull(CurrencyEdit10.Value) or
   not VarIsNull(CurrencyEdit5.Value) then
  begin
   CurrencyEdit9.Value := CurrencyEdit14.Value + CurrencyEdit11.Value + CurrencyEdit7.Value +
                          CurrencyEdit10.Value + CurrencyEdit5.Value - CurrencyEdit12.Value
  end
 else
  CurrencyEdit9.Value := CurrencyEdit14.Value;   }
end;

procedure TSaidaNFFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TSaidaNFFrm.BitBtn5Click(Sender: TObject);
begin
 //seta procedure de acao para botao de OK de SelectFrm
 if (Sender = BitBtn5) or (Sender = Edit35) then
  begin
   SelectFrm.Caption := 'Selecione a Transportadora';
   SelectFrm.SpeedButton1.OnClick := Seleciona_Transp;
  end
 else if (Sender = BitBtn6) or (Sender = Edit6) then
  begin
   SelectFrm.Caption := 'Selecione o Cliente';
   SelectFrm.SpeedButton1.OnClick := Seleciona_Cliente;
  end;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.UnPrepare;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT * FROM CADASTRO');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFFrm.Seleciona_Transp(Sender: TObject);
begin
 SaidaNFFrm.Edit35.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit35.Text := SelectFrm.IBQuery1['NOME'];
   if not VarIsNull(SelectFrm.IBQuery1['CGCCPF']) then
     Edit38.Text := SelectFrm.IBQuery1['CGCCPF']
   else
     Edit38.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['ENDERECO']) then
     Edit39.Text := SelectFrm.IBQuery1['ENDERECO']
   else
     Edit39.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['CIDADE']) then
     Edit40.Text := SelectFrm.IBQuery1['CIDADE']
   else
     Edit40.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['INSCESTRG']) then
     Edit41.Text := SelectFrm.IBQuery1['INSCESTRG']
   else
     Edit41.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['UF']) then
     ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(SelectFrm.IBQuery1['UF'])
   else
     ComboBox2.ItemIndex := 0;

   SELECT_COD_TRANSP := SelectFrm.IBQuery1['CODCLI'];
  end
 else
  edit35.Text := '';
  
 SelectFrm.Close;
end;

procedure TSaidaNFFrm.Seleciona_Cliente(Sender: TObject);
begin
 SaidaNFFrm.Edit6.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit6.Text := SelectFrm.IBQuery1['NOME'];
   if not VarIsNull(SelectFrm.IBQuery1['CGCCPF']) then
     edit7.Text := SelectFrm.IBQuery1['CGCCPF']
   else
     edit7.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['ENDERECO']) then
     edit8.Text := SelectFrm.IBQuery1['ENDERECO']
   else
     edit8.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['BAIRRO']) then
     edit9.Text := SelectFrm.IBQuery1['BAIRRO']
   else
     edit9.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['CEP']) then
     edit10.Text := SelectFrm.IBQuery1['CEP']
   else
     edit10.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['CIDADE']) then
     edit11.Text := SelectFrm.IBQuery1['CIDADE']
   else
     edit11.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['FONE']) then
     edit12.Text := IntToStr(SelectFrm.IBQuery1['FONE'])
   else
     edit12.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['INSCESTRG']) then
     edit14.Text := SelectFrm.IBQuery1['INSCESTRG']
   else
     edit14.Text := '';
   if not VarIsNull(SelectFrm.IBQuery1['UF']) then
     ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(SelectFrm.IBQuery1['UF'])
   else
     ComboBox4.ItemIndex := 0;

   SELECT_COD_CLI := SelectFrm.IBQuery1['CODCLI'];
  end
 else
  edit6.Text := '';

 if not VarIsNull(SelectFrm.IBQuery1['UF']) then
  Filtra_CFOP(SelectFrm.IBQuery1['UF']);
 SelectFrm.Close;
end;

procedure TSaidaNFFrm.Edit35KeyPress(Sender: TObject; var Key: char);
begin
 if key = #$20 then
   BitBtn5Click(Sender);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn5Click(Sender);
  end;

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

procedure TSaidaNFFrm.Edit1Change(Sender: TObject);
begin
 Edit1.Hint := Edit1.Text;
end;

//-------Procedure de filtragem do campo de CFOP-------------
//-------Só podem aparecer os CFOP's válidos-------
procedure TSaidaNFFrm.Filtra_CFOP(Estado: string);
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

procedure TSaidaNFFrm.LoadDefaultIniVars;
var
 Path : String;
 ArquivoIni: TIniFile;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);
 NumNota := ArquivoIni.ReadInteger('NOTAFISCAL', 'NUMNOTA', 1);
 Preview := ArquivoIni.ReadBool('NOTAFISCAL', 'EnablePreview', True);
 Arquivoini.Free;

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
   Edit12.Enabled := True;
   label11.Enabled := True;
  end
 else
  begin
   Edit12.Enabled := False;
   label11.Enabled := False;
  end;

 //Vencimento
 if SaidaNFConfigFrm.CheckBox67.Checked then
  begin
   Label64.Enabled := True;
   DateTimePicker2.Enabled := True;
  end
 else
  begin
   Label64.Enabled := False;
   DateTimePicker2.Enabled := False;
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

 //----------------- Fatura ------------------
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
   Edit21.Enabled := True;
   label7.Enabled := True;
  end
 else
  begin
   Edit21.Enabled := False;
   label7.Enabled := False;
  end;

 //Vencimento Fatura 01
 if SaidaNFConfigFrm.CheckBox17.Checked then
  begin
   DateEdit1.Enabled := True;
   label2.Enabled := True;
  end
 else
  begin
   DateEdit1.Enabled := False;
   label2.Enabled := False;
  end;

 //Vencimento Fatura 02
 if SaidaNFConfigFrm.CheckBox20.Checked then
  begin
   DateEdit2.Enabled := True;
   label5.Enabled := True;
  end
 else
  begin
   DateEdit2.Enabled := False;
   label5.Enabled := False;
  end;

 //Vencimento Fatura 03
 if SaidaNFConfigFrm.CheckBox23.Checked then
  begin
   DateEdit3.Enabled := True;
   label8.Enabled := True;
  end
 else
  begin
   DateEdit3.Enabled := False;
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
  end;

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
   label63.Enabled := True;
  end
 else
  begin
   CurrencyEdit7.Enabled := False;
   label63.Enabled := False;
  end;

 //Valor Total Nota Fiscal
 if SaidaNFConfigFrm.CheckBox36.Checked then
  begin
   CurrencyEdit9.Enabled := True;
   label24.Enabled := True;
  end
 else
  begin
   CurrencyEdit9.Enabled := False;
   label24.Enabled := False;
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

 //Desconto
 if SaidaNFConfigFrm.CheckBox62.Checked then
  begin
   CurrencyEdit12.Enabled := True;
   label30.Enabled := True;
  end
 else
  begin
   CurrencyEdit12.Enabled := False;
   label30.Enabled := False;
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

procedure TSaidaNFFrm.Edit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFFrm.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
   NotaBorda;

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFFrm.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   BitBtn3Click(Self);
end;

procedure TSaidaNFFrm.BitBtn3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 BitBtn3Click(Self);
end;

procedure TSaidaNFFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 TDBLookupComboBox(Sender).Color := clWindow;
 if not VarIsNull(QryCFOP['DESC_OPERACAO']) then
  Edit1.Text := QryCFOP['DESC_OPERACAO'];
end;

procedure TSaidaNFFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 TDBLookupComboBox(Sender).Color := clAqua;
end;

procedure TSaidaNFFrm.CurrencyEdit14KeyPress(Sender: TObject;
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

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
   key := ',';
end;

procedure TSaidaNFFrm.CurrencyEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
   key := ',';
end;

end.
