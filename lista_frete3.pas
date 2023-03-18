unit lista_frete3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, frxDBSet, frxDesgn, Menus, aDvGlowButton, frxClass, frxRich, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit;

type
  Tformlista_acertos = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fsfrete: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Panel1: TPanel;
    lvendedor: TLabel;
    lfornecedor: TLabel;
    combo_veiculo: TComboBox;
    combo_transportador: TComboBox;
    qrfrete: TFDQuery;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    combo_periodo: TComboBox;
    Label9: TLabel;
    Label5: TLabel;
    combo_situacao: TComboBox;
    QAbastecimentos: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    qrfreteCOD_EMPRESA: TIntegerField;
    qrfreteCOD_LACTO: TIntegerField;
    qrfreteDATA_LACTO: TDateField;
    qrfreteN_MINUTA: TIntegerField;
    qrfreteCOD_FRETEIRO: TIntegerField;
    qrfreteQTDE_ANIMAIS: TIntegerField;
    qrfreteCOD_VEICULO: TIntegerField;
    qrfreteORIGEM_FRETE: TStringField;
    qrfreteDESTINO_FRETE: TStringField;
    qrfreteGERA_IMPOSTO: TStringField;
    qrfreteUSER: TStringField;
    qrfreteCOD_PAGADOR: TIntegerField;
    qrfreteFILTRO: TIntegerField;
    qrfreteDATA_BAIXA: TDateField;
    qrfreteCOD_CAIXA: TIntegerField;
    qrfreteSITUACAO: TIntegerField;
    qrfreteCOD_CHEQUE: TIntegerField;
    qrfreteNOME_VEICULO: TStringField;
    qrfretePLACA: TStringField;
    qrfreteNOME_FRETEIRO: TStringField;
    QVales: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateField2: TDateField;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    IntegerField5: TIntegerField;
    DateField3: TDateField;
    frxDBDataset2: TfrxDBDataset;
    qCreditos: TFDQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField7: TStringField;
    DateField4: TDateField;
    TimeField2: TTimeField;
    IntegerField8: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateField5: TDateField;
    IntegerField9: TIntegerField;
    StringField12: TStringField;
    IntegerField10: TIntegerField;
    DateField6: TDateField;
    frxDBDataset3: TfrxDBDataset;
    Qpedagios: TFDQuery;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField13: TStringField;
    DateField7: TDateField;
    TimeField3: TTimeField;
    IntegerField13: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateField8: TDateField;
    IntegerField14: TIntegerField;
    StringField18: TStringField;
    IntegerField15: TIntegerField;
    DateField9: TDateField;
    frxDBDataset4: TfrxDBDataset;
    QAbastecimentosCOD_EMPRESA: TIntegerField;
    QAbastecimentosCODIGO: TIntegerField;
    QAbastecimentosCUPOM: TStringField;
    QAbastecimentosDATA: TDateField;
    QAbastecimentosHORA: TTimeField;
    QAbastecimentosCOD_CLIENTE: TIntegerField;
    QAbastecimentosDEBITOCREDITO: TStringField;
    QAbastecimentosVALIDO: TStringField;
    QAbastecimentosNOME_CLIENTE: TStringField;
    QAbastecimentosUSERCAD: TStringField;
    QAbastecimentosDATACAD: TDateField;
    QAbastecimentosCOD_VENDA: TIntegerField;
    QAbastecimentosTIPO: TStringField;
    QAbastecimentosSITUACAO: TIntegerField;
    QAbastecimentosDATA_PAGTO: TDateField;
    QPagto: TFDQuery;
    frxDBDataset5: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    FXNOTA: TfrxReport;
    QPagtoDATA_BAIXA: TDateField;
    QAbastecimentosHISTORICO: TStringField;
    QValesHISTORICO: TStringField;
    qCreditosHISTORICO: TStringField;
    QpedagiosHISTORICO: TStringField;
    qrfreteVALOR_FRETE: TBCDField;
    qrfreteVALOR_PAGO: TBCDField;
    qrfreteIMPOSTO: TBCDField;
    QAbastecimentosTOTAL_VENDA: TBCDField;
    QAbastecimentosTOTAL_PAGO: TBCDField;
    QAbastecimentosVALOR_UTILIZADO: TBCDField;
    QAbastecimentosVALOR_VALETROCO: TBCDField;
    QAbastecimentosSALDO_ATUAL: TBCDField;
    QValesTOTAL_VENDA: TBCDField;
    QValesTOTAL_PAGO: TBCDField;
    QValesVALOR_UTILIZADO: TBCDField;
    QValesVALOR_VALETROCO: TBCDField;
    QValesSALDO_ATUAL: TBCDField;
    qCreditosTOTAL_VENDA: TBCDField;
    qCreditosTOTAL_PAGO: TBCDField;
    qCreditosVALOR_UTILIZADO: TBCDField;
    qCreditosVALOR_VALETROCO: TBCDField;
    qCreditosSALDO_ATUAL: TBCDField;
    QpedagiosTOTAL_VENDA: TBCDField;
    QpedagiosTOTAL_PAGO: TBCDField;
    QpedagiosVALOR_UTILIZADO: TBCDField;
    QpedagiosVALOR_VALETROCO: TBCDField;
    QpedagiosSALDO_ATUAL: TBCDField;
    QPagtoVALOR_PAGO: TBCDField;
    qrfreteDISTANCIA: TBCDField;
    qrfreteLIQUIDO: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
    procedure combo_veiculoChange(Sender: TObject);
    procedure combo_transportadorChange(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlista_acertos: Tformlista_acertos;
  freteiro, veic : string;
  
implementation

uses  principal,ModulodeDados, xloc_veiculo, ConsClientes;

{$R *.dfm}

procedure Tformlista_acertos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tformlista_acertos.FormShow(Sender: TObject);
begin
  combo_relatorio.ItemIndex := 0;
  combo_veiculo.ItemIndex := 0;
  combo_transportador.itemindex := 0;
  combo_situacao.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := formprincipal.UltimoDiaMes(date);

  DM.SDS_Clientes.Active:= False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.sql.add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
  DM.SDS_Clientes.Active:= True;
end;

procedure Tformlista_acertos.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tformlista_acertos.bimprimirClick(Sender: TObject);
var
  veiculo, transportador, periodo, SITUACAO, ordem: string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := 'PERíODO: ' + dateedit1.TEXT + ' A ' + dateedit2.TEXT;
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';


  if combo_veiculo.Text = 'TODOS' then
  veiculo := ''
  else
  begin
  veiculo := ' and frete.COD_VEICULO = ''' + veic + '''';
  end;

  if combo_TRANSPORTADOR.Text = 'TODOS' then
  TRANSPORTADOR := ''
  else
  begin
  TRANSPORTADOR := ' and frete.COD_FRETEIRO = ''' + freteiro + '''';
  end;
 // if combopagador.Text = 'TODOS' then pagador := '' else begin PAGADOR := ' and frete.COD_PAGADOR = ''' + copy(comboPAGADOR.text, 1, 6) + ''''; dm.qrrelatorio.fieldbyname('LINHA3').asstring := 'PAGADOR: ' + comboPAGADOR.TEXT; end;

 if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and frete.situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 2 then situacao := ' and frete.situacao = 2 ';
    dm.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: ' + COMBO_SITUACAO.TEXT;
  end;

   if combo_periodo.ItemIndex = 0 then
  begin
    periodo := ' and frete.data_lacto between :datai and :dataf ';
    ordem := ' frete.data_lacto'; //, CP.codigo';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DO CADASTRO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.ItemIndex = 1 then
  begin
    periodo := ' and frete.DATA_BAIXA between :datai and :dataf ';
    ordem := ' frete.DATA_BAIXA'; //,CP.codigo';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE PAGAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  qrfrete.close;
  qrfrete.sql.clear;
  qrfrete.sql.add('select');
  qrfrete.sql.add('frete.*,');
  qrfrete.sql.add('veiculo.nome nome_veiculo,');
  qrfrete.sql.add('veiculo.placa,');
  qrfrete.sql.add('cliente.nome_rs nome_freteiro');
  qrfrete.sql.add('from');
  qrfrete.sql.add('fretes frete,');
  qrfrete.sql.add('veiculo veiculo,');
  qrfrete.sql.add('clientes cliente');
  qrfrete.sql.add('where');
  qrfrete.sql.add('frete.COD_FRETEIRO = cliente.codigo');
  qrfrete.sql.add('and');
  qrfrete.sql.add('frete.COD_VEICULO = veiculo.codigo');
  qrfrete.sql.add(''+ veiculo + transportador + PERIODO + SITUACAO + '');
  qrfrete.sql.add(' order by '+ ORDEM);
  qrfrete.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrfrete.Params.parambyname('dataf').asdatetime := dateedit2.date;
  qrfrete.open;

    if combo_periodo.ItemIndex = 0 then
  begin
    periodo := ' and data between :datai and :dataf ';
    ordem := ' data'; //, CP.codigo';
  //  dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DO CADASTRO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.ItemIndex = 1 then
  begin
    periodo := ' and DATA_PAGTO between :datai and :dataf ';
    ordem := ' DATA_PAGTO'; //,CP.codigo';
  //dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE PAGAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 2 then situacao := ' and situacao = 2 ';
  end;

  if combo_TRANSPORTADOR.Text = 'TODOS' then
  TRANSPORTADOR := ''
  else
  begin
  TRANSPORTADOR := ' and COD_CLIENTE = ''' + freteiro + '''';
  end;

  if combo_veiculo.Text = 'TODOS' then
  veiculo := ''
  else
  begin
  veiculo := ' and COD_VEICULO = ''' + veic + '''';
  end;
  QAbastecimentos.close;
  QAbastecimentos.sql.clear;
  QAbastecimentos.sql.add('select * FROM valetroco');
  QAbastecimentos.sql.add('where tipo = ''C'' ');
  QAbastecimentos.sql.add(''+ TRANSPORTADOR + SITUACAO +  PERIODO + veiculo +'');
  QAbastecimentos.sql.add(' order by '+ ORDEM);
  QAbastecimentos.params.ParamByName('datai').asdatetime := dateedit1.date;
  QAbastecimentos.Params.parambyname('dataf').asdatetime := dateedit2.date;
  QAbastecimentos.open;

  QVales.close;
  QVales.sql.clear;
  QVales.sql.add('select * FROM valetroco');
  QVales.sql.add('where tipo = ''V'' ');
  QVales.sql.add(''+TRANSPORTADOR + SITUACAO +  PERIODO + veiculo + '');
  QVales.sql.add(' order by '+ ORDEM);
  QVales.params.ParamByName('datai').asdatetime := dateedit1.date;
  QVales.Params.parambyname('dataf').asdatetime := dateedit2.date;
  QVales.open;

  qCreditos.close;
  qCreditos.sql.clear;
  qCreditos.sql.add('select * FROM valetroco');
  qCreditos.sql.add('where tipo = ''A'' ');
  qCreditos.sql.add(''+TRANSPORTADOR + SITUACAO +  PERIODO + veiculo + '');
  qCreditos.sql.add(' order by '+ ORDEM);
  qCreditos.params.ParamByName('datai').asdatetime := dateedit1.date;
  qCreditos.Params.parambyname('dataf').asdatetime := dateedit2.date;
  qCreditos.open;

  Qpedagios.close;
  Qpedagios.sql.clear;
  Qpedagios.sql.add('select * FROM valetroco');
  Qpedagios.sql.add('where tipo = ''P'' ');
  Qpedagios.sql.add(''+TRANSPORTADOR  + SITUACAO +  PERIODO + veiculo +'');
  Qpedagios.sql.add(' order by '+ ORDEM);
  Qpedagios.params.ParamByName('datai').asdatetime := dateedit1.date;
  Qpedagios.Params.parambyname('dataf').asdatetime := dateedit2.date;
  Qpedagios.open;

   if combo_veiculo.Text = 'TODOS' then
  veiculo := ''
  else
  begin
  veiculo := ' and COD_VEICULO = ''' + veic + '''';
  end;
  if combo_TRANSPORTADOR.Text = 'TODOS' then
  TRANSPORTADOR := ''
  else
  begin
  TRANSPORTADOR := ' and COD_FRETEIRO = ''' + freteiro + '''';
  end;

  if (combo_SITUACAO.ItemIndex = 0) or (combo_SITUACAO.ItemIndex = 2) then
  BEGIN
  qPagto.close;
  QPagto.sql.clear;
  QPagto.sql.add('select sum(VALOR_SAIDA) AS VALOR_PAGO, data AS DATA_BAIXA ');
  QPagto.sql.add(' FROM  movimento_diario where fretes = 1 ');
  QPagto.sql.add('' +TRANSPORTADOR + veiculo + '') ;
  QPagto.sql.add(' and data between :datai and :dataf');
  QPagto.sql.add(' group bY data');
  QPagto.params.ParamByName('datai').asdatetime := dateedit1.date;
  QPagto.Params.parambyname('dataf').asdatetime := dateedit2.date;
  QPagto.open;
  FXNOTA.LoadFromFile('\siace\rel\f000190_3.fr3');
  end;


  IF(combo_SITUACAO.ItemIndex = 1) then
  begin
  FXNOTA.LoadFromFile('\siace\rel\f000190_4.fr3');
  end;

  FXNOTA.ShowReport;
 // frmPrincipal.log('Abriu Relatorio CTe / Frtes - ' +frmPrincipal.RemoveAcentos(combo_relatorio.Text), 0);
end;


procedure Tformlista_acertos.BitBtn1Click(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Alterar Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
 Exit;
End;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\SIACE\rel\f000190.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('\SICE\rel\f000190_2.fr3');
    FXNOTA.DesignReport;
  end;


end;

procedure Tformlista_acertos.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tformlista_acertos.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

procedure Tformlista_acertos.combo_veiculoChange(Sender: TObject);
begin
  if combo_veiculo.Text = 'SELECIONAR' then
  begin

    frmxloc_veiculo := tfrmxloc_veiculo.create(self);
    frmxloc_veiculo.showmodal;
    veic := RESULTADO_PESQUISA1;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_veiculo.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2 + ' - ' + RESULTADO_pesquisa3);
      combo_veiculo.ItemIndex := combo_veiculo.Items.Count - 1;
    end
    else
      combo_veiculo.ItemIndex := 0;

  end;
end;

procedure Tformlista_acertos.combo_transportadorChange(Sender: TObject);
begin
  if combo_transportador.Text = 'SELECIONAR' then
  begin


    formconsclientes := tformconsclientes.create(self);
    formconsclientes.showmodal;
    resultado_pesquisa1 := dm.sds_clientescodigo.text;
    resultado_pesquisa2 := dm.sds_clientesnome_rs.text;
    freteiro := RESULTADO_PESQUISA1;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_transportador.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_transportador.ItemIndex := combo_transportador.Items.Count - 1;
    end
    else
      combo_transportador.ItemIndex := 0;

  end;
end;

procedure Tformlista_acertos.combo_situacaoChange(Sender: TObject);
begin
if combo_situacao.ItemIndex = 2 then
     begin
       combo_periodo.ItemIndex := 1;
     end ELSE
     begin
       combo_periodo.ItemIndex := 0;
     end;
end;

end.
