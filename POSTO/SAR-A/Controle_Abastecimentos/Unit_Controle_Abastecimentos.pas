unit Unit_Controle_Abastecimentos;
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
  TAbastecimentosListFrm = class(TIWAppForm)
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
    QryTotaisDINHEIRO: TIBBCDField;
    QryTotaisLITROS: TIBBCDField;
    IWLabel10: TIWLabel;
    IWLabel11: TIWLabel;
    IWDBLabel2: TIWDBLabel;
    IWDBLabel3: TIWDBLabel;
    IWLabel13: TIWLabel;
    QryPorProduto: TIBQuery;
    DtsQryPorProduto: TDataSource;
    IWImage1: TIWImage;
    QryPorProdutoCODIGO: TIntegerField;
    QryPorProdutoPRODUTO: TIBStringField;
    QryPorProdutoPRECO: TIBBCDField;
    QryPorProdutoOPERACOES: TIntegerField;
    QryPorProdutoVALOR: TIBBCDField;
    QryPorFrentista: TIBQuery;
    DtsQryPorFrentista: TDataSource;
    QryPorFrentistaOPERACOES: TIntegerField;
    QryPorFrentistaVALOR: TIBBCDField;
    IWDBGrid1: TIWDBGrid;
    IWLabel9: TIWLabel;
    IWRadioGroup1: TIWRadioGroup;
    QryPorProdutoVOLUME: TIBBCDField;
    QryPorFrentistaVOLUME: TIBBCDField;
    IWDBGrid2: TIWDBGrid;
    QryTotaisOPERACOES: TIntegerField;
    QryPorFrentistaNOME: TIBStringField;
    IWDBGrid3: TIWDBGrid;
    QryPorBomba: TIBQuery;
    DtsQryPorBomba: TDataSource;
    QryPorBombaOPERACOES: TIntegerField;
    QryPorBombaPRECO: TIBBCDField;
    QryPorBombaVOLUME: TIBBCDField;
    QryPorBombaVALOR: TIBBCDField;
    QryPorBombaID_BOMBA: TIntegerField;
    QryPorBombaPRODUTO: TIBStringField;
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

procedure TAbastecimentosListFrm.IWButton2Click(Sender: TObject);
begin
iwedit1.Text := datetostr(now);
iwedit2.Text := datetostr(now);

iwregion1.visible := false;

iwlabel12.Visible := false;
iwlabel2.Visible := true;
end;

procedure TAbastecimentosListFrm.IWLink2Click(Sender: TObject);
begin
 self.hide;
 self.free;
end;

procedure TAbastecimentosListFrm.IWAppFormCreate(Sender: TObject);
begin
 iwedit1.Text := datetostr(now);
 iwedit2.Text := datetostr(now);

end;

procedure TAbastecimentosListFrm.IWButton1Click(Sender: TObject);
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

 QryPorProduto.close;
 QryPorProduto.unprepare;

 QryPorFrentista.close;
 QryPorFrentista.unprepare;

 QryPorBomba.close;
 QryPorBomba.unprepare;

 if iwradiogroup1.ItemIndex = 0 then
  begin
   //Listagem Por Produto
   with QryPorProduto do
    begin
     ParamByName('DATA_INI').AsDate := strtodate(iwedit1.Text);
     ParamByName('DATA_FIM').AsDate := strtodate(iwedit2.Text);
     Prepare;
     Open;
    end;

   iwlabel9.Caption := 'por Produto:';
   iwdbgrid3.visible := false;
   iwdbgrid2.visible := false;
   iwdbgrid1.visible := true;
  end
 else if iwradiogroup1.ItemIndex = 1 then
  begin
   //Listagem Por Frentista
   with QryPorFrentista do
    begin
     ParamByName('DATA_INI').AsDate := strtodate(iwedit1.Text);
     ParamByName('DATA_FIM').AsDate := strtodate(iwedit2.Text);
     Prepare;
     Open;
    end;

   iwlabel9.Caption := 'por Frentista:';
   iwdbgrid3.visible := false;
   iwdbgrid2.visible := true;
   iwdbgrid1.visible := false;
  end
 else if iwradiogroup1.ItemIndex = 2 then
  begin
   //Listagem Por Bomba
   with QryPorBomba do
    begin
     ParamByName('DATA_INI').AsDate := strtodate(iwedit1.Text);
     ParamByName('DATA_FIM').AsDate := strtodate(iwedit2.Text);
     Prepare;
     Open;
    end;

   iwlabel9.Caption := 'por Bomba:';
   iwdbgrid3.visible := True;
   iwdbgrid2.visible := false;
   iwdbgrid1.visible := false;
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

   if QryTotais.fieldbyname('OPERACOES').asinteger > 0 then
    begin
     iwregion1.Visible := true;

     iwlabel2.visible  := false;
     iwlabel12.Visible := false;
    end
   else
    begin
     iwlabel12.Visible := true;
     iwlabel2.visible  := true;

     iwregion1.Visible := False;
    end;
  end;

end;

end.
