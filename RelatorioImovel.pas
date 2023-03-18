unit RelatorioImovel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxDesgn, Grids, DBGrids, RxToolEdit;

type
  TFrmRelatorioImovel = class(TForm)
    cbxPeriodo: TComboBox;
    Label1: TLabel;
    edtInicio: TDateEdit;
    Label2: TLabel;
    edtFim: TDateEdit;
    Label3: TLabel;
    cbxSituacao: TComboBox;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    spbImprimirBoleto: TSpeedButton;
    spbCancelar: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxDBImoveis: TfrxDBDataset;
    fximovies: TfrxReport;
    qrimoveis: TFDQuery;
    Bevel4: TBevel;
    Label5: TLabel;
    cbxRelatorio: TComboBox;
    procedure spbCancelarClick(Sender: TObject);
    procedure spbImprimirBoletoClick(Sender: TObject);
    procedure cbxRelatorioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioImovel: TFrmRelatorioImovel;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TFrmRelatorioImovel.spbCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorioImovel.spbImprimirBoletoClick(Sender: TObject);
var
  Situacao,Periodo,ordem: string;
begin
  try
    dm.qrrelatorio.open;
    dm.qrrelatorio.edit;

    dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
    dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
    dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
    dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
    dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
    dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
    dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

    if cbxSituacao.Text = 'TODOS' then
      SITUACAO := ''
    else
    begin
      if cbxSituacao.ITEMINDEX = 1 then situacao := 'AND SITUACAO = ''ALUGAR''';
      if cbxSituacao.ITEMINDEX = 2 then situacao := 'AND SITUACAO = ''ALUGADO''';
      if cbxSituacao.ITEMINDEX = 3 then situacao := 'AND SITUACAO = ''VENDER''';
      if cbxSituacao.ITEMINDEX = 4 then situacao := 'AND SITUACAO = ''VENDIDO''';
      if cbxSituacao.ITEMINDEX = 5 then situacao := 'AND SITUACAO = ''EM CONSTRUCAO''';
      dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'SITUAÇÃO: ' + cbxSituacao.TEXT;
    end;

    if cbxPeriodo.text = 'DATA DE CADASTRO' then
    begin
      periodo := ' DATACAD between :datai and :dataf ';
      ordem := 'DATACAD'; //, CP.codigo';
      dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DO CADASTRAMENTO: ' +
      edtInicio.Text + ' A ' + edtFim.TEXT;
    end;

    if cbxPeriodo.text = 'DATA DE ALTERAÇÃO' then
    begin
      periodo := ' DATAULTALTERACAO between :datai and :dataf  ';
      ordem := 'DATAULTALTERACAO'; //, CP.codigo';
      dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA ALTERAÇÃO: ' +
      edtInicio.Text + ' A ' + edtFim.TEXT;
    end;

    qrimoveis.close;
    qrimoveis.sql.clear;
    if cbxRelatorio.ItemIndex = 0 then
    begin
      qrimoveis.sql.add('SELECT * FROM V_PRODUTOS_IMOVEL WHERE '+Periodo+Situacao+' ORDER BY ' + ordem);
      fximovies.LoadFromFile('\siace\rel\imoveis.fr3');
    end
    else
    if cbxRelatorio.ItemIndex = 1 then
    begin
      qrimoveis.sql.add('SELECT * FROM VIEW_IMOVEL_ALUGUEL WHERE '+Periodo+' ORDER BY ' + ordem);
      fximovies.LoadFromFile('\siace\rel\imoveis_c.fr3');
    end
    else
    if cbxRelatorio.ItemIndex = 2 then
    begin
      qrimoveis.sql.add('SELECT * FROM VIEW_IMOVEL_VENDA WHERE '+Periodo+' ORDER BY ' + ordem);
      fximovies.LoadFromFile('\siace\rel\imoveis_c.fr3');
    end;
    qrimoveis.Params.ParamByName('datai').asdatetime := edtInicio.date;
    qrimoveis.Params.ParamByName('dataf').asdatetime := edtFim.date;
    qrimoveis.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE IMÓVEIS';
    fximovies.ShowReport;
  except
    Application.MessageBox('Erro ao tentar gerar o Relatório, Verifique se algum campo encontra-se vazio!',
    'Erro do sistema',MB_ICONERROR);
  end;
end;

procedure TFrmRelatorioImovel.cbxRelatorioChange(Sender: TObject);
begin
  if (cbxRelatorio.ItemIndex = 1) or (cbxRelatorio.ItemIndex = 2) then
    cbxSituacao.Enabled:= False
  else
    cbxSituacao.Enabled:= True;
end;

end.
