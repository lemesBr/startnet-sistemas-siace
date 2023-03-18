unit UnitNotaFiscalConfig;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Grids, DBGrids, Mask, ToolEdit, ExtCtrls, CurrEdit, ComCtrls,
 Buttons, RDprint, Variants, DateUtils, Inifiles, DB, IBCustomDataSet,
 IBQuery, Placemnt;

type
 TSaidaNFConfigFrm = class(TForm)
   ScrollBox1: TScrollBox;
   GroupBox1: TGroupBox;
   GroupBox2: TGroupBox;
   GroupBox6: TGroupBox;
   GroupBox7: TGroupBox;
   GroupBox3: TGroupBox;
   CheckBox7: TCheckBox;
   CurrencyEdit30: TCurrencyEdit;
   CurrencyEdit31: TCurrencyEdit;
   CurrencyEdit32: TCurrencyEdit;
   CurrencyEdit33: TCurrencyEdit;
   CurrencyEdit34: TCurrencyEdit;
   CurrencyEdit35: TCurrencyEdit;
   CheckBox8: TCheckBox;
   CurrencyEdit36: TCurrencyEdit;
   CurrencyEdit37: TCurrencyEdit;
   CurrencyEdit38: TCurrencyEdit;
   CurrencyEdit39: TCurrencyEdit;
   CurrencyEdit40: TCurrencyEdit;
   CurrencyEdit41: TCurrencyEdit;
   CurrencyEdit42: TCurrencyEdit;
   CurrencyEdit43: TCurrencyEdit;
   CurrencyEdit44: TCurrencyEdit;
   CheckBox9: TCheckBox;
   CurrencyEdit45: TCurrencyEdit;
   CurrencyEdit46: TCurrencyEdit;
   CurrencyEdit47: TCurrencyEdit;
   CurrencyEdit48: TCurrencyEdit;
   CurrencyEdit49: TCurrencyEdit;
   CurrencyEdit50: TCurrencyEdit;
   CheckBox10: TCheckBox;
   CurrencyEdit51: TCurrencyEdit;
   CurrencyEdit52: TCurrencyEdit;
   CurrencyEdit53: TCurrencyEdit;
   CheckBox11: TCheckBox;
   CheckBox12: TCheckBox;
   CheckBox13: TCheckBox;
   CheckBox14: TCheckBox;
   CheckBox15: TCheckBox;
   CurrencyEdit54: TCurrencyEdit;
   CurrencyEdit55: TCurrencyEdit;
   CheckBox16: TCheckBox;
   CheckBox17: TCheckBox;
   CheckBox18: TCheckBox;
   CurrencyEdit1: TCurrencyEdit;
   CurrencyEdit57: TCurrencyEdit;
   CurrencyEdit58: TCurrencyEdit;
   CurrencyEdit2: TCurrencyEdit;
   CurrencyEdit59: TCurrencyEdit;
   CurrencyEdit60: TCurrencyEdit;
   CurrencyEdit61: TCurrencyEdit;
   CurrencyEdit62: TCurrencyEdit;
   CurrencyEdit63: TCurrencyEdit;
   CurrencyEdit3: TCurrencyEdit;
   CurrencyEdit64: TCurrencyEdit;
   CurrencyEdit65: TCurrencyEdit;
   CheckBox19: TCheckBox;
   CurrencyEdit66: TCurrencyEdit;
   CurrencyEdit67: TCurrencyEdit;
   CurrencyEdit68: TCurrencyEdit;
   CheckBox20: TCheckBox;
   CurrencyEdit69: TCurrencyEdit;
   CurrencyEdit70: TCurrencyEdit;
   CurrencyEdit71: TCurrencyEdit;
   CheckBox21: TCheckBox;
   CurrencyEdit72: TCurrencyEdit;
   CurrencyEdit73: TCurrencyEdit;
   CurrencyEdit74: TCurrencyEdit;
   CheckBox22: TCheckBox;
   CurrencyEdit75: TCurrencyEdit;
   CurrencyEdit76: TCurrencyEdit;
   CurrencyEdit77: TCurrencyEdit;
   CheckBox23: TCheckBox;
   CurrencyEdit78: TCurrencyEdit;
   CurrencyEdit79: TCurrencyEdit;
   CurrencyEdit80: TCurrencyEdit;
   CheckBox24: TCheckBox;
   CurrencyEdit85: TCurrencyEdit;
   CurrencyEdit86: TCurrencyEdit;
   CurrencyEdit87: TCurrencyEdit;
   CheckBox27: TCheckBox;
   CheckBox28: TCheckBox;
   CurrencyEdit13: TCurrencyEdit;
   CurrencyEdit14: TCurrencyEdit;
   CurrencyEdit88: TCurrencyEdit;
   CurrencyEdit89: TCurrencyEdit;
   CurrencyEdit90: TCurrencyEdit;
   CurrencyEdit91: TCurrencyEdit;
   CurrencyEdit8: TCurrencyEdit;
   CurrencyEdit92: TCurrencyEdit;
   CurrencyEdit93: TCurrencyEdit;
   CheckBox29: TCheckBox;
   CheckBox30: TCheckBox;
   CheckBox31: TCheckBox;
   CurrencyEdit4: TCurrencyEdit;
   CurrencyEdit6: TCurrencyEdit;
   CurrencyEdit94: TCurrencyEdit;
   CurrencyEdit95: TCurrencyEdit;
   CurrencyEdit96: TCurrencyEdit;
   CurrencyEdit97: TCurrencyEdit;
   CurrencyEdit98: TCurrencyEdit;
   CurrencyEdit99: TCurrencyEdit;
   CurrencyEdit100: TCurrencyEdit;
   CurrencyEdit101: TCurrencyEdit;
   CurrencyEdit102: TCurrencyEdit;
   CurrencyEdit103: TCurrencyEdit;
   CheckBox32: TCheckBox;
   CheckBox33: TCheckBox;
   CheckBox34: TCheckBox;
   CurrencyEdit5: TCurrencyEdit;
   CurrencyEdit10: TCurrencyEdit;
   CurrencyEdit11: TCurrencyEdit;
   CheckBox35: TCheckBox;
   CurrencyEdit104: TCurrencyEdit;
   CurrencyEdit105: TCurrencyEdit;
   CurrencyEdit106: TCurrencyEdit;
   CheckBox36: TCheckBox;
   GroupBox4: TGroupBox;
   CheckBox40: TCheckBox;
   CurrencyEdit7: TCurrencyEdit;
   CurrencyEdit9: TCurrencyEdit;
   CurrencyEdit107: TCurrencyEdit;
   CheckBox37: TCheckBox;
   CurrencyEdit108: TCurrencyEdit;
   CurrencyEdit109: TCurrencyEdit;
   CurrencyEdit110: TCurrencyEdit;
   CheckBox38: TCheckBox;
   CurrencyEdit111: TCurrencyEdit;
   CurrencyEdit112: TCurrencyEdit;
   CurrencyEdit113: TCurrencyEdit;
   CheckBox39: TCheckBox;
   CurrencyEdit115: TCurrencyEdit;
   CurrencyEdit116: TCurrencyEdit;
   CurrencyEdit117: TCurrencyEdit;
   CurrencyEdit118: TCurrencyEdit;
   CurrencyEdit119: TCurrencyEdit;
   CheckBox41: TCheckBox;
   CurrencyEdit120: TCurrencyEdit;
   CurrencyEdit121: TCurrencyEdit;
   CurrencyEdit122: TCurrencyEdit;
   CheckBox42: TCheckBox;
   CurrencyEdit123: TCurrencyEdit;
   CurrencyEdit124: TCurrencyEdit;
   CurrencyEdit125: TCurrencyEdit;
   CheckBox43: TCheckBox;
   CurrencyEdit127: TCurrencyEdit;
   CurrencyEdit128: TCurrencyEdit;
   CheckBox44: TCheckBox;
   CurrencyEdit129: TCurrencyEdit;
   CurrencyEdit130: TCurrencyEdit;
   CurrencyEdit131: TCurrencyEdit;
   CheckBox45: TCheckBox;
   CurrencyEdit132: TCurrencyEdit;
   CurrencyEdit133: TCurrencyEdit;
   CurrencyEdit134: TCurrencyEdit;
   CheckBox46: TCheckBox;
   CurrencyEdit135: TCurrencyEdit;
   CurrencyEdit136: TCurrencyEdit;
   CurrencyEdit137: TCurrencyEdit;
   CheckBox47: TCheckBox;
   CurrencyEdit138: TCurrencyEdit;
   CurrencyEdit139: TCurrencyEdit;
   CurrencyEdit140: TCurrencyEdit;
   CheckBox48: TCheckBox;
   CurrencyEdit141: TCurrencyEdit;
   CurrencyEdit142: TCurrencyEdit;
   CurrencyEdit143: TCurrencyEdit;
   CheckBox49: TCheckBox;
   CurrencyEdit144: TCurrencyEdit;
   CurrencyEdit145: TCurrencyEdit;
   CurrencyEdit146: TCurrencyEdit;
   CheckBox50: TCheckBox;
   CurrencyEdit147: TCurrencyEdit;
   CurrencyEdit148: TCurrencyEdit;
   CurrencyEdit149: TCurrencyEdit;
   CheckBox51: TCheckBox;
   CurrencyEdit156: TCurrencyEdit;
   CurrencyEdit157: TCurrencyEdit;
   CurrencyEdit158: TCurrencyEdit;
   CheckBox53: TCheckBox;
   CurrencyEdit159: TCurrencyEdit;
   CurrencyEdit160: TCurrencyEdit;
   CurrencyEdit162: TCurrencyEdit;
   CheckBox54: TCheckBox;
   CheckBox55: TCheckBox;
   CheckBox56: TCheckBox;
   CheckBox57: TCheckBox;
   CheckBox58: TCheckBox;
   CheckBox59: TCheckBox;
   CheckBox60: TCheckBox;
   CheckBox61: TCheckBox;
   FormStorage1: TFormStorage;
   CurrencyEdit187: TCurrencyEdit;
   CurrencyEdit189: TCurrencyEdit;
   CurrencyEdit163: TCurrencyEdit;
   CurrencyEdit165: TCurrencyEdit;
   CurrencyEdit192: TCurrencyEdit;
   CurrencyEdit194: TCurrencyEdit;
   CurrencyEdit166: TCurrencyEdit;
   CurrencyEdit168: TCurrencyEdit;
   CurrencyEdit197: TCurrencyEdit;
   CurrencyEdit199: TCurrencyEdit;
   CurrencyEdit200: TCurrencyEdit;
   CurrencyEdit201: TCurrencyEdit;
   CurrencyEdit203: TCurrencyEdit;
   CurrencyEdit205: TCurrencyEdit;
   CurrencyEdit207: TCurrencyEdit;
   GroupBox9: TGroupBox;
   CheckBox4: TCheckBox;
   CurrencyEdit21: TCurrencyEdit;
   CurrencyEdit22: TCurrencyEdit;
   CurrencyEdit23: TCurrencyEdit;
   CheckBox5: TCheckBox;
   CurrencyEdit25: TCurrencyEdit;
   CurrencyEdit26: TCurrencyEdit;
   CheckBox6: TCheckBox;
   CurrencyEdit27: TCurrencyEdit;
   CurrencyEdit28: TCurrencyEdit;
   CurrencyEdit29: TCurrencyEdit;
   CurrencyEdit15: TCurrencyEdit;
   CurrencyEdit16: TCurrencyEdit;
   CurrencyEdit17: TCurrencyEdit;
   CheckBox1: TCheckBox;
   CurrencyEdit151: TCurrencyEdit;
   CurrencyEdit12: TCurrencyEdit;
   CurrencyEdit186: TCurrencyEdit;
   CheckBox62: TCheckBox;
   CurrencyEdit154: TCurrencyEdit;
   CurrencyEdit155: TCurrencyEdit;
   CheckBox3: TCheckBox;
   CurrencyEdit169: TCurrencyEdit;
   CurrencyEdit181: TCurrencyEdit;
   CurrencyEdit180: TCurrencyEdit;
   CheckBox68: TCheckBox;
   CurrencyEdit172: TCurrencyEdit;
   CurrencyEdit173: TCurrencyEdit;
   CurrencyEdit174: TCurrencyEdit;
   CheckBox65: TCheckBox;
   CurrencyEdit81: TCurrencyEdit;
   CurrencyEdit82: TCurrencyEdit;
   CheckBox25: TCheckBox;
   CurrencyEdit83: TCurrencyEdit;
   CurrencyEdit84: TCurrencyEdit;
   CheckBox26: TCheckBox;
   CurrencyEdit161: TCurrencyEdit;
   CurrencyEdit164: TCurrencyEdit;
   CheckBox63: TCheckBox;
   CurrencyEdit150: TCurrencyEdit;
   CurrencyEdit152: TCurrencyEdit;
   CheckBox52: TCheckBox;
   CurrencyEdit19: TCurrencyEdit;
   CurrencyEdit20: TCurrencyEdit;
   CheckBox2: TCheckBox;
   CurrencyEdit176: TCurrencyEdit;
   CurrencyEdit177: TCurrencyEdit;
   CheckBox67: TCheckBox;
   CheckBox64: TCheckBox;
   CurrencyEdit178: TCurrencyEdit;
   CurrencyEdit175: TCurrencyEdit;
   CheckBox66: TCheckBox;
   CurrencyEdit170: TCurrencyEdit;
   CurrencyEdit171: TCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    RDprint1: TRDprint;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    GroupBox8: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure CurrencyEdit1Enter(Sender: TObject);
   procedure CurrencyEdit1Exit(Sender: TObject);
   procedure DateEdit1Enter(Sender: TObject);
   procedure DateEdit1Exit(Sender: TObject);
   procedure ComboBox4Enter(Sender: TObject);
   procedure ComboBox4Exit(Sender: TObject);
   procedure Edit2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: char);
   procedure BitBtn3Click(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SaidaNFConfigFrm: TSaidaNFConfigFrm;
 NUMNota: integer;

implementation


{$R *.DFM}

procedure TSaidaNFConfigFrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).color := claqua;
end;

procedure TSaidaNFConfigFrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TSaidaNFConfigFrm.CurrencyEdit1Enter(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := claqua;
end;

procedure TSaidaNFConfigFrm.CurrencyEdit1Exit(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := clwindow;
end;

procedure TSaidaNFConfigFrm.DateEdit1Enter(Sender: TObject);
begin
 TDateEdit(Sender).color := claqua;
end;

procedure TSaidaNFConfigFrm.DateEdit1Exit(Sender: TObject);
begin
 TDateEdit(Sender).color := clwindow;
end;

procedure TSaidaNFConfigFrm.ComboBox4Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TSaidaNFConfigFrm.ComboBox4Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TSaidaNFConfigFrm.Edit2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFConfigFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(WM_nextdlgctl, 0,0);
 if key = vk_escape then
   self.Close;
end;

procedure TSaidaNFConfigFrm.CurrencyEdit1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = '.' then
   key := ',';
end;

procedure TSaidaNFConfigFrm.BitBtn3Click(Sender: TObject);
begin
 self.Close;
end;

procedure TSaidaNFConfigFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := cafree;
end;

procedure TSaidaNFConfigFrm.Edit3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   // Edit6.SetFocus;
   if key = vk_escape then
     Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFConfigFrm.BitBtn4Click(Sender: TObject);
var
 linha, x: integer;
begin
 rdprint1.TamanhoQteLinhas := 110;  // Linhas (deve ser 1 quando for CUPOM)
 rdprint1.TamanhoQteColunas := 140; // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
 rdprint1.FonteTamanhoPadrao := s17cpp;  // Fonte Comprimido em 20 cpp
 rdprint1.OpcoesPreview.Preview := True; //Enable Preview - Tela de Conf
 RDprint1.Abrir;

 // Nº da Nota
 if SaidaNFConfigFrm.CheckBox1.Checked then
  RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit16.asinteger,
                SaidaNFConfigFrm.CurrencyEdit15.asinteger, 'Nº da Nota',
                [negrito, comp12]);

 if SaidaNFConfigFrm.CheckBox25.Checked then
  begin
   RDprint1.impF(SaidaNFConfigFrm.CurrencyEdit81.asinteger,
                 SaidaNFConfigFrm.CurrencyEdit82.asinteger, '[X]', [negrito]);
  end
  else
   if SaidaNFConfigFrm.CheckBox26.Checked then
    RDprint1.impF(SaidaNFConfigFrm.CurrencyEdit83.asinteger,
                  SaidaNFConfigFrm.CurrencyEdit84.asinteger,'[X]', [negrito]);

 //Natureza da Operaçao
 if SaidaNFConfigFrm.CheckBox4.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit22.asinteger,
               SaidaNFConfigFrm.CurrencyEdit23.asinteger,
               'Natureza da Operação');

 //CFOP
 if SaidaNFConfigFrm.CheckBox5.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit25.asinteger,
               SaidaNFConfigFrm.CurrencyEdit26.asinteger, 'CFOP');

 //Insc.Est.S.T.
 if SaidaNFConfigFrm.CheckBox6.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit28.asinteger,
               SaidaNFConfigFrm.CurrencyEdit29.asinteger, 'Inscrição Estadual');

 //Data Emissao
 if SaidaNFConfigFrm.CheckBox2.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit19.asinteger,
               SaidaNFConfigFrm.CurrencyEdit20.asinteger, 'Data Emissão');

 //Data Saida/Entrada
 if SaidaNFConfigFrm.CheckBox52.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit150.asinteger,
               SaidaNFConfigFrm.CurrencyEdit152.asinteger, 'Data Saida/Entrada');

 //Hora Saida/Entrada
 if SaidaNFConfigFrm.CheckBox63.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit161.asinteger,
               SaidaNFConfigFrm.CurrencyEdit164.asinteger, 'Hora Saida/Entrada');

 //------ Destinatario / Remetente ------

 //Nome/Razao Soc.
 if SaidaNFConfigFrm.CheckBox7.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit31.asinteger,
               SaidaNFConfigFrm.CurrencyEdit30.asinteger, 'Nome/Razao Soc.');

 //CNPJ/CPF
 if SaidaNFConfigFrm.CheckBox8.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit34.asinteger,
                SaidaNFConfigFrm.CurrencyEdit33.asinteger, 'CNPJ/CPF');

 //Endereço
 if SaidaNFConfigFrm.CheckBox12.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit37.asinteger,
                SaidaNFConfigFrm.CurrencyEdit36.asinteger, 'Endereço');

 //Bairro/Distrito
 if SaidaNFConfigFrm.CheckBox11.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit40.asinteger,
                SaidaNFConfigFrm.CurrencyEdit39.asinteger, 'Bairro/Distrito');

 //Cep
 if SaidaNFConfigFrm.CheckBox13.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit43.asinteger,
                SaidaNFConfigFrm.CurrencyEdit42.asinteger, 'Cep');

 //Municipio
 if SaidaNFConfigFrm.CheckBox9.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit46.asinteger,
                SaidaNFConfigFrm.CurrencyEdit47.asinteger, 'Municipio');

 //Fone/Fax
 if SaidaNFConfigFrm.CheckBox10.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit49.asinteger,
                SaidaNFConfigFrm.CurrencyEdit50.asinteger, 'Fone/Fax');
 //Vencimento
 if SaidaNFConfigFrm.CheckBox67.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit176.asinteger,
                SaidaNFConfigFrm.CurrencyEdit177.asinteger, 'Vencimento');
 //UF
 if SaidaNFConfigFrm.CheckBox15.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit55.asinteger,
                SaidaNFConfigFrm.CurrencyEdit54.asinteger, 'UF');

 //TODO: Campo FONE!?!

 //Insc.Est.
 if SaidaNFConfigFrm.CheckBox14.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit52.asinteger,
                SaidaNFConfigFrm.CurrencyEdit53.asinteger, 'Insc.Est.');

 //------ Dados do Produto ------

 linha := SaidaNFConfigFrm.CurrencyEdit151.asinteger;
   //Referencia
   if SaidaNFConfigFrm.CheckBox54.Checked then
    RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit162.asinteger, 'Referencia', [comp20]);

   //Descricao
   if SaidaNFConfigFrm.CheckBox56.Checked then
    RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit165.asinteger, 'Descricao', [comp20]);

   //Sit. Trib
   if SaidaNFConfigFrm.CheckBox60.Checked then
    RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit203.asinteger, 'ST', [comp20]);

   //Unidade
   if SaidaNFConfigFrm.CheckBox3.Checked then
    RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit155.asinteger, 'Und', [comp20]);

   //Classif. Fical
   if SaidaNFConfigFrm.CheckBox59.Checked then
    RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit199.asinteger, 'CT', [comp20]);

   //ICMS
   if SaidaNFConfigFrm.CheckBox61.Checked then
     RDprint1.impD(linha,SaidaNFConfigFrm.CurrencyEdit207.asinteger, 'ICMS', [comp20]);

   //IPI
   if SaidaNFConfigFrm.CheckBox64.Checked then
     RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit175.asinteger, 'IPI', [comp20]);

   //Quantidade
   if SaidaNFConfigFrm.CheckBox55.Checked then
     RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit189.asinteger, 'Quantidade', [comp20]);

   //Preço de Venda
   if SaidaNFConfigFrm.CheckBox57.Checked then
     RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit194.asinteger, 'Prç. Venda', [comp20]);

   //Valor SubTotal
   if SaidaNFConfigFrm.CheckBox58.Checked then
     RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit168.asinteger, 'SubTotal', [comp20]);

   //Valor IPI
   if SaidaNFConfigFrm.CheckBox66.Checked then
     RDprint1.ImpD(linha, SaidaNFConfigFrm.CurrencyEdit171.asinteger, 'Valor IPI', [comp20]);

   inc(linha);

   //Desconto
 if SaidaNFConfigFrm.CheckBox62.Checked then

   RDprint1.impD(linha,
                 SaidaNFConfigFrm.CurrencyEdit168.asinteger - length('Desconto (-): '
                 + formatfloat('###,##0.00', currencyedit12.Value)),
                 'Desconto', []);


 //------ Calculo do Imposto ------

 //Base de Calc. ICMS
 if SaidaNFConfigFrm.CheckBox27.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit86.asinteger,
                SaidaNFConfigFrm.CurrencyEdit87.asinteger,
                'Base ICMS', []);

 //Valor ICMS
 if SaidaNFConfigFrm.CheckBox28.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit14.asinteger,
                SaidaNFConfigFrm.CurrencyEdit88.asinteger,
                'Valor ICMS', []);

 //Base de Calc. ICMS Subst.
 if SaidaNFConfigFrm.CheckBox29.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit90.asinteger,
                SaidaNFConfigFrm.CurrencyEdit91.asinteger,
                'Base ICMS Subst.', []);

 //Valor ICMS Subst.
 if SaidaNFConfigFrm.CheckBox30.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit92.asinteger,
                SaidaNFConfigFrm.CurrencyEdit93.asinteger,
                'Valor ICMS Subst.', []);

 //Valor Total Produtos
 if SaidaNFConfigFrm.CheckBox31.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit6.asinteger,
                SaidaNFConfigFrm.CurrencyEdit94.asinteger,
                'Total Produtos', []);

 //Valor Frete
 if SaidaNFConfigFrm.CheckBox32.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit96.asinteger,
                SaidaNFConfigFrm.CurrencyEdit97.asinteger,
                'Valor Frete', []);

 //Valor Seguro
 if SaidaNFConfigFrm.CheckBox33.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit99.asinteger,
                SaidaNFConfigFrm.CurrencyEdit100.asinteger,
                'Valor Seguro', []);

 //Outras Despesas
 if SaidaNFConfigFrm.CheckBox34.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit102.asinteger,
                SaidaNFConfigFrm.CurrencyEdit103.asinteger,
                'Outras Despesas', []);

 //Valor IPI
 if SaidaNFConfigFrm.CheckBox35.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit10.asinteger,
                SaidaNFConfigFrm.CurrencyEdit11.asinteger,
                'Valor IPI', []);

 //Valor Total Nota
 if SaidaNFConfigFrm.CheckBox36.Checked then
  RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit105.asinteger,
                SaidaNFConfigFrm.CurrencyEdit106.asinteger,
                'Total Nota', []);

 //------ Transportador / Volumes Transportados ------

 //Nome/Rz. Social
 if SaidaNFConfigFrm.CheckBox37.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit9.asinteger,
               SaidaNFConfigFrm.CurrencyEdit107.asinteger,
               'Nome/Rz. Social');

 //Frete por Conta
 if SaidaNFConfigFrm.CheckBox38.Checked then

 //Remetente
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger, SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[1]');

 //Placa
 if SaidaNFConfigFrm.CheckBox39.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit112.asinteger, SaidaNFConfigFrm.CurrencyEdit113.asinteger, 'Placa');

 //UF
 if SaidaNFConfigFrm.CheckBox40.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit115.asinteger,
                SaidaNFConfigFrm.CurrencyEdit116.asinteger,
                'UF');

 //CNPJ/CPF
 if SaidaNFConfigFrm.CheckBox41.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit118.asinteger,
                SaidaNFConfigFrm.CurrencyEdit119.asinteger,
                'CNPJ/CPF');

 //Endereco
 if SaidaNFConfigFrm.CheckBox42.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit121.asinteger,
                SaidaNFConfigFrm.CurrencyEdit122.asinteger,
                'Endereco');

 //Municipio
 if SaidaNFConfigFrm.CheckBox43.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit124.asinteger,
                SaidaNFConfigFrm.CurrencyEdit125.asinteger,
                'Municipio');

 //UF
 if SaidaNFConfigFrm.CheckBox44.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit127.asinteger,
                SaidaNFConfigFrm.CurrencyEdit128.asinteger,
                'UF');

 //Ins. Est.
 if SaidaNFConfigFrm.CheckBox45.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit130.asinteger,
                SaidaNFConfigFrm.CurrencyEdit131.asinteger,
                'Ins. Est.');

 //Quantidade
 if CurrencyEdit15.Value <> 0 then
  if SaidaNFConfigFrm.CheckBox46.Checked then
    RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit133.asinteger,
                  SaidaNFConfigFrm.CurrencyEdit134.asinteger,
                  'Quantidade', []);

 //Especie
 if SaidaNFConfigFrm.CheckBox47.Checked then
  RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit136.asinteger,
               SaidaNFConfigFrm.CurrencyEdit137.asinteger,
               'Especie');

 //Marca
 if SaidaNFConfigFrm.CheckBox48.Checked then
   RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit139.asinteger,
                SaidaNFConfigFrm.CurrencyEdit140.asinteger,
                'Marca');

 //Numero
 if CurrencyEdit16.Value <> 0 then
  if SaidaNFConfigFrm.CheckBox49.Checked then
   RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit142.asinteger,
                 SaidaNFConfigFrm.CurrencyEdit143.asinteger,
                 'Numero', []);

 //Peso Bruto
  if SaidaNFConfigFrm.CheckBox50.Checked then
   RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit145.asinteger,
                 SaidaNFConfigFrm.CurrencyEdit146.asinteger,
                 'Peso Bruto', []);

 //Peso Liquido
  if SaidaNFConfigFrm.CheckBox51.Checked then
   RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit148.asinteger,
                 SaidaNFConfigFrm.CurrencyEdit149.asinteger,
                 'Peso Liquido', []);

 //------ Dados Adicionais ------
 linha := SaidaNFConfigFrm.CurrencyEdit157.asinteger;
 for x := 0 to SaidaNFConfigFrm.CurrencyEdit159.asinteger do
  begin
   //Dados Adicionais
   RDprint1.imp(linha,SaidaNFConfigFrm.CurrencyEdit158.asinteger,
                'Dados Adicionais');
   inc(linha);
  end;
 //---------Nº de Controle do Formulário

 //Nº Controle do Formulário
{ if SaidaNFConfigFrm.CheckBox65.Checked then
  RDprint1.ImpD(SaidaNFConfigFrm.CurrencyEdit173.asinteger,
                SaidaNFConfigFrm.CurrencyEdit174.asinteger,
                'Nº Controle do Formulário', [negrito, comp12]);}

 //Nº da Nota (Notas com Rodapé)
 if SaidaNFConfigFrm.CheckBox68.Checked then
  RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit181.asinteger,
                SaidaNFConfigFrm.CurrencyEdit180.asinteger,
                'Nº da Nota', [negrito]);

 RDprint1.Fechar;

end;

end.
