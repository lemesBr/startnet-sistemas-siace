unit lista_funcionario2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB,  frxClass, frxDBSet, frxDesgn, Menus, aDvGlowButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvReflectionImage;

type
  Tfrmlista_funcionario2 = class(TForm)
    Bevel2: TBevel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    lcliente: TLabel;
    Label6: TLabel;
    combo_relatorio: TComboBox;
    combo_funcionario: TComboBox;
    combo_ordem: TComboBox;
    fxdesenhar: TfrxDesigner;
    fxfuncionario: TfrxReport;
    fsfuncionario: TfrxDBDataset;
    qrfuncionario: TFDQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    FDvReflectionImage1: TAdvReflectionImage;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrfuncionarioCODIGO: TIntegerField;
    qrfuncionarioNOME_RS: TStringField;
    qrfuncionarioENDERECO: TStringField;
    qrfuncionarioCIDADE: TStringField;
    qrfuncionarioUF: TStringField;
    qrfuncionarioCEP: TStringField;
    qrfuncionarioTELEFONE: TStringField;
    qrfuncionarioTELEFONE2: TStringField;
    qrfuncionarioEMAIL: TStringField;
    qrfuncionarioNASCIMENTO_IA: TDateField;
    qrfuncionarioSEXO: TStringField;
    qrfuncionarioFOTO_LOGOMARCA: TBlobField;
    qrfuncionarioBAIRRO: TStringField;
    qrfuncionarioRG_IE: TStringField;
    qrfuncionarioFAX: TStringField;
    qrfuncionarioCELULAR: TStringField;
    qrfuncionarioUSERCAD: TStringField;
    qrfuncionarioDATACAD: TDateField;
    qrfuncionarioCPF_CNPJ: TStringField;
    qrfuncionarioOBSERVACOES: TBlobField;
    qrfuncionarioCREDIARIO: TStringField;
    qrfuncionarioESTADOCIVIL: TStringField;
    qrfuncionarioRESIDENCIA_SEDE: TStringField;
    qrfuncionarioPAI: TStringField;
    qrfuncionarioMAE: TStringField;
    qrfuncionarioNOME_CONJUGE: TStringField;
    qrfuncionarioCPF_CONJUGE: TStringField;
    qrfuncionarioNASCIMENTO_CONJUGE: TDateField;
    qrfuncionarioTRABALHO_CONJUGE: TStringField;
    qrfuncionarioPROFISSAO_CONJUGE: TStringField;
    qrfuncionarioLOCALTRABALHO: TStringField;
    qrfuncionarioPROFISSAO_RA: TStringField;
    qrfuncionarioTELEFONE_TRABALHO: TStringField;
    qrfuncionarioFAX_TRABALHO: TStringField;
    qrfuncionarioOBSERVACOES_TRABALHO: TBlobField;
    qrfuncionarioBANCO: TStringField;
    qrfuncionarioNOME_AGENCIA: TStringField;
    qrfuncionarioNUMERO_AGENCIA: TStringField;
    qrfuncionarioCONTA_CORRENTE: TIntegerField;
    qrfuncionarioNOME1_REFERENCIA: TStringField;
    qrfuncionarioNOME2_REFERENCIA: TStringField;
    qrfuncionarioTELEFONE1_REFERENCIA: TStringField;
    qrfuncionarioTELEFONE2_REFERENCIA: TStringField;
    qrfuncionarioBANCO_REFERENCIA: TStringField;
    qrfuncionarioAPELIDO: TStringField;
    qrfuncionarioTIPO: TStringField;
    qrfuncionarioOBSERVACOES_COMERCIAIS: TBlobField;
    qrfuncionarioOBSERVACOES_BANCO: TBlobField;
    qrfuncionarioPG_CREDIARIO: TStringField;
    qrfuncionarioPG_CHEQUE: TStringField;
    qrfuncionarioPG_FINANCEIRA: TStringField;
    qrfuncionarioNUMERO: TStringField;
    qrfuncionarioCOMPLEMENTO: TStringField;
    qrfuncionarioCOD_EMPRESA: TIntegerField;
    qrfuncionarioORGAO_EMISSOR: TStringField;
    qrfuncionarioDATA_EMISSAO_RG: TDateField;
    qrfuncionarioNATURALIDADE: TStringField;
    qrfuncionarioNATURALIDADE_UF: TStringField;
    qrfuncionarioCOD_CIDADE: TIntegerField;
    qrfuncionarioCOD_BAIRRO: TIntegerField;
    qrfuncionarioDATA_ALTERACAO: TDateField;
    qrfuncionarioCOD_ZONA: TIntegerField;
    qrfuncionarioPONTO_REFERENCIA: TStringField;
    qrfuncionarioATIVO: TStringField;
    qrfuncionarioCONTATO1: TStringField;
    qrfuncionarioCONTATO2: TStringField;
    qrfuncionarioCX_POSTAL: TStringField;
    qrfuncionarioTEMPO_RESIDENCIA: TStringField;
    qrfuncionarioNUMERO_DEPENDENTES: TIntegerField;
    qrfuncionarioENDERECO_REFERENCIA1: TStringField;
    qrfuncionarioENDERECO_REFERENCIA2: TStringField;
    qrfuncionarioDATA_ADMISSAO_REFERENCIA1: TDateField;
    qrfuncionarioDATA_ADMISSAO_REFERENCIA2: TDateField;
    qrfuncionarioRG_CONJUGUE: TStringField;
    qrfuncionarioDATA_ADMINSSAO_CONJUGUE: TDateField;
    qrfuncionarioFONE_CONJUGUE: TStringField;
    qrfuncionarioENDERECO_COBRANCA: TStringField;
    qrfuncionarioCEP_COBRANCA: TStringField;
    qrfuncionarioCOD_CIDADE_COBRANCA: TIntegerField;
    qrfuncionarioCX_POSTAL_COBRANCA: TStringField;
    qrfuncionarioINSC_MUNICIPAL: TStringField;
    qrfuncionarioPRODUTOR_RURAL: TStringField;
    qrfuncionarioINSC_PRODUTOR_RURAL: TStringField;
    qrfuncionarioCOD_BAIRRO_COBRANCA: TIntegerField;
    qrfuncionarioCIDADE_COBRANCA: TStringField;
    qrfuncionarioBAIRRO_COBRANCA: TStringField;
    qrfuncionarioUF_COBRANCA: TStringField;
    qrfuncionarioCONTA_BANCARIA: TStringField;
    qrfuncionarioNOME_PROPRIEDADE: TStringField;
    qrfuncionarioNOME_VETERINARIO: TStringField;
    qrfuncionarioSOCIO1: TStringField;
    qrfuncionarioCPFSOCIO1: TStringField;
    qrfuncionarioDATANASCSOCIO1: TDateField;
    qrfuncionarioSOCIO2: TStringField;
    qrfuncionarioCPFSOCIO2: TStringField;
    qrfuncionarioDATANASCSOCIO2: TDateField;
    qrfuncionarioSOCIO3: TStringField;
    qrfuncionarioCPFSOCIO3: TStringField;
    qrfuncionarioDATANASCSOCIO3: TDateField;
    qrfuncionarioSOCIO4: TStringField;
    qrfuncionarioCPFSOCIO4: TStringField;
    qrfuncionarioDATANASCSOCIO4: TDateField;
    qrfuncionarioDATAFUNDACAO: TDateField;
    qrfuncionarioREGJUNTACOM: TStringField;
    qrfuncionarioENDSOCIO1: TStringField;
    qrfuncionarioRGSOCIO1: TIntegerField;
    qrfuncionarioENDSOCIO2: TStringField;
    qrfuncionarioRGSOCIO2: TIntegerField;
    qrfuncionarioENDSOCIO3: TStringField;
    qrfuncionarioRGSOCIO3: TIntegerField;
    qrfuncionarioENDSOCIO4: TStringField;
    qrfuncionarioRGSOCIO4: TIntegerField;
    qrfuncionarioAUTORIZADO1: TStringField;
    qrfuncionarioAUTORIZADO2: TStringField;
    qrfuncionarioAUTORIZADO3: TStringField;
    qrfuncionarioCPF_AUT1: TStringField;
    qrfuncionarioCPF_AUT2: TStringField;
    qrfuncionarioCPF_AUT3: TStringField;
    qrfuncionarioFUNCIONARIO: TStringField;
    qrfuncionarioCTPS: TStringField;
    qrfuncionarioTESTA_CREDITO: TStringField;
    qrfuncionarioTESTA_LIMITE: TStringField;
    qrfuncionarioCOD_CONV: TIntegerField;
    qrfuncionarioFOTO: TStringField;
    qrfuncionarioDATA_ULTIMA_COMPRA: TDateField;
    qrfuncionarioFUNC_DATA_ADMISSAO: TDateField;
    qrfuncionarioFUNC_SITUACAO: TStringField;
    qrfuncionarioFUNC_DEMISSAO: TDateField;
    qrfuncionarioFUNC_CARGO: TStringField;
    qrfuncionarioREMUNERACAO: TFMTBCDField;
    qrfuncionarioVALOR_ALUGUEL: TFMTBCDField;
    qrfuncionarioRENDA_CONJUGUE: TFMTBCDField;
    qrfuncionarioLIMITE_DE_CREDITO: TFMTBCDField;
    qrfuncionarioDOCUMENTOS: TBlobField;
    qrfuncionarioIE: TStringField;
    qrfuncionarioPARENTESCO_AUT1: TStringField;
    qrfuncionarioPARENTESCO_AUT2: TStringField;
    qrfuncionarioPARENTESCO_AUT3: TStringField;
    qrfuncionarioPOSSUE_LAUDO: TStringField;
    qrfuncionarioVENCIMENTO_LAUDO: TDateField;
    qrfuncionarioCAPITALSOCIAL: TFMTBCDField;
    qrfuncionarioFATURAMENTOBRUTO: TFMTBCDField;
    qrfuncionarioFUNC_SALARIO: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_funcionarioChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_funcionario2: Tfrmlista_funcionario2;

implementation

uses principal, xloc_funcionario,
  ModulodeDados;

{$R *.dfm}

procedure Tfrmlista_funcionario2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_funcionario2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_Funcionario.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_funcionario2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_funcionario2.bimprimirClick(Sender: TObject);
var funcionario, ordem: string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_FUNCIONARIO.Text = 'TODOS' then FUNCIONARIO := '' else begin FUNCIONARIO := ' and codIGO = ''' + resultado_pesquisa1 + ''''; dm.qrrelatorio.fieldbyname('LINHA3').asstring := 'FUNCIONÁRIO: ' + COMBO_FUNCIONARIO.TEXT; end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrFUNCIONARIO.close;
    qrFUNCIONARIO.sql.clear;
    qrFUNCIONARIO.sql.add('select * from clientes where funcionario = 1 ' + FUNCIONARIO + ' order by ' + COMBO_ORDEM.TEXT);
    qrFUNCIONARIO.open;
    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE FUNCIONÁRIOS';
    FXFUNCIONARIO.LoadFromFile('rel\F000007.fr3');
    FXFUNCIONARIO.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrFUNCIONARIO.close;
    qrFUNCIONARIO.sql.clear;
    qrFUNCIONARIO.sql.add('select * from clientes where funcionario = 1 ' + FUNCIONARIO + ' order by ' + COMBO_ORDEM.TEXT);
    qrFUNCIONARIO.open;
    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE FUNCIONÁRIOS';
    FXFUNCIONARIO.LoadFromFile('rel\F000008.fr3');
    FXFUNCIONARIO.ShowReport;
  end;

end;

procedure Tfrmlista_funcionario2.combo_funcionarioChange(Sender: TObject);
begin
  if combo_FUNCIONARIO.Text = 'SELECIONAR' then
  begin
    frmxloc_FUNCIONARIO := tfrmxloc_FUNCIONARIO.create(self);
    frmxloc_FUNCIONARIO.tag := 1;
    frmxloc_FUNCIONARIO.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_FUNCIONARIO.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_FUNCIONARIO.ItemIndex := combo_FUNCIONARIO.Items.Count - 1;
     // combo_FUNCIONARIO.tag :=   RESULTADO_PESQUISA1;
    end
    else
      COMBO_FUNCIONARIO.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_funcionario2.BitBtn1Click(Sender: TObject);
begin
  if FormPrincipal.Label2.Caption ='N'then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXFUNCIONARIO.LoadFromFile('rel\f000007.fr3');
    FXFUNCIONARIO.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXFUNCIONARIO.LoadFromFile('rel\f000008.fr3');
    FXFUNCIONARIO.DesignReport;
  end;
end;

end.
