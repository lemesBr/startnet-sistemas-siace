unit PesquisaEstoquePedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Grids, DBGrids, StdCtrls,
 DB, Menus, SUIDBCtrls, SUIButton, RXCtrls, SUIEdit, SUIMainMenu, SUIForm,
  Mask, DBCtrls, Mylabel, SUIDlg, ToolEdit, CurrEdit, EditNew, AlignEdit;

type
  TFormPesquisaEstoquePedidos = class(TForm)
    suiForm1: TsuiForm;
    Panel3: TPanel;
    suiDBGrid1: TsuiDBGrid;
    MSG_ValorDesconto: TsuiMessageDialog;
    Panel6: TPanel;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    RxLabel2: TRxLabel;
    suiDBEdit2: TsuiDBEdit;
    RxLabel5: TRxLabel;
    suiDBEdit3: TsuiDBEdit;
    Panel7: TPanel;
    suiDBImage1: TsuiDBImage;
    Panel8: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    RxLabel3: TRxLabel;
    RxLabel6: TRxLabel;
    suiButton2: TsuiButton;
    suiDBNavigator1: TsuiDBNavigator;
    qtn: TEditN;
    suiEdit1: TCurrencyEdit;
    Edit2: TEdit;
    suiEdit2: TAlignEdit;
    MsgInformacao: TsuiMessageDialog;
    cbxpesquisa: TComboBox;
    rbPercentagem: TRadioButton;
    rbValor: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiEdit1Enter(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure suiDBGrid1Enter(Sender: TObject);
    procedure suiDBNavigator1Enter(Sender: TObject);
    procedure suiDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure qtnEnter(Sender: TObject);
    procedure qtnExit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure suiDBGrid1Exit(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cbxpesquisaExit(Sender: TObject);
    procedure cbxpesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
  A,B:Double;
  Desconto, Venda: Real;
  end;

var
  FormPesquisaEstoquePedidos: TFormPesquisaEstoquePedidos;

implementation

uses Principal, ModulodeDados, PedidoParcelado, ModulodeDadosConsultas,
  Z_RotinasGerais;

{$R *.dfm}

procedure TFormPesquisaEstoquePedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPesquisaEstoquePedidos:=nil;
end;

procedure TFormPesquisaEstoquePedidos.FormShow(Sender: TObject);
begin
cbxpesquisa.ItemIndex := 0;
//suiButton2.Enabled:= False;
DMC.SDS_PDV.Active := FALSE;
DMC.SDS_PDV.Active := TRUE;
Edit2.SetFocus;
end;

procedure TFormPesquisaEstoquePedidos.suiButton2Click(Sender: TObject);
var
Percent, EncFin, PerEnc, EF, VF: Real;
N, UEF:String;
begin
  suiButton2.Default := false;

If DMC.SDS_PDVESTOQUE.Text < '1' then
begin
MsgInformacao.Text:= 'Não há Saldo em Estoque Suficiente... Não será Possivel Realizar a venda do Produto...';
MsgInformacao.Showmodal;
Edit2.SetFocus;
end else
begin

    N:= QTN.Text;
    if N <> '0,00' then
    begin
    B:= StrtoFloat(QTN.Text);
    A:= DMC.SDS_PDVPRECO_VENDA.AsCurrency;
    Percent:= StrtoFloat(DMC.SDS_PDV.FieldByName('COMISSAO').AsString);
    PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
    EF:= (A*PerEnc) / 100;
    UEF:= FormatFloat('##,##0.00',EF);
    EF:= StrToFloat(UEF);
    VF:= (A + EF);
    EncFin:= (EF * B);
    DESCONTO:= DESCONTO * B;
    FormPedidoParcelado.Soma:=(A*B)+ EncFin - DESCONTO;
    FormPedidoParcelado.Total:=FormPedidoParcelado.Total+(FormPedidoParcelado.soma);
    Percent := (VENDA*Percent /100);
    FormPedidoParcelado.Comissao:= FormPedidoParcelado.Comissao + (percent);
    FormPedidoParcelado.EncFinanceiro:= FormPedidoParcelado.EncFinanceiro + (EncFin);
    FormPedidoParcelado.Edit60.Text := FloattoStr(FormPedidoParcelado.Total);
    FormPedidoParcelado.Edit62.Text := FloattoStr(FormPedidoParcelado.Total);
    FormPedidoParcelado.Edit60.Font.Color:= clBlue;
    FormPedidoParcelado.Edit62.Font.Color:= clAqua;
    FormPedidoParcelado.E_Desconto.Font.Color:= clWindow;
    FormPedidoParcelado.ClientDataSet1.Insert;
    FormPedidoParcelado.ClientDataset1.FieldByname('CodBarras').AsString:=(DMC.SDS_PDV.FieldByName('CODIGO_BARRAS').Text);
    FormPedidoParcelado.ClientDataset1.FieldByname('Codigo').AsInteger:=(DMC.SDS_PDV.FieldByName('Codigo').AsInteger);
    FormPedidoParcelado.ClientDataset1.FieldByname('Quantidade').Value:= QTN.Text;
    FormPedidoParcelado.ClientDataset1.FieldByname('Descricao').AsString:=(dmc.SDS_PDV.FieldByName('DESCRICAO').Text);
    FormPedidoParcelado.ClientDataset1.FieldByname('abreviado').AsString:=(dmc.SDS_PDV.FieldByName('abreviado').Text);
    FormPedidoParcelado.ClientDataset1.FieldByname('Aliquota').AsString:=(DMC.SDS_PDV.FieldByName('SIT_TRIBUTARIA').Text);
    FormPedidoParcelado.ClientDataset1.FieldByname('Preco').Ascurrency:=(dmc.SDS_PDV.FieldByName('PRECO_VENDA').AsCurrency);
    FormPedidoParcelado.ClientDataset1.FieldByname('Soma').AsFloat:=(FormPedidoParcelado.Soma);
    FormPedidoParcelado.ClientDataset1.FieldByname('Total').AsFloat:=(FormPedidoParcelado.Total);
    FormPedidoParcelado.ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
    FormPedidoParcelado.ClientDataset1.FieldByname('Desconto').AsFloat:= (Desconto);
    FormPedidoParcelado.ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
    FormPedidoParcelado.ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DMC.SDS_PDV.FieldByName('Desc_Unidade').Text);
    FormPedidoParcelado.ClientDataset1.Post;
    FormPedidoParcelado.CancelaItem.Enabled:= True;
    FormPedidoParcelado.Edit1.clear;
    FormPedidoParcelado.E_Desconto.Clear;
    FormPedidoParcelado.DBGrid12.Enabled:= True;
    //suiButton2.Enabled:= False;
    QTN.Text:= '1,000';
    Edit2.SetFocus;
    end
    else
    if N = '0,00' then
    begin
    Close;
end;
end;
end;

procedure TFormPesquisaEstoquePedidos.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
SuiEdit1.Clear;
SuiEdit2.Clear;
//Edit1.Clear;
end;

procedure TFormPesquisaEstoquePedidos.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
//suiDBGrid1.SetFocus;
end;

procedure TFormPesquisaEstoquePedidos.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
suiEdit1.Clear;
suiEdit2.Clear;
end;

procedure TFormPesquisaEstoquePedidos.suiEdit1Exit(Sender: TObject);
var
DescMaximo: Real;
begin
CorSaida(Sender);
suiButton2.Default := True;
if suiedit1.Text = '' then
begin
suiedit1.Text:= '0';
Venda:= DMC.SDS_PDVPRECO_VENDA.AsCurrency;
DescMaximo:= DMC.SDS_PDVDESCONTO_MAXIMO.AsCurrency;
Desconto:= 0;

       if (Desconto <= DescMaximo) then
       begin
       suiButton2.Enabled:= True;
       Venda:=(Venda - Desconto);
       Suiedit2.Text:= FormatFloat('R$ #,###,##0.00 ', Venda);
       suiedit1.Text := FloattoStr(Desconto);
       suiButton2.SetFocus;
       end else
       if (Desconto > DescMaximo) then
       begin
       MSG_ValorDesconto.ShowModal;
       Suiedit1.SetFocus;
       end;

end else
if suiedit1.Text <> '' then
begin
Venda:= DMC.SDS_PDVPRECO_VENDA.AsCurrency;
DescMaximo:= DMC.SDS_PDVDESCONTO_MAXIMO.AsCurrency;
Desconto:= STRTOFLOAT(suiedit1.Text);

       if (Desconto <= DescMaximo) then
       begin
       suiButton2.Enabled:= True;
       Venda:=(Venda - Desconto);
       Suiedit2.Text:= FormatFloat('R$ #,###,##0.00 ', Venda);
       suiedit1.Text := FloattoStr(Desconto);
       SuiButton2.SetFocus;
       end else
       if (Desconto > DescMaximo) then
       begin
       MSG_ValorDesconto.ShowModal;
       Suiedit1.SetFocus;
       end;
       end;
       end;

procedure TFormPesquisaEstoquePedidos.suiDBGrid1Enter(Sender: TObject);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoquePedidos.suiDBNavigator1Enter(
  Sender: TObject);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoquePedidos.suiDBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoquePedidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormPesquisaEstoquePedidos.qtnEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormPesquisaEstoquePedidos.qtnExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormPesquisaEstoquePedidos.Edit2Change(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 then
begin
DMC.SDS_PDV.locate('DESCRICAO',Edit2.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
DMC.SDS_PDV.Active := FALSE;
DMC.SDS_PDV.DataSet.CommandText:= 'SELECT * FROM V_PRODUTO_PDV WHERE DESCRICAO LIKE ' + #39 + '%' + Edit2.Text + '%' + #39+'order by DESCRICAO asc';
DMC.SDS_PDV.Active := TRUE;

end else
if cbxpesquisa.ItemIndex = 2 then
begin
DMC.SDS_PDV.locate('CODIGO_BARRAS',Edit2.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 3 then
begin
DMC.SDS_PDV.locate('REFERENCIA',Edit2.Text,[lopartialkey,loCaseinSensitive]);
end;
end;

procedure TFormPesquisaEstoquePedidos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormPesquisaEstoquePedidos.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
SuiEdit1.Clear;
SuiEdit2.Clear;
Edit2.Clear;
end;

procedure TFormPesquisaEstoquePedidos.Edit1Change(Sender: TObject);
begin
//DMC.SDS_PDV.locate('CODIGO_BARRAS',Edit1.Text,[lopartialkey,loCaseinSensitive]);
//DMC.SDS_PDV.Active := FALSE;
//DMC.SDS_PDV.DataSet.CommandText:= 'SELECT * FROM V_PRODUTO_PDV WHERE CODIGO_BARRAS LIKE ' + #39 + '%' + Edit1.Text + '%' + #39;
//DMC.SDS_PDV.Active := TRUE;
end;

procedure TFormPesquisaEstoquePedidos.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
qtn.SetFocus;
end;

procedure TFormPesquisaEstoquePedidos.suiDBGrid1Exit(Sender: TObject);
begin
//qtn.SetFocus;
end;

procedure TFormPesquisaEstoquePedidos.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
end;
End;
procedure TFormPesquisaEstoquePedidos.cbxpesquisaExit(Sender: TObject);
begin
Edit2.SetFocus;
end;

procedure TFormPesquisaEstoquePedidos.cbxpesquisaChange(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 then
begin
DMC.SDS_PDV.Active := FALSE;
DMC.SDS_PDV.DataSet.CommandText:= 'SELECT * FROM V_PRODUTO_PDV order by DESCRICAO asc';
DMC.SDS_PDV.Active := TRUE;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
DMC.SDS_PDV.Active := FALSE;
DMC.SDS_PDV.DataSet.CommandText:= 'SELECT * FROM V_PRODUTO_PDV order by DESCRICAO asc';
DMC.SDS_PDV.Active := TRUE;
end else
if cbxpesquisa.ItemIndex = 0 then
begin
DMC.SDS_PDV.Active := FALSE;
DMC.SDS_PDV.DataSet.CommandText:= 'SELECT * FROM V_PRODUTO_PDV order by DESCRICAO asc';
DMC.SDS_PDV.Active := TRUE;
end;
end;

end.
