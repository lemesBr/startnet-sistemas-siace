unit NOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, QuickRpt, DB,
  DBTables, QRCtrls, Mask, DBCtrls,DBXpress,ComCtrls,Printers,DBClient, Menus,
  FMTBcd, SqlExpr, SUIDBCtrls, SUIEdit, SUIImagePanel, SUIGroupBox,
  SUIMainMenu, SUIForm, SUIButton, RXCtrls, SUIDlg, ImgList, RpSystem,
  RpCon, RpConDS, RpBase, RpDefine, RpRave, RpRender, RpRenderCanvas,
  RpRenderPrinter, RpFiler, ToolEdit, Mylabel, CurrEdit, EditNew, AlignEdit;

type
  TFormNOrcamentos = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Quantidade: TStringField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Preco: TCurrencyField;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Soma: TFloatField;
    DBText2: TDBText;
    ClientDataSet1CodBarras: TStringField;
    ClientDataSet1Total: TFloatField;
    SPC_Codigo: TSQLStoredProc;
    suiForm1: TsuiForm;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel4: TPanel;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    MessageCanClose: TsuiMessageDialog;
    SPC_VENDA: TSQLStoredProc;
    SPC_ITENS: TSQLStoredProc;
    ClientDataSet1Descricao2: TStringField;
    ClientDataSet1Soma2: TFloatField;
    Panel9: TPanel;
    Panel10: TPanel;
    Impressao: TsuiMessageDialog;
    MSG_Desc: TsuiMessageDialog;
    SemItens: TsuiMessageDialog;
    ClientDataSet1Desconto: TCurrencyField;
    suiDBEdit5: TsuiDBEdit;
    ClientDataSet1Aliquota: TStringField;
    ClientDataSet1Item: TIntegerField;
    Panel13: TPanel;
    DBGrid1: TsuiDBGrid;
    Panel14: TPanel;
    ConfPedido: TsuiButton;
    CancelaItem: TsuiButton;
    NovoProd: TsuiButton;
    CancelaVenda: TsuiButton;
    NovaVenda: TsuiButton;
    Edit1: TEdit;
    RxLabel1: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    suiDBEdit6: TsuiDBEdit;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel14: TRxLabel;
    EditN1: TEditN;
    RxLabel15: TRxLabel;
    Panel12: TPanel;
    EditCodigoCli: TComboEdit;
    RxLabel20: TRxLabel;
    ComboEdit1: TComboEdit;
    ClientDataSet1EncFianceiro: TCurrencyField;
    Panel5: TPanel;
    RxLabel11: TRxLabel;
    Panel15: TPanel;
    Shape1: TShape;
    RxLabel13: TRxLabel;
    Panel16: TPanel;
    C_Pagamento: TsuiEdit;
    E_Nome: TsuiEdit;
    RxLabel21: TRxLabel;
    MSGA: TsuiMessageDialog;
    MSG_CD: TsuiMessageDialog;
    MSGI: TsuiMessageDialog;
    E_Desconto: TCurrencyEdit;
    Edit60: TCurrencyEdit;
    Edit62: TCurrencyEdit;
    Panel11: TPanel;
    RxLabel16: TRxLabel;
    Memo1: TMemo;
    Panel2: TPanel;
    RxLabel19: TRxLabel;
    RxLabel18: TRxLabel;
    E_Usuario: TAlignEdit;
    Edit2: TAlignEdit;
    MSGE: TsuiMessageDialog;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure suitempDBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure suitempEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure NovaVendaClick(Sender: TObject);
    procedure CancelaVendaClick(Sender: TObject);
    procedure CancelaItemClick(Sender: TObject);
    procedure NovoProdClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E_DescontoExit(Sender: TObject);
    procedure E_DescontoEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure EditCodigoCliButtonClick(Sender: TObject);
    procedure EditCodigoCliExit(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure EditCodigoCliEnter(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure EditN1Enter(Sender: TObject);
    procedure EditN1Exit(Sender: TObject);
    procedure ConfPedidoClick(Sender: TObject);
  

   


  private
    { Private declarations }
  public
    { Public declarations }
    Total, Desc, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma, A, B:Double;
    Cod,Contador,I:Integer;


  end;

var
  FormNOrcamentos: TFormNOrcamentos;
   TD:TTransactionDesc;

implementation

uses  Principal,  Acesso, ModulodeDados, ModulodeDadosConsultas,
      ConsClientes, ModulodeDadosRelatorios, 
      ConsCondPagamento, Z_RotinasGerais, ConsultaProdutos,
  PesquisaEstoqueOrcamento;

{$R *.dfm}



procedure TFormNOrcamentos.FormShow(Sender: TObject);
begin
DM.SDS_Produtos.Active:=False;
DM.SDS_Clientes.Active:=False;
DMC.SDS_PDV.Active:=False;
DM.SDS_Produtos.Active:=True;
DM.SDS_Clientes.Active:=True;
DMC.SDS_PDV.Active:=True;
clientDataset1.First;
       Total:=0;
       Soma:=0;
       Comissao:=0;
       EncFinanceiro:=0;
       NovaVenda.SetFocus;
   while not clientDataset1.EOF do
      begin
       ClientDataset1.Delete;
       Total:=0;
       Soma:=0;
       Comissao:=0;
       EncFinanceiro:=0;
       NovaVenda.SetFocus;
end;
end;

procedure TFormNOrcamentos.suitempDBGrid1TitleClick(Column: TColumn);
begin
ClientDataset1.IndexFieldNames:=Column.FieldName;
end;

procedure TFormNOrcamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormNOrcamentos:=nil;
end;

procedure TFormNOrcamentos.Sair1Click(Sender: TObject);
begin
Close;
end;

procedure TFormNOrcamentos.suitempEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
      Edit1.SetFocus;
      end;
end;

procedure TFormNOrcamentos.NovaVendaClick(Sender: TObject);
var
N:INTEGER;
begin
DMC.SDS_PDV.Active:= FALSE;
DMC.SDS_PDV.Active:= TRUE;
SPC_Codigo.ExecProc;
N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
Edit2.Text:=IntTostr(N);
CancelaVenda.Enabled:=True;
NovaVenda.Enabled:= False;
Total:=0;
Soma:=0;
Comissao:=0;
EncFinanceiro:=0;
Panel12.Enabled:= True;
Panel11.Enabled:= True;
Memo1.Color:= clWhite;
ComboEdit1.Color:= clWhite;
EditCodigoCli.Color:= clWhite;
clientDataset1.First;
ComboEdit1.SetFocus;

IF clientDataset1.RecordCount <> 0 THEN
begin
ClientDataset1.Delete;
ComboEdit1.SetFocus;
end;

end;


procedure TFormNOrcamentos.CancelaVendaClick(Sender: TObject);
begin
    Total:=0;
    soma:=0;
    Comissao:=0;
    EncFinanceiro:=0;
    ClientDataset1.First;
    DBGrid1.Enabled:= False;
    Panel12.Enabled:= FALSE;
    Panel11.Enabled:= FALSE;
    Panel10.Enabled:=False;
    EditCodigoCli.color:= clWhite;
    CancelaVenda.Enabled:=FALSE;
    CancelaItem.Enabled:= False;
    NovoProd.Enabled:= False;
    ConfPedido.Enabled:= False;
    NovaVenda.Enabled:= TRUE;
    Memo1.Color:= clWhite;
    Memo1.Clear;
    ComboEdit1.Color:= clWhite;
    ComboEdit1.Clear;
    ComboEdit1.Enabled:= True;
    C_Pagamento.Clear;
    E_Nome.Clear;
    Edit2.Clear;
    EditCodigoCli.Color:= clWhite;
    EditCodigoCli.Clear;
    Edit60.Clear;
    Edit62.Clear;
    E_Desconto.Clear;
    E_Desconto.Color:= clWhite;
    Edit1.Clear;
    Edit1.Color:= clWhite;
    EditN1.Color:= clWhite;
    EditN1.Clear;
    Edit60.Font.Color:= clWhite;
    Edit62.Font.Color:= clBlack;
    E_Desconto.Font.Color:= clWhite;
    NovaVenda.SetFocus;
    while not clientDataset1.EOF do
    begin
      ClientDataset1.Delete;
      NovaVenda.SetFocus;
    end;
end;

procedure TFormNOrcamentos.CancelaItemClick(Sender: TObject);
VAR PERCENT,  Finac: DOUBLE;
begin
  If  ClientDataSet1.RecordCount = 0  then
  Begin
      CancelaItem.Enabled:= False;
      ConfPedido.Enabled:= False;
      DBGRID1.Enabled:= False;
      Total:=0;
      Soma:=0;
      Comissao:=0;
      EncFinanceiro:=0;
      Edit60.Font.Color:= $00E8E8D0;
      Edit62.Font.Color:= clBlack;
      E_Desconto.Font.Color:= clWindow;
      SemItens.ShowModal;
      Edit1.SetFocus;
      end
      else
      begin
      Soma:= ClientDataset1.FieldByname('SOMA').AsCurrency;
      Percent:= ClientDataset1.FieldByname('COMISSAO').AsCurrency;
      Finac:= ClientDataset1.FieldByname('EncFianceiro').AsCurrency;
      Total:=Total-(soma);
      Comissao:= Comissao-(percent);
      EncFinanceiro:=EncFinanceiro - (Finac);
      ClientDataset1.Delete;
      Edit62.Text := FloattoStr(Total);
      Edit60.Text := FloattoStr(Total);
      E_Desconto.Clear;
      ConfPedido.Enabled:= False;
      Edit60.Font.Color:= clBlue;
      Edit62.Font.Color:= clAqua;
      E_Desconto.Font.Color:= clWindow;
      Edit1.SetFocus;
end;
end;



procedure TFormNOrcamentos.NovoProdClick(Sender: TObject);
begin
Try
  if FormPesquisaEstoqueOrcamento=nil   then
   begin
    FormPesquisaEstoqueOrcamento:=TFormPesquisaEstoqueOrcamento.Create(self);
     FormPesquisaEstoqueOrcamento.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir Pesquisa Estoque!!');
end;
end;





procedure TFormNOrcamentos.Edit1Change(Sender: TObject);
var
Percent, EncFin, PerEnc, VF, EF: Real;
UEF: STRING;
begin
   If DMC.SDS_PDV.locate('CODIGO_BARRAS',Edit1.text,[])=True then
   begin
        ClientDataSet1.Insert;
        A:=StrtoFloat(DMC.SDS_PDV.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DMC.SDS_PDV.FieldByName('COMISSAO').AsString);
        B:= EditN1.ValueFloat;
        PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
        Edit60.Text := FloattoStr(Total);
        Edit62.Text := FloattoStr(Total);
        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        E_Desconto.Font.Color:= clWindow;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DMC.SDS_PDV.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').AsString:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(dmc.SDS_PDV.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(dmc.SDS_PDV.FieldByName('abreviado').Text);
        ClientDataset1.FieldByname('Preco').Ascurrency:=(dmc.SDS_PDV.FieldByName('PRECO_VENDA').AsCurrency);
        ClientDataset1.FieldByname('Desconto').AsFloat:= 0;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.Post;
        CancelaItem.Enabled:= True;
        Edit1.clear;
        E_Desconto.Clear;
        EditN1.Text:= '1,00';
        ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;

end;
end;

procedure TFormNOrcamentos.FormCreate(Sender: TObject);
begin
  with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'ORCAMENTO.xlm';
  if not FileExists(filename) then
  createdataset;
  open;
  end;
end;

procedure TFormNOrcamentos.E_DescontoExit(Sender: TObject);
VAR
DESCONT, VALDESCONT: DOUBLE;
begin
     If E_Desconto.Text ='' then
       begin
        ValCompra:=0;
        ValCompra:=(Total-ValCompra);
        Edit62.Text := FloattoStr(ValCompra);
        E_Desconto.Color := clWhite;
        ConfPedido.Enabled:= True;
        ConfPedido.SetFocus;
        end else

      If E_Desconto.Text<>'' then
      Begin
      DESCONT:= DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
      VALDESCONT:= STRTOFLOAT(E_Desconto.Text);
      
      IF  (DESCONT < VALDESCONT) THEN
      BEGIN
      MSG_Desc.ShowModal;
      E_Desconto.SetFocus;
      END ELSE
      begin

        ValCompra:=StrtoFloat(E_Desconto.Text);
        ValCompra:=(Total-ValCompra);
        Edit62.Text := FloattoStr(ValCompra);
        E_Desconto.Color := clWhite;
        ConfPedido.Enabled:= True;
        ConfPedido.SetFocus;
      end;
end;
end;

procedure TFormNOrcamentos.E_DescontoEnter(Sender: TObject);
begin
E_Desconto.Color := clYellow;
E_Desconto.Font.Color:= clBlack;
E_Desconto.Clear;
end;

procedure TFormNOrcamentos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if NovaVenda.Enabled = False then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormNOrcamentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (ssalt in shift) and (Key = 81) then
BEGIN
EditN1.SetFocus;
end;

if (Key=VK_F2) then
      begin
     FormConsultaProdutos:=TFormConsultaProdutos.Create(self);
     FormConsultaProdutos.ShowModal;
end;

if (Key=VK_F3) then
      begin
      IF  CANCELAVENDA.Enabled = TRUE THEN
      BEGIN
      CANCELAVENDAClick(Sender);
      end;
end;

if (Key=VK_F3) then
      begin
      IF  NovaVenda.Enabled = TRUE THEN
      BEGIN
      NovaVendaClick(Sender);
      end;
end;

   if (Key=VK_F4) then
      begin
      IF  CancelaVenda.Enabled = TRUE THEN
      BEGIN
      CancelaVendaClick(Sender);
      end;
end;

   if (Key=VK_F5) then
      begin
      IF  NovoProd.Enabled = TRUE THEN
      BEGIN
      NovoProdClick(Sender);
      end;
end;

   if (Key=VK_F7) then
      begin
      IF  CancelaItem.Enabled = TRUE THEN
      BEGIN
      CancelaItemClick(Sender);
      end;
end;

   if (Key=VK_F8) then
      begin
      IF  ConfPedido.Enabled = TRUE THEN
      BEGIN
      ConfPedidoClick(Sender);
      end;
end;


end;

procedure TFormNOrcamentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormNOrcamentos.Memo1Enter(Sender: TObject);
begin
Memo1.Color := clYellow;
end;

procedure TFormNOrcamentos.Memo1Exit(Sender: TObject);
begin
Memo1.Color := clWindow;
end;

procedure TFormNOrcamentos.EditCodigoCliButtonClick(Sender: TObject);
VAR
CD: STRING;
begin
CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;

     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;

       IF CD = 'A' THEN BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       end;

     IF CD = 'C' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'H' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'F' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;
end;

procedure TFormNOrcamentos.EditCodigoCliExit(Sender: TObject);
VAR
CD: STRING;
begin
CorSaida(Sender);
CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
If  EditCodigoCli.Text='' then
    Begin
    Total:=0;
    soma:=0;
    Comissao:=0;
    EncFinanceiro:= 0;
    ClientDataset1.First;
    DBGrid1.Enabled:= False;
    Panel12.Enabled:= FALSE;
    Panel11.Enabled:= FALSE;
    Panel10.Enabled:=False;
    EditCodigoCli.color:= clWhite;
    CancelaVenda.Enabled:=FALSE;
    CancelaItem.Enabled:= False;
    NovoProd.Enabled:= False;
    ConfPedido.Enabled:= False;
    NovaVenda.Enabled:= TRUE;
    Memo1.Color:= $00E8E8D0;
    Memo1.Clear;
    ComboEdit1.Color:= $00E8E8D0;
    ComboEdit1.Clear;
    ComboEdit1.Enabled:= True;
    C_Pagamento.Clear;
    E_Nome.Clear;
    Edit2.Clear;
    EditCodigoCli.Color:= $00E8E8D0;
    Edit60.Clear;
    Edit62.Clear;
    Edit60.Font.Color:= $00E8E8D0;
    Edit62.Font.Color:= clBlack;
    E_Desconto.Clear;
    E_Desconto.Color:= $00E8E8D0;
    Edit1.Clear;
    Edit1.Color:= $00E8E8D0;
    EditN1.Color:= $00E8E8D0;
    EditN1.Clear;
    E_Desconto.Font.Color:= $00E8E8D0;
    NovaVenda.SetFocus;
    while not clientDataset1.EOF do
    begin
      ClientDataset1.Delete;
      NovaVenda.SetFocus;
    end;
   end else
If DM.SDS_Clientes.locate('CODIGO',EditCodigoCli.Text,[])=True then
begin
       IF CD = 'A' THEN BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       end;

     IF CD = 'C' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'H' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'F' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;
end
else
begin
    EditCodigoCli.color:= clWhite;
    MSGI.Text:= 'Código Invalido! Localizando Clientes Cadastrados...';
    MSGI.ShowModal;
    FormConsClientes:=TFormConsClientes.Create(self);
    FormConsClientes.ShowModal;

       IF CD = 'A' THEN BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       end;

     IF CD = 'C' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'H' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'F' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel10.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

      
end;
end;

procedure TFormNOrcamentos.ComboEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormNOrcamentos.EditCodigoCliEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormNOrcamentos.ComboEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
DM.SDS_CondPagamento.Active:= True;
If  ComboEdit1.Text='' then
    Begin
    CancelaVenda.Enabled:=FALSE;
    NovaVenda.Enabled:= TRUE;
    Total:=0;
    Soma:=0;
    Comissao:= 0;
    EncFinanceiro:= 0;
    Panel12.Enabled:= FALSE;
    Panel11.Enabled:= FALSE;
    Memo1.Color:= clWindow;
    ComboEdit1.Color:= clWindow;
    EditCodigoCli.Color:= clWindow;
    Edit2.Clear;
    NovaVenda.SetFocus;
    end else
If DM.SDS_CondPagamento.locate('CODIGO',ComboEdit1.Text,[])=True then
begin
        IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        ComboEdit1.SetFocus;
        end else
        begin
        C_Pagamento.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        ComboEdit1.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;
        CancelaVenda.Enabled:= True;
        ComboEdit1.Enabled:= False;
        ComboEdit1.Color:= clWindow;
        EditCodigoCli.SetFocus;
        end;
end
else
begin
     MSGI.Text:= 'Código Invalido! Localizando Condições de Pagamento Cadastradas...';
     MSGI.ShowModal;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     MSGA.Text:= 'Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Pedido!';
     MSGA.ShowModal;
     NovaVenda.Enabled:= TRUE;
     Close;
     end else
     begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        ComboEdit1.SetFocus;
        end else
        begin
        C_Pagamento.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        ComboEdit1.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;
        CancelaVenda.Enabled:= True;
        ComboEdit1.Enabled:= False;
        EditCodigoCli.SetFocus;
end;
end;
end;
end;

procedure TFormNOrcamentos.ComboEdit1ButtonClick(Sender: TObject);
begin

     DM.SDS_CondPagamento.Active:= True;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

     if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     MSGA.Text:= 'Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Pedido!';
     MSGA.ShowModal;
     NovaVenda.Enabled:= TRUE;
     Close;
     end else
     begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        end else
        begin
        C_Pagamento.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        ComboEdit1.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;
        CancelaVenda.Enabled:= True;
        ComboEdit1.Enabled:= False;
        EditCodigoCli.SetFocus;
end;
end;
end;

procedure TFormNOrcamentos.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormNOrcamentos.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
Edit1.Clear;
end;

procedure TFormNOrcamentos.EditN1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormNOrcamentos.EditN1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormNOrcamentos.ConfPedidoClick(Sender: TObject);
var
Endercompo, Clio: String;
I, E:Integer;
begin
If  ClientDataSet1.RecordCount = 0 then
  Begin
  MSGI.Text:= 'Não Há Itens na Lista de Compras! Você deve Inserir No Mínimo 01 Item Para Poder Concluir o Orçamento!';
  MSGI.ShowModal;
  end
  else
  begin
           IF MSG_CD.ShowModal = MRYES THEN
           BEGIN
           Try
           begin
           TD.TransactionID := 1;
           TD.IsolationLevel := XILReadCommitted;
           DM.SQLC.StartTransaction(TD);

           SPC_VENDA.Params[0].AsInteger:=StrToInt(Edit2.Text);
           SPC_VENDA.Params[1].Value:= TOTAL;
           SPC_VENDA.Params[2].Value:= (Total - ValCompra);
           SPC_VENDA.Params[3].Value:= ValCompra;
           SPC_VENDA.Params[4].Value:= Comissao;
           SPC_VENDA.Params[5].AsString:= E_Usuario.Text;
           SPC_VENDA.Params[6].AsDate:= Date;
           SPC_VENDA.Params[7].AsInteger:= StrToInt(EditCodigoCli.Text);
           SPC_VENDA.Params[8].AsString:= E_NOME.Text;
           SPC_VENDA.Params[9].AsString:= DM.SDS_CondPagamentoDESCRICAO.AsString;
           SPC_VENDA.Params[10].Value:= EncFinanceiro;
           SPC_VENDA.Params[11].AsString:= Memo1.Text;
           SPC_VENDA.Execproc;

           ClientDataset1.First;
           Contador:=ClientDataset1.RecordCount;
           For I:=1 to Contador do
           begin
           SPC_ITENS.Params[1].AsInteger:=StrToInt(Edit2.Text);
           SPC_ITENS.Params[2].Value:=ClientDataset1.FieldByname('CodBarras').AsString;
           SPC_ITENS.Params[3].AsString:=ClientDataset1.FieldByname('Descricao').AsString;
           SPC_ITENS.Params[4].Value:=(ClientDataset1.FieldByname('Preco').Ascurrency);
           SPC_ITENS.Params[5].Value:=ClientDataset1.FieldByname('Desconto').Value;
           SPC_ITENS.Params[6].Value:=ClientDataset1.FieldByname('Quantidade').Value;
           SPC_ITENS.Params[7].Value:=ClientDataset1.FieldByname('soma').AsCurrency;
           SPC_ITENS.Params[8].Value:=ClientDataset1.FieldByname('Comissao').AsCurrency;
           SPC_ITENS.Params[9].Value:=ClientDataset1.FieldByname('EncFianceiro').AsCurrency;
           SPC_ITENS.Execproc;
           ClientDataset1.Next;
           end;
           DM.SQLC.Commit(TD);
           ClientDataset1.First;
           Total:=0;
           soma:=0;
           Comissao:=0;
           EncFinanceiro:=0;
           ClientDataset1.First;
           DBGrid1.Enabled:= False;
           Panel12.Enabled:= FALSE;
           Panel11.Enabled:= FALSE;
           Panel10.Enabled:=False;
           EditCodigoCli.color:= clWhite;
           CancelaVenda.Enabled:=FALSE;
           CancelaItem.Enabled:= False;
           NovoProd.Enabled:= False;
           ConfPedido.Enabled:= False;
           NovaVenda.Enabled:= TRUE;
           Memo1.Color:= clWhite;
           Memo1.Clear;
           ComboEdit1.Color:= clWhite;
           ComboEdit1.Clear;
           ComboEdit1.Enabled:= True;
           C_Pagamento.Clear;
           E_Nome.Clear;
           EditCodigoCli.Color:= clWhite;
           EditCodigoCli.Clear;
           Edit60.Clear;
           Edit62.Clear;
           E_Desconto.Clear;
           E_Desconto.Color:= clWhite;
           Edit1.Clear;
           Edit1.Color:= clWhite;
           EditN1.Color:= clWhite;
           EditN1.Clear;
           Edit60.Font.Color:= clWhite;
           Edit62.Font.Color:= clBlack;
           E_Desconto.Font.Color:= clWhite;
           while not clientDataset1.EOF do
           begin
           ClientDataset1.Delete;
           end;
                 If Impressao.ShowModal = mryes then
                 begin
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
 //   DMC.SQLD_Orcamentos.Active:=False;
  DMC.CDS_Orcamentos.Active:=False;
  //  DMC.SQLD_Orcamentos.Params[0].AsString:=Edit2.Text;
//    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    Endercompo:= (DMC.SDS_CLIENTEOENDERECO.Text + ' / ' + DMC.SDS_ClienteoBAIRRO.Text
    + ' - ' + DMC.SDS_ClienteoCIDADE.Text + ' - ' + DMC.SDS_ClienteoUF.Text);
    Clio:= (DMC.SDS_ClienteoCODIGO.Text + ' - ' + DMC.SDS_ClienteoNOME_RS.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento',False);
    DMR.RvRelatorios.Execute;
    Edit2.Clear;
    end else
    Edit2.Clear;
    end;
                    Except
                    DM.SQLC.Rollback(TD);
                    MSGE.Text:= 'Erro na Finalização do Orçamento!';
                    MSGE.ShowModal;
                    end;

end;
end;
end;
end.
