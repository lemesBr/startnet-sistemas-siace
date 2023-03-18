unit os_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, frxClass, frxDBSet, frxDesgn, Grids, DBGrids, ADvGlowButton,
   Mask, RzEdit, RzSpnEdt,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvReflectionImage;

type
  Tfrmos_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPRazao: TMenuItem;
    TPCarta: TMenuItem;
    TPImpresso: TMenuItem;
    TPA4: TMenuItem;
    TPRazaoA4: TMenuItem;
    ContnuoOSAberta1: TMenuItem;
    FormulrioContnuoCarta1: TMenuItem;
    frxDesigner1: TfrxDesigner;
    fsos: TfrxDBDataset;
    fxos: TfrxReport;
    fsos_servico: TfrxDBDataset;
    fsos_receber: TfrxDBDataset;
    fsos_produtos_geral: TfrxDBDataset;
    RazoOSAberta1: TMenuItem;
    RazoOSFechada1: TMenuItem;
    FormulrioContnuoCartaPersonalizado1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    combo_modelo: TComboBox;
    Bevel2: TBevel;
    Label1: TLabel;
    Bevel1: TBevel;
    bcancelar: TAdvGlowButton;
    PopupMenu2: TPopupMenu;
    Cancelar1: TMenuItem;
    qros: TFDQuery;
    qros_servico: TFDQuery;
    evias: TRzSpinEdit;
    fsos_produto: TfrxDBDataset;
    qros_produto: TFDQuery;
    bgravar: TAdvGlowButton;
    img: TAdvReflectionImage;
    qros_produtoID_OS_PRODUTOS_SERVICOS: TIntegerField;
    qros_produtoID_OS_ORDEMSERVICO: TIntegerField;
    qros_produtoID_OS_TECNICO: TIntegerField;
    qros_produtoCOD_PRODUTO: TIntegerField;
    qros_produtoCODIGO_BARRAS: TStringField;
    qros_produtoVALOR_UNITARIO: TFloatField;
    qros_produtoQUANTIDADE: TFloatField;
    qros_produtoPERC_DESCONTO: TFloatField;
    qros_produtoVLRDESCONTO: TFloatField;
    qros_produtoVALOR_TOTAL: TFloatField;
    qros_produtoDESC_UNIDADE: TStringField;
    qros_produtoDTFIMPROMVAREJO: TDateField;
    qros_produtoDTINICIOPROMVAREJO: TDateField;
    qros_produtoVALGRAMASAIDA: TFloatField;
    qros_produtoESTAPROMOCAOVAREJO: TStringField;
    qros_produtoEMBALAGEMSAIDA: TStringField;
    qros_produtoPRECO_ATUAL_MANTIDO: TFloatField;
    qros_produtoDESCRICAO: TStringField;
    qros_produtoPROD_SERV: TStringField;
    qros_produtoSIT_TRIBUTARIA: TStringField;
    qros_produtoFRACAO: TIntegerField;
    qros_produtoCOD_NCM: TStringField;
    qros_servicoID_OS_PRODUTOS_SERVICOS: TIntegerField;
    qros_servicoID_OS_ORDEMSERVICO: TIntegerField;
    qros_servicoID_OS_TECNICO: TIntegerField;
    qros_servicoCOD_PRODUTO: TIntegerField;
    qros_servicoCODIGO_BARRAS: TStringField;
    qros_servicoVALOR_UNITARIO: TFloatField;
    qros_servicoQUANTIDADE: TFloatField;
    qros_servicoPERC_DESCONTO: TFloatField;
    qros_servicoVLRDESCONTO: TFloatField;
    qros_servicoVALOR_TOTAL: TFloatField;
    qros_servicoDESC_UNIDADE: TStringField;
    qros_servicoDTFIMPROMVAREJO: TDateField;
    qros_servicoDTINICIOPROMVAREJO: TDateField;
    qros_servicoVALGRAMASAIDA: TFloatField;
    qros_servicoESTAPROMOCAOVAREJO: TStringField;
    qros_servicoEMBALAGEMSAIDA: TStringField;
    qros_servicoPRECO_ATUAL_MANTIDO: TFloatField;
    qros_servicoDESCRICAO: TStringField;
    qros_servicoPROD_SERV: TStringField;
    qros_servicoSIT_TRIBUTARIA: TStringField;
    qros_servicoFRACAO: TIntegerField;
    qros_servicoCOD_NCM: TStringField;
    qrosID_OS_ORDEMSERVICO: TIntegerField;
    qrosID_EMPRESA: TIntegerField;
    qrosID_OS_PRIORIDADE: TIntegerField;
    qrosID_OS_TIPOATENDIMENTO: TIntegerField;
    qrosID_OS_STATUS: TIntegerField;
    qrosID_CLIENTE: TIntegerField;
    qrosID_OS_EQUIPAMENTO: TIntegerField;
    qrosID_OS_EQUIPAMENTO_COR: TIntegerField;
    qrosID_OS_EQUIP_LOCAL: TIntegerField;
    qrosID_TECNICORESPONSAVEL: TIntegerField;
    qrosID_USUARIO: TIntegerField;
    qrosSITUACAO: TStringField;
    qrosIDENTIFICADOR: TStringField;
    qrosEQUIPAMENTO_NSERIE: TStringField;
    qrosNUMERO_OS: TIntegerField;
    qrosNOMECONTATO: TStringField;
    qrosFLAGEXTERNA: TStringField;
    qrosDATA_ENTRADA: TDateField;
    qrosHORA_ENTRADA: TTimeField;
    qrosDATA_SOLUCAO: TDateField;
    qrosHORA_SOLUCAO: TTimeField;
    qrosCAMPO_DATAAGENDA: TDateField;
    qrosCAMPO_HORAAGENDA: TTimeField;
    qrosCAMPO_DATACHEGADA: TDateField;
    qrosCAMPO_HORACHEGADA: TTimeField;
    qrosCAMPO_DATASAIDA: TDateField;
    qrosCAMPO_HORASAIDA: TTimeField;
    qrosCAMPO_DATARETORNO: TDateField;
    qrosCAMPO_HORARETORNO: TTimeField;
    qrosCONSUMIDOR_NOME: TStringField;
    qrosCONSUMIDOR_ENDERECO: TStringField;
    qrosCONSUMIDOR_CPFCNPJ: TStringField;
    qrosCONSUMIDOR_TELEFONE: TStringField;
    qrosPRAZO_DATACONCLUSAO: TDateField;
    qrosPRAZO_HORACONCLUSAO: TTimeField;
    qrosMODELO: TStringField;
    qrosOBS: TStringField;
    qrosID_VENDA: TIntegerField;
    qrosDATA_ALTERACAO: TSQLTimeStampField;
    qrosOCORRENCIA: TStringField;
    qrosOBSEQUIPAMENTO: TStringField;
    qrosSOLUCAO: TStringField;
    qrosREVENDEDOR: TStringField;
    qrosMODALIDADE: TStringField;
    qrosGARANTIA: TStringField;
    qrosLACRE: TStringField;
    qrosGARANTIA_CAMPO1: TStringField;
    qrosDATA_PROXIMAREVISAO: TDateField;
    qrosCONSUMIDOR_RGINSCR: TStringField;
    qrosHORA_INICIO_ATEND: TTimeField;
    qrosHORA_FIM_ATEND: TTimeField;
    qrosUSERCAD: TStringField;
    qrosDATACAD: TDateField;
    qrosUSUARIO: TStringField;
    qrosMARCA: TStringField;
    qrosLOCAL: TStringField;
    qrosCOR: TStringField;
    qrosMODELO1: TStringField;
    qrosSTATUS: TStringField;
    qrosTIPO: TStringField;
    qrosPRIORIDADE: TStringField;
    qrosID_OS_PRIORIDADE1: TIntegerField;
    qrosUSERCAD1: TStringField;
    qrosDATACAD1: TDateField;
    qrosTIPOATENDIMENTO: TStringField;
    qrosKM: TIntegerField;
    qrosPLACA: TStringField;
    qrosVEICULO: TStringField;
    qrreceber: TFDQuery;
    qrreceberCODIGO: TIntegerField;
    qrreceberCODIGO_CLIENTE: TIntegerField;
    qrreceberDATA_COMPRA: TDateField;
    qrreceberDATA_VENCIMENTO: TDateField;
    qrreceberDATA_BAIXA: TDateField;
    qrreceberHISTORICO: TStringField;
    qrreceberUSUARIO_VENDA: TStringField;
    qrreceberUSUARIO_BAIXA: TStringField;
    qrreceberSITUACAO: TStringField;
    qrreceberCODIGO_COMPRA: TIntegerField;
    qrreceberPARCELA: TStringField;
    qrreceberNUMBOLETO: TStringField;
    qrreceberBANCO_PORTADOR: TIntegerField;
    qrreceberREMESSA: TStringField;
    qrreceberDATACREDITO: TDateField;
    qrreceberID_PORTADOR: TIntegerField;
    qrreceberENVIADO: TStringField;
    qrreceberCOD_EMPRESA: TIntegerField;
    qrreceberNUMBOLETO1: TIntegerField;
    qrreceberCODIGOCEDENTE: TStringField;
    qrreceberTIPO: TStringField;
    qrreceberCHEK_BOX: TStringField;
    qrreceberNUM_NOTA: TIntegerField;
    qrreceberSERIE_NOTA: TStringField;
    qrreceberNOME_SACADO: TStringField;
    qrreceberANO: TStringField;
    qrreceberMES: TStringField;
    qrreceberTP_BAIXA: TStringField;
    qrreceberID_CONTRATO: TIntegerField;
    qrreceberNOME_ARQ: TStringField;
    qrreceberCOBRADOR: TIntegerField;
    qrreceberDT_PREVISAO_PGTO: TDateField;
    qrreceberDIAS_VENCIDO: TIntegerField;
    qrreceberN_OS: TStringField;
    qrreceberCOD_ENTRADA: TStringField;
    qrreceberFILTRO: TIntegerField;
    qrreceberCOD_AVALISTA: TIntegerField;
    qrreceberCOD_FRETE: TIntegerField;
    qrreceberCOD_CONV: TIntegerField;
    qrreceberCOM_REGISTRO: TIntegerField;
    qrosBAIRRO: TStringField;
    qrosUF: TStringField;
    qrosCIDADE: TStringField;
    qrosCELULAR: TStringField;
    qrosprodutos_geral: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField2: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    FloatField6: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField7: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField5: TIntegerField;
    StringField8: TStringField;
    Edit1: TEdit;
    QrytotaisP: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    qrtotalS: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    qrtotalSTOTAL: TFloatField;
    qrtotalSDESCONTO: TFloatField;
    qrreceberVALOR_COMPRA: TFMTBCDField;
    qrreceberVALOR_JUROS: TFMTBCDField;
    qrreceberVALOR_ACRESCIMO: TFMTBCDField;
    qrreceberVALOR_DESCONTO: TFMTBCDField;
    qrreceberVALOR_PAGAR: TFMTBCDField;
    qrreceberVALOR_PAGO: TFMTBCDField;
    qrreceberVALOR_TOTAL: TFMTBCDField;
    qrreceberCOMISSAO: TFMTBCDField;
    qrreceberVLR_GRAFICA: TFMTBCDField;
    qrreceberVALOR_COMISAO: TFMTBCDField;
    qrreceberRECEBIVEL: TIntegerField;
    qrreceberID_CT_PARCELA: TIntegerField;
    qrreceberJUROS_POSTERGADOS: TFMTBCDField;
    qrreceberID_CBR_REMESSA_UUID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPCartaClick(Sender: TObject);
  //  procedure TPImpressoClick(Sender: TObject);
  //  procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPA4Click(Sender: TObject);
    procedure TPRazaoA4Click(Sender: TObject);
    procedure ContnuoOSAberta1Click(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
  //  procedure FormulrioContnuoCarta1Click(Sender: TObject);
    procedure RazoOSAberta1Click(Sender: TObject);
    procedure RazoOSFechada1Click(Sender: TObject);
    procedure FormulrioContnuoCartaPersonalizado1Click(Sender: TObject);
    procedure TAberturaClick(Sender: TObject);
    procedure TSolucaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_impressao: Tfrmos_impressao;
  porta_impressora: string;

implementation

uses  principal, ModulodeDados, DMOS1, relatorioaberturaos, RelSolucaoOs;

{$R *.dfm}

procedure Tfrmos_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  action := cafree;
end;

procedure Tfrmos_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmos_impressao.bgravarClick(Sender: TObject);
begin

  case combo_modelo.ItemIndex of
  //  0: TPRazaoClick(frmOS_impressao);
  //  1: TPCartaClick(frmOS_impressao);
  //  2: ContnuoOSAberta1click(frmOS_impressao);
  //  3: TPImpressoClick(frmOS_impressao);
    0: TAberturaClick(frmOS_impressao);
    1: TSolucaoClick(frmOS_impressao);
    2: TPA4Click(frmOS_impressao);
    3: TPRazaoA4Click(frmOS_impressao);
   //  6: FormulrioContnuoCarta1Click(frmOS_impressao);
   // 7: RazoOSAberta1Click(frmOS_impressao);
   // 8: RazoOSFechada1Click(frmOS_impressao);
   //  9: FormulrioContnuoCartaPersonalizado1Click(frmos_impressao);
  end;

  close;
end;

procedure Tfrmos_impressao.FormShow(Sender: TObject);
begin

  {if ramo = 3 then // auto pecas
  begin
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger = 3 then
    begin
      if frmmodulo.cdsos.fieldbyname('st').asinteger <> 4 then
      begin
        combo_modelo.ItemIndex := 4;
      end
      else
      begin
        combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
      end;
    end
    else
    begin
      if frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger = 10 then
      begin
        if frmmodulo.cdsos.fieldbyname('st').asinteger <> 4 then
        begin
          combo_modelo.ItemIndex := 9;
        end
        else
        begin
          combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
        end;
      end
      else
      begin
        combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
      end;
      evias.intValue := frmmodulo.qrconfig.FieldByName('OS_QTDE_VIAS_NOTA').asinteger;
      porta_impressora := frmmodulo.qrconfig.FieldByName('OS_PORTA_IMPRESSORA').asstring;
    end;
  end
  else
  begin
    frmmodulo.qrconfig.open;
    combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('OS_TIPONOTA').asinteger;
    evias.intValue := frmmodulo.qrconfig.FieldByName('OS_QTDE_VIAS_NOTA').asinteger;
    porta_impressora := frmmodulo.qrconfig.FieldByName('OS_PORTA_IMPRESSORA').asstring;
  end;  }

end;

procedure Tfrmos_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmos_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos_impressao.TPCartaClick(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: integer;
  nivel_comb, i: integer;
  nc: string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

{  if ramo = 3 then
  begin


    nivel_comb := frmmodulo.cdsos.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then nc := '|----|----|----|----|';
    if (nivel_comb > 0) and (nivel_comb < 6) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100) then nc := '|----|----|----|----X';





    assignfile(arquivo, impressora_venda);
    rewrite(arquivo);
    writeln(arquivo, #18 + #27#71 + #20, frmprincipal.texto_justifica(emitente_fantasia, 80, ' ', 'C'));
    writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(emitente_endereco + ' - ' + emitente_cidade + ' - CEP ' + emitente_cep + ' - ' + 'Telefone: ' + emitente_telefone, 137, ' ', 'C'));
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'O R D E M   D E   S E R V I C O   N ' + frmprincipal.tiraacento('º :  ') + #18 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, '0', 'E') + #15 + #27#72 + #20 + '  ATEND.: ' + FRMPRINCIPAL.TEXTO_JUSTIFICA(FRMMODULO.cdsos.FIELDBYNAME('ATENDIMENTO').ASSTRING, 11, ' ', 'D') +
      '   ' + frmprincipal.tiraacento('Emissão: ') + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('data').asstring + '   ' + timetostr(time), 20, ' ', 'C') +
      '  ' + frmprincipal.texto_justifica('Atend.: ' + frmmodulo.cdsos.fieldbyname('atendente').asstring, 28, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------DADOS DO CLIENTE--------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'Cliente...: '#15 + #27#71 + #20 + frmprincipal.texto_justifica(FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, 6, '0', 'E') + ' ' + frmprincipal.texto_justifica(FRMMODULO.cdsos.FIELDBYNAME('CLIENTE').ASSTRING, 32, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Endereco..: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring + ' ' +
      frmmodulo.qrcliente.fieldbyname('bairro').asstring + ' - ' +
      frmmodulo.qrcliente.fieldbyname('cidade').asstring + '/' +
      frmmodulo.qrcliente.fieldbyname('uf').asstring +
      '  CEP ' + frmmodulo.qrcliente.fieldbyname('cep').asstring, 115, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Telefones.: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring + ' / ' +
      frmmodulo.qrcliente.fieldbyname('celular').asstring + ' / ' +
      frmmodulo.qrcliente.fieldbyname('telefone2').asstring + '        CPF/CNPJ: ' +
      frmmodulo.qrcliente.fieldbyname('cpf').asstring + '      RG/IE: ' +
      frmmodulo.qrcliente.fieldbyname('rg').asstring, 115, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'Marca/Mode: '#15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('Marca').asstring, 120, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Ano/Modelo: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('modelo').asstring + '           Placa: ' + frmmodulo.cdsos.fieldbyname('SERIAL').asstring + '       Chassi: ' + frmmodulo.cdsos.fieldbyname('SERIAL').asstring, 120, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Combustiv.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('combustivel').asstring + '                                                          Nivel do Comustivel:   ' + NC, 120, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------SOLICITACOES / DEFEITOS / RECLAMACOES---------------------------------------------');
    WRITELN(ARQUIVO, #15 + #27#72 + #20, frmos_auto.edefeito.text);
    writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------PARCECER TECNICO / DEFEITOS DETECTADOS--------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, frmos_AUTO.edetectado.text);
    writeln(arquivo, #15 + #27#72 + #20, ' ');
    writeln(arquivo, #15 + #27#72 + #20, 'Data......: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('DETECTADO_DATA').asstring, 10, ' ', 'D') + '      Tecnico Responsavel: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 30, ' ', 'D') + '    Setor: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('SETOR').asstring, 20, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------------------SERVICOS EXECUTADOS---------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'CODIGO-|-DESCRICAO DO SERVICO---------------------|-COMPLEMENTO------------------------------|---VALOR - R$-|-TECNICO--------------------');
    i := 1;
    frmos_auto.qros_servico.refresh;
    frmos_auto.qros_servico.First;
    while not frmos_auto.qros_servico.Eof do
    begin
      texto1 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codservico').asstring, 6, '0', 'E');
      texto2 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('servico').asstring, 40, ' ', 'D');
      texto3 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('complemento').asstring, 40, ' ', 'D');
      texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', frmos_auto.qros_servico.fieldbyname('valor').asFLOAT), 12, ' ', 'E');
      texto5 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codtecnico').asstring, 6, '0', 'E');
      texto6 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('tecnico').asstring, 20, ' ', 'D');
      writeln(arquivo, #15 + #27#72 + #20, texto1 + ' | ' + texto2 + ' | ' + texto3 + ' | ' + texto4 + ' | ' + texto5 + ' ' + TEXTO6);
      i := i + 1;
      frmos_auto.qros_servico.Next;
    end;
    while i < 30 do
    begin
      writeln(arquivo, #15 + #27#72 + #20, '       |                                          |                                          |              |                            ');
      I := I + 1;
    end;
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_SUBTOTAL').asFLOAT), 12, ' ', 'E');
    TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_DESCONTO').asFLOAT), 12, ' ', 'E');
    TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_TOTAL').asFLOAT), 12, ' ', 'E');
    writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DOS SERVICOS:   ' + TEXTO1 + '                DESCONTO S/ SERVICOS:   ' + TEXTO2 + '              TOTAL DOS SERVICOS:   ' + #15 + #27#71 + #20 + TEXTO3);
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------TOTALIZACAO DA ORDEM DE SERVICO-----------------------------------------------------------');
    TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SUBTOTAL').asFLOAT), 12, ' ', 'E');
    TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('DESCONTO').asFLOAT), 12, ' ', 'E');
    TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('ACRESCIMO').asFLOAT), 12, ' ', 'E');
    TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('TOTAL').asFLOAT), 12, ' ', 'E');

    writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DOS O.S.:   ' + TEXTO1 + '      DESCONTO:   ' + TEXTO2 + '    ACRESCIMO: ' + TEXTO3 + '        TOTAL DA O.S.:   ' + #18 + #27#71 + #20 + TEXTO4);
    if frmmodulo.cdsos.FieldByName('meio_crediario').asfloat <> 0 then
    begin
      Writeln(arquivo, #15 + #27#72 + #20, '-------------------FATURAMENTO-----------------------|');
      Writeln(arquivo, #15 + #27#72 + #20, 'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

      if frmOS_Auto.BCANCELAR.Caption = 'Fechar' then
      begin
        frmmodulo.qrcontasreceber.close;
        frmmodulo.qrcontasreceber.sql.clear;
        frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + 's'' order by codigo');
        frmmodulo.qrcontasreceber.open;
        frmmodulo.qrcontasreceber.First;
        i := 1;
        while not frmmodulo.qrcontasreceber.eof do
        begin


          writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(inttostr(i), 3, '0', 'E') + '  ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring, 10, ' ', 'D') + '   ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(formatfloat(mascara_valor, frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat), 10, ' ', 'E') + ' |');
          i := i + 1;
          frmmodulo.qrcontasreceber.next;
        end;



      end
      else
      begin
        frmos_auto.qros_contasreceber.First;
        while not frmos_auto.qros_contasreceber.eof do
        begin
          writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('prestacao').asstring, 3, '0', 'E') + '  ' +
            frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('vencimento').asstring, 10, ' ', 'D') + '   ' +
            frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(formatfloat(mascara_valor, frmos_auto.qros_contasreceber.fieldbyname('valor').asfloat), 10, ' ', 'E') + ' |');
          frmos_auto.qros_contasreceber.next;
        end;
      end;
    end
    else
    begin
      TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').asFLOAT), 12, ' ', 'E');
      TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAV').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEap').asFLOAT), 12, ' ', 'E');
      TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CARTAOCRED').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_Cartaodeb').asFLOAT), 12, ' ', 'E');
      writeln(arquivo, 'Dinheiro.....: ' + texto1);
      writeln(arquivo, 'Cheque.......: ' + texto2);
      writeln(arquivo, 'Cartao.......: ' + texto3);
    end;
    writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------------------------------------------Assinatura do Cliente----------------------');
    writeln(arquivo, #12);
    closefile(arquivo);


  end;  }
end;

procedure Tfrmos_impressao.TAberturaClick(Sender: TObject);
begin
   if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;

    qros.close;
    qros.sql.clear;
    qros.sql.add('select * from v_ordem_servico where ID_OS_ORDEMSERVICO = ''' + edit1.text + '''');
    qros.open;

    qrreceber.Close;
    qrreceber.Params.ParamByName('OS').AsString := edit1.text ;
    qrreceber.Open;


    qros_produto.Close;
    qros_produto.sql.clear;
    qros_produto.SQL.Add('select c.* ');
    qros_produto.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''P''');
    qros_produto.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_produto.Open;

    qrosprodutos_geral.Close;
    qrosprodutos_geral.sql.clear;
    qrosprodutos_geral.SQL.Add('select c.* ');
    qrosprodutos_geral.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA ');
    qrosprodutos_geral.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qrosprodutos_geral.Open;

    qros_servico.Close;
    qros_servico.sql.clear;
    qros_servico.SQL.Add('select c.* ');
    qros_servico.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''S'' ');
    qros_servico.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_servico.Open;
    DM.IBTransaction.CommitRetaining;

                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                 begin
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                  end;
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                 //   FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end;
                    end else

                    begin
                    fxos.LoadFromFile('rel\f000068.fr3');
                    //fxos.LoadFromFile('\Athenas\server\rel\relatorio.rav');
                    fxos.ShowReport;
                    end;


end;

procedure Tfrmos_impressao.TSolucaoClick(Sender: TObject);
begin
    if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
    qros.close;
    qros.sql.clear;
    qros.sql.add('select * from v_ordem_servico where ID_OS_ORDEMSERVICO = ''' +edit1.text  + '''');
    qros.open;

    qrreceber.Close;
    qrreceber.Params.ParamByName('OS').AsString := edit1.text ;
    qrreceber.Open;


    qros_produto.Close;
    qros_produto.sql.clear;
    qros_produto.SQL.Add('select c.* ');
    qros_produto.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''P'' ');
    qros_produto.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_produto.Open;


    qrtotalS.Close;
    qrtotalS.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qrtotalS.Open;

    QrytotaisP.Close;
    QrytotaisP.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    QrytotaisP.Open;

    qrosprodutos_geral.Close;
    qrosprodutos_geral.sql.clear;
    qrosprodutos_geral.SQL.Add('select c.* ');
    qrosprodutos_geral.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA ');
    qrosprodutos_geral.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qrosprodutos_geral.Open;

    qros_servico.Close;
    qros_servico.sql.clear;
    qros_servico.SQL.Add('select c.* ');
    qros_servico.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''S'' ');
    qros_servico.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_servico.Open;
    DM.IBTransaction.CommitRetaining;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                    begin
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end;
                      IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end;

                     end else
                    begin
                    fxos.LoadFromFile('rel\f000067.fr3');
                    //fxos.LoadFromFile('\Athenas\server\rel\relatorio.rav');
                    fxos.ShowReport;
                    end;

end;

procedure Tfrmos_impressao.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmos_impressao.TPA4Click(Sender: TObject);
begin
   { frmmodulo.qrcontasreceber.close;
    frmmodulo.qrcontasreceber.sql.clear;
    frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + FRMMODULO.cdsos.FIELDBYNAME('CODIGO').ASSTRING + 's''');
    frmmodulo.qrcontasreceber.open; }
    if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;

    qros.close;
    qros.sql.clear;
    qros.sql.add('select * from v_ordem_servico where ID_OS_ORDEMSERVICO = ''' +edit1.text  + '''');
    qros.open;

    qrreceber.Close;
    qrreceber.Params.ParamByName('OS').AsString := edit1.text ;
    qrreceber.Open;


    qros_produto.Close;
    qros_produto.sql.clear;
    qros_produto.SQL.Add('select c.* ');
    qros_produto.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''P'' ');
    qros_produto.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_produto.Open;

    qrosprodutos_geral.Close;
    qrosprodutos_geral.sql.clear;
    qrosprodutos_geral.SQL.Add('select c.* ');
    qrosprodutos_geral.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA ');
    qrosprodutos_geral.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qrosprodutos_geral.Open;

    qros_servico.Close;
    qros_servico.sql.clear;
    qros_servico.SQL.Add('select c.* ');
    qros_servico.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''S'' ');
    qros_servico.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_servico.Open;
    DM.IBTransaction.CommitRetaining;

    fxos.LoadFromFile('rel\f000066.fr3');
    //fxos.LoadFromFile('\Athenas\server\rel\relatorio.rav');
    fxos.ShowReport;
//  end;
 { if RAMO = 3 then
  begin
    fxos.LoadFromFile('\siace\rel\f000068.fr3');
    fxos.ShowReport;
  end;  }
end;

procedure Tfrmos_impressao.TPRazaoA4Click(Sender: TObject);
begin
  {frmmodulo.qrcontasreceber.close;
  frmmodulo.qrcontasreceber.sql.clear;
  frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + FRMMODULO.cdsos.FIELDBYNAME('CODIGO').ASSTRING + 's'' AND SITUACAO = 1');
  frmmodulo.qrcontasreceber.open;   }
     if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
    qros.close;
    qros.sql.clear;
    qros.sql.add('select * from v_ordem_servico where ID_OS_ORDEMSERVICO = ''' +edit1.text  + '''');
    qros.open;

    qrreceber.Close;
    qrreceber.Params.ParamByName('OS').AsString := edit1.text ;
    qrreceber.Open;


    qros_produto.Close;
    qros_produto.sql.clear;
    qros_produto.SQL.Add('select c.* ');
    qros_produto.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''P'' ');
    qros_produto.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_produto.Open;

    qrosprodutos_geral.Close;
    qrosprodutos_geral.sql.clear;
    qrosprodutos_geral.SQL.Add('select c.* ');
    qrosprodutos_geral.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA ');
    qrosprodutos_geral.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qrosprodutos_geral.Open;

    qros_servico.Close;
    qros_servico.sql.clear;
    qros_servico.SQL.Add('select c.* ');
    qros_servico.SQL.Add('from  os_produtos_servicos c where c.ID_OS_ORDEMSERVICO = :CODNOTA AND PROD_SERV = ''S'' ');
    qros_servico.Params.ParamByName('CODNOTA').AsString := edit1.text ;
    qros_servico.Open;
    DM.IBTransaction.CommitRetaining;

    fxos.LoadFromFile('rel\f000065.fr3');
    fxos.ShowReport;
end;

procedure Tfrmos_impressao.ContnuoOSAberta1Click(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: integer;
  nivel_comb: integer;
  nc: string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

 { if ramo = 3 then
  begin


    nivel_comb := frmmodulo.cdsos.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then nc := '|----|----|----|----|';
    if (nivel_comb > 0) and (nivel_comb < 6) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100) then nc := '|----|----|----|----X';





    assignfile(arquivo, impressora_venda);
    rewrite(arquivo);
    writeln(arquivo, #18 + #27#71 + #20, frmprincipal.texto_justifica(emitente_fantasia, 22, ' ', 'D') + #15 + #27#72 + #20' Fone: ' + frmprincipal.texto_justifica(emitente_telefone, 14, ' ', 'D') + '  O.S.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, '0', 'E') + '   Em.: ' + frmmodulo.cdsos.fieldbyname('data').asstring + '  Hr.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('HORA').asstring, 5, ' ', 'D') + ' Tecnico:' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 22, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
    writeln(arquivo, 'Cliente..: ' + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring, 6, ' ', 'E') + ' ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring, 40, ' ', 'D') + #15 + #27#72 + #20 + ' Endereco: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring, 34, ' ', 'D') + ' Bairro: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring, 6, ' ', 'D'));
    writeln(arquivo, 'Cidade: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring, 20, ' ', 'D') + '/' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('uf').asstring, 2, ' ', 'D') + ' Cep: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring, 9, ' ', 'D') + '  Fone: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring, 16, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring, 22, ' ', 'D') + ' RG/IE: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring, 25, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'Marca/Mode: '#15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('Marca').asstring, 120, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Ano/Modelo: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('modelo').asstring + '           Placa: ' + frmmodulo.cdsos.fieldbyname('SERIAL').asstring + '       Chassi: ' + frmmodulo.cdsos.fieldbyname('SERIAL').asstring, 120, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Combustiv.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('combustivel').asstring + '                                                          Nivel do Comustivel:   ' + NC, 120, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------SOLICITACOES / DEFEITOS / RECLAMACOES---------------------------------------------');
    WRITELN(ARQUIVO, #15 + #27#72 + #20, frmos_auto.edefeito.text);
    writeln(arquivo, #15 + #27#72 + #20, ' ');
    writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------PARCECER TECNICO / DEFEITOS DETECTADOS--------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'Data......:      /     /                     Tecnico Responsavel:                                     Setor:                             ');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, ' ');
    writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------------SERVICOS EXECUTADOS / A EXECUTAR--------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '  CODIGO  | DESCRICAO DO SERVICO                                                                  | TECNICO                              ');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, ' ');
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, ' ');
    writeln(arquivo, #15 + #27#72 + #20, 'Autorizo a realizacao dos servicos citados nesta Ordem,');
    writeln(arquivo, #15 + #27#72 + #20, ' ');
    writeln(arquivo, #15 + #27#72 + #20, 'Data: ' + #196 + #196 + #196 + #196 + '/' + #196 + #196 + #196 + #196 + '/' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + '    Assinatura: ' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196);

    writeln(arquivo, #12);
    closefile(arquivo);
  end;  }

end;

procedure Tfrmos_impressao.TPRazaoClick(Sender: TObject);
var data1, dat, ano, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  arquivo: textfile;
  TP: REAL;
  KM: BOOLEAN;
  sa, item, V: integer;
// variaveis de linhas
  e, f, g, h, i, j, l, m: char;
begin
{  km := true;
  e := #218; // canto superior esquerdo
  f := #179; // barra vertical
  g := #192; // canto inferior esquerdo
  h := #196; // barra horizontal
  i := #194; // T superior
  j := #193; // T inferior
  l := #191; // canto superior direito
  m := #217; // canto inferior direito

  // 195 |-    197 +  #180 -|

  V := EVIAS.intValue;
  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);
  while V <> 0 do
  begin
    writeln(arquivo, #18 + #27#71 + #20, frmprincipal.texto_justifica(emitente_fantasia, 22, ' ', 'D') + #15 + #27#72 + #20' Fone: ' + frmprincipal.texto_justifica(emitente_telefone, 14, ' ', 'D') + '  O.S.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, '0', 'E') + '   Em.: ' + frmmodulo.cdsos.fieldbyname('data').asstring + '  Hr.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('HORA').asstring, 5, ' ', 'D') + ' Tecnico:' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 22, ' ', 'D'));
    writeln(arquivo, h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h);
    writeln(arquivo, 'Cliente..: ' + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring, 6, ' ', 'E') + ' ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring, 40, ' ', 'D') + #15 + #27#72 + #20 + ' Endereco: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring, 34, ' ', 'D') + ' Bairro: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring, 6, ' ', 'D'));
    writeln(arquivo, 'Cidade: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring, 20, ' ', 'D') + '/' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('uf').asstring, 2, ' ', 'D') + ' Cep: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring, 9, ' ', 'D') + '  Fone: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring, 16, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring, 22, ' ', 'D') + ' RG/IE: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring, 25, ' ', 'D'));
    writeln(arquivo, 'Solicit.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('SOLICITANTE').asstring, 20, ' ', 'D') + '  Funcion: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('ATENDENTE').asstring, 20, ' ', 'D') + '  Obs.: ' + frmprincipal.texto_justifica(FRMOS.eobs.Text, 20, ' ', 'D'));

    writeln(arquivo, 'Aparelho: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('MARCA').asstring, 23, ' ', 'D') + '  Modelo: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('MODELO').asstring, 15, ' ', 'D') + ' Serial: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('SERIAL').asstring, 15, ' ', 'D') + '   Motivo: ' + frmprincipal.texto_justifica(FRMOS.edefeito.TEXT, 40, ' ', 'D') + '.');
    writeln(arquivo, 'Detectado: ' + frmprincipal.texto_justifica(FRMOS.EDETECTADO.Text, 80, ' ', 'D') + '         ' + 'Data/Previsao:' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_data').asstring, 10, ' ', 'D') + ' hora:' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_hora').asstring, 5, ' ', 'D'));
    writeln(arquivo, e + h + h + ' D E S C R I C A O   D O (S)  S E R V I C O (S) ' + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + 'VALOR-R$' + h + h + h + h + h + h + l);
    frmos.qros_servico.First;
    ITEM := 0;
    while not frmos.qros_servico.Eof do
    begin
      if frmos.qros_servico.fieldbyname('valor').asfloat <> 0 then texto := frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmos.qros_servico.fieldbyname('valor').asfloat), 16, ' ', 'E') else texto := '                ';
      WRITELN(arquivo, f + ' ' + frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('servico').asstring + ' ' + frmos.qros_servico.fieldbyname('complemento').asstring, 111, ' ', 'D') + ' ' + f + '   ' + texto + ' ' + f);
      frmos.qros_servico.Next;
      ITEM := ITEM + 1;
    end;
    while ITEM <> 13 do begin WRITELN(arquivo, f + ' ' + frmprincipal.texto_justifica(' ', 111, ' ', 'E') + ' ' + f + '   ' + frmprincipal.texto_justifica(' ', 16, ' ', 'E') + ' ' + f); ITEM := ITEM + 1; end;
    writeln(arquivo, g + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + m);
    writeln(arquivo, 'TOTAL SERVIC.R$: ' + frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat), 8, ' ', 'E') +
      '  TOTAL DESLOC.R$: ' + frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmmodulo.cdsos.fieldbyname('desloc_total').asfloat), 8, ' ', 'E') +
      '  TOT.DESP.TERC.R$: ' + frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmmodulo.cdsos.fieldbyname('terceiro_total').asfloat), 8, ' ', 'E') +
      '   DESC.S/SERV.(-).R$: ' + frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat), 8, ' ', 'E') +
      '  SUB-TOTAL.R$: ' + frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmmodulo.cdsos.fieldbyname('servico_subtotal').asfloat + frmmodulo.cdsos.fieldbyname('desloc_total').asfloat + frmmodulo.cdsos.fieldbyname('terceiro_total').asfloat - frmmodulo.cdsos.fieldbyname('servico_desconto').asfloat), 8, ' ', 'E'));
    writeln(arquivo, g + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + m);
    item := 0;
    frmmodulo.qrcontasreceber.Close;
    frmmodulo.qrcontasreceber.SQL.clear;
    frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + 's'' order by data_vencimento');
    frmmodulo.qrcontasreceber.open;
    if frmmodulo.qrcontasreceber.RecordCount > 0 then
    begin
      frmmodulo.qrcontasreceber.first;
      TP := 0;
      while not frmmodulo.qrcontasreceber.eof do
      begin
        if frmmodulo.qrcontasreceber.FieldByName('valor_atual').ASFLOAT <> 0 then TEXTO2 := frmprincipal.texto_justifica(formatfloat('###,###,##0.00', frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat), 9, ' ', 'E') else TEXTO2 := '         ';
        if KM then
        begin
          writeln(arquivo, f + ' ' + frmprincipal.texto_justifica(inttostr(item + 1), 2, '0', 'E') + '    ' + frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring, 10, ' ', 'D') + '        ' + texto2 + '  ' + f + '    KM INICIAL: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('km_inicial').asstring, 10, ' ', 'D') + '     KM FINAL: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('km_final').asstring, 10, ' ', 'D') + ' Veiculo: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('veiculo').asstring, 20, ' ', 'D'));
          KM := FALSE;
        end
        else
        begin
          writeln(arquivo, f + ' ' + frmprincipal.texto_justifica(inttostr(item + 1), 2, '0', 'E') + '    ' + frmprincipal.texto_justifica(frmmodulo.qrCONTASRECEBER.fieldbyname('DATA_VENCIMENTO').asstring, 10, ' ', 'D') + '        ' + texto2 + '  ' + f);
        end;
        item := item + 1;
        frmmodulo.qrcontasreceber.next;
      end;

    end;

    while item < 4 do
    begin
      item := item + 1;
      if KM then
      begin
        writeln(arquivo, f + ' ' + frmprincipal.texto_justifica(' ', 2, ' ', 'D') + '    ' + frmprincipal.texto_justifica(' ', 10, ' ', 'D') + '                   ' + f + '    KM INICIAL: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('km_inicial').asstring, 10, ' ', 'D') + '     KM FINAL: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('km_final').asstring, 10, ' ', 'D') + ' Veiculo: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('veiculo').asstring, 20, ' ', 'D'));
        KM := FALSE;
      end
      else
      begin
        writeln(arquivo, f + ' ' + frmprincipal.texto_justifica(' ', 2, ' ', 'D') + '    ' + frmprincipal.texto_justifica(' ', 10, ' ', 'D') + '                   ' + f);
      end;
    end;
    writeln(arquivo, g + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + h + m + '         ----------Assinatura do Cliente---------   ---------- Assinatura da Empresa---------');
    Writeln(arquivo, 'Serv.executado em: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('conclusao_data').asstring, 10, ' ', 'D') + '              Obs.: Apos 90 dias  do orcamento, nao havendo procura, o mesmo passara a pertencer a loja.');
    WRITELN(ARQUIVO, '');
    WRITELN(ARQUIVO, '');
    V := V - 1;
  end;
  WRITELN(arquivo, #12);
  closefile(arquivo);

end;

procedure Tfrmos_impressao.FormulrioContnuoCarta1Click(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;

  formapgto, v1, v2: string;
  y: integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := EVIAS.intValue;


  while VIAS <> 0 do
  begin


    writeln(arquivo, #27#80 + #18 + #27#71 + #20, frmprincipal.Texto_Justifica(emitente_fantasia, 20, ' ', 'D') + #15 + #27#72 + #20 + '  ' + frmprincipal.Texto_Justifica('Telefone: ' + emitente_telefone, 25, ' ', 'D') + '                                                         Data..: ' + frmmodulo.cdsos.fieldbyname('data').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, frmprincipal.Texto_Justifica(emitente_endereco + ' - ' + emitente_cidade + ' - CEP ' + emitente_cep, 105, ' ', 'D') + '              Hora..:  ' + timetostr(time));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'O R D E M   D E  S E R V I C O   No. ' + #27#80 + #18 + #27#71 + #20, frmprincipal.Texto_Justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, ' ', 'D') + #15 + #27#72 + #20 + '                    ' + frmprincipal.Texto_Justifica('Atendente: ' + frmmodulo.cdsos.fieldbyname('atendente').asstring, 46, ' ', 'D') + '        ' + frmprincipal.Texto_Justifica('Tipo..: ' + frmmodulo.cdsos.fieldbyname('tipo').asstring, 15, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cliente...: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, 6, '0', 'E') + ' ' + frmprincipal.texto_justifica(FRMMODULO.cdsos.FIELDBYNAME('CLIENTE').ASSTRING, 32, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Endereco..: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring + ' ' +
      frmmodulo.qrcliente.fieldbyname('bairro').asstring + ' - ' +
      frmmodulo.qrcliente.fieldbyname('cidade').asstring + '/' +
      frmmodulo.qrcliente.fieldbyname('uf').asstring +
      '  CEP ' + frmmodulo.qrcliente.fieldbyname('cep').asstring, 115, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Telefones.: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring + ' / ' +
      frmmodulo.qrcliente.fieldbyname('celular').asstring + ' / ' +
      frmmodulo.qrcliente.fieldbyname('telefone2').asstring + '        CPF/CNPJ: ' +
      frmmodulo.qrcliente.fieldbyname('cpf').asstring + '      RG/IE: ' +
      frmmodulo.qrcliente.fieldbyname('rg').asstring, 115, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Solicitan.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('solicitante').asstring, 115, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Equipamento - Marca: ' + #27#80 + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('marca').asstring, 20, ' ', 'D') + #27#80 + #15 + #27#72 + #20 + ' Modelo: ' + #27#80 + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('modelo').asstring, 30, ' ', 'D') + #27#80 + #15 + #27#72 + #20 + ' Numero de Serie: ' + #27#80 + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('serial').asstring, 30, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Defeitos/Reclamacoes: ' + frmos.edefeito.text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Tipo de Atendimento.: ' + frmmodulo.cdsos.fieldbyname('atendimento').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Observacoes/Inform..: ' + frmos.eobs.text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Detectado: ' + frmos.edetectado.text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Data/Hora: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('DETECTADO_DATA').asstring + ' / ' + frmmodulo.cdsos.fieldbyname('DETECTADO_HORA').asstring, 25, ' ', 'D') + '  Tecnico: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 25, ' ', 'D') + '  Setor: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('setor').asstring, 30, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Intervencoes: ' + frmos.eintervencao.text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'CODIGO | DESCRICAO DO SERVICO                     | COMPLEMENTO                              |   VALOR - R$ | TECNICO                    ');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');



    i := 1;
    frmos.qros_servico.refresh;
    frmos.qros_servico.First;
    while not frmos.qros_servico.Eof do
    begin
      texto1 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codservico').asstring, 6, '0', 'E');
      texto2 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('servico').asstring, 40, ' ', 'D');
      texto3 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('complemento').asstring, 40, ' ', 'D');
      texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', frmos.qros_servico.fieldbyname('valor').asFLOAT), 12, ' ', 'E');
      texto5 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codtecnico').asstring, 6, '0', 'E');
      texto6 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('tecnico').asstring, 20, ' ', 'D');
      writeln(arquivo, #15 + #27#72 + #20, texto1 + ' | ' + texto2 + ' | ' + texto3 + ' | ' + texto4 + ' | ' + texto5 + ' ' + TEXTO6);
      i := i + 1;
      frmos.qros_servico.Next;
    end;
    while i < 25 do
    begin
      writeln(arquivo, #15 + #27#72 + #20, '       |                                          |                                          |              |                            ');
      I := I + 1;
    end;
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
    TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_SUBTOTAL').asFLOAT), 12, ' ', 'E');
    TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_DESCONTO').asFLOAT), 12, ' ', 'E');
    TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_TOTAL').asFLOAT), 12, ' ', 'E');
    writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DOS SERVICOS:   ' + TEXTO1 + '                DESCONTO S/ SERVICOS:   ' + TEXTO2 + '              TOTAL DOS SERVICOS:   ' + #15 + #27#71 + #20 + TEXTO3);
    writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------TOTALIZACAO DA ORDEM DE SERVICO-----------------------------------------------------------');
    TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SUBTOTAL').asFLOAT), 12, ' ', 'E');
    TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('DESCONTO').asFLOAT), 12, ' ', 'E');
    TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('ACRESCIMO').asFLOAT), 12, ' ', 'E');
    TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('TOTAL').asFLOAT), 12, ' ', 'E');

    writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DOS O.S.:   ' + TEXTO1 + '      DESCONTO:   ' + TEXTO2 + '    ACRESCIMO: ' + TEXTO3 + '      TOTAL DA O.S.:   ' + #27#77 + #15 + #27#71 + #14 + TEXTO4);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');


    if frmmodulo.cdsos.FieldByName('meio_crediario').asfloat <> 0 then
    begin
      Writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-------------------FATURAMENTO-----------------------|');
      Writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

      if frmos.BCANCELAR.Caption = 'Fechar' then
      begin
        frmmodulo.qrcontasreceber.close;
        frmmodulo.qrcontasreceber.sql.clear;
        frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + 's'' order by codigo');
        frmmodulo.qrcontasreceber.open;
        frmmodulo.qrcontasreceber.First;
        i := 1;
        while not frmmodulo.qrcontasreceber.eof do
        begin


          writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(inttostr(i), 3, '0', 'E') + '  ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring, 10, ' ', 'D') + '   ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(formatfloat(mascara_valor, frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat), 10, ' ', 'E') + ' |');
          i := i + 1;
          frmmodulo.qrcontasreceber.next;
        end;



      end
      else
      begin
        frmos.qros_contasreceber.First;
        while not frmos.qros_contasreceber.eof do
        begin
          writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('prestacao').asstring, 3, '0', 'E') + '  ' +
            frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('vencimento').asstring, 10, ' ', 'D') + '   ' +
            frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(formatfloat(mascara_valor, frmos.qros_contasreceber.fieldbyname('valor').asfloat), 10, ' ', 'E') + ' |');
          frmos.qros_contasreceber.next;
        end;
      end;
    end
    else
    begin
      TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').asFLOAT), 12, ' ', 'E');
      TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAV').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEap').asFLOAT), 12, ' ', 'E');
      TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CARTAOCRED').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_Cartaodeb').asFLOAT), 12, ' ', 'E');
      writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Dinheiro.....: ' + texto1);
      writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cheque.......: ' + texto2);
      writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cartao.......: ' + texto3);

    end;
    writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------------------------------------------Assinatura do Cliente----------------------');
    WRITELN(ARQUIVO, #12);
    vias := vias - 1;
  end;

  closefile(arquivo);   }

end;

procedure Tfrmos_impressao.RazoOSAberta1Click(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas, v: integer;
  nivel_comb: integer;
  nc: string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

 { if ramo = 3 then
  begin


    nivel_comb := frmmodulo.cdsos.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then nc := '|----|----|----|----|';
    if (nivel_comb > 0) and (nivel_comb < 6) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100) then nc := '|----|----|----|----X';


    V := EVIAS.intValue;
    assignfile(arquivo, impressora_venda);
    rewrite(arquivo);
    while V <> 0 do
    begin


      writeln(arquivo, #18 + #27#71 + #20, frmprincipal.texto_justifica(emitente_fantasia, 22, ' ', 'D') + #15 + #27#72 + #20' Fone: ' + frmprincipal.texto_justifica(emitente_telefone, 14, ' ', 'D') + '  O.S.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, '0', 'E') + '   Em.: ' + frmmodulo.cdsos.fieldbyname('data').asstring + '  Hr.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('HORA').asstring, 5, ' ', 'D') + ' Tecnico: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 21, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
      writeln(arquivo, 'Cliente: ' + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring, 6, ' ', 'E') + ' ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring, 40, ' ', 'D') + #15 + #27#72 + #20 + ' Endereco: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring, 34, ' ', 'D') + ' Bairro: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring, 6, ' ', 'D'));
      writeln(arquivo, 'Cidade.: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring, 20, ' ', 'D') + '/' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('uf').asstring, 2, ' ', 'D') + ' Cep: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring, 9, ' ', 'D') + '  Fone: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring, 16, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring, 22, ' ', 'D') + ' RG/IE: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring, 25, ' ', 'D'));
      writeln(arquivo, 'Solicit: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('SOLICITANTE').asstring, 20, ' ', 'D') + '  Funcion: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('ATENDENTE').asstring, 20, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, 'Marca/Mode: '#15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('Marca').asstring, 20, ' ', 'D') + #15 + #27#72 + #20, 'Ano/Mod: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('modelo').asstring + ' Placa: ' + frmmodulo.cdsos.fieldbyname('SERIAL').asstring + ' Chassi: ' + frmmodulo.cdsos.fieldbyname('CHASSI').asstring, 45, ' ', 'D') + #15 + #27#72 + #20, 'Combust.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('combustivel').asstring + ' Nivel: ' + NC, 40, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------SOLICITACOES / DEFEITOS / RECLAMACOES---------------------------------------------');
      WRITELN(ARQUIVO, #15 + #27#72 + #20, frmos_auto.edefeito.text);
      writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------PARCECER TECNICO / DEFEITOS DETECTADOS--------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, 'Data......: ' + #196 + #196 + #196 + #196 + '/' + #196 + #196 + #196 + #196 + '/' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + '        Tecnico Responsavel:' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + ' Setor:' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196);
      writeln(arquivo, #15 + #27#72 + #20, '-------------------------------------------------------------SERVICOS EXECUTADOS / A EXECUTAR--------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '  CODIGO  | DESCRICAO DO SERVICO                                                                  | TECNICO                              ');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '----------|---------------------------------------------------------------------------------------|--------------------------------------');
      writeln(arquivo, '');
      writeln(arquivo, #15 + #27#72 + #20, 'Autorizo a realizacao dos servicos citados nesta Ordem.     Data: ' + #196 + #196 + #196 + #196 + '/' + #196 + #196 + #196 + #196 + '/' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + '    Assinatura: ' + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196 + #196);
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '');
      v := v - 1;
    end;

    writeln(arquivo, #12);
    closefile(arquivo);
  end;     }
end;

procedure Tfrmos_impressao.RazoOSFechada1Click(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas, v: integer;
  nivel_comb, i: integer;
  nc: string;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

 { if ramo = 3 then
  begin


    nivel_comb := frmmodulo.cdsos.fieldbyname('combustivel_nivel').asinteger;

    if nivel_comb = 0 then nc := '|----|----|----|----|';
    if (nivel_comb > 0) and (nivel_comb < 6) then nc := '|X---|----|----|----|';
    if (nivel_comb > 5) and (nivel_comb < 11) then nc := '|-X--|----|----|----|';
    if (nivel_comb > 10) and (nivel_comb < 16) then nc := '|--X-|----|----|----|';
    if (nivel_comb > 15) and (nivel_comb < 21) then nc := '|---X|----|----|----|';
    if (nivel_comb > 20) and (nivel_comb < 26) then nc := '|----X----|----|----|';

    if (nivel_comb > 25) and (nivel_comb < 31) then nc := '|----|X---|----|----|';
    if (nivel_comb > 30) and (nivel_comb < 36) then nc := '|----|-X--|----|----|';
    if (nivel_comb > 35) and (nivel_comb < 41) then nc := '|----|--X-|----|----|';
    if (nivel_comb > 40) and (nivel_comb < 46) then nc := '|----|---X|----|----|';
    if (nivel_comb > 45) and (nivel_comb < 51) then nc := '|----|----X----|----|';

    if (nivel_comb > 50) and (nivel_comb < 56) then nc := '|----|----|X---|----|';
    if (nivel_comb > 55) and (nivel_comb < 61) then nc := '|----|----|-X--|----|';
    if (nivel_comb > 60) and (nivel_comb < 66) then nc := '|----|----|--X-|----|';
    if (nivel_comb > 65) and (nivel_comb < 71) then nc := '|----|----|---X|----|';
    if (nivel_comb > 70) and (nivel_comb < 76) then nc := '|----|----|----X----|';

    if (nivel_comb > 75) and (nivel_comb < 81) then nc := '|----|----|----|X---|';
    if (nivel_comb > 80) and (nivel_comb < 86) then nc := '|----|----|----|-X--|';
    if (nivel_comb > 85) and (nivel_comb < 91) then nc := '|----|----|----|--X-|';
    if (nivel_comb > 90) and (nivel_comb < 96) then nc := '|----|----|----|---X|';
    if (nivel_comb = 100) then nc := '|----|----|----|----X';



    V := EVIAS.intValue;
    assignfile(arquivo, impressora_venda);
    rewrite(arquivo);
    while V <> 0 do
    begin

      writeln(arquivo, #18 + #27#71 + #20, frmprincipal.texto_justifica(emitente_fantasia, 22, ' ', 'D') + #15 + #27#72 + #20' Fone: ' + frmprincipal.texto_justifica(emitente_telefone, 14, ' ', 'D') + '  O.S.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, '0', 'E') + '   Em.: ' + frmmodulo.cdsos.fieldbyname('data').asstring + '  Hr.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('HORA').asstring, 5, ' ', 'D') + ' Tecnico: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 21, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
      writeln(arquivo, 'Cliente.: ' + #15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('codigo').asstring, 6, ' ', 'E') + ' ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring, 40, ' ', 'D') + #15 + #27#72 + #20 + 'Solicit: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('SOLICITANTE').asstring, 20, ' ', 'D') + '  Atend: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('ATENDENTE').asstring, 20, ' ', 'D'));
      writeln(arquivo, 'Endereco: ' + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring + ' ' + frmmodulo.qrcliente.fieldbyname('bairro').asstring + ' - ' + frmmodulo.qrcliente.fieldbyname('cidade').asstring + '/' + frmmodulo.qrcliente.fieldbyname('uf').asstring + '  Fone: ' + frmmodulo.qrcliente.fieldbyname('telefone1').asstring + '  CPF/CNPJ: ' + frmmodulo.qrcliente.fieldbyname('cpf').asstring + ' RG/IE: ' + frmmodulo.qrcliente.fieldbyname('rg').asstring, 115, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------DADOS DE IDENTIFICACAO DO VEICULO----------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, 'Marca/Mode: '#15 + #27#71 + #20 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('Marca').asstring, 20, ' ', 'D') + #15 + #27#72 + #20, 'Ano/Mod: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('modelo').asstring + ' Placa: ' + frmmodulo.cdsos.fieldbyname('SERIAL').asstring + ' Chassi: ' + frmmodulo.cdsos.fieldbyname('CHASSI').asstring, 45, ' ', 'D') + #15 + #27#72 + #20, 'Combust.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('combustivel').asstring + ' Nivel: ' + NC, 40, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, 'SOLICITACOES / DEFEITOS /  RECLAMACOES: ' + #15 + #27#72 + #20, frmos_auto.edefeito.text);
      writeln(arquivo, #15 + #27#72 + #20, 'PARCECER TECNICO / DEFEITOS DETECTADOS: ' + #15 + #27#72 + #20, frmos_AUTO.edetectado.text);
      writeln(arquivo, #15 + #27#72 + #20, 'Data......: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('DETECTADO_DATA').asstring, 10, ' ', 'D') + '      Tecnico Responsavel: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 30, ' ', 'D') + '    Setor: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('SETOR').asstring, 20, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20, 'CODIGO-|-DESCRICAO DO SERVICO---------------------|-COMPLEMENTO------------------------------|---VALOR - R$-|-TECNICO--------------------');
      i := 1;
      frmos_auto.qros_servico.refresh;
      frmos_auto.qros_servico.First;
      while not frmos_auto.qros_servico.Eof do
      begin
        texto1 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codservico').asstring, 6, '0', 'E');
        texto2 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('servico').asstring, 40, ' ', 'D');
        texto3 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('complemento').asstring, 40, ' ', 'D');
        texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', frmos_auto.qros_servico.fieldbyname('valor').asFLOAT), 12, ' ', 'E');
        texto5 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('codtecnico').asstring, 6, '0', 'E');
        texto6 := frmprincipal.texto_justifica(frmos_auto.qros_servico.fieldbyname('tecnico').asstring, 20, ' ', 'D');
        writeln(arquivo, #15 + #27#72 + #20, texto1 + ' | ' + texto2 + ' | ' + texto3 + ' | ' + texto4 + ' | ' + texto5 + ' ' + TEXTO6);
        i := i + 1;
        frmos_auto.qros_servico.Next;
      end;
      while i < 12 do
      begin
        writeln(arquivo, #15 + #27#72 + #20, '       |                                          |                                          |              |                            ');
        I := I + 1;
      end;
      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');
      TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_SUBTOTAL').asFLOAT), 12, ' ', 'E');
      TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_DESCONTO').asFLOAT), 12, ' ', 'E');
      TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_TOTAL').asFLOAT), 12, ' ', 'E');
      writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DOS SERVICOS:   ' + TEXTO1 + '                DESCONTO S/ SERVICOS:   ' + TEXTO2 + '              TOTAL DOS SERVICOS:   ' + #15 + #27#71 + #20 + TEXTO3);

      writeln(arquivo, #15 + #27#72 + #20, '-----------------------------------------------------------------------------------------------------------------------------------------');


      TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SUBTOTAL').asFLOAT), 12, ' ', 'E');
      TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('DESCONTO').asFLOAT), 12, ' ', 'E');
      TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('ACRESCIMO').asFLOAT), 12, ' ', 'E');
      TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('TOTAL').asFLOAT), 12, ' ', 'E');

      writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DA O.S.:    ' + TEXTO1 + '      DESCONTO:   ' + TEXTO2 + '    ACRESCIMO: ' + TEXTO3 + '        TOTAL DA O.S.:   ' + #18 + #27#71 + #20 + TEXTO4);
      if frmmodulo.cdsos.FieldByName('meio_crediario').asfloat <> 0 then
      begin
        Writeln(arquivo, #15 + #27#72 + #20, '-------------------FATURAMENTO-----------------------|');
        Writeln(arquivo, #15 + #27#72 + #20, 'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

        if frmOS_Auto.BCANCELAR.Caption = 'Fechar' then
        begin
          frmmodulo.qrcontasreceber.close;
          frmmodulo.qrcontasreceber.sql.clear;
          frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + 's'' order by codigo');
          frmmodulo.qrcontasreceber.open;
          frmmodulo.qrcontasreceber.First;
          i := 1;
          while not frmmodulo.qrcontasreceber.eof do
          begin


            writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(inttostr(i), 3, '0', 'E') + '  ' +
              frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring, 10, ' ', 'D') + '   ' +
              frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
              frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
              frmprincipal.texto_justifica(formatfloat(mascara_valor, frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat), 10, ' ', 'E') + ' |');
            i := i + 1;
            frmmodulo.qrcontasreceber.next;
          end;



        end
        else
        begin
          frmos_auto.qros_contasreceber.First;
          while not frmos_auto.qros_contasreceber.eof do
          begin
            writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('prestacao').asstring, 3, '0', 'E') + '  ' +
              frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('vencimento').asstring, 10, ' ', 'D') + '   ' +
              frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
              frmprincipal.texto_justifica(frmos_auto.qros_contasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
              frmprincipal.texto_justifica(formatfloat(mascara_valor, frmos_auto.qros_contasreceber.fieldbyname('valor').asfloat), 10, ' ', 'E') + ' |');
            frmos_auto.qros_contasreceber.next;
          end;
        end;
      end
      else
      begin
        TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').asFLOAT), 12, ' ', 'E');
        TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAV').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEap').asFLOAT), 12, ' ', 'E');
        TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CARTAOCRED').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_Cartaodeb').asFLOAT), 12, ' ', 'E');
        writeln(arquivo, #15 + #27#72 + #20, 'Dinheiro.....: ' + texto1);
        writeln(arquivo, #15 + #27#72 + #20, 'Cheque.......: ' + texto2);
        writeln(arquivo, #15 + #27#72 + #20, 'Cartao.......: ' + texto3);
      end;
      writeln(arquivo, #15 + #27#72 + #20, '----------------------------------------------------------------------------------------------Assinatura do Cliente----------------------');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '');
      v := v - 1;
    end;
    writeln(arquivo, #12);


    closefile(arquivo);
  end;      }
end;

procedure Tfrmos_impressao.FormulrioContnuoCartaPersonalizado1Click(
  Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;

  formapgto, v1, v2: string;
  y: integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



  {assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := EVIAS.intValue;


  while VIAS <> 0 do
  begin
    writeln(arquivo, #27#80 + #18 + #27#71 + #20, frmprincipal.Texto_Justifica(emitente_fantasia, 50, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, frmprincipal.Texto_Justifica('TELEFONE: ' + emitente_telefone, 25, ' ', 'D') + '            DATA..: ' + frmmodulo.cdsos.fieldbyname('data').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, frmprincipal.Texto_Justifica(emitente_endereco, 40, ' ', 'D'));
    Writeln(arquivo, #27#80 + #15 + #27#72 + #20, emitente_cidade + ' - CEP ' + emitente_cep + '          HORA..:  ' + timetostr(time));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '      O R D E M   D E  S E R V I C O   No. ' + #27#80 + #18 + #27#71 + #20, frmprincipal.Texto_Justifica(frmmodulo.cdsos.fieldbyname('codigo').asstring, 6, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, frmprincipal.Texto_Justifica('      Atendente: ' + frmmodulo.cdsos.fieldbyname('atendente').asstring, 25, ' ', 'D') + '  ' + frmprincipal.Texto_Justifica('Tipo..: ' + frmmodulo.cdsos.fieldbyname('tipo').asstring, 15, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'CLIENTE...: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(FRMMODULO.cdsos.FIELDBYNAME('CODCLIENTE').ASSTRING, 6, '0', 'E') + ' ' + frmprincipal.texto_justifica(FRMMODULO.cdsos.FIELDBYNAME('CLIENTE').ASSTRING, 32, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'ENDERECO..: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('endereco').asstring, 40, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'BAIRRO....: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('bairro').asstring, 25, ' ', 'D') + ' CEP.: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cep').asstring, 10, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'CIDADE....: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cidade').asstring, 30, ' ', 'D') + ' UF..: ' + #27#77 + #15 + #27#71 + #14 + frmmodulo.qrcliente.fieldbyname('uf').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'TELEFONES.: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring + ' / ' +
      frmmodulo.qrcliente.fieldbyname('celular').asstring + ' / ' +
      frmmodulo.qrcliente.fieldbyname('telefone2').asstring, 40, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'CPF/CNPJ..: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring, 25, ' ', 'D') + ' RG/IE: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring, 10, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'SOLICITANTE.: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('solicitante').asstring, 40, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-------------------------LAUDO--------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Marca.....: ' + #27#77 + #15 + #27#71 + #14 + FRMOS.combomarca.Text + #27#77 + #15 + #27#71 + #14 + ' Modelo.: ' + #27#77 + #15 + #27#71 + #14 + FRMOS.DBEdit2.Text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Nr.Serie..: ' + #27#77 + #15 + #27#71 + #14 + frmos.DBEdit3.Text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Data Previssao..: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('DETECTADO_DATA').asstring, 10, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Defeito Aprese..: ' + #27#77 + #15 + #27#71 + #14 + frmmodulo.cdsos.fieldbyname('defeito').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Defeito Detect..: ' + #27#77 + #15 + #27#71 + #14 + frmmodulo.cdsos.fieldbyname('detectado').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Observacoes.....: ' + #27#77 + #15 + #27#71 + #14 + frmmodulo.cdsos.fieldbyname('Obs').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Tipo de Atendimento.: ' + frmmodulo.cdsos.fieldbyname('atendimento').asstring);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Observacoes/Inform..: ' + frmos.eobs.text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Tecnico: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('detectado_tecnico').asstring, 25, ' ', 'D') + '  Setor: ' + frmprincipal.texto_justifica(frmmodulo.cdsos.fieldbyname('setor').asstring, 30, ' ', 'D'));
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '*********************SERVICOS***************************');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'CODIGO | DESCRICAO DO SERVICO            |   VALOR - R$|');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    //servicos
    i := 1;
    frmos.qros_servico.refresh;
    frmos.qros_servico.First;
    while not frmos.qros_servico.Eof do
    begin
      texto1 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('codservico').asstring, 6, '0', 'E');
      texto2 := frmprincipal.texto_justifica(frmos.qros_servico.fieldbyname('servico').asstring, 28, ' ', 'D');
      texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', frmos.qros_servico.fieldbyname('valor').asFLOAT), 12, ' ', 'E');
      writeln(arquivo, #15 + #27#72 + #20, texto1 + ' | ' + texto2 + '   | ' + texto4);
      i := i + 1;
      frmos.qros_servico.Next;
    end;
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '*********************PRODUTOS**************************');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'QTDE   | DESCRICAO DO PRODUTO            |   VALOR - R$|');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    //produtos
    i := 1;
    frmos.qros_produtos.refresh;
    frmos.qros_produtos.First;
    while not frmos.qros_produtos.Eof do
    begin
      texto1 := frmprincipal.texto_justifica(frmos.qros_produtos.fieldbyname('codproduto').asstring, 6, '0', 'E');
      texto2 := frmprincipal.texto_justifica(frmos.qros_produtos.fieldbyname('produto').asstring, 31, ' ', 'D');
      texto3 := frmprincipal.texto_justifica(frmos.qros_produtos.fieldbyname('QTDE').asstring, 3, '0', 'D');
      texto4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', frmos.qros_produtos.fieldbyname('TOTAL').asFLOAT), 12, ' ', 'E');
      writeln(arquivo, #15 + #27#72 + #20, texto3 + ' | ' + texto2 + '   | ' + texto4);
      i := i + 1;
      frmos.qros_produtos.Next;
    end;
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Intervencoes(Observacoes do Tecnico): ' + frmos.eintervencao.text);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');
    TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_SUBTOTAL').asFLOAT), 12, ' ', 'E');
    TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_DESCONTO').asFLOAT), 8, ' ', 'E');
    TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('SERVICO_TOTAL').asFLOAT), 8, ' ', 'E');
    TEXTO4 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('ACRESCIMO').asFLOAT), 12, ' ', 'E');
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '');
    writeln(arquivo, #15 + #27#72 + #20, '-------------TOTALIZACAO DA ORDEM DE SERVICO------------');
    writeln(arquivo, #15 + #27#72 + #20, 'SUBTOTAL DA O.S.: ' + TEXTO1 + '      DESCONTO: ' + TEXTO2 + '  ACRESCIMO: ' + TEXTO4 + '      TOTAL DA O.S.:   ' + #27#77 + #15 + #27#71 + #14 + TEXTO3);
    writeln(arquivo, #27#80 + #15 + #27#72 + #20, '--------------------------------------------------------');


    if frmmodulo.cdsos.FieldByName('meio_crediario').asfloat <> 0 then
    begin
      Writeln(arquivo, #27#80 + #15 + #27#72 + #20, '-------------------FATURAMENTO-----------------------|');
      Writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'No.--Vencimento---Documento-----Tipo--------Valor-R$-|');

      if frmos.BCANCELAR.Caption = 'Fechar' then
      begin
        frmmodulo.qrcontasreceber.close;
        frmmodulo.qrcontasreceber.sql.clear;
        frmmodulo.qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' + frmmodulo.cdsos.fieldbyname('codigo').asstring + 's'' order by codigo');
        frmmodulo.qrcontasreceber.open;
        frmmodulo.qrcontasreceber.First;
        i := 1;
        while not frmmodulo.qrcontasreceber.eof do
        begin


          writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(inttostr(i), 3, '0', 'E') + '  ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring, 10, ' ', 'D') + '   ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(formatfloat(mascara_valor, frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat), 10, ' ', 'E') + ' |');
          i := i + 1;
          frmmodulo.qrcontasreceber.next;
        end;



      end
      else
      begin
        frmos.qros_contasreceber.First;
        while not frmos.qros_contasreceber.eof do
        begin
          writeln(arquivo, #15 + #27#72 + #20, frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('prestacao').asstring, 3, '0', 'E') + '  ' +
            frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('vencimento').asstring, 10, ' ', 'D') + '   ' +
            frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('documento').asstring, 13, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(frmos.qros_contasreceber.fieldbyname('tipo').asstring, 9, ' ', 'D') + ' ' +
            frmprincipal.texto_justifica(formatfloat(mascara_valor, frmos.qros_contasreceber.fieldbyname('valor').asfloat), 10, ' ', 'E') + ' |');
          frmos.qros_contasreceber.next;
        end;
      end;
    end
    else
    begin
      TEXTO1 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_DINHEIRO').asFLOAT), 12, ' ', 'E');
      TEXTO2 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEAV').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_CHEQUEap').asFLOAT), 12, ' ', 'E');
      TEXTO3 := frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', FRMMODULO.cdsos.fieldbyname('MEIO_CARTAOCRED').asFLOAT + FRMMODULO.cdsos.fieldbyname('MEIO_Cartaodeb').asFLOAT), 12, ' ', 'E');
      writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Dinheiro.....: ' + texto1);
      writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cheque.......: ' + texto2);
      writeln(arquivo, #27#80 + #15 + #27#72 + #20, 'Cartao.......: ' + texto3);

    end;
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    writeln(arquivo, #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '                 Assinatura do Tecnico');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    writeln(arquivo, #15 + #27#72 + #20, '--------------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, '                 Assinatura do Cliente');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, '');
    Writeln(ARQUIVO, #27 + #109); // 27 = 1Bh, 109 = 6Dh
    vias := vias - 1;
  end;

  closefile(arquivo);  }

end;

end.
