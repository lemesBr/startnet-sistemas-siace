unit UnitConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, ComCtrls,
  Mask, ToolEdit, CurrEdit, INIfiles, jpeg, Menus, DB, Placemnt,
  IBCustomDataSet, IBQuery;

type
  TConfigFrm = class(TForm)
    PopupMenu1: TPopupMenu;
    AlteraIncluirTributos1: TMenuItem;
    DtsDstTribEcf: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    RadioGroup3: TRadioGroup;
    GroupBox11: TGroupBox;
    CheckBox9: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox20: TCheckBox;
    GroupBox2: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox8: TGroupBox;
    ImageIFS7000: TImage;
    ImageQZ1000: TImage;
    ImageFi2: TImage;
    ImageFi1: TImage;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    TabSheet9: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox13: TGroupBox;
    CheckBox3: TCheckBox;
    GroupBox14: TGroupBox;
    Label7: TLabel;
    Label22: TLabel;
    Edit5: TEdit;
    Edit17: TEdit;
    TabSheet3: TTabSheet;
    GroupBox12: TGroupBox;
    GroupBox15: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox11: TCheckBox;
    GroupBox16: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit20: TEdit;
    GroupBox17: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    TabSheet4: TTabSheet;
    GroupBox20: TGroupBox;
    GroupBox18: TGroupBox;
    Label13: TLabel;
    Label12: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Edit10: TEdit;
    GroupBox19: TGroupBox;
    CheckBox7: TCheckBox;
    TabSheet5: TTabSheet;
    GroupBox7: TGroupBox;
    Label14: TLabel;
    Edit11: TEdit;
    BitBtn9: TBitBtn;
    CheckBox21: TCheckBox;
    TabSheet6: TTabSheet;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Edit12: TEdit;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    CheckBox19: TCheckBox;
    GroupBox21: TGroupBox;
    Label23: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Edit18: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Edit15: TEdit;
    BitBtn7: TBitBtn;
    CheckBox12: TCheckBox;
    TabSheet8: TTabSheet;
    GroupBox6: TGroupBox;
    Label19: TLabel;
    Edit16: TEdit;
    BitBtn8: TBitBtn;
    TabSheet2: TTabSheet;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    CheckBox17: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox13: TCheckBox;
    GroupBox24: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit24: TEdit;
    Edit23: TEdit;
    Edit22: TEdit;
    Edit21: TEdit;
    GroupBox25: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    Edit31: TEdit;
    Edit30: TEdit;
    TabSheet10: TTabSheet;
    GroupBox27: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label46: TLabel;
    Label57: TLabel;
    Bevel1: TBevel;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    FormStorage1: TFormStorage;
    GroupBox29: TGroupBox;
    CheckBox10: TCheckBox;
    Edit13: TEdit;
    Edit14: TEdit;
    GroupBox30: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    QryPdv: TIBQuery;
    DtsQryPdv: TDataSource;
    Label16: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

    procedure Save(Sender: Tobject);
    Procedure EditCancel(Sender: TObject);
    procedure LoadDefaultIniVars;

    procedure ChoosePath(Sender: Tobject);

    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AlteraIncluirTributos1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigFrm: TConfigFrm;

implementation

uses UnitDataM1, UnitFuncoes, UnitFrmPrincipal, Unit_ECF_Global;

{$R *.dfm}

procedure TConfigFrm.LoadDefaultIniVars;
var
 Path : String;
 ArquivoIni: TIniFile;
begin
try
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 //------ Config Ordem de Serviço ------
 currencyedit3.Value := ArquivoINI.ReadFloat('OS', 'Previsao', 1);
 currencyedit2.Value := ArquivoINI.ReadFloat('OS', 'Liberado', 1);
 edit44.Text := ArquivoIni.readstring('OS', 'Cabecalho1', 'TKS Telefonia e Software');
 edit43.Text := ArquivoIni.readstring('OS', 'Cabecalho2', 'Rua B 236 Loja D - Centro Comercial do Imbui Cep: 41.720-050 - Salvador-BA-Brasil');
 edit42.Text := ArquivoIni.readstring('OS', 'Cabecalho3', 'Telefax: (71) 371-1818   E-mail: tks@e-net.com.br   Site: www.igara.com.br');
 edit41.Text := ArquivoIni.readstring('OS', 'Cabecalho4', 'ORDEM DE SERVIÇO');
 edit40.Text := ArquivoIni.readstring('OS', 'ImpRodape1', '');
 edit39.Text := ArquivoIni.readstring('OS', 'ImpRodape2', '');
 edit38.Text := ArquivoIni.readstring('OS', 'ImpRodape3', '');
 edit37.Text := ArquivoIni.readstring('OS', 'ImpRodape4', '');
 edit46.Text := ArquivoIni.readstring('OS', 'AttRodape1', '');
 edit36.Text := ArquivoIni.readstring('OS', 'AttRodape2', '');
 edit35.Text := ArquivoIni.readstring('OS', 'AttRodape3', '');
 edit34.Text := ArquivoIni.readstring('OS', 'AttRodape4', '');
 edit33.Text := ArquivoIni.readstring('OS', 'AttRodape5', '');
 edit32.Text := ArquivoIni.readstring('OS', 'AttRodape6', '');
 edit45.Text := ArquivoIni.readstring('OS', 'AttRodape7', '');
 edit47.Text := ArquivoIni.readstring('OS', 'AttRodape8', '');

 //------ Config: Impressora Fiscal ------
 //ComboBox2.ItemIndex := strtoint(copy(ArquivoINI.ReadString('ECF', 'Porta', 'COM1'),4,5)) - 1;
 ComboBox2.ItemIndex := ArquivoINI.ReadInteger('ECF', 'COM',1)-1;
 ComboBox1.ItemIndex := ArquivoINI.ReadInteger('ECF', 'TipoECF', 1);
 CheckBox10.Checked := ArquivoINI.ReadBool('ECF','GavetaInstalada', false);
// CheckBox1.Checked := ArquivoINI.ReadBool('ECF', 'GavetaSanRe', false);
 CheckBox9.Checked := ArquivoIni.ReadBool('ECF', 'EnableGavetaTest', False);
 CheckBox20.Checked := ArquivoINI.ReadBool('ECF', 'GavetaInterv', false);
 RadioGroup3.ItemIndex := ArquivoINI.ReadInteger('ECF', 'GavetaVenda', 1);
 if CheckBox10.Checked then
  begin
//   CheckBox1.Enabled := True;
   CheckBox9.Enabled := True;
   CheckBox20.Enabled := True;
   RadioGroup3.Enabled := True;
  end
 else
  begin
//   CheckBox1.Enabled := False;
   CheckBox9.Enabled := False;
   CheckBox20.Enabled := False;
   RadioGroup3.Enabled := False;
  end;
 Edit1.Text := ArquivoINI.ReadString('ECF', 'MsgP', 'TKS Software www.igara.com.br');
 Edit13.Text := ArquivoINI.ReadString('ECF', 'DefTNome', 'T01');
 Edit14.Text := ArquivoINI.ReadString('ECF', 'DefTVal', '1700');
 CheckBox8.Checked := arquivoIni.ReadBool('ECF','EnableMsgP', false);
// DBLookupComboBox1.KeyValue := ArquivoINI.ReadInteger('ECF', 'CODPDV',0);

 //------ Config Nota Fiscal ------
 checkbox3.Checked := ArquivoINI.ReadBool('NOTAFISCAL', 'EnablePreview', true);
 edit5.Text := inttostr(ArquivoIni.readinteger('NOTAFISCAL', 'NumNota', 1));
 edit17.Text := inttostr(ArquivoIni.readinteger('NOTAFISCAL', 'NumVias', 1));

 //------ Config Orcamento ------
 edit6.Text := ArquivoINI.ReadString('ORCAMENTO', 'PortaImpr', 'LPT1');
 edit7.Text := inttostr(ArquivoINI.Readinteger('ORCAMENTO', 'NumVias', 1));
 CheckBox2.Checked := ArquivoIni.readBool('ORCAMENTO', 'EnableCabecalho', true);
 CheckBox4.Checked := ArquivoIni.readbool('ORCAMENTO', 'EnableRodape', true);
 CheckBox5.Checked := ArquivoIni.readbool('ORCAMENTO', 'EnablePreview', true);
 CheckBox6.Checked := ArquivoIni.readbool('ORCAMENTO', 'AskImpr', true);
 CheckBox11.Checked := ArquivoIni.ReadBool('ORCAMENTO', 'EnableMsgP', true);

 //ArquivoIni.WriteInteger('ORCAMENTO', 'DefaultAnswerAskImpr', 0);
 edit8.Text := ArquivoIni.readstring('ORCAMENTO', 'Cabecalho', 'Orcamento');
 edit9.Text := ArquivoIni.readString('ORCAMENTO', 'MsgP', 'TKS Software www.igara.com.br');
 Edit2.Text := ArquivoIni.readstring('ORCAMENTO', 'Rodape1', 'TKS Telefonia e Software');
 Edit3.Text := ArquivoIni.readstring('ORCAMENTO', 'Rodape2', 'Rua B 236 Loja D - Centro Comercial do Imbui');
 Edit4.Text := ArquivoIni.readstring('ORCAMENTO', 'Rodape3', 'Cep: 41.720-050   -   Salvador-Bahia-Brasil');
 Edit20.Text := ArquivoIni.readstring('ORCAMENTO', 'Rodape4', 'Telefax: (71) 371-1818   E-mail: tks@e-net.com.br   Site: www.igara.com.br');

  //----- Config Boleto -------

 edit31.Text := ArquivoINI.ReadString('BOLETO', 'PortaImpr', 'LPT1');
 edit30.Text := inttostr(ArquivoINI.Readinteger('BOLETO', 'NumVias', 1));
 CheckBox13.Checked := ArquivoIni.readBool('BOLETO', 'EnableCabecalho', true);
 CheckBox14.Checked := ArquivoIni.readbool('BOLETO', 'EnableRodape', true);
 CheckBox17.Checked := ArquivoIni.readbool('BOLETO', 'EnablePreview', true);
 CheckBox16.Checked := ArquivoIni.readbool('BOLETO', 'AskImpr', true);
 CheckBox15.Checked := ArquivoIni.ReadBool('BOLETO', 'EnableMsgP', true);
 edit28.Text := ArquivoIni.readstring('BOLETO', 'Cabecalho1', 'Orcamento');
 //edit27.Text := ArquivoIni.readstring('BOLETO', 'Cabecalho2', 'Orcamento');
 //edit26.Text := ArquivoIni.readstring('BOLETO', 'Cabecalho3', 'Orcamento');
 //edit25.Text := ArquivoIni.readstring('BOLETO', 'Cabecalho4', 'Orcamento');
 edit29.Text := ArquivoIni.readString('BOLETO', 'MsgP', 'TKS Software www.igara.com.br');
 Edit24.Text := ArquivoIni.readstring('BOLETO', 'Rodape1', 'TKS Telefonia e Software');
 Edit23.Text := ArquivoIni.readstring('BOLETO', 'Rodape2', 'Rua B 236 Loja D - Centro Comercial do Imbui');
 Edit22.Text := ArquivoIni.readstring('BOLETO', 'Rodape3', 'Cep: 41.720-050   -   Salvador-Bahia-Brasil');
 Edit21.Text := ArquivoIni.readstring('BOLETO', 'Rodape4', 'Telefax: (71) 371-1818   E-mail: tks@e-net.com.br   Site: www.igara.com.br');

 //------ Config Cotação ------
 CheckBox7.Checked := ArquivoINI.Readbool('COTACAO', 'AskCotacao', true);
 currencyedit1.Value := ArquivoINI.ReadFloat('COTACAO', 'ValorCotacao', 1);
 edit10.Text := ArquivoINI.ReadString('COTACAO', 'Moeda', 'R$');

 //------ Config MultiLoja ------
 edit11.Text := ArquivoIni.ReadString('MULTILOJA', 'BaseLocal', extractfiledir(application.Exename) + '\Banco\TkPosto.IB');

 //------ Config Interbase Connection ------
 Edit50.Text := ArquivoIni.ReadString('IBDB', 'UserName', extractfiledir(application.Exename)+ 'SYSDBA');
 Edit51.Text := ArquivoIni.ReadString('IBDB', 'Password', extractfiledir(application.Exename)+ 'masterkey');
 checkbox19.Checked := ArquivoINI.ReadBool('IBDB', 'LoginPrompt', false);
 Radiogroup1.ItemIndex := ArquivoINI.ReadInteger('IBDB', 'ConexaoRemota',1);
 Edit18.Text := ArquivoIni.ReadString('IBDB', 'IbServerName', extractfiledir(application.Exename)+ '');
 Edit12.Text := ArquivoIni.ReadString('IBDB', 'IbDBPath', extractfiledir(application.Exename) + '\Banco\TkPosto.IB');
 //Edit13.Text := ArquivoIni.ReadString('IBDB', 'IbBkpPath', extractfiledir(application.Exename) + '\Banco\BkpTkPosto.GBK');
 //Edit14.Text := ArquivoIni.ReadString('IBDB', 'IbScriptPath', extractfiledir(application.Exename) + '\Banco\ScriptTkPostoIBS.sql');
 //Edit19.Text := ArquivoIni.ReadString('IBDB', 'IbWinDBPath', extractfiledir(application.Exename) + '\banco\TkPosto.IB.');

 //------ Config Arquivo de LOG ------
 checkbox12.Checked := ArquivoINI.ReadBool('LOG', 'EnableLog', true);
 Edit15.Text := ArquivoIni.ReadString('LOG', 'LogFilePath', extractfiledir(application.Exename) + '\LOGDir\TkPosto'+ RemoveInvalid('/',copy(datetostr(now),3,length(datetostr(now)))) +'*.log');

 //------ Config HelpFile ------
 Edit16.Text := ArquivoIni.ReadString('HELP', 'TkPostoHelpFilePath', extractfiledir(application.Exename) + '\AJUDA TKPosto.chm');

except
{}
end;

ArquivoINI.Free;
end;

procedure TConfigFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.CloseIBArray([DM1.DstTribECF]);
action := cafree;
end;

procedure TConfigFrm.FormCreate(Sender: TObject);
begin
LoadDefaultIniVars;
end;

procedure TConfigFrm.Save(Sender: Tobject);
var
 ArquivoIni, ArquivoIniBemafi: TIniFile;
 Path: String;
begin
Case application.messagebox('Deseja Salvar as Configurações?',
                            'Atenção', mb_YesNoCancel + mb_iconquestion) of
idyes:
 begin
  try
   Path := CreateDefaultINiFile;
   ArquivoIni := TIniFile.Create(Path);

   //------ Config Ordem de Serviço ------
   if ArquivoINI.ReadFloat('OS', 'Previsao', currencyedit3.Value) <> currencyedit3.Value  then
    ArquivoINI.WriteFloat('OS', 'Previsao', currencyedit3.Value);
   if ArquivoINI.ReadFloat('OS', 'Liberado', currencyedit2.Value) <> currencyedit2.Value  then
    ArquivoINI.WriteFloat('OS', 'Liberado', currencyedit2.Value);
   if ArquivoINI.ReadString('OS', 'Cabecalho1', edit44.Text) <> edit44.text then
    ArquivoINI.WriteString('OS', 'Cabecalho1', edit44.Text);
   if ArquivoINI.ReadString('OS', 'Cabecalho2', edit43.Text) <> edit43.text then
    ArquivoINI.WriteString('OS', 'Cabecalho2', edit43.Text);
   if ArquivoINI.ReadString('OS', 'Cabecalho3', edit42.Text) <> edit42.text then
    ArquivoINI.WriteString('OS', 'Cabecalho3', edit42.Text);
   if ArquivoINI.ReadString('OS', 'Cabecalho4', edit41.Text) <> edit41.text then
    ArquivoINI.WriteString('OS', 'Cabecalho4', edit41.Text);
   if ArquivoINI.ReadString('OS', 'ImpRodape1', edit40.Text) <> edit40.text then
    ArquivoINI.WriteString('OS', 'ImpRodape1', edit40.Text);
   if ArquivoINI.ReadString('OS', 'ImpRodape2', edit39.Text) <> edit39.text then
    ArquivoINI.WriteString('OS', 'ImpRodape2', edit39.Text);
   if ArquivoINI.ReadString('OS', 'ImpRodape3', edit38.Text) <> edit38.text then
    ArquivoINI.WriteString('OS', 'ImpRodape3', edit38.Text);
   if ArquivoINI.ReadString('OS', 'ImpRodape4', edit37.Text) <> edit37.text then
    ArquivoINI.WriteString('OS', 'ImpRodape4', edit37.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape1', edit46.Text) <> edit46.text then
    ArquivoINI.WriteString('OS', 'AttRodape1', edit46.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape2', edit36.Text) <> edit36.text then
    ArquivoINI.WriteString('OS', 'AttRodape2', edit36.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape3', edit35.Text) <> edit35.text then
    ArquivoINI.WriteString('OS', 'AttRodape3', edit35.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape4', edit34.Text) <> edit34.text then
    ArquivoINI.WriteString('OS', 'AttRodape4', edit34.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape5', edit33.Text) <> edit33.text then
    ArquivoINI.WriteString('OS', 'AttRodape5', edit33.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape6', edit32.Text) <> edit32.text then
    ArquivoINI.WriteString('OS', 'AttRodape6', edit32.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape7', edit45.Text) <> edit45.text then
    ArquivoINI.WriteString('OS', 'AttRodape7', edit45.Text);
   if ArquivoINI.ReadString('OS', 'AttRodape8', edit47.Text) <> edit47.text then
    ArquivoINI.WriteString('OS', 'AttRodape8', edit47.Text);

   //------ Config: Impressora Fiscal ------
   if ArquivoINI.ReadString('ECF', 'COM', inttostr(ComboBox2.ItemIndex + 1)) <> inttostr(ComboBox2.ItemIndex + 1) then
    ArquivoINI.WriteString('ECF', 'COM', inttostr(ComboBox2.ItemIndex + 1));
   if ArquivoINI.ReadInteger('ECF', 'TipoECF', ComboBox1.ItemIndex) <> ComboBox1.ItemIndex then
    ArquivoINI.WriteInteger('ECF', 'TipoECF', ComboBox1.ItemIndex);
   if ArquivoINI.ReadBool('ECF', 'GavetaInstalada', CheckBox10.Checked) <> CheckBox10.Checked then
    ArquivoINI.WriteBool('ECF', 'GavetaInstalada', CheckBox10.Checked);
   if ArquivoINI.ReadBool('ECF', 'EnableGavetaTest',  CheckBox9.Checked) <> CheckBox9.Checked then
    ArquivoINI.WriteBool('ECF', 'EnableGavetaTest',  CheckBox9.Checked);
//   if ArquivoINI.ReadBool('ECF', 'GavetaSanRe',  CheckBox1.Checked) <> CheckBox1.Checked then
//    ArquivoINI.WriteBool('ECF', 'GavetaSanRe',  CheckBox1.Checked);
   if ArquivoINI.ReadString('ECF', 'MsgP', Edit1.Text) <> edit1.text then
    ArquivoINI.WriteString('ECF', 'MsgP', Edit1.Text);
   if ArquivoINI.ReadBool('ECF','EnableMsgP', CheckBox8.Checked) <> CheckBox1.Checked then
    ArquivoINI.WriteBool('ECF','EnableMsgP', CheckBox8.Checked);
   if ArquivoINI.ReadString('ECF', 'DefTNome', Edit13.Text) <> Edit13.text then
    ArquivoINI.WriteString('ECF', 'DefTNome', Edit13.Text);
   if ArquivoINI.ReadString('ECF', 'DefTVal', Edit14.Text) <> edit14.text then
    ArquivoINI.WriteString('ECF', 'DefTVal', Edit14.Text);
   if ArquivoINI.ReadBool('ECF', 'GavetaInterv',  CheckBox20.Checked) <> CheckBox20.Checked then
    ArquivoINI.WriteBool('ECF', 'GavetaInterv',  CheckBox20.Checked);
   if ArquivoINI.ReadInteger('ECF', 'GavetaVenda', RadioGroup3.ItemIndex) <> RadioGroup3.ItemIndex then
    ArquivoINI.WriteInteger('ECF', 'GavetaVenda', RadioGroup3.ItemIndex);
//   if ArquivoINI.ReadInteger('ECF', 'CODPDV', cod_pdv ) <> DBLookupComboBox1.KeyValue then
//    ArquivoINI.WriteInteger('ECF', 'CODPDV', DBLookupComboBox1.KeyValue);
   if ComboBox1.ItemIndex = 1 then     //bematech fi2
    begin
     ArquivoIniBemafi := TIniFile.Create(extractfilepath(application.exename) + 'Bemafi32.ini');
     ArquivoIniBemafi.WriteString('Sistema', 'Porta', 'COM' + inttostr(ComboBox2.ItemIndex + 1));
     ArquivoIniBemafi.free;
    end;

   //------ Config Nota Fiscal ------
   if ArquivoINI.ReadBool('NOTAFISCAL', 'EnablePreview',  checkbox3.Checked) <> CheckBox3.Checked then
    ArquivoINI.WriteBool('NOTAFISCAL', 'EnablePreview',  checkbox3.Checked);
   if ArquivoINI.ReadInteger('NOTAFISCAL', 'NumNota',  strtoint(edit5.Text)) <> strtoint(edit5.Text) then
    ArquivoINI.Writeinteger('NOTAFISCAL', 'NumNota',  strtoint(edit5.Text));
   if ArquivoINI.ReadInteger('NOTAFISCAL', 'NumVias',  strtoint(edit17.Text)) <> strtoint(edit5.Text) then
    ArquivoINI.Writeinteger('NOTAFISCAL', 'NumVias',  strtoint(edit17.Text));

   //------ Config Orcamento ------
   if ArquivoINI.ReadString('ORCAMENTO', 'PortaImpr', edit6.Text) <> edit6.text then
    ArquivoINI.WriteString('ORCAMENTO', 'PortaImpr', edit6.Text);
   if ArquivoINI.ReadInteger('ORCAMENTO', 'NumVias', strtoint(edit7.Text)) <> strtoint(edit7.Text) then
    ArquivoINI.Writeinteger('ORCAMENTO', 'NumVias', strtoint(edit7.Text));
   if ArquivoINI.ReadBool('ORCAMENTO', 'EnableCabecalho', CheckBox2.Checked) <> CheckBox2.Checked then
    ArquivoINI.WriteBool('ORCAMENTO', 'EnableCabecalho', CheckBox2.Checked);
   if ArquivoINI.ReadBool('ORCAMENTO', 'EnableMsgP', CheckBox11.Checked) <> CheckBox11.Checked then
    ArquivoINI.WriteBool('ORCAMENTO', 'EnableMsgP', CheckBox11.Checked);
   if ArquivoINI.ReadBool('ORCAMENTO', 'EnableRodape', CheckBox4.Checked) <> CheckBox4.Checked then
    ArquivoINI.WriteBool('ORCAMENTO', 'EnableRodape', CheckBox4.Checked);
   if ArquivoINI.ReadBool('ORCAMENTO', 'EnablePreview', CheckBox5.Checked) <> CheckBox5.Checked then
    ArquivoINI.WriteBool('ORCAMENTO', 'EnablePreview', CheckBox5.Checked);
   if ArquivoINI.ReadBool('ORCAMENTO', 'AskImpr', CheckBox6.Checked) <> CheckBox6.Checked then
    ArquivoINI.WriteBool('ORCAMENTO', 'AskImpr', CheckBox6.Checked);

   //ArquivoIni.WriteInteger('ORCAMENTO', 'DefaultAnswerAskImpr', 0);
   if ArquivoINI.ReadString('ORCAMENTO', 'Cabecalho', edit8.Text) <> edit8.text then
    ArquivoIni.WriteString('ORCAMENTO', 'Cabecalho', edit8.Text);
   if ArquivoINI.ReadString('ORCAMENTO', 'MsgP', edit9.Text) <> edit9.text then
    ArquivoIni.WriteString('ORCAMENTO', 'MsgP', edit9.Text);
   if ArquivoINI.ReadString('ORCAMENTO', 'Rodape1', Edit2.Text) <> Edit2.Text then
    ArquivoIni.Writestring('ORCAMENTO', 'Rodape1', Edit2.Text);
   if ArquivoINI.ReadString('ORCAMENTO', 'Rodape2',  Edit3.Text) <> Edit3.Text then
    ArquivoIni.Writestring('ORCAMENTO', 'Rodape2',  Edit3.Text);
   if ArquivoINI.ReadString('ORCAMENTO', 'Rodape3', Edit4.Text) <> Edit4.Text then
    ArquivoIni.Writestring('ORCAMENTO', 'Rodape3',  Edit4.Text);
   if ArquivoINI.ReadString('ORCAMENTO', 'Rodape4',  Edit20.Text) <> Edit20.Text then
    ArquivoIni.Writestring('ORCAMENTO', 'Rodape4',  Edit20.Text);

   //----- Config Boleto -------
   if ArquivoINI.ReadString('BOLETO', 'PortaImpr', edit31.Text) <> edit31.text then
    ArquivoINI.WriteString('BOLETO', 'PortaImpr', edit31.Text);
   if ArquivoINI.ReadInteger('BOLETO', 'NumVias', strtoint(edit30.Text)) <> strtoint(edit30.Text) then
    ArquivoINI.Writeinteger('BOLETO', 'NumVias', strtoint(edit30.Text));
   if ArquivoINI.ReadBool('BOLETO', 'EnableCabecalho', CheckBox13.Checked) <> CheckBox13.Checked then
    ArquivoINI.WriteBool('BOLETO', 'EnableCabecalho', CheckBox13.Checked);
   if ArquivoINI.ReadBool('BOLETO', 'EnableMsgP', CheckBox15.Checked) <> CheckBox15.Checked then
    ArquivoINI.WriteBool('BOLETO', 'EnableMsgP', CheckBox15.Checked);
   if ArquivoINI.ReadBool('BOLETO', 'EnableRodape', CheckBox14.Checked) <> CheckBox14.Checked then
    ArquivoINI.WriteBool('BOLETO', 'EnableRodape', CheckBox14.Checked);
   if ArquivoINI.ReadBool('BOLETO', 'EnablePreview', CheckBox17.Checked) <> CheckBox17.Checked then
    ArquivoINI.WriteBool('BOLETO', 'EnablePreview', CheckBox17.Checked);
   if ArquivoINI.ReadBool('BOLETO', 'AskImpr', CheckBox16.Checked) <> CheckBox16.Checked then
    ArquivoINI.WriteBool('BOLETO', 'AskImpr', CheckBox16.Checked);
   if ArquivoINI.ReadString('BOLETO', 'Cabecalho1', edit28.Text) <> edit28.text then
    ArquivoIni.WriteString('BOLETO', 'Cabecalho1', edit28.Text);
//   if ArquivoINI.ReadString('BOLETO', 'Cabecalho2', edit27.Text) <> edit27.text then
//    ArquivoIni.WriteString('BOLETO', 'Cabecalho2', edit27.Text);
//   if ArquivoINI.ReadString('BOLETO', 'Cabecalho3', edit26.Text) <> edit26.text then
//    ArquivoIni.WriteString('BOLETO', 'Cabecalho3', edit26.Text);
//   if ArquivoINI.ReadString('BOLETO', 'Cabecalho4', edit25.Text) <> edit25.text then
//   ArquivoIni.WriteString('BOLETO', 'Cabecalho4', edit25.Text);
   if ArquivoINI.ReadString('BOLETO', 'MsgP', edit29.Text) <> edit29.text then
    ArquivoIni.WriteString('BOLETO', 'MsgP', edit29.Text);
   if ArquivoINI.ReadString('BOLETO', 'Rodape1', Edit24.Text) <> Edit24.Text then
    ArquivoIni.Writestring('BOLETO', 'Rodape1', Edit24.Text);
   if ArquivoINI.ReadString('BOLETO', 'Rodape2',  Edit23.Text) <> Edit23.Text then
    ArquivoIni.Writestring('BOLETO', 'Rodape2',  Edit23.Text);
   if ArquivoINI.ReadString('BOLETO', 'Rodape3', Edit22.Text) <> Edit22.Text then
    ArquivoIni.Writestring('BOLETO', 'Rodape3',  Edit22.Text);
   if ArquivoINI.ReadString('BOLETO', 'Rodape4',  Edit21.Text) <> Edit21.Text then
    ArquivoIni.Writestring('BOLETO', 'Rodape4',  Edit21.Text);

   //------ Config Cotação ------
   if ArquivoINI.ReadBool('COTACAO', 'EnableCotacao', CheckBox7.Checked) <> CheckBox7.Checked  then
    ArquivoINI.WriteBool('COTACAO', 'EnableCotacao', CheckBox7.Checked);
   if ArquivoINI.ReadFloat('COTACAO', 'ValorCotacao', currencyedit1.Value) <> currencyedit1.Value  then
    ArquivoINI.WriteFloat('COTACAO', 'ValorCotacao', currencyedit1.Value);
   if ArquivoINI.ReadString('COTACAO', 'Moeda', edit10.text) <> Edit10.text  then
    ArquivoINI.WriteString('COTACAO', 'Moeda', edit10.text);

   //------ Config MultiLoja ------
   if ArquivoINI.ReadString('MULTILOJA', 'BaseLocal', edit11.Text) <> Edit11.Text  then
    ArquivoIni.WriteString('MULTILOJA', 'BaseLocal', edit11.Text);

   //------ Config Interbase Connection ------
   if ArquivoINI.ReadInteger('IBDB', 'ConexaoRemota', radiogroup1.ItemIndex) <> radiogroup1.ItemIndex then
    ArquivoINI.WriteInteger('IBDB', 'ConexaoRemota', radiogroup1.ItemIndex);
   if ArquivoINI.ReadBool('IBDB', 'LoginPrompt',  CheckBox19.Checked) <> CheckBox19.Checked then
    ArquivoINI.WriteBool('IBDB', 'LoginPrompt',  CheckBox19.Checked);

   if radiogroup1.ItemIndex = 1 then  //--- Se conexao remota ---
    begin
     if ArquivoINI.ReadString('IBDB', 'IbServerName', Edit18.Text) <> Edit18.Text then
      ArquivoIni.WriteString('IBDB', 'IbServerName', Edit18.Text);
    end
   else
    ArquivoIni.WriteString('IBDB', 'IbServerName', ' ');

   if ArquivoINI.ReadString('IBDB', 'IbDBPath', Edit12.Text) <> Edit12.Text  then
    begin
     ArquivoIni.WriteString('IBDB', 'IbDBDir', extractfiledir(Edit12.Text));
     ArquivoIni.WriteString('IBDB', 'IbDBPath', Edit12.Text);
    end;
{   if ArquivoINI.ReadString('IBDB', 'IbBkpPath', Edit13.Text) <> Edit13.Text  then
    begin
     ArquivoIni.WriteString('IBDB', 'IbBkpDir', extractfiledir(Edit13.Text));
     ArquivoIni.WriteString('IBDB', 'IbBkpPath', Edit13.Text);
    end;
   if ArquivoINI.ReadString('IBDB', 'IbScriptPath', Edit14.Text) <> Edit14.Text  then
    begin
     ArquivoIni.WriteString('IBDB', 'IbScriptDir', extractfiledir(Edit14.Text));
     ArquivoIni.WriteString('IBDB', 'IbScriptPath', Edit14.Text);
    end;
   If ArquivoIni.ReadString('IBBD', 'IbWinDBPath', Edit19.Text) <> Edit19.Text  then
    begin
     ArquivoIni.WriteString('IBDB', 'IbWinDBPath', extractfiledir(Edit19.Text));
     ArquivoIni.WriteString('IBDB', 'IbWinDBPath', Edit19.Text);
    end;
 }
     If ArquivoIni.ReadString('IBDB', 'UserName', Edit50.Text) <> Edit50.Text  then
    begin
     ArquivoIni.WriteString('IBDB', 'UserName', extractfiledir(Edit50.Text));
     ArquivoIni.WriteString('IBDB', 'UserName', Edit50.Text);
    end;

     If ArquivoIni.ReadString('IBDB', 'Password', Edit51.Text) <> Edit51.Text  then
    begin
     ArquivoIni.WriteString('IBDB', 'Password', extractfiledir(Edit51.Text));
     ArquivoIni.WriteString('IBDB', 'Password', Edit51.Text);
    end;

   //------ Config Arquivo de LOG ------
    if ArquivoINI.ReadBool('LOG', 'EnableLog',  CheckBox12.Checked) <> CheckBox12.Checked then
     ArquivoINI.WriteBool('LOG', 'EnableLog',  CheckBox12.Checked);
   if ArquivoINI.ReadString('LOG', 'LogFilePath',Edit15.Text) <> Edit15.Text  then
    ArquivoIni.WriteString('LOG', 'LogFilePath',Edit15.Text);

   //------ Config HelpFile ------
   if ArquivoINI.ReadString('HELP', 'HelpFilePath',Edit16.Text) <> Edit16.Text  then
    ArquivoIni.WriteString('HELP', 'HelpFilePath',Edit16.Text);

   DM1.DstTribECF.ApplyUpdates;
   if DM1.CanCommit then
    begin
     DM1.GetRecPosIBArray(IBArray);
     DM1.DstTribECF.Transaction.Commit;
     DM1.OpenIBArray(IBArray);
     DM1.SetRecPosIBArray(IBArray);
    end
   else
    DM1.DstTribECF.Transaction.CommitRetaining;
  except
  {}
  end;
  ArquivoINI.Free;
  self.Close;
 end;
idno:
 begin
  self.Close;
 end;
end;
end;

Procedure TConfigFrm.EditCancel (Sender: TObject);
begin
 if application.messagebox('Deseja Cancelar as Configurações?',
                           'Atenção', mb_yesno + mb_iconquestion) = idyes then
  LoadDefaultIniVars;
end;

procedure TConfigFrm.ChoosePath(Sender: Tobject);
begin
if sender = bitbtn1 then //Caminho da Base de Dados
 begin
  dm1.opendialog1.Title := 'Base de Dados';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Banco de Dados (*.gdb)|*.gdb';
  if dm1.opendialog1.Execute then
   edit12.Text := dm1.opendialog1.FileName;
 end;

{ if sender = bitbtn10 then //Caminho da Base de Dados Remota
 begin
  dm1.opendialog1.Title := 'Base Remota';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Base Remota (*.gdb)|*.gdb';
  if dm1.opendialog1.Execute then
   edit19.Text := dm1.opendialog1.FileName;
 end;
}
  if sender = bitbtn9 then //Caminho da Base de Dados Local
 begin
  dm1.opendialog1.Title := 'Base Local';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Base Local (*.gdb)|*.gdb';
  if dm1.opendialog1.Execute then
   edit11.Text := dm1.opendialog1.FileName;
 end;
{
if sender = bitbtn2 then //Caminho do Arquivo de Backup
 begin
  dm1.opendialog1.Title := 'Arquivo de Backup';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Arquivo de Backup (*.gbk)|*.gbk';
  if dm1.opendialog1.Execute then
   edit13.Text := dm1.opendialog1.FileName;
 end;

if sender = bitbtn6 then //Caminho do Arquivo de Script de Dados
 begin
  dm1.opendialog1.Title := 'Arquivo de Script de Dados';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Script de Dados (*.sql)|*.sql';
  if dm1.opendialog1.Execute then
   edit14.Text := dm1.opendialog1.FileName;
 end; }

if sender = bitbtn7 then // Caminho do Arquivo de LOG
 begin
  dm1.opendialog1.Title := 'Arquivo de LOG';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Arquivo de LOG (*.log)|*.log';
  if dm1.opendialog1.Execute then
   edit15.Text := dm1.opendialog1.FileName;
 end;

if sender = bitbtn8 then // Caminho do Arquivo de Ajuda
 begin
  dm1.opendialog1.Title := 'Arquivo de Ajuda';
  dm1.opendialog1.InitialDir := ExtractFileDir(Application.ExeName);
  dm1.opendialog1.Filter := 'Arquivo de Ajuda (*.chm)|*.chm';
  if dm1.opendialog1.Execute then
   edit16.Text := dm1.opendialog1.FileName;
 end;
end;


procedure TConfigFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 PrincipalFrm.SpeedButton5.click;
end;

procedure TConfigFrm.ComboBox1Click(Sender: TObject);
begin
  imagefi1.Visible:=ComboBox1.ItemIndex=0;
  imagefi2.Visible:=ComboBox1.ItemIndex=1;
  imageQZ1000.Visible:=ComboBox1.ItemIndex=2;
  imageIFS7000.Visible:=ComboBox1.ItemIndex=3;
end;

procedure TConfigFrm.FormShow(Sender: TObject);
begin
 imagefi1.Visible:=ComboBox1.ItemIndex=0;
 imagefi2.Visible:=ComboBox1.ItemIndex=1;
 imageQZ1000.Visible:=ComboBox1.ItemIndex=2;
 imageIFS7000.Visible:=ComboBox1.ItemIndex=3;

 tabsheet1.TabVisible := Fiscal;
end;

procedure TConfigFrm.AlteraIncluirTributos1Click(Sender: TObject);
begin
if application.messagebox('Atenção!'+#13+
                          'Os tributos fiscais indicam quanto de imposto é arrecadado a cada venda realizada na Impressora Fiscal, e variam de acordo com o produto.'+#13+
                          'Alterações indevidas nestes campo podem causar sérias complicações Fiscias'+#13+
                          'Se você tem alguma dúvida de como proceder ou o que isto significa, clique em NÃO.'+#13+
                          'Deseja Alterar os valores dos tributos?',
                          'Atenção', mb_yesno + mb_defbutton2 + mb_iconexclamation) = idyes then
 begin
  dbgrid1.enabled:=true;
  dbnavigator1.enabled:=true;
 // PrincipalFrm.logtofile('> ACESSADO CAMPO TRIBUTOS DO ECF <');
 end;
end;


procedure TConfigFrm.RadioGroup1Click(Sender: TObject);
begin
If RadioGroup1.ItemIndex = 0 then
 begin
  label23.Enabled :=false;
  Edit18.enabled := False;
 end
else
 begin
  label23.Enabled :=True;
  Edit18.enabled := True;
 end
end;

procedure TConfigFrm.BitBtn5Click(Sender: TObject);
begin
self.close;
end;

procedure TConfigFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DM1.DstTribECF]);
{ with QryPDV do
 begin
  Close;
  Unprepare;
  SQL.Clear;
  SQL.Add('Select State from CAIXAOPCL ');
  SQL.Add('where (CODPDV = :CODPDV) and codcaixaopcl  in ');
  SQL.Add('(Select max(codcaixaopcl) from CAIXAOPCL)');
  ParamByName('CODPDV').asinteger := cod_pdv;
  Prepare;
  Open;

  If  (QryPDV.FieldByName('State').AsInteger = 1) then // Caixa Aberto : Não pode permitir mudança de PDV
   begin
    DBLookupComboBox1.Enabled := false;
    DBLookupComboBox1.visible := false;
   end
  else
   DBLookupComboBox1.Enabled := true;

  Close;
  Unprepare;
  SQL.Clear;
  SQL.Add('select * from PDV where Em_Uso = 0');
  Prepare;
  Open;

  DBLookupComboBox1.KeyField := 'CODPDV';
  DBLookupComboBox1.keyvalue := cod_pdv;
 end;}
end;

procedure TConfigFrm.CheckBox10Click(Sender: TObject);
begin
 if CheckBox10.Checked then
  begin
//   CheckBox1.Enabled := True;
   CheckBox9.Enabled := True;
   CheckBox20.Enabled := True;
   RadioGroup3.Enabled := True;
  end
 else
  begin
//   CheckBox1.Enabled := False;
   CheckBox9.Enabled := False;
   CheckBox20.Enabled := False;
   RadioGroup3.Enabled := False;
  end;
end;

procedure TConfigFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
with TDBLookupComboBox(sender).ListSource.DataSet do
 begin
  Moveby(TDBLookupComboBox(sender).DropDownRows);
  first;
 end;
end;

end.
