unit lista_frete2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, frxClass,  frxDBSet, frxDesgn, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGlowButton, RxToolEdit;

type
  Tformlista_frete = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
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
    qrfreteNOME_PAGADOR: TStringField;
    qrfreteNOME_VEICULO: TStringField;
    qrfretePLACA: TStringField;
    qrfreteNOME_FRETEIRO: TStringField;
    Label4: TLabel;
    ComboPagador: TComboBox;
    qrfreteDISTANCIA: TBCDField;
    qrfreteVALOR_FRETE: TBCDField;
    qrfreteVALOR_PAGO: TBCDField;
    qrfreteIMPOSTO: TBCDField;
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
    procedure ComboPagadorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlista_frete: Tformlista_frete;

implementation

uses  principal,ModulodeDados, xloc_veiculo, ConsClientes;

{$R *.dfm}

procedure Tformlista_frete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tformlista_frete.FormShow(Sender: TObject);
begin
  combo_relatorio.ItemIndex := 0;
  combo_veiculo.ItemIndex := 0;
  combo_transportador.itemindex := 0;
  combopAgador.itemindex := 0;
  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := formprincipal.UltimoDiaMes(date);

  DM.SDS_Clientes.Active:= False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
  DM.SDS_Clientes.Active:= True;
end;

procedure Tformlista_frete.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tformlista_frete.bimprimirClick(Sender: TObject);
var
  veiculo, transportador, pagador: string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := 'PERíODO: ' + dateedit1.TEXT + ' A ' + dateedit2.TEXT;
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';


  if combo_veiculo.Text = 'TODOS' then veiculo := '' else begin veiculo := ' and frete.COD_VEICULO = ''' + copy(combo_veiculo.text, 1, 6) + ''''; dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'VEÍCULO: ' + combo_veiculo.TEXT; end;
  if combo_TRANSPORTADOR.Text = 'TODOS' then TRANSPORTADOR := '' else begin TRANSPORTADOR := ' and frete.COD_FRETEIRO = ''' + copy(combo_TRANSPORTADOR.text, 1, 6) + ''''; dm.qrrelatorio.fieldbyname('LINHA3').asstring := 'TRANSPORTADOR: ' + combo_TRANSPORTADOR.TEXT; end;
  if combopagador.Text = 'TODOS' then pagador := '' else begin PAGADOR := ' and frete.COD_PAGADOR = ''' + copy(comboPAGADOR.text, 1, 6) + ''''; dm.qrrelatorio.fieldbyname('LINHA3').asstring := 'PAGADOR: ' + comboPAGADOR.TEXT; end;


  qrfrete.close;
  qrfrete.sql.clear;
  qrfrete.sql.add('select');
  qrfrete.sql.add('frete.*,');
  qrfrete.sql.add('transp.nome_rs nome_pagador,');
  qrfrete.sql.add('veiculo.nome nome_veiculo,');
  qrfrete.sql.add('veiculo.placa,');
  qrfrete.sql.add('cliente.nome_rs nome_freteiro');
  qrfrete.sql.add('from');
  qrfrete.sql.add('fretes frete,');
  qrfrete.sql.add('clientes transp,');
  qrfrete.sql.add('veiculo veiculo,');
  qrfrete.sql.add('clientes cliente');
  qrfrete.sql.add('where');
  qrfrete.sql.add('frete.COD_PAGADOR = transp.codigo');
  qrfrete.sql.add('and');
  qrfrete.sql.add('frete.COD_FRETEIRO = cliente.codigo');
  qrfrete.sql.add('and');
  qrfrete.sql.add('frete.COD_VEICULO = veiculo.codigo');
  qrfrete.sql.add(veiculo + transportador + pagador);
  qrfrete.sql.add('and frete.data_lacto between :datai and :dataf');
  qrfrete.sql.add('order by');
  qrfrete.sql.add('frete.data_lacto');
  qrfrete.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrfrete.Params.parambyname('dataf').asdatetime := dateedit2.date;
  qrfrete.open;

  if combo_relatorio.ItemIndex = 0 then
  FXNOTA.LoadFromFile('\siace\rel\f000190.fr3');
  if combo_relatorio.ItemIndex = 1 then
  FXNOTA.LoadFromFile('\siace\rel\f000190_2.fr3');
  if combo_relatorio.ItemIndex = 2 then
  FXNOTA.LoadFromFile('\siace\rel\f000190.fr3');

  FXNOTA.ShowReport;
 // frmPrincipal.log('Abriu Relatorio CTe / Frtes - ' +frmPrincipal.RemoveAcentos(combo_relatorio.Text), 0);
end;

procedure Tformlista_frete.BitBtn1Click(Sender: TObject);
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

procedure Tformlista_frete.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tformlista_frete.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

procedure Tformlista_frete.combo_veiculoChange(Sender: TObject);
begin
  if combo_veiculo.Text = 'SELECIONAR' then
  begin

    frmxloc_veiculo := tfrmxloc_veiculo.create(self);
    frmxloc_veiculo.showmodal;


    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_veiculo.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2 + ' - ' + RESULTADO_pesquisa3);
      combo_veiculo.ItemIndex := combo_veiculo.Items.Count - 1;
    end
    else
      combo_veiculo.ItemIndex := 0;

  end;
end;

procedure Tformlista_frete.combo_transportadorChange(Sender: TObject);
begin
  if combo_transportador.Text = 'SELECIONAR' then
  begin

    formconsclientes := tformconsclientes.create(self);
    formconsclientes.showmodal;
    resultado_pesquisa1 := dm.sds_clientescodigo.text;
    resultado_pesquisa2 := dm.sds_clientesnome_rs.text;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_transportador.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_transportador.ItemIndex := combo_transportador.Items.Count - 1;
    end
    else
      combo_transportador.ItemIndex := 0;

  end;
end;

procedure Tformlista_frete.ComboPagadorChange(Sender: TObject);
begin
 if combopagador.Text = 'SELECIONAR' then
  begin

    formconsclientes := tformconsclientes.create(self);
    formconsclientes.showmodal;
    resultado_pesquisa1 := dm.sds_clientescodigo.text;
    resultado_pesquisa2 := dm.sds_clientesnome_rs.text;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combopagador.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combopagador.ItemIndex := combo_transportador.Items.Count - 1;
    end
    else
      combopagador.ItemIndex := 0;

  end;
end;

end.
