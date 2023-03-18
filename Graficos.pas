unit Graficos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  Buttons, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, RxToolEdit, sLabel;

type
  TFormGraficos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    myLabel3d1: TsLabelFX;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    qry_data: TSQLQuery;
    qry_dataDATA_PEDIDO: TDateField;
    qry_dataSOMADEVALOR_TOTAL: TFMTBCDField;
    dts_data: TDataSource;
    QRY_MES: TSQLQuery;
    DTS_MES: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    QRY_MESMES: TSmallintField;
    QRY_MESANO: TSmallintField;
    QRY_MESTOTAL: TFMTBCDField;
    Panel3: TPanel;
    Label8: TLabel;
    Qry_produtos: TSQLQuery;
    DTS_PRODUTOS: TDataSource;
    Qry_produtosTOTAL: TFMTBCDField;
    Qry_produtosQUANT_TOTAL: TFMTBCDField;
    Qry_produtosDATA_PEDIDO: TDateField;
    Qry_produtosDESCRICAO: TStringField;
    QRY_MESMES_ANO: TStringField;
    QRY_MESMES1: TStringField;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    Label9: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    inicio, final : string;
    ano1, ANO2 :string;
  end;

var
  FormGraficos: TFormGraficos;

implementation

uses Principal, Grafico_vendas, graficomes, Grafico_produtos,
  graficoquant;

{$R *.dfm}

procedure TFormGraficos.BitBtn1Click(Sender: TObject);
begin

    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

    If DateEdit2.Date < DateEdit1.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit2.Date := DateEdit1.Date;
    end  Else
    begin
    qry_data.close;
    qry_data.SQL.Clear;
    qry_data.SQL.add('select * from G_VENDAS_DATA where SOMADEVALOR_TOTAL >0'+'');
    qry_data.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_data.SQL.add('ORDER BY DATA_PEDIDO ASC');
    qry_data.Active := True;

    FormGraficoVendas := TFormGraficoVendas.Create(self);
    FormGraficoVendas.ShowModal;
  //  FormGraficoVendas.DBChart1.PreviousPage;
    FormGraficoVendas.DBChart1.RefreshData;
    //ChartPreview(Self,FormGraficoVendas.DBChart1);
     end;
end;


procedure TFormGraficos.BitBtn3Click(Sender: TObject);
begin
    //inicio:=datetostr(DATE);
    //final:=datetostr(DATE);

    inicio:=Edit1.Text;
    final :=Edit3.TexT;

    ANO1 := edit2.Text;
    ANO2 := Edit4.TexT;

    {If DateEdit6.Text < DateEdit5.Text Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit6.TexT := DateEdit5.TexT;
    end  Else}
    begin
    QRY_MES.close;
    qry_MES.SQL.Clear;
    qry_MES.SQL.add('select * from G_VENDAS_MES_SOMA where TOTAL >0'+'');
    qry_MES.SQL.add('and ANO >='+QuotedStr(ANO1)+' and ANO <='+QuotedStr(ANO2)+'');
    qry_MES.SQL.add('and MES1 >='+QuotedStr(inicio)+' and MES1 <='+QuotedStr(final)+'');
    QRY_MES.SQL.add('ORDER BY ANO ASC');
    QRY_MES.Active := True;

    FormGrafico_mes := TFormGrafico_mes.Create(self);
    FormGrafico_mes.ShowModal;
    //  FormGraficoVendas.DBChart1.PreviousPage;
    // FormGrafico_mes.Chart1.RefreshData;
    //ChartPreview(Self,FormGraficoVendas.DBChart1);
     end;
end;

procedure TFormGraficos.BitBtn2Click(Sender: TObject);
begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;

    If DateEdit4.Date < DateEdit3.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit4.Date := DateEdit3.Date;
    end  Else
    begin
    Qry_produtos.close;
    Qry_produtos.SQL.Clear;
    Qry_produtos.SQL.add('select * from G_PRODUTOS where TOTAL >0'+'');
    Qry_produtos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_PRODUTOS.SQL.add('ORDER BY TOTAL DESC');
    Qry_produtos.Active := True;

    FormGraficoProdutos := TFormGraficoProdutos.Create(self);
    FormGraficoProdutos.ShowModal;
    //  FormGraficoVendas.DBChart1.PreviousPage;
    FormGraficoProdutos.DBChart1.RefreshData;
    //ChartPreview(Self,FormGraficoVendas.DBChart1);
     end;

end;


procedure TFormGraficos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormGraficos := nil;
end;

procedure TFormGraficos.BitBtn4Click(Sender: TObject);
begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit5.TexT;
    final:=dateedit6.TexT;

    If DateEdit6.Date < DateEdit5.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit6.Date := DateEdit5.Date;
    end  Else
    begin
    Qry_produtos.close;
    Qry_produtos.SQL.Clear;
    Qry_produtos.SQL.add('select * from G_PRODUTOS where TOTAL >0'+'');
    Qry_produtos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_PRODUTOS.SQL.add('ORDER BY TOTAL DESC');
    Qry_produtos.Active := True;

    FormGrafico_quant := TFormGrafico_quant.Create(self);
    FormGrafico_quant.ShowModal;
  //  FormGraficoVendas.DBChart1.PreviousPage;
    FormGrafico_quant.DBChart1.RefreshData;
    //ChartPreview(Self,FormGraficoVendas.DBChart1);
     end;
end;

procedure TFormGraficos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
