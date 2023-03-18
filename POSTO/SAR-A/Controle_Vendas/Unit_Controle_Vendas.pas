unit Unit_Controle_Vendas;
{PUBDIST}

//TODO: colocar campo de unidade de venda na listagem

interface

uses
  IWAppForm, IWApplication, IWTypes, jpeg, IWHTMLControls, Graphics,
  IWExtCtrls, Classes, Controls, IWControl, IWCompLabel, IWCompButton,
  IWCompEdit, DB, IBCustomDataSet, IBQuery, IWDBStdCtrls, IWGrids,
  IWDBGrids, Forms, IWContainer, IWRegion,
  SysUtils, IWClientSideDatasetBase, IWClientSideDatasetDBLink,
  IWCompDynamicChart;

type
  TVendasListFrm = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel5: TIWLabel;
    IWHRule1: TIWHRule;
    IWImage2: TIWImage;
    IWHRule3: TIWHRule;
    IWLink2: TIWLink;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    IWEdit1: TIWEdit;
    IWEdit2: TIWEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    QryTotais: TIBQuery;
    DtsQryTotais: TDataSource;
    IWLabel12: TIWLabel;
    IWRegion1: TIWRegion;
    IWLabel8: TIWLabel;
    IWDBLabel1: TIWDBLabel;
    IWLabel10: TIWLabel;
    QryPorProduto: TIBQuery;
    DtsQryPorProduto: TDataSource;
    IWDBGrid1: TIWDBGrid;
    IWLabel9: TIWLabel;
    QryTotaisVALOR: TIBBCDField;
    IWImage4: TIWImage;
    QryPorProdutoPRODUTO: TIBStringField;
    QryPorProdutoPRC_VENDA: TIBBCDField;
    QryPorProdutoQUANTIDADE: TIBBCDField;
    QryPorProdutoVALOR: TIBBCDField;
    QryPorProdutoCOD_PRODUTOS: TIntegerField;
    QryPorProdutoOPERACOES: TIntegerField;
    procedure IWButton2Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController, DatamoduleUnit, IWForm;

procedure TVendasListFrm.IWButton2Click(Sender: TObject);
begin
iwedit1.Text := datetostr(now);
iwedit2.Text := datetostr(now);

iwregion1.visible := false;
iwlabel12.Visible := false;
iwlabel2.Visible := true;
end;

procedure TVendasListFrm.IWLink2Click(Sender: TObject);
begin
 self.hide;
 self.free;
end;

procedure TVendasListFrm.IWAppFormCreate(Sender: TObject);
begin
 iwedit1.Text := datetostr(now);
 iwedit2.Text := datetostr(now);

end;

procedure TVendasListFrm.IWButton1Click(Sender: TObject);
var
 data_ini, data_fim: TDatetime;
begin
 //SQL de Totais
 //select count(COD_BICOENC) OPERACOES, sum(DINHEIRO) DINHEIRO, sum(LITROS) LITROS
 //from BICOENC where DATAHORA between :DATA_INI and :DATA_FIM

 //SQL por Produto
 //select ID_PRODUTOS CODIGO, PRODUTOS_DESC PRODUTO, count(ID_PRODUTOS) OPERACOES, PRECO, sum(LITROS) VOLUME, sum(DINHEIRO) VALOR from BICOENC
 //where DATAHORA between :DATA_INI and :DATA_FIM
 //group by ID_PRODUTOS, PRODUTOS_DESC, PRECO

 //SQL por Frentista
 //select COD_FRENTISTA CODIGO, count(ID_PRODUTOS) OPERACOES, sum(LITROS) VOLUME, sum(DINHEIRO) VALOR
 //from BICOENC where DATAHORA between :DATA_INI and :DATA_FIM
 //group by COD_FRENTISTA



 try
  data_ini := strtodate(iwedit1.Text)
 except
  WebApplication.ShowMessage('Data Inicial Inválida');
  exit;
 end;

 try
  data_fim := strtodate(iwedit2.Text)
 except
  WebApplication.ShowMessage('Data Final Inválida');
  exit;
 end;

 if not (data_fim >= data_ini) then
  begin
   WebApplication.ShowMessage('Data Final deve ser Maior que Data Inicial');
   exit;
  end;

   //Listagem Por Produto
   with QryPorProduto do
    begin
     close;
     unprepare;
     ParamByName('DATA_INI').AsDate := strtodate(iwedit1.Text);
     ParamByName('DATA_FIM').AsDate := strtodate(iwedit2.Text);
     Prepare;
     Open;
    end;
 //Listagem dos Valores Totais
 with QryTotais do
  begin
   close;
   unprepare;
   ParamByName('DATA_INI').AsDate := strtodate(iwedit1.Text);
   ParamByName('DATA_FIM').AsDate := strtodate(iwedit2.Text);
   Prepare;
   Open;
  end;
  IWLabel2.Visible := False;
  IWRegion1.Visible := True;
  IWLabel12.Visible := False;
  end;

end.
