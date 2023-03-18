unit Inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, RXCtrls, DBCtrls, StdCtrls, Mask,
  RXDBCtrl, SUIDBCtrls, SUIButton, ExtCtrls, SUIDlg, FMTBcd, DB, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RxToolEdit;

type
  TForminventario = class(TForm)
    pnldados: TPanel;
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    db_nome: TDBEdit;
    RxLabel6: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel1: TRxLabel;
    XDBGrid2: TXDBGrid;
    RxLabel4: TRxLabel;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    SPC_Inv: TSQLStoredProc;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Qrysaldo: TFDQuery;
    QrysaldoID_EMPRESA: TIntegerField;
    QrysaldoID_FILIAL: TIntegerField;
    QrysaldoID_AJUSTE: TIntegerField;
    QrysaldoID_PRODUTO: TIntegerField;
    QrysaldoID_LOTE: TStringField;
    QrysaldoID_PRODUTO_SERIE: TStringField;
    QrysaldoDATA: TDateField;
    QrysaldoID_USUARIO: TIntegerField;
    QrysaldoID_MOVIMENTO: TIntegerField;
    QrysaldoFRACAO: TIntegerField;
    QrysaldoESTOQUE_ANTERIOR: TFMTBCDField;
    QrysaldoQUANTIDADE: TFMTBCDField;
    QrysaldoESTOQUE_POSTERIOR: TFMTBCDField;
    QrysaldoSITUACAO_ESTOQUE: TIntegerField;
    QrysaldoOPERACAO: TStringField;
    QrysaldoACAO_BD: TStringField;
    QrysaldoSITUACAO_ESTOQUE_OLD: TIntegerField;
    QrysaldoCOD_VENDA: TIntegerField;
    QrysaldoCOD_COMPRA: TIntegerField;
    QrysaldoHISTORICO: TStringField;
    QrysaldoHORA: TTimeField;
    Procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forminventario: TForminventario;

implementation

uses ModuleDados1, ModulodeDados, Principal;

{$R *.dfm}

Procedure TForminventario.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm1.Sds_Inventario.State = dsBrowse);
BTNNOVO.Enabled:= (dm1.Sds_Inventario.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm1.Sds_Inventario.State = dsBrowse);
BTNSALVAR.Enabled:= (dm1.Sds_Inventario.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm1.Sds_Inventario.State in [dsInsert, dsEdit]);
//BTNEDITAR.Enabled:= (DM1.Sds_Red_Z.State = dsBrowse);
end;

procedure TForminventario.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TForminventario.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TForminventario.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
//BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
end;

procedure TForminventario.btnNovoClick(Sender: TObject);
var
  ULT :Integer;
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
try
  pnldados.Enabled := True;
   DM1.Sds_inventario.Last;
   ULT := DM1.Sds_inventarioID_INV.AsInteger;
   DM1.Sds_inventario.Insert;
   dm1.Sds_inventarioID_INV.Value := ULT + 1;
   dm1.Sds_inventarioVL_INV.AsFloat := 0;
   HabilitaPanel;
   AtualizaManutencao;
   DBDateEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

end;

procedure TForminventario.btnCancelarClick(Sender: TObject);
begin
Try
      pnldados.Enabled := False;
      DM1.Sds_inventario.Cancel;
  if  DM1.Sds_inventario.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TForminventario.btnSalvarClick(Sender: TObject);
var
  i, contador : Integer;
  A: Real;
begin
// Try

          pnldados.Enabled := False;
          DM1.Sds_inventarioDT_REG.AsDateTime := Date;
          DM1.Sds_inventario.Post;
          DM1.Sds_inventario.ApplyUpdates(0);

        if  CheckBox1.Checked = True then
        begin
          dm1.SDS_V_INVENTARIO.Active := False;
          dm1.SDS_V_INVENTARIO.Active := True;
         TRY
              dm1.SDS_V_INVENTARIO.First;
              Contador:= dm1.SDS_V_INVENTARIO.RecordCount;
              For I:=1 to Contador do
              begin
              SPC_Inv.Params[0].Value := 0;
              SPC_Inv.Params[1].VALUE := DBEdit1.Text;
              SPC_Inv.Params[2].Value := dm1.SDS_V_INVENTARIOCODIGO.Text;
              SPC_Inv.Params[3].text  := '1.1.4.01.01';
             // SPC_Inv.Params[3].Text  := dm1.SDS_V_INVENTARIOUNIDADE.Text;
             // SPC_Inv.Params[4].Value := dm1.SDS_V_INVENTARIOESTOQUE.AsFloat;
             // SPC_Inv.Params[5].Value := dm1.SDS_V_INVENTARIOPRECO_CUSTO.AsFloat;
             // SPC_Inv.Params[6].Value := dm1.SDS_V_INVENTARIOVALOR_EST_CUSTO.AsFloat;
            //  SPC_Inv.Params[7].text  := dm1.SDS_V_INVENTARIODESCRICAO.Text;

             // SPC_Inv.Params[9].text  :=  dm1.SDS_V_INVENTARIOCOD_BARRAS.Text;
              SPC_Inv.ExecProc;
              dm1.SDS_V_INVENTARIO.Next;
              end;
              except
               MsgErro.Text:= 'Ocorreu um Erro. na Gravação dos Itens do Inventário !!!';
               MsgErro.ShowModal;
              end;

              end else
              if  CheckBox2.Checked = True then
              begin

              dm.SDS_PRODUTOS.Active := false;
              DM.Sds_produtos.sql.clear;
              DM.Sds_produtos.sql.add('select * from PRODUTOS ORDER BY CODIGO ASC');
              dm.SDS_PRODUTOS.Active := True;
              dm.SDS_PRODUTOS.First;
              Contador:= dm.SDS_PRODUTOS.RecordCount;
              For I:=1 to Contador do
              begin
              dm.ProxCod.Close;
              dm.ProxCod.SQL.Clear;
              dm.ProxCod.SQL.Add('select max(SEQUENCIA) as N_CODIGO FROM SPED_INVENTARIO_ITENS');
              DM.ProxCod.Open;
              if dm.IBTransaction.Active then
              dm.IBTransaction.Commit;
              dm.IBTransaction.StartTransaction;

              DM.QConsulta.SQL.Clear;
              DM.QConsulta.SQL.Add(' INSERT INTO SPED_INVENTARIO_ITENS (SEQUENCIA, ID_INV, COD_ITEM, UND_ITEN,'+
                      'QTD_ITEN, VLR_UNIT, VL_ITEM_TOTAL, TXT_COMPLEN, COD_CONTA, COD_BARRAS, DATA, TIPO, UND) VALUES '+
                      '(:SEQUENCIA, :ID_INV, :COD_ITEM, :UND_ITEN, :QTD_ITEN, :VLR_UNIT,:VL_ITEM_TOTAL,'+
                      ':TXT_COMPLEN, :COD_CONTA, :COD_BARRAS, :DATA, :TIPO, :UND)' );

              DM.QConsulta.Parambyname('SEQUENCIA').AsInteger      :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
              DM.QConsulta.Parambyname('ID_INV').AsInteger         :=  StrToInt(DBEdit1.Text);
              DM.QConsulta.Parambyname('COD_ITEM').AsInteger       :=  dm.SDS_PRODUTOSCODIGO.asinteger;
              DM.QConsulta.Parambyname('UND_ITEN').AsString        :=  dm.SDS_PRODUTOSunidade.text;

              Qrysaldo.Close;
              Qrysaldo.Params.ParamByName('INICIO').AsString       := '01/01/1900';
              Qrysaldo.Params.ParamByName('FIM').AsDate            := DBDateEdit1.Date;
              Qrysaldo.Params.ParamByName('COD_PRO').AsInteger     := dm.SDS_PRODUTOSCODIGO.asinteger;
              Qrysaldo.Open;

              if not Qrysaldo.Eof then
              DM.QConsulta.Parambyname('QTD_ITEN').ascurrency      :=  QrysaldoESTOQUE_POSTERIOR.AsCurrency
              else
              DM.QConsulta.Parambyname('QTD_ITEN').ascurrency      :=  DM.SDS_PRODUTOSESTOQUE.ascurrency;
              DM.QConsulta.Parambyname('VLR_UNIT').AsCurrency      :=  dm.SDS_PRODUTOSPRECO_CUSTO.ascurrency;
              DM.QConsulta.Parambyname('VL_ITEM_TOTAL').AsCurrency :=  dm.SDS_PRODUTOSPRECO_CUSTO.ascurrency * DM.QConsulta.Parambyname('QTD_ITEN').ascurrency;
              DM.QConsulta.Parambyname('TXT_COMPLEN').AsString     :=  dm.SDS_PRODUTOSDESCRICAO.text;
              DM.QConsulta.Parambyname('COD_CONTA').Asstring       :=  '1.1.4.01.01';
              DM.QConsulta.Parambyname('COD_BARRAS').Asstring      :=  dm.SDS_PRODUTOSCODIGO_BARRAS.text;
              DM.QConsulta.Parambyname('DATA').AsDate              := DBDateEdit1.Date;
              DM.QConsulta.Parambyname('TIPO').Asstring            :=  dm.SDS_PRODUTOSTIPO_ATIVIDADE.text;
              DM.QConsulta.Parambyname('UND').Asstring             :=  dm.SDS_PRODUTOSDESC_UNIDADE.text;
              DM.QConsulta.ExecSQL;

              dm.IBTransaction.Commit;
              DM.SDS_PRODUTOS.Next;
              end;
              end;

            // soma inventario
              dm1.Sds_Inventario_itens.Active  := false;
              dm1.Sds_Inventario_itens.Active  := true;
              dm1.Sds_inventario.Edit;
              BEGIN
              dm1.Sds_Inventario_itens.First;
              A:= 0;
              A:= A + dm1.Sds_Inventario_itensVL_ITEM_TOTAL.AsFloat;
              dm1.Sds_Inventario_itens.Next;
              DM1.Sds_inventarioVL_INV.AsFloat := A;
              While not dm1.Sds_Inventario_itens.Eof do
              begin
              A:= A + dm1.Sds_Inventario_itensVL_ITEM_TOTAL.AsFloat;
              dm1.Sds_Inventario_itens.Next;
              DM1.Sds_inventarioVL_INV.AsFloat := A;
              end;
              dm1.Sds_Inventario_itens.last;
              end;
              DM1.Sds_inventario.Post;
              DM1.Sds_inventario.ApplyUpdates(0);

          AtualizaManutencao;
          DesabilitaPanel;






{   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end; }

end;

procedure TForminventario.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM1.Sds_inventario.Delete;
    DM1.Sds_inventario.ApplyUpdates(0);
    DM1.Sds_Inventario_itens.Refresh;

 end;
 if DM1.Sds_inventario.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
 Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
 end;
end;
end;

end;

procedure TForminventario.FormShow(Sender: TObject);
begin
dm1.Sds_inventario.Active  := False;
dm1.Sds_inventario.Active  := True;
dm1.Sds_Inventario_itens.Active  := true;
end;

procedure TForminventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := CAFREE;
Forminventario := nil;
end;

procedure TForminventario.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #27 then
CLOSE;
end;

procedure TForminventario.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = True then
CheckBox2.Checked:= False
else
CheckBox2.Checked:= true;
end;

procedure TForminventario.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = True then
CheckBox1.Checked:= False
else
CheckBox1.Checked:= true;
end;

end.
