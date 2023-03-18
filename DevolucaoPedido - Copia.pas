unit DevolucaoPedido;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, ToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes,  Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,IBCustomDataSet, IBQuery,
  DBXpress, IBUpdateSQL, DBClient, SimpleDS, FMTBcd, SqlExpr, RXCtrls,
  Mylabel, SUIDlg, Provider, DBTables, Messages, Variants, RzEdit, sPanel,
  sDBNavigator, sBitBtn;

type
  TFormDevolucaoPedido = class(TForm)
    MSG_NR: TsuiMessageDialog;
    Panel1: TPanel;
    Panel: TPanel;
    BitBtn3: TsBitBtn;
    Navigator: TsDBNavigator;
    Panel4: TPanel;
    suiDBGrid2: TDBGrid;
    Panel8: TPanel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel33: TRxLabel;
    RxLabel1: TRxLabel;
    Panel11: TPanel;
    suiDBEdit1: TDBEdit;
    suiDBEdit2: TDBEdit;
    suiDBEdit3: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit5: TDBEdit;
    suiDBEdit6: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit8: TDBEdit;
    suiDBEdit9: TDBEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    suiDBGrid1: TDBGrid;
    pnpesq: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsBitBtn;
    SQLD_PedidosGeral1: TSQLDataSet;
    DTSP_PedidosGeral: TDataSetProvider;
    CDS_PedidosGeral: TClientDataSet;
    DTS_PedidosGeral: TDataSource;
    SDS_ItensPedidoGeral: TSimpleDataSet;
    DTS_ItensPedidoGeral: TDataSource;
    ErroGravacao: TsuiMessageDialog;
    SPC_Estoque: TSQLStoredProc;
    suiDBNavigator1: TsDBNavigator;
    suiButton5: TsBitBtn;
    suiButton7: TsBitBtn;
    suiNumberEdit1: TRzNumericEdit;
    GroupBox1: TGroupBox;
    suiButton3: TsBitBtn;
    suiButton4: TsBitBtn;
    GroupBox2: TGroupBox;
    suiButton2: TsBitBtn;
    RxLabel8: TRxLabel;
    SQLD_PedidosGeral1CODIGO: TIntegerField;
    SQLD_PedidosGeral1VALOR_ITENS: TFMTBCDField;
    SQLD_PedidosGeral1VALOR_DESCONTO: TFMTBCDField;
    SQLD_PedidosGeral1VALOR_TOTAL: TFMTBCDField;
    SQLD_PedidosGeral1VALOR_COMISSAO: TFMTBCDField;
    SQLD_PedidosGeral1USUARIO: TStringField;
    SQLD_PedidosGeral1USUARIO_ENTREGA: TStringField;
    SQLD_PedidosGeral1DATA_PEDIDO: TDateField;
    SQLD_PedidosGeral1DATA_ENTREGA: TDateField;
    SQLD_PedidosGeral1CODIGO_CLIENTE: TIntegerField;
    SQLD_PedidosGeral1NOME_CLIENTE: TStringField;
    SQLD_PedidosGeral1PAGAMENTO: TStringField;
    RxLabel10: TRxLabel;
    suiDBEdit10: TDBEdit;
    RxLabel11: TRxLabel;
    suiDBEdit11: TDBEdit;
    RxLabel12: TRxLabel;
    SDS_ItensPedidoGeralCODIGO: TIntegerField;
    SDS_ItensPedidoGeralCODIGO_ID: TIntegerField;
    SDS_ItensPedidoGeralCODIGO_PRODUTO: TStringField;
    SDS_ItensPedidoGeralDESCRICAO_PRODUTO: TStringField;
    SDS_ItensPedidoGeralPRECO_UNITARIO: TFMTBCDField;
    SDS_ItensPedidoGeralDESCONTO: TFMTBCDField;
    SDS_ItensPedidoGeralQUANTIDADE: TFMTBCDField;
    SDS_ItensPedidoGeralPRECO_TOTAL: TFMTBCDField;
    SDS_ItensPedidoGeralCOMISSAO: TFMTBCDField;
    SDS_ItensPedidoGeralDEV: TStringField;
    SDS_ItensPedidoGeralQNT_DEV: TFMTBCDField;
    SDS_ItensPedidoGeralVAL_DEV: TFMTBCDField;
    Bevel2: TBevel;
    MessageCanClose: TsuiMessageDialog;
    MSG: TsuiMessageDialog;
    SPC_PAG_RET_PEDIDOS: TSQLStoredProc;
    SPC_EstComRetPedidos: TSQLStoredProc;
    MSG_CDI: TsuiMessageDialog;
    MSG_NCDI: TsuiMessageDialog;
    SDS_ItensPedidoGeralENC_FINANCEIRO: TFMTBCDField;
    SQLD_PedidosGeral1TP: TStringField;
    SQLD_PedidosGeral1OBSERVACOES: TStringField;
    suiDBEdit12: TDBEdit;
    SDS_ItensPedidoGeralITEN: TIntegerField;
    SDS_ItensPedidoGeralCODIGO_PROD: TIntegerField;
    SDS_ItensPedidoGeralUNIDADE: TStringField;
    SDS_ItensPedidoGeralSIT_TRIBUTARIA: TStringField;
    SDS_ItensPedidoGeralVENDEDOR: TIntegerField;
    SDS_ItensPedidoGeralFRACAO: TIntegerField;
    SDS_ItensPedidoGeralCOD_NCM: TStringField;
    SDS_ItensPedidoGeralPROD_SERV: TStringField;
    SDS_ItensPedidoGeralPERC_ISS: TFMTBCDField;
    SDS_ItensPedidoGeralBASE_ISS: TFMTBCDField;
    SDS_ItensPedidoGeralVL_ISS: TFMTBCDField;
    SDS_ItensPedidoGeralPERC_ICM: TFMTBCDField;
    SDS_ItensPedidoGeralBASE_ICMS: TFMTBCDField;
    SDS_ItensPedidoGeralVL_ICM: TFMTBCDField;
    SDS_ItensPedidoGeralPERC_IPI: TFMTBCDField;
    SDS_ItensPedidoGeralBASE_IPI: TFMTBCDField;
    SDS_ItensPedidoGeralVL_IPI: TFMTBCDField;
    SDS_ItensPedidoGeralPERC_COFINS: TFMTBCDField;
    SDS_ItensPedidoGeralBASE_COFINS: TFMTBCDField;
    SDS_ItensPedidoGeralVL_COFINS: TFMTBCDField;
    SDS_ItensPedidoGeralPERC_ICMS_SUBST: TFMTBCDField;
    SDS_ItensPedidoGeralBASE_ICMS_SUBST: TFMTBCDField;
    SDS_ItensPedidoGeralVL_ICMS_SUBST: TFMTBCDField;
    SDS_ItensPedidoGeralPERC_PIS: TFMTBCDField;
    SDS_ItensPedidoGeralBASE_PIS: TFMTBCDField;
    SDS_ItensPedidoGeralVL_PIS: TFMTBCDField;
    SDS_ItensPedidoGeralIMPRIME: TStringField;
    deliten1: TIBQuery;
    SDS_ItensPedidoGeralCOD_EMPRESA: TIntegerField;
    SDS_ItensPedidoGeralID_BICO: TIntegerField;
    SDS_ItensPedidoGeralID_TANQUE: TStringField;
    SDS_ItensPedidoGeralID_BOMBA: TStringField;
    SDS_ItensPedidoGeralBICO: TStringField;
    SDS_ItensPedidoGeralAPLICACAO: TStringField;
    SDS_ItensPedidoGeralREFERENCIA: TStringField;
    SDS_ItensPedidoGeralNOME_MARCA: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    SQLD_PedidosGeral: TSQLQuery;
    Bevel3: TBevel;
    SQLD_PedidosGeralCODIGO: TIntegerField;
    SQLD_PedidosGeralVALOR_ITENS: TFMTBCDField;
    SQLD_PedidosGeralVALOR_DESCONTO: TFMTBCDField;
    SQLD_PedidosGeralVALOR_TOTAL: TFMTBCDField;
    SQLD_PedidosGeralVALOR_COMISSAO: TFMTBCDField;
    SQLD_PedidosGeralENC_FINANCEIRO: TFMTBCDField;
    SQLD_PedidosGeralUSUARIO: TStringField;
    SQLD_PedidosGeralUSUARIO_ENTREGA: TStringField;
    SQLD_PedidosGeralDATA_PEDIDO: TDateField;
    SQLD_PedidosGeralDATA_ENTREGA: TDateField;
    SQLD_PedidosGeralCODIGO_CLIENTE: TIntegerField;
    SQLD_PedidosGeralNOME_CLIENTE: TStringField;
    SQLD_PedidosGeralPAGAMENTO: TStringField;
    SQLD_PedidosGeralTP: TStringField;
    SQLD_PedidosGeralOBSERVACOES: TStringField;
    CDS_PedidosGeralCODIGO: TIntegerField;
    CDS_PedidosGeralVALOR_ITENS: TFMTBCDField;
    CDS_PedidosGeralVALOR_DESCONTO: TFMTBCDField;
    CDS_PedidosGeralVALOR_TOTAL: TFMTBCDField;
    CDS_PedidosGeralVALOR_COMISSAO: TFMTBCDField;
    CDS_PedidosGeralENC_FINANCEIRO: TFMTBCDField;
    CDS_PedidosGeralUSUARIO: TStringField;
    CDS_PedidosGeralUSUARIO_ENTREGA: TStringField;
    CDS_PedidosGeralDATA_PEDIDO: TDateField;
    CDS_PedidosGeralDATA_ENTREGA: TDateField;
    CDS_PedidosGeralCODIGO_CLIENTE: TIntegerField;
    CDS_PedidosGeralNOME_CLIENTE: TStringField;
    CDS_PedidosGeralPAGAMENTO: TStringField;
    CDS_PedidosGeralTP: TStringField;
    CDS_PedidosGeralOBSERVACOES: TStringField;
    SQLD_PedidosGeralSITUACAO: TStringField;
    CDS_PedidosGeralSITUACAO: TStringField;
    logEst: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiNumberEdit1Enter(Sender: TObject);
    procedure suiNumberEdit1Exit(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormDevolucaoPedido: TFormDevolucaoPedido;
  TD:TTransactionDesc;
  ESTOQUE, FRACAO :Real;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;



{$R *.DFM}

procedure TFormDevolucaoPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormDevolucaoPedido:=nil;
end;

procedure TFormDevolucaoPedido.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormDevolucaoPedido.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormDevolucaoPedido.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormDevolucaoPedido.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormDevolucaoPedido.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormDevolucaoPedido.FormShow(Sender: TObject);
begin
    DM.SDS_CONFIGURACOES.Active:= False;
    DM.SDS_CONFIGURACOES.Active:= True;
    SQLD_PedidosGeral.Active:=FALSE;
    CDS_PedidosGeral.Active:=FALSE;
    SDS_ItensPedidoGeral.Active:=FALSE;
    SuiButton2.Enabled:= False;
    DateEdit1.SetFocus;
end;

procedure TFormDevolucaoPedido.suiButton1Click(Sender: TObject);
var
  inicio, final, venda :string;
begin
   try
   inicio:=datetostr(DATE);
   final:=datetostr(DATE);

   inicio:=dateedit1.TexT;
   final:=dateedit2.TexT;

   Venda := edit2.text;

   { SQLD_PedidosGeral.Active:=False;
    CDS_PedidosGeral.Active:=False;
    SQLD_PedidosGeral.Params[0].AsDate:=DateEdit1.Date;
    SQLD_PedidosGeral.Params[1].AsDate:=DateEdit2.Date;

    SQLD_PedidosGeral.Active:=True;
    CDS_PedidosGeral.Active:=True;
    SDS_ItensPedidoGeral.Active:=True;  }

    dm.sds_vendas.Filtered := False;
   CDS_PedidosGeral.Active := false;
   SDS_ItensPedidoGeral.Active := false;
   SQLD_PedidosGeral.close;
   SQLD_PedidosGeral.SQL.Clear;
   SQLD_PedidosGeral.SQL.add('select * from V_PEDIDOS_CANCELAR where CODIGO > 0'+'');
   if inicio >'  /  /    ' then
   SQLD_PedidosGeral.SQL.add('and DATA_pedido >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
   if venda >'' then
   SQLD_PedidosGeral.SQL.add('and codigo ='+(venda)+'');
   SQLD_PedidosGeral.SQL.add('ORDER BY Codigo ASC');
   SQLD_PedidosGeral.Open;
   CDS_PedidosGeral.Active := True;
   SDS_ItensPedidoGeral.Active:=True;

    If  CDS_PedidosGeral.RecordCount = 0 then
  Begin
       SQLD_PedidosGeral.Active:=FALSE;
       CDS_PedidosGeral.Active:=FALSE;
       SDS_ItensPedidoGeral.Active:=FALSE;
       SuiButton2.Enabled:= False;
       SuiButton3.Enabled:= False;
       SuiButton4.Enabled:= False;
       MSG_NR.ShowModal;
  end else
  begin
  SuiButton2.Enabled:= True;
  SuiButton3.Enabled:= True;
  SuiButton4.Enabled:= True;
  end;
        Except
       SQLD_PedidosGeral.Active:=FALSE;
       CDS_PedidosGeral.Active:=FALSE;
       SDS_ItensPedidoGeral.Active:=FALSE;
       SuiButton2.Enabled:= False;
       SuiButton3.Enabled:= False;
       SuiButton4.Enabled:= False;
     ErroGravacao.ShowModal;
   end;  
end;

procedure TFormDevolucaoPedido.suiButton3Click(Sender: TObject);
begin
Try
       SuiButton1.Enabled:= False;
       SuiButton2.Enabled:= False;
       SuiButton3.Enabled:= False;
       SuiButton4.Enabled:= False;
       Navigator.Enabled:= False;
       suiDBNavigator1.Enabled:= False;
       suiDBGrid2.Enabled:= False;
       suiDBGrid1.Enabled:= False;
       DateEdit1.Enabled:= False;
       DateEdit2.Enabled:= False;
       SuiButton5.Enabled:= True;
       SuiButton7.Enabled:= True;
       suiNumberEdit1.Enabled:= True;
       suiNumberEdit1.Clear;
       suiNumberEdit1.SetFocus;
        Except
     ErroGravacao.ShowModal;
   end;
end;

procedure TFormDevolucaoPedido.suiNumberEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormDevolucaoPedido.suiNumberEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormDevolucaoPedido.suiButton7Click(Sender: TObject);
begin
Try
       SuiButton1.Enabled:= True;
       SuiButton2.Enabled:= True;
       SuiButton3.Enabled:= True;
       SuiButton4.Enabled:= True;
       Navigator.Enabled:= True;
       suiDBNavigator1.Enabled:= True;
       suiDBGrid2.Enabled:= True;
       suiDBGrid1.Enabled:= True;
       DateEdit1.Enabled:= True;
       DateEdit2.Enabled:= True;
       SuiButton5.Enabled:= False;
       SuiButton7.Enabled:= False;
       suiNumberEdit1.Enabled:= False;
       suiNumberEdit1.Color:= $00E8E8E8;
       suiNumberEdit1.Text:= '';
        Except
     ErroGravacao.ShowModal;
   end;
end;

procedure TFormDevolucaoPedido.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if suiButton5.Enabled = True then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormDevolucaoPedido.suiButton5Click(Sender: TObject);
var
Qnt,QntDevolvida,QntDev,QntTotal,QntDevolver: Real;
Valor, ValorDev,ValorDesconto, comissao, comiss, ValorDevolvido, ValorTotal, Desconto: Currency;
DD, DC: Integer;
DataDev, DataPed: TDate;
begin
DD:= DM.SDS_CONFIGURACOESDDIP.AsInteger;
Qnt:= SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
QntDev:= SDS_ItensPedidoGeralQNT_DEV.AsFloat;
QntTotal:= (Qnt - QntDev);
QntDevolver:= suiNumberEdit1.Value;
ValorDesconto:= SDS_ItensPedidoGeralDESCONTO.AsCurrency;
Desconto:= (ValorDesconto / Qnt);
Valor:= SDS_ItensPedidoGeralPRECO_UNITARIO.AsCurrency;
ValorDev:= SDS_ItensPedidoGeralVAL_DEV.AsCurrency;
ValorTotal:=  (Valor - Desconto) *  QntDevolver;
ValorDevolvido:= (ValorDev + ValorTotal);
DataPed:= CDS_PedidosGeralDATA_PEDIDO.AsDateTime;
DataDev:= (DataPed + DD);
QntDevolvida:= (QntDev + QntDevolver);
comiss:= SDS_ItensPedidoGeralCOMISSAO.AsCurrency;
comissao:= (comiss / Qnt) * QntDevolver;

if Date > DataDev then
begin
MSG.Text:= 'A data para devolução do item está expirada !!!';
MSG.ShowModal;
suiNumberEdit1.Clear;
suiButton7.SetFocus;
end else
if QntDevolver > Qnt then
begin
MSG.Text:= 'A quantidade a devolver não pode ser maior que a quantidade comprada !!!';
MSG.ShowModal;
suiNumberEdit1.Clear;
suiNumberEdit1.SetFocus;
end else
if QntDevolver > QntTotal then
begin
MSG.Text:= 'A quantidade a devolver não pode ser maior que " quantidade comprada - quantidade devolvida" !!!';
MSG.ShowModal;
suiNumberEdit1.Clear;
suiNumberEdit1.SetFocus;
end else
begin
Try
       IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
       begin
         SPC_Estoque.ParamByname('Codigo').AsInteger := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
         SPC_Estoque.ParamByname('Quant').Value :=  QntDevolver/ SDS_ItensPedidoGeralFRACAO.AsFloat;
         SPC_Estoque.ParamByname('Quant_FRACAO').Value :=  QntDevolver;
         SPC_Estoque.ExecProc;
       end else
       BEGIN
         SPC_Estoque.ParamByname('Codigo').AsInteger := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
         SPC_Estoque.ParamByname('Quant').Value :=  QntDevolver;
         SPC_Estoque.ParamByname('Quant_FRACAO').Value :=  QntDevolver;
         SPC_Estoque.ExecProc;
        end;

          SPC_PAG_RET_PEDIDOS.Params[1].AsDate:= DATE;
          SPC_PAG_RET_PEDIDOS.Params[2].AsString:= 'Devolução Parcial de Item do Pedido Nº'+' '+CDS_PedidosGeralCODIGO.Text;
          SPC_PAG_RET_PEDIDOS.Params[3].AsString:= FormPrincipal.UserLogado;
          SPC_PAG_RET_PEDIDOS.Params[4].Value:= ValorTotal;
          SPC_PAG_RET_PEDIDOS.Params[5].AsString:= 'A';
          SPC_PAG_RET_PEDIDOS.Params[6].AsString:= CDS_PedidosGeralNOME_CLIENTE.Text;
          SPC_PAG_RET_PEDIDOS.Params[7].AsString:= CDS_PedidosGeralPAGAMENTO.Text;
          SPC_PAG_RET_PEDIDOS.Params[8].AsString:= 'D';
          SPC_PAG_RET_PEDIDOS.Params[9].AsInteger:= CDS_PedidosGeralCODIGO.AsInteger;
          SPC_PAG_RET_PEDIDOS.Params[10].AsInteger:= CDS_PedidosGeralCODIGO_CLIENTE.AsInteger;
          SPC_PAG_RET_PEDIDOS.Params[11].AsString:= CDS_PedidosGeralTP.AsString;
          SPC_PAG_RET_PEDIDOS.ExecProc;

         { SPC_EstComRetPedidos.Params[1].AsDate:= DATE;
          SPC_EstComRetPedidos.Params[2].AsString:= 'Devolução Parcial de Item do Pedido Nº'+' '+CDS_PedidosGeralCODIGO.Text;
          SPC_EstComRetPedidos.Params[3].AsString:= FormPrincipal.UserLogado;
          SPC_EstComRetPedidos.Params[4].AsString:= CDS_PedidosGeralUSUARIO.Text;
          SPC_EstComRetPedidos.Params[5].Value:= comissao;
          SPC_EstComRetPedidos.Params[6].AsString:= CDS_PedidosGeralNOME_CLIENTE.Text;
          SPC_EstComRetPedidos.Params[7].AsString:= CDS_PedidosGeralPAGAMENTO.Text;
          SPC_EstComRetPedidos.ExecProc;   }

SDS_ItensPedidoGeral.Edit;
SDS_ItensPedidoGeralDEV.Value:= 'P';
SDS_ItensPedidoGeralQNT_DEV.AsFloat:= QntDevolvida;
SDS_ItensPedidoGeralVAL_DEV.AsCurrency:= ValorDevolvido;

TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
          SDS_ItensPedidoGeral.Post;
          SDS_ItensPedidoGeral.ApplyUpdates(0);
          DM.SQLC.Commit(TD);

       SuiButton1.Enabled:= True;
       SuiButton2.Enabled:= True;
       SuiButton3.Enabled:= True;
       SuiButton4.Enabled:= True;
       Navigator.Enabled:= True;
       suiDBNavigator1.Enabled:= True;
       suiDBGrid2.Enabled:= True;
       suiDBGrid1.Enabled:= True;
       DateEdit1.Enabled:= True;
       DateEdit2.Enabled:= True;
       SuiButton5.Enabled:= False;
       SuiButton7.Enabled:= False;
       suiNumberEdit1.Enabled:= False;
       suiNumberEdit1.Color:= $00E8E8E8;
       suiNumberEdit1.Text:= '';

except
SDS_ItensPedidoGeral.Cancel;
ErroGravacao.ShowModal;
end;
end;
end;

procedure TFormDevolucaoPedido.suiButton4Click(Sender: TObject);
var
Qnt: Real;
comissao, ValorTotal: Currency;
DD, DC: Integer;
DataDev, DataPed: TDate;
begin
DD:= DM.SDS_CONFIGURACOESDDIP.AsInteger;
Qnt:= SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
ValorTotal:=  SDS_ItensPedidoGeralPRECO_TOTAL.AsCurrency;
DataPed:= CDS_PedidosGeralDATA_PEDIDO.AsDateTime;
DataDev:= (DataPed + DD);
comissao:= SDS_ItensPedidoGeralCOMISSAO.AsCurrency;

MSG_CDI.Text:= 'Confirma Devolução Total do Item Selecionado ?';
If MSG_CDI.ShowModal = mryes then
begin
if Date > DataDev then
begin
MSG.Text:= 'O Prazo Para Devolução Do Item Está Expirado !!!';
MSG.ShowModal;
end else
IF SDS_ItensPedidoGeralDEV.Value = 'P' THEN
BEGIN
MSG_NCDI.Text:= 'Este item não pode ser devovido por completo! Tente a devolução parcial !!!';
MSG_NCDI.ShowModal;
end else
begin
Try
          IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
          begin
         SPC_Estoque.ParamByname('Codigo').AsInteger := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
         SPC_Estoque.ParamByname('Quant').Value :=  Qnt / SDS_ItensPedidoGeralFRACAO.AsFloat;;
         SPC_Estoque.ParamByname('QUANT_FRACAO').Value :=  Qnt;
         SPC_Estoque.ExecProc;
         end else
         begin
         SPC_Estoque.ParamByname('Codigo').AsInteger := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
         SPC_Estoque.ParamByname('Quant').Value :=  Qnt ;
         SPC_Estoque.ParamByname('QUANT_FRACAO').Value :=  Qnt;
         SPC_Estoque.ExecProc;
         end;

         SPC_PAG_RET_PEDIDOS.Params[1].AsDate:= DATE;
         SPC_PAG_RET_PEDIDOS.Params[2].AsString:= 'Devolução Total de Item do Pedido Nº'+' '+CDS_PedidosGeralCODIGO.Text;
         SPC_PAG_RET_PEDIDOS.Params[3].AsString:= FormPrincipal.UserLogado;
         SPC_PAG_RET_PEDIDOS.Params[4].Value:= ValorTotal;
         SPC_PAG_RET_PEDIDOS.Params[5].AsString:= 'A';
         SPC_PAG_RET_PEDIDOS.Params[6].AsString:= CDS_PedidosGeralNOME_CLIENTE.Text;
         SPC_PAG_RET_PEDIDOS.Params[7].AsString:= CDS_PedidosGeralPAGAMENTO.Text;
         SPC_PAG_RET_PEDIDOS.Params[8].AsString:= 'D';
         SPC_PAG_RET_PEDIDOS.Params[9].AsInteger:= CDS_PedidosGeralCODIGO.AsInteger;
         SPC_PAG_RET_PEDIDOS.Params[10].AsInteger:= CDS_PedidosGeralCODIGO_CLIENTE.AsInteger;
         SPC_PAG_RET_PEDIDOS.Params[11].AsString:= CDS_PedidosGeralTP.AsString;
         SPC_PAG_RET_PEDIDOS.ExecProc;

       {  SPC_EstComRetPedidos.Params[1].AsDate:= DATE;
         SPC_EstComRetPedidos.Params[2].AsString:= 'Devolução Total de Item do Pedido Nº'+' '+CDS_PedidosGeralCODIGO.Text;
         SPC_EstComRetPedidos.Params[3].AsString:= FormPrincipal.UserLogado;
         SPC_EstComRetPedidos.Params[4].AsString:= CDS_PedidosGeralUSUARIO.Text;
         SPC_EstComRetPedidos.Params[5].Value:= comissao;
         SPC_EstComRetPedidos.Params[6].AsString:= CDS_PedidosGeralNOME_CLIENTE.Text;
         SPC_EstComRetPedidos.Params[7].AsString:= CDS_PedidosGeralPAGAMENTO.Text;
         SPC_EstComRetPedidos.ExecProc;    }

SDS_ItensPedidoGeral.Edit;
SDS_ItensPedidoGeralDEV.Value:= 'T';
SDS_ItensPedidoGeralQNT_DEV.AsFloat:= Qnt;
SDS_ItensPedidoGeralVAL_DEV.AsCurrency:= ValorTotal;

TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
          SDS_ItensPedidoGeral.Post;
          SDS_ItensPedidoGeral.ApplyUpdates(0);
          DM.SQLC.Commit(TD);
   except
SDS_ItensPedidoGeral.Cancel;
ErroGravacao.ShowModal;
end;
end;
end;
end;

procedure TFormDevolucaoPedido.suiButton2Click(Sender: TObject);
var
Qnt: Real;
ValorTotal: Currency;
I, Contador, DD, DC: Integer;
DataDev, DataPed: TDate;
begin
DD:= DM.SDS_CONFIGURACOESDCP.AsInteger;
Qnt:= SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
ValorTotal:=  CDS_PedidosGeralVALOR_TOTAL.AsCurrency;
DataPed:= CDS_PedidosGeralDATA_PEDIDO.AsDateTime;
DataDev:= (DataPed + DD);

//SDS_Pedidos.Active:= False;
//SDS_Pedidos.Active:= True;

MSG_CDI.Text:= 'Confirma o Cancelamento Do Pedido Selecionado ?';
If MSG_CDI.ShowModal = mryes then
begin
if Date > DataDev then
begin
MSG.Text:= 'O Prazo Para Cancelamento Do Pedido Está Expirado !!!';
MSG.ShowModal;
end else
IF SDS_ItensPedidoGeral.Locate('DEV','P',[])= TRUE THEN
BEGIN
MSG_NCDI.Text:= 'Este Pedido Não Pode Ser Cancelado! Já Existe Uma Devolução De Item Para Este Pedido';
MSG_NCDI.ShowModal;
end else
IF SDS_ItensPedidoGeral.Locate('DEV','T',[])= TRUE THEN
BEGIN
MSG_NCDI.Text:= 'Este Pedido Não Pode Ser Cancelado! Já Existe Uma Devolução De Item Para Este Pedido';
MSG_NCDI.ShowModal;
end else
begin

//IF SDS_Pedidos.Locate(' CODIGO',CDS_PedidosGeralCODIGO.AsInteger,[])= TRUE THEN
//BEGIN
Try
        if Application.MESSAGEBOX('Deseja gerar o Credito para a venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        begin
         SPC_PAG_RET_PEDIDOS.Params[1].AsDate:= DATE;
         SPC_PAG_RET_PEDIDOS.Params[2].AsString:= 'Cancelamento do Pedido Nº'+' '+CDS_PedidosGeralCODIGO.Text;
         SPC_PAG_RET_PEDIDOS.Params[3].AsString:= FormPrincipal.UserLogado;
         SPC_PAG_RET_PEDIDOS.Params[4].Value:= ValorTotal;
         SPC_PAG_RET_PEDIDOS.Params[5].AsString:= 'A';
         SPC_PAG_RET_PEDIDOS.Params[6].AsString:= suiDBEdit3.Text;
         SPC_PAG_RET_PEDIDOS.Params[7].AsString:= suiDBEdit5.Text;
         SPC_PAG_RET_PEDIDOS.Params[8].AsString:= 'C';
         SPC_PAG_RET_PEDIDOS.Params[9].AsInteger:= CDS_PedidosGeralCODIGO.AsInteger;
         SPC_PAG_RET_PEDIDOS.Params[10].AsInteger:= CDS_PedidosGeralCODIGO_CLIENTE.AsInteger;
         SPC_PAG_RET_PEDIDOS.Params[11].AsString:= CDS_PedidosGeralTP.AsString;
         SPC_PAG_RET_PEDIDOS.ExecProc;
       end else
       begin
       
         if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;

         with dm.IBSQL do
          begin
           close;
           sql.Clear;
            sql.Add('delete FROM movimento_diario where codigo_venda = :venda');
            Parambyname('venda').AsString := CDS_PedidosGeralCODIGO.text;
            ExecQuery;
               end;
            dm.IBTransaction.CommitRetaining;

         if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;

         with dm.IBSQL do
          begin
           close;
           sql.Clear;
           sql.Add('delete FROM crediario where codigo_compra = :venda');
           Parambyname('venda').AsString := CDS_PedidosGeralCODIGO.text;
           ExecQuery;
           end;
            dm.IBTransaction.CommitRetaining;


         if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;

         with dm.IBSQL do
          begin
           close;
           sql.Clear;
           sql.Add('delete FROM cheques where codigo_compra = :venda');
           Parambyname('venda').AsString := CDS_PedidosGeralCODIGO.text;
           ExecQuery;
            end;
            dm.IBTransaction.CommitRetaining;

         if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
          with dm.IBSQL do
          begin
           close;
           sql.Clear;
           sql.Add('delete FROM contas_receber_adm_cartao where cod_ven = :venda');
           Parambyname('venda').AsString := CDS_PedidosGeralCODIGO.text;
           ExecQuery;
             end;
            dm.IBTransaction.CommitRetaining;
       end;

       IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
       begin
         SDS_ItensPedidoGeral.First;
         Contador:=SDS_ItensPedidoGeral.RecordCount;
         For I:=1 to Contador do
         begin
         SPC_Estoque.ParamByname('Codigo').AsInteger := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
         SPC_Estoque.ParamByname('Quant').Value := SDS_ItensPedidoGeralQUANTIDADE.AsFloat / SDS_ItensPedidoGeralFRACAO.AsFloat;
         SPC_Estoque.ParamByname('QUANT_FRACAO').Value := SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
         SPC_Estoque.ExecProc;
         SDS_ItensPedidoGeral.Next;
         end;
       end else
       BEGIN
         SDS_ItensPedidoGeral.First;
         Contador:=SDS_ItensPedidoGeral.RecordCount;
         For I:=1 to Contador do
         begin
         SPC_Estoque.ParamByname('Codigo').AsInteger := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
         SPC_Estoque.ParamByname('Quant').Value := SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
         SPC_Estoque.ParamByname('QUANT_FRACAO').Value := SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
         SPC_Estoque.ExecProc;
         SDS_ItensPedidoGeral.Next;
         end;
        end;


               SDS_ItensPedidoGeral.First;
               For I:=1 to Contador do
               begin
                   // BUSCA ESTOQUE
                 if dm.IBTransaction.Active then
                   dm.IBTransaction.Commit;
                dm.IBTransaction.StartTransaction;

                  try
                    with dm.Consulta do
                       begin
                          close;
                          sql.Clear;
                          sql.add('SELECT ESTOQUE, FRACAO FROM PRODUTOS WHERE CODIGO = :CODPRO');
                          Parambyname('CODPRO').AsInteger:= StrToInt(SDS_ItensPedidoGeralCODIGO_PROD.Text);
                          ExecQuery;
                          estoque    := fieldbyname('ESTOQUE').AsCurrency;
                          FRACAO     := fieldbyname('FRACAO').AsCurrency;

                       end;
                    dm.IBTransaction.Commit;
                  except
                    dm.IBTransaction.StartTransaction;
                    showmessage('Erro ao buscar o custo do produto');
                  end;


                 dm.ProxCod.Close;
                 dm.ProxCod.SQL.Clear;
                 dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
                 DM.ProxCod.Open;

                if DM.IBTransaction.Active then
                   DM.IBTransaction.Commit;
                DM.IBTransaction.StartTransaction;
                try
                  try
                    with logEst do
                       begin
                          close;
                          parambyname('ID_EMPRESA').AsInteger            := strtoint(dm.sds_empresacodigo.Text);
                          parambyname('ID_FILIAL').AsInteger             := strtoint(dm.sds_empresacodigo.Text);
                          parambyname('ID_AJUSTE').AsInteger             := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                          Parambyname('ID_PRODUTO').AsInteger            := SDS_ItensPedidoGeralCODIGO_PROD.AsInteger;
                          Parambyname('ID_LOTE').Value                   := null;
                          Parambyname('ID_PRODUTO_SERIE').Value          := null;
                          Parambyname('DATA').AsDateTime                 := date;
                          Parambyname('ID_USUARIO').Asinteger            := dm.sds_usuariosCodigo.AsInteger;
                          parambyname('ID_MOVIMENTO').AsInteger          := strtoint(CDS_PedidosGeralCODIGO.text);
                          Parambyname('FRACAO').Asfloat                  := strtoint(SDS_ItensPedidoGeralFracao.Text);
                          Parambyname('ESTOQUE_ANTERIOR').Asfloat        := ESTOQUE ;
                          Parambyname('QUANTIDADE').Asfloat              := SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
                          Parambyname('ESTOQUE_POSTERIOR').Asfloat       := ESTOQUE + SDS_ItensPedidoGeralQUANTIDADE.AsFloat;
                          Parambyname('SITUACAO_ESTOQUE').ASINTEGER      :=  3; // 3- CANCELAMENTO
                          Parambyname('OPERACAO').TEXT                   := '+';
                          Parambyname('ACAO_BD').TEXT                    := 'I';
                          Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                          ExecSQL;
                       end;
                    DM.IBTransaction.Commit;

                  except
                    DM.IBTransaction.Rollback;
                    showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                                'Verifique que já foi lançFDo');
                  end;
                finally
                  logEst.Close;
                 end;
                 SDS_ItensPedidoGeral.Next;
                end;

          CDS_PedidosGeral.Edit;
          CDS_PedidosGeralSITUACAO.Value:= 'C';


          CDS_PedidosGeral.Post;
          CDS_PedidosGeral.ApplyUpdates(0);

          SQLD_PedidosGeral.Active:=FALSE;
          CDS_PedidosGeral.Active:=FALSE;
          SDS_ItensPedidoGeral.Active:=FALSE;

          suiButton1Click(Sender);

   except
CDS_PedidosGeral.Cancel;
ErroGravacao.ShowModal;
end;
end;
end;
end;


procedure TFormDevolucaoPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
