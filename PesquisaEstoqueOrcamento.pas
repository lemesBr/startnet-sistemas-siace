unit PesquisaEstoqueOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Grids, DBGrids, StdCtrls,
 DB, Menus, SUIDBCtrls, SUIButton, RXCtrls, SUIEdit, SUIMainMenu, SUIForm,
  Mask, DBCtrls, Mylabel, SUIDlg, ToolEdit, CurrEdit, EditNew, AlignEdit;

type
  TFormPesquisaEstoqueOrcamento = class(TForm)
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
    Edit1: TEdit;
    Label2: TLabel;
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
  private
    { Private declarations }
  public
  A,B:Double;
  Desconto, Venda: Real;
  end;

var
  FormPesquisaEstoqueOrcamento: TFormPesquisaEstoqueOrcamento;

implementation

uses Principal, ModulodeDados, ModulodeDadosConsultas,
  Z_RotinasGerais, NOrcamentos;

{$R *.dfm}

procedure TFormPesquisaEstoqueOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPesquisaEstoqueOrcamento:=nil;
end;

procedure TFormPesquisaEstoqueOrcamento.FormShow(Sender: TObject);
begin
//suiButton2.Enabled:= False;
Edit2.SetFocus;
end;

procedure TFormPesquisaEstoqueOrcamento.suiButton2Click(Sender: TObject);
var
Percent, EncFin, PerEnc, EF, VF: Real;
N, UEF:String;
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
    FormNOrcamentos.Soma:=(A*B)+ EncFin - DESCONTO;
    FormNOrcamentos.Total:=FormNOrcamentos.Total+(FormNOrcamentos.soma);
    Percent := (VENDA*Percent /100);
    FormNOrcamentos.Comissao:= FormNOrcamentos.Comissao + (percent);
    FormNOrcamentos.EncFinanceiro:= FormNOrcamentos.EncFinanceiro + (EncFin);
    FormNOrcamentos.Edit60.Text := FloattoStr(FormNOrcamentos.Total);
    FormNOrcamentos.Edit62.Text := FloattoStr(FormNOrcamentos.Total);
    FormNOrcamentos.Edit60.Font.Color:= clBlue;
    FormNOrcamentos.Edit62.Font.Color:= clAqua;
    FormNOrcamentos.E_Desconto.Font.Color:= clWindow;
    FormNOrcamentos.ClientDataSet1.Insert;
    FormNOrcamentos.ClientDataset1.FieldByname('CodBarras').AsString:=(DMC.SDS_PDV.FieldByName('CODIGO_BARRAS').Text);
    FormNOrcamentos.ClientDataset1.FieldByname('Codigo').AsInteger:=(DMC.SDS_PDV.FieldByName('Codigo').AsInteger);
    FormNOrcamentos.ClientDataset1.FieldByname('Quantidade').Value:= QTN.Text;
    FormNOrcamentos.ClientDataset1.FieldByname('Descricao').AsString:=(dmc.SDS_PDV.FieldByName('DESCRICAO').Text);
    FormNOrcamentos.ClientDataset1.FieldByname('abreviado').AsString:=(dmc.SDS_PDV.FieldByName('abreviado').Text);
    FormNOrcamentos.ClientDataset1.FieldByname('Preco').Ascurrency:=(dmc.SDS_PDV.FieldByName('PRECO_VENDA').AsCurrency);
    FormNOrcamentos.ClientDataset1.FieldByname('Soma').AsFloat:=(FormNOrcamentos.Soma);
    FormNOrcamentos.ClientDataset1.FieldByname('Total').AsFloat:=(FormNOrcamentos.Total);
    FormNOrcamentos.ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
    FormNOrcamentos.ClientDataset1.FieldByname('Desconto').AsFloat:= (Desconto);
    FormNOrcamentos.ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
    FormNOrcamentos.ClientDataset1.Post;
    FormNOrcamentos.CancelaItem.Enabled:= True;
    FormNOrcamentos.Edit1.clear;
    FormNOrcamentos.E_Desconto.Clear;
    FormNOrcamentos.DBGrid1.Enabled:= True;
   // suiButton2.Enabled:= False;
    QTN.Text:= '1,00';
    Edit2.SetFocus;
    end
    else
    if N = '0,00' then
    begin
    Close;
end;
end;

procedure TFormPesquisaEstoqueOrcamento.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
SuiEdit1.Clear;
SuiEdit2.Clear;
Edit1.Clear;
end;

procedure TFormPesquisaEstoqueOrcamento.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
suiDBGrid1.SetFocus;
end;

procedure TFormPesquisaEstoqueOrcamento.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
suiEdit1.Clear;
suiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueOrcamento.suiEdit1Exit(Sender: TObject);
var
DescMaximo: Real;
begin
CorSaida(Sender);
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

procedure TFormPesquisaEstoqueOrcamento.suiDBGrid1Enter(Sender: TObject);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueOrcamento.suiDBNavigator1Enter(
  Sender: TObject);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueOrcamento.suiDBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueOrcamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormPesquisaEstoqueOrcamento.qtnEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormPesquisaEstoqueOrcamento.qtnExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormPesquisaEstoqueOrcamento.Edit2Change(Sender: TObject);
begin
DMC.SDS_PDV.locate('DESCRICAO',Edit2.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormPesquisaEstoqueOrcamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormPesquisaEstoqueOrcamento.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
SuiEdit1.Clear;
SuiEdit2.Clear;
Edit2.Clear;
end;

procedure TFormPesquisaEstoqueOrcamento.Edit1Change(Sender: TObject);
begin
DMC.SDS_PDV.locate('CODIGO_BARRAS',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormPesquisaEstoqueOrcamento.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
qtn.SetFocus;
end;

procedure TFormPesquisaEstoqueOrcamento.suiDBGrid1Exit(Sender: TObject);
begin
qtn.SetFocus;
end;

procedure TFormPesquisaEstoqueOrcamento.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
end;
end;
end.
