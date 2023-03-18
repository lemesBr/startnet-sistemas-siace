unit inventarioEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, ExtCtrls, 
  SUIButton, DB, FMTBcd, IBSQL, IBCustomDataSet, IBDatabase,
  IBQuery, ACBrBase, ACBrLCB, SqlExpr, DBClient, SUIDlg,
  RXDBCtrl, XDBGrids, Mask, rxToolEdit, AlignEdit, Buttons, NxPageControl,
  Menus, AdvGlowButton;

type
  TFormInventarioEstoque = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label10: TLabel;
    MsgInformacao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    XDBGrid1: TXDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1codigo: TIntegerField;
    ClientDataSet1cod_barras: TStringField;
    ClientDataSet1custo: TFMTBCDField;
    ClientDataSet1venda1: TFMTBCDField;
    ClientDataSet1venda2: TFMTBCDField;
    ClientDataSet1ativo: TStringField;
    ClientDataSet1descricao: TStringField;
    ClientDataSet1referencia: TStringField;
    ClientDataSet1unidade: TStringField;
    ClientDataSet1estoque: TFMTBCDField;
    ComboEdit1: TRxDBComboEdit;
    SPC_ATUALIZA: TSQLStoredProc;
    ClientDataSet1Fracao: TIntegerField;
    ClientDataSet1qaunt_fracao: TFMTBCDField;
    ClientDataSet1seq: TIntegerField;
    lUltimaLeitura: TLabel;
    ACBrLCB5: TACBrLCB;
    suiButton2: TsuiButton;
    EdtCodLocal: TAlignEdit;
    Label6: TLabel;
    BtnConsLocal: TSpeedButton;
    EdtNomeLocal: TEdit;
    Label2: TLabel;
    cod_inv: TAlignEdit;
    Label1: TLabel;
    Label7: TLabel;
    QInsInv: TIBQuery;
    IBTRInv: TIBTransaction;
    QUpdinv: TIBQuery;
    InsItem: TIBQuery;
    QOrdem: TIBQuery;
    QOrdemORDEM: TIntegerField;
    FDvGlowButton1: TAdvGlowButton;
    FDvGlowButton2: TAdvGlowButton;
    Panel4: TPanel;
    Salvar: TAdvGlowButton;
    FDvGlowButton4: TAdvGlowButton;
    FDvGlowButton5: TAdvGlowButton;
    FDvGlowButton6: TAdvGlowButton;
    Cancelar: TAdvGlowButton;
    btnInserir: TAdvGlowButton;
    BtnEditar: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    BtnSalvar: TAdvGlowButton;
    BtnConsultar: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    EdtData: TDateEdit;
    FDvGlowButton8: TAdvGlowButton;
    XDBGrid2: TXDBGrid;
    DSQBuscaItens: TDataSource;
    QBuscaItens: TIBQuery;
    QBuscaItensCOD_INVENTARIO: TIntegerField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensCOD_PRODUTO: TIntegerField;
    QBuscaItensCOD_BARRAS: TIBStringField;
    QBuscaItensREFERNCIA: TIBStringField;
    QBuscaItensDESCRICAO_NOVA: TIBStringField;
    QBuscaItensQUANTIDADE: TIBBCDField;
    QBuscaItensQUANT_FRACIONADA: TIBBCDField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensPRECO_CUSTO: TIBBCDField;
    QBuscaItensPRECO_VENDA: TIBBCDField;
    QBuscaItensPRECO_VENDA2: TIBBCDField;
    QBuscaItensORDEM: TIntegerField;
    QBuscaItensCOD_LOCAL_ESTOQUE: TIntegerField;
    QBuscaItensSTATUS: TIBStringField;
    IBSQLInv: TIBSQL;
    btnCancelar: TAdvGlowButton;
    QDelInv: TIBQuery;
    Label3: TLabel;
    Label4: TLabel;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    PopupMenu1: TPopupMenu;
    a1: TMenuItem;
    procedure BTNSAIRClick(Sender: TObject);
    procedure BTNInserirClick(Sender: TObject);
    procedure BTNSALVARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure oplick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure ExlcuirSelecionados1Click(Sender: TObject);
    procedure suiRadioButton1Click(Sender: TObject);
    procedure suiRadioButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Click(Sender: TObject);
    procedure ComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure InsereItem;
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure XDBGrid1ColExit(Sender: TObject);
    procedure ACBrLCB5LeCodigo(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Vende(Sender: TObject);
    procedure LerIni;
    procedure BtnConsLocalClick(Sender: TObject);
    function  Ordem : integer;
    procedure BtnClick(Sender: TObject);
    procedure EdtCodLocalExit(Sender: TObject);
    procedure EdtCodLocalEnter(Sender: TObject);
    procedure EdtCodLocalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodLocalKeyPress(Sender: TObject; var Key: Char);
    procedure SalvarClick(Sender: TObject);
    procedure FDvGlowButton8Click(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure a1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      NItem, NVALOR: INTEGER;
  end;

var
  FormInventarioEstoque: TFormInventarioEstoque;
  TD:TTransactionDesc;
   cPrecoCusto, CUSTO_MEDIO, PRECO_ANT, estoque  :Real;

implementation

uses Principal, Z_RotinasGerais, ModulodeDadosConsultas, ModulodeDados,
  ConsProdutos, IniFiles, UConsLocaisEstoque, Ubibli1;

{$R *.dfm}

procedure TFormInventarioEstoque.InsereItem;
  var
  N:Integer;
  begin
 ClientDataSet1.Edit;
 XDBGRID1.COLUMNS.Grid.Fields[1].AsString   := DM.SDS_PRODUTOSREFERENCIA.Text;
 xDBGRID1.COLUMNS.Grid.Fields[2].AsString   := DM.SDS_PRODUTOSDESCRICAO.Value;
 ClientDataSet1UNIDADE.Text                 := DM.SDS_PRODUTOSDESC_UNIDADE.TEXT;
 xDBGRID1.COLUMNS.Grid.Fields[4].AsString   := DM.SDS_PRODUTOSestoque.Text;
 xDBGRID1.COLUMNS.Grid.Fields[5].AsString   := DM.SDS_PRODUTOSFRACAO.Text;
 xDBGRID1.COLUMNS.Grid.Fields[6].AsString   := DM.SDS_PRODUTOSESTOQUE_FRACAO.Text;
 xDBGRID1.COLUMNS.Grid.Fields[7].AsString   := DM.SDS_PRODUTOSPRECO_custo.Text;
 xDBGRID1.COLUMNS.Grid.Fields[8].AsString   := DM.SDS_PRODUTOSPRECO_VENDA.Text;
 xDBGRID1.COLUMNS.Grid.Fields[9].AsString   := DM.SDS_PRODUTOSPRECO_VENDA2.Text;
 xDBGRID1.COLUMNS.Grid.Fields[10].AsString   := DM.SDS_PRODUTOSATIVO.Text;
 ClientDataSet1codigo.Text                  := DM.SDS_PRODUTOSCODIGO.Text;

 end;

function TFormInventarioEstoque.Ordem : integer;
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
    with QOrdem do
      begin
         close;
         Parambyname('codinv').Value  := cod_inv.Text;
         Open;
         result:= QOrdemORDEM.Value + 1;
      end;
   dm.IBTransaction.Commit;
   QOrdem.Close;
end;


procedure TFormInventarioEstoque.BTNSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFormInventarioEstoque.BTNInserirClick(Sender: TObject);
begin
If FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para inserir Registros. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
If FormPrincipal.Label2.Caption ='S'then
begin
Try
  while not clientDataset1.EOF do
  begin
  ClientDataset1.Delete
  end;

     iEmp := dm.SDS_EmpresaCODIGO.AsInteger;
     EdtData.Date := Date;
     EdtCodLocal.Text := '1';
     EdtCodLocalExit(sender);
     Panel1.Enabled := true;
     
  {if not panel5.Enabled then
     begin
        showmessage('Acerto já gravado');
        exit;
     end;  }
   if EdtCodLocal.Text = '' then
     begin
        ShowMessage('Digite o Codigo do Local do estoque... para continuar');
        EdtCodLocal.SetFocus;
        exit;
     end;

  if IBTRInv.Active then
     IBTRInv.Commit;
  IBTRInv.StartTransaction;
  if Panel1.Enabled = true then
     begin
        try
          try
            with QInsInv do
               begin
                  close;
                  cod_inv.Text:= inttostr(prxcod('inventario_estoque', 'cod_inventario', dm.IBTransaction, dm.ibsqlcod));
                  Parambyname('CODINV').AsInteger  := strtoint(cod_inv.Text);
                  Parambyname('CODEMP').AsInteger  := iEmp;
                  Parambyname('CODUSU').AsInteger  := dm.SDS_UsuariosCODIGO.AsInteger;
                  Parambyname('DATAINV').AsDate    := EdtData.Date;
                  Parambyname('LOCAL').AsInteger   := strtoint(EdtCodLocal.Text);
                  ExecSQL;
                  panel1.Enabled:= false;
                  panel2.Enabled:= true;
               end;
            IBTRInv.Commit;
            // Botoes('G');
          except
            IBTRInv.Rollback;
            showmessage('Erro ao Gravar o Inventario');
            panel1.Enabled:= false;
            panel2.Enabled:= true;
          end;
        finally
          QInsInv.Close;
          BTNSALVAR.Enabled   := true;
          BtnExcluir.Enabled  := true;
        end;
     end
  else
     begin
        try
          try
            with QUpdinv do
               begin
                  close;
                  Parambyname('codinv').AsInteger  := strtoint(cod_inv.Text);
                  Parambyname('datainv').AsDate    := EdtData.Date;
                 // Parambyname('obs').AsString      := trim(MemoOBS.Text);
                  ExecSQL;
               end;
            IBTRInv.Commit;
            panel1.Enabled:= false;
            panel2.Enabled:= true;
            //Botoes('G');
          except
            IBTRInv.Rollback;
            showmessage('Erro ao Gravar o Inventário');
          end;
        finally
          QUpdinv.Close;
          BTNSALVAR.Enabled := true;
          BtnExcluir.Enabled:= true;
        end;
     end;

 // BuscaItens;
 // LimpaItens;  

    ClientDataSet1.Insert;
    ClientDataSet1.edit;
    NItem:= 1;
    ClientDataset1.FieldByname('SEQ').AsInteger:=(NItem);
    Panel1.Enabled := false;
    Panel2.Enabled := true;
    BTNCANCELAR.Enabled := TRUE;
    BTNSALVAR.Enabled := TRUE;
    BTNEDITAR.Enabled := False;
    btnInserir.Enabled := False;
    xDBGRID1.Enabled := TRUE;
    ComboEdit1.Enabled := True;
    xDBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
    ComboEdit1.Visible := True;
    ComboEdit1.SetFocus;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormInventarioEstoque.BTNSALVARClick(Sender: TObject);
var
  E,CONTADOR : Integer;
begin
 Try
   begin
            ClientDataSet1.Last;
            with ClientDataSet1 do
            while ClientDataSet1descricao.AsString ='' do
            ClientDataSet1.Delete;
            ClientDataSet1.Next;
            ClientDataSet1.First;

            ClientDataSet1.Last;
            with ClientDataSet1 do
            while ClientDataSet1cod_barras.AsString ='' do
            ClientDataSet1.Delete;
            ClientDataSet1.Next;
            ClientDataSet1.First;

        
   ClientDataSet1.First;
   Contador:=ClientDataSet1.RecordCount;
   For E:=1 to Contador do
   BEGIN
    if IBTRInv.Active then
       IBTRInv.Commit;
    IBTRInv.StartTransaction;
     try
      try
         if ClientDataSet1.FieldByname('cod_barras').AsString = '' then
         begin
           ShowMessage('Produto '+ClientDataSet1.FieldByname('codigo').AsString +' está com codigo de barras em branco nao sera possivel gravar');
           Exit;
         end;

         with InsItem do
          begin
            close;
            parambyname('CODINV').AsInteger    := strtoint(cod_inv.Text);
            parambyname('CODPRO').AsInteger    := ClientDataSet1.FieldByname('codigo').AsInteger;;
            Parambyname('CODBAR').Asstring     := ClientDataSet1.FieldByname('cod_barras').AsString;
            Parambyname('REF').Asstring        := ClientDataSet1.FieldByname('referencia').AsString;
            Parambyname('DESC').Asstring       := ClientDataSet1.FieldByname('descricao').AsString;
            parambyname('QUANT').AsCurrency    := ClientDataSet1.FieldByname('estoque').Value;
            parambyname('QUANT_F').AsCurrency  := ClientDataSet1.FieldByname('qaunt_fracao').Value;
            parambyname('FRACAO').Asinteger    := ClientDataSet1Fracao.Value;
            Parambyname('CODEMP').AsInteger    := iEmp;
            Parambyname('CUSTO').AsCurrency    := ClientDataSet1.FieldByname('custo').Value;
            Parambyname('VENDA').AsCurrency    := ClientDataSet1.FieldByname('venda1').Value;
            Parambyname('VENDA2').AsCurrency   := ClientDataSet1.FieldByname('venda2').Value;
            Parambyname('ORDEM').AsInteger     := ordem;
            Parambyname('LOCAL').AsInteger     := strtoint(EdtCodLocal.Text);
            Parambyname('STATUS').AsString     := 'P';
            ExecSQL;
           end;

       IBTRInv.Commit;

     // atualizaDataValidade;
    except
      IBTRInv.Rollback;
      showmessage('Erro ao Gravar o Item, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
    finally
    InsItem.Close;
   end;
    ClientDataSet1.Next;
   end;


   BTNSALVAR.Enabled := FALSE;
   BTNCANCELAR.Enabled := FALSE;
   BTNEDITAR.Enabled := True;
   btnInserir.Enabled := True;
   Panel1.Enabled := false;
   Panel2.Enabled := false;
   end;
   {DM.SDS_PRODUTOS.Active :=False;
   DM.SDS_PRODUTOS.Active :=True;  }
     Except
   MsgErro.Text:= 'O Sistema não Conseguiu Salvar as Informações, Tente Novamente!!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormInventarioEstoque.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{if ClientDataSet1.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.ShowModal;
   CanClose := False;
end;   }


If BTNEDITAR.Enabled = False then
 //if DM.Sds_pedidos.State in [dsInsert] then
  begin
   // Application.MESSAGEBOX('Antes de Sair Você Deve Salvar ou Cancelar a Venda !!!', 'Atenção', MB_ICONASTERISK + MB_OK  + MB_DEFBUTTON2);
  if Application.MESSAGEBOX('Atenção!!! Antes de Fechar a janela você deve Cancelar a operação?', 'Confirmar', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1) = ID_ok then
  BEGIN
  CanClose := False ;
  Exit;
  end else
  ClientDataSet1.Cancel;
  ClientDataSet1.CancelUpdates;
  //CanClose := False;
  end;
end;

procedure TFormInventarioEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormInventarioEstoque:=nil;
//dm.Sds_produtos.Active:=FALSE;
end;

procedure TFormInventarioEstoque.oplick(Sender: TObject);
begin

     BTNSALVAR.Enabled := False;
     BTNEDITAR.Enabled := TRUE;
     btnInserir.Enabled := TRUE;

     if Application.MessageBox('Confirma o Cancelamento do Inventario?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
        if IBTRInv.Active then
           IBTRInv.Commit;
        QBuscaItens.Close;
        IBTRInv.StartTransaction;
        try
          try
            with QDelInv do
               begin
                  close;
                  Parambyname('codinv').AsInteger:= strtoint(cod_inv.Text);
                  ExecSQL;
               end;
            IBTRInv.Commit;
            panel1.Enabled:= false;
            panel2.Enabled:= false;
          //  Botoes('E');
          except
            IBTRInv.Rollback;
            showmessage('Erro ao Excluir o Inventario');
         end;
        finally
          QDelInv.Close;
        end;
     end;

     EdtData.Clear;
     EdtCodLocal.Clear;
     cod_inv.Clear;


  while not ClientDataSet1.Eof do
   begin
     ClientDataSet1.Delete;
     end;

end;

procedure TFormInventarioEstoque.FormShow(Sender: TObject);
begin
// SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
//DM.SDS_PRODUTOS.Filtered := False;
   NxPageControl1.ActivePageIndex := 0;
end;

procedure TFormInventarioEstoque.Excluir1Click(Sender: TObject);
begin
MsgConfirmacao.Text:= 'Confirma Exclusão?';
if MsgConfirmacao.Showmodal = mryes then
begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    // DMC.Qryprodutos.Delete;
    dm.Sds_produtos.Delete;
    dm.Sds_produtos.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if dm.Sds_produtos.RecordCount = 0 then  //HabilitaNovo else AtualizaManutencao;
       Except
      DM.SQLC.Rollback(TD);
      MsgErro.Text:= 'Ocorreu um Erro ao Excluir o registro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.Showmodal;
end;
end;
END;



procedure TFormInventarioEstoque.ExlcuirSelecionados1Click(Sender: TObject);
var
chek : string;
begin
chek :='T';
  MsgConfirmacao.Text:= 'Confirma Exclusão? Após a Confirmação não há retorno dos dados, Confirma?';
  if MsgConfirmacao.Showmodal = mryes then
      begin
            DM.SDS_PRODUTOS.Active := False;
            DM.SDS_PRODUTOS.Active := True;
           { DM.SDS_PRODUTOS.Filtered := False;
            DM.SDS_PRODUTOS.Filter := CHEK_BOX.Value ='T';
            DM.SDS_PRODUTOS.Filtered := True;}

            xDBGRID1.cursor:=crhourglass;
            DM.SDS_produtos.first;
            repeat
            if DM.SDS_PRODUTOSCHEK_BOX.Text ='T' then
            DM.SDS_produtos.delete;
            if DM.SDS_PRODUTOSCHEK_BOX.Text ='T' then
            DM.SDS_produtos.delete;
            DM.SDS_produtos.ApplyUpdates(0);
            DM.SDS_PRODUTOS.Next;
            until DM.SDS_produtos.eof;
            DM.SDS_produtos.refresh;
            xDBGRID1.refresh;
            DM.SDS_produtos.first;
            xDBGRID1.cursor:=crdefault;
  //            DM.SDS_PRODUTOS.Filtered := False;
            end;

end;

procedure TFormInventarioEstoque.suiRadioButton1Click(Sender: TObject);
begin
Try
xDBGRID1.cursor:=crhourglass;
dm.SDS_PRODUTOS.first;
repeat
dm.SDS_PRODUTOS.edit;
dm.SDS_PRODUTOSCHEK_BOX.Value:='T';
dm.SDS_PRODUTOS.Post;
dm.SDS_PRODUTOS.ApplyUpdates(0);
dm.SDS_PRODUTOS.Next;
until dm.SDS_PRODUTOS.eof;
dm.SDS_PRODUTOS.refresh;
xDBGRID1.refresh;
dm.SDS_PRODUTOS.first;
xDBGRID1.cursor:=crdefault;
except
dm.SDS_PRODUTOS.cancel;
end;
dm.SDS_PRODUTOS.First; 
end;

procedure TFormInventarioEstoque.suiRadioButton2Click(Sender: TObject);
begin
try
xDBGRID1.cursor:=crhourglass;
dm.SDS_PRODUTOS.first;
repeat
dm.SDS_PRODUTOS.edit;
dm.SDS_PRODUTOSCHEK_BOX.Value:='F';
dm.SDS_PRODUTOS.Post;
dm.SDS_PRODUTOS.ApplyUpdates(0);
dm.SDS_PRODUTOS.Next;
until dm.SDS_PRODUTOS.eof;
dm.SDS_PRODUTOS.Refresh;
xDBGRID1.refresh;
dm.SDS_PRODUTOS.first;
xDBGRID1.cursor:=crdefault;
except
dm.SDS_PRODUTOS.cancel;
end;
end;

procedure TFormInventarioEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

 if (Key=#13) then
   begin
   //  Edit1.SelectAll;
   end;
end;

procedure TFormInventarioEstoque.Edit1KeyPress(Sender: TObject; var Key: Char);
VAR ACHOU:BOOLEAN;
begin
end;

procedure TFormInventarioEstoque.ComboEdit1ButtonClick(Sender: TObject);
begin
 FormConsProdutos:=NIL;
 FormConsProdutos:=TFormConsProdutos.Create(self);
 FormConsProdutos.ShowModal;

 CLIENTDATASET1.EDIT;
 ClientDataSet1cod_barras.TEXT := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
 ComboEdit1.SetFocus;
// FormAjusteEstoque.BringToFront;
 // ComboEdit1.SetFocus;
end;

procedure TFormInventarioEstoque.ComboEdit1Click(Sender: TObject);
begin
ClientDataSet1.Edit;
ComboEdit1.SetFocus;
end;

procedure TFormInventarioEstoque.ComboEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then
begin
if ComboEdit1.Text = '' then
     BEGIN
      //dm.SDS_PRODUTOS.Filtered := false;
      FormConsProdutos:=NIL;
      FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Edit1.Text := ComboEdit1.Text;
      FormConsProdutos.Showmodal;
      ClientDataSet1.Edit;
      ClientDataSet1cod_barras.TEXT := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
      ComboEdit1.SetFocus;
      end;
end;
end;

procedure TFormInventarioEstoque.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key=#13) then
begin
    if ComboEdit1.Text > '' then
     begin
     DM.Sds_produtos.Active := false;
     DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' +  ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO';
     DM.Sds_produtos.Active := True;

     If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
      ClientDataSet1.Edit;
      InsereItem;
      xDBGRID1.COLUMNS.Grid.Fields[1].FocusControl;
      end else


    if not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
     // DM.SDS_PRODUTOS.Filtered := False;
      ComboEdit1.SetFocus;
      ClientDataSet1.Edit;
      FormConsProdutos:=NIL;
      FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.Edit1.Text := ComboEdit1.Text;
      FormConsProdutos.Showmodal;
      ClientDataSet1.Edit;
      ClientDataSet1cod_barras.TEXT := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
      ComboEdit1.SetFocus;
      end;

      end;
end;
end;

procedure TFormInventarioEstoque.xDBGRID1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
 {if not odd(ClientDataSet1.RecNo) then
  if not (gdselected in State) then
    begin
    xDBGRID1.Canvas.Brush.Color := $00FFEFDF;
    xDBGRID1.Canvas.FillRect(Rect);
    xDBGRID1.DefaultDrawDataCell(Rect,Column.field,state);
  end;}   

  ComboEdit1.Visible := xDBGRID1.SelectedField = ClientDataSet1cod_barras;
   if ComboEdit1.Visible then
   if (gdselected in State) then
    if (Column.Field.FieldName = ComboEdit1.DataField) then
    with ComboEdit1 do begin
      Left := Rect.Left + xDBGRID1.Left + 2;
      Top := Rect.Top + xDBGRID1.Top + 2;
      Width := Rect.Right - Rect.Left;
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Visible := True;
    end    

end;

procedure TFormInventarioEstoque.xDBGRID1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Key = VK_DELETE) then
    begin
      ClientDataSet1.Delete;
      ClientDataSet1.Last;

      xDBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
      ClientDataSet1.Edit;
      ComboEdit1.Visible := True;
      ComboEdit1.SetFocus;
      end else
     {passar para proxima coluna usando ENTER no xDBGRID1}

     if Key = VK_RETURN then
       begin
        Case xDBGRID1.SelectedIndex of
           0: xDBGRID1.SelectedIndex := 1;
           1: xDBGRID1.SelectedIndex := 2;
           2: xDBGRID1.SelectedIndex := 4;
           //3: xDBGRID1.SelectedIndex := 4;
           4: xDBGRID1.SelectedIndex := 5;
           5: xDBGRID1.SelectedIndex := 6;
           6: xDBGRID1.SelectedIndex := 7;
           7: xDBGRID1.SelectedIndex := 8;
           8: xDBGRID1.SelectedIndex := 9;
           ELSE
            xDBGRID1.SelectedIndex := xDBGRID1.SelectedIndex + 1;
            ClientDataSet1.Next;

            xDBGRID1.SelectedIndex := 0;  // código da proxima linha
            ClientDataSet1.Edit;

            {passar para proxima coluna usando ENTER no xDBGRID1}
            if ClientDataSet1.Eof then
            begin
            IF xDBGRID1.COLUMNS.Grid.Fields[0].Text = '' then
            begin
            xDBGRID1.COLUMNS.Grid.Fields[8].FocusControl;
            end else
             ClientDataSet1.Next;
             ClientDataSet1.Insert;
             NValor:=1;
             NItem:=NItem+NValor;
             ClientDataset1.FieldByname('SEQ').AsInteger:=(NItem);
            // ClientDataSet1seq.AsFloat := 1;
            // ClientDataSet1seq.AsFloat := (ClientDataSet1seq.AsFloat + 1);
            // DM.SDS_PRODUTOS.Filtered := False;
            // ComboEdit1.Visible := false;
             xdBGRID1.COLUMNS.Grid.Fields[0].FocusControl;
             ComboEdit1.Enabled := True;
             ComboEdit1.Visible := True;
             ComboEdit1.SetFocus;
             end;
             end;

end;
end;

procedure TFormInventarioEstoque.xDBGRID1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (xDBGRID1.SelectedField.FieldName = ComboEdit1.DataField) then
  begin
   ComboEdit1.Visible := True;
   ComboEdit1.SetFocus;
   SendMessage(ComboEdit1.Handle, WM_Char, word(Key), 0);
  end;
end;

procedure TFormInventarioEstoque.FormCreate(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOP,110,10,0,0,SWP_NOSIZE);

with ComboEdit1 do
 begin
   DataSource := DataSource1; // -> Table1 -> DBGrid1
   DataField  := 'cod_barras'; // from Table1 - displayed in the DBGrid
   Color      := clCream;
   Visible       := False;
 end;

  if FileExists('C:\SIACE\AJUSTE.xml') then
  begin
     DeleteFile('C:\SIACE\AJUSTE.xml');
  end;

 with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'AJUSTE.xml';
  if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'seq';
  open;
  end;
  
  IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
  BEGIN
  LerINI;
  ACBrLCB5.Ativar;
  end ;
end;

procedure TFormInventarioEstoque.XDBGrid1ColExit(Sender: TObject);
begin

  if XDBGrid1.SelectedField = ClientDataSet1estoque THEN
  begin
  IF xDBGRID1.COLUMNS.Grid.Fields[4].Value > 99999 then
  begin
   MessageDlg( 'Quantidade Invalida, não pode ser superior a 99999,pois Acarretará problemas quando for salvar',mtInformation,[mbOK],0);
   xDBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
  // xDBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
  end;
  end else
  if XDBGrid1.SelectedField = ClientDataSet1custo THEN
  begin
  IF xDBGRID1.COLUMNS.Grid.Fields[7].Value > 99999 then
  begin
   MessageDlg( 'Valor Invalido, não pode ser superior a 99999,pois Acarretará problemas quando for salvar',mtInformation,[mbOK],0);
   xDBGRID1.COLUMNS.Grid.Fields[7].Value := 0;
   xDBGRID1.COLUMNS.Grid.Fields[6].FocusControl;
  // xDBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
  end;
  end else

  if XDBGrid1.SelectedField = ClientDataSet1Venda1 THEN
  begin
  IF xDBGRID1.COLUMNS.Grid.Fields[8].Value > 99999 then
  begin
   MessageDlg( 'Valor Invalido, não pode ser superior a 99999,pois Acarretará problemas quando for salvar',mtInformation,[mbOK],0);
   xDBGRID1.COLUMNS.Grid.Fields[8].Value := 0;
   xDBGRID1.COLUMNS.Grid.Fields[7].FocusControl;
  // xDBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
  end;
  end else

    if XDBGrid1.SelectedField = ClientDataSet1Venda2 THEN
  begin
  IF xDBGRID1.COLUMNS.Grid.Fields[9].Value > 99999 then
  begin
   MessageDlg( 'Valor Invalido, não pode ser superior a 99999,pois Acarretará problemas quando for salvar',mtInformation,[mbOK],0);
   xDBGRID1.COLUMNS.Grid.Fields[9].Value := 0;
   xDBGRID1.COLUMNS.Grid.Fields[8].FocusControl;
  // xDBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
  end;
  end else

  if XDBGrid1.SelectedField = ClientDataSet1qaunt_fracao THEN
  begin
  IF xDBGRID1.COLUMNS.Grid.Fields[6].Value > 99999 then
  begin
   MessageDlg( 'Quantidade Invalida, não pode ser superior a 99999,pois Acarretará problemas quando for salvar',mtInformation,[mbOK],0);
   xDBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  // xDBGRID1.COLUMNS.Grid.Fields[2].FocusControl;
  end;
  end else
  if XDBGrid1.SelectedField = ClientDataSet1Fracao THEN
  begin
  IF xDBGRID1.COLUMNS.Grid.Fields[5].Value > 1000 then
  begin
   MessageDlg( 'Quantidade Invalida, não pode ser superior a 1000,pois Acarretará problemas quando for salvar',mtInformation,[mbOK],0);
   xDBGRID1.COLUMNS.Grid.Fields[4].FocusControl;
  // xDBGRID1.COLUMNS.Grid.Fields[4].FocusControl;
  end else
 begin
 IF XDBGRID1.COLUMNS.Grid.Fields[5].Value < 1 then
  begin
   MessageDlg( 'Valor Da fracão deve ser maior ou igual a (1), Favor Corrigir',mtInformation,[mbOK],0);
   XDBGRID1.COLUMNS.Grid.Fields[4].FocusControl;
   end else

   if xDBGRID1.COLUMNS.Grid.Fields[5].AsString > '0' then
    begin
    xDBGRID1.COLUMNS.Grid.Fields[6].ASFLOAT := (xDBGRID1.COLUMNS.Grid.Fields[4].ASFLOAT * xDBGRID1.COLUMNS.Grid.Fields[5].ASFLOAT);
   // xDBGRID1.COLUMNS.Grid.Fields[9].ASFLOAT := (xDBGRID1.COLUMNS.Grid.Fields[8].ASFLOAT / xDBGRID1.COLUMNS.Grid.Fields[5].ASFLOAT);
    end;
end;
end;
end;

procedure TFormInventarioEstoque.ACBrLCB5LeCodigo(Sender: TObject);
begin
 //lUltimaLeitura.Caption := Converte1(ACBrLCB1.UltimaLeitura ) ;
  ComboEdit1.Clear;
  if not ACBrLCB5.UsarFila then
     Vende(Sender)
  else
  ComboEdit1.Assign( ACBrLCB5.Fila );
end;

procedure TFormInventarioEstoque.Vende;
begin
   ComboEdit1.Text := ACBrLCB5.UltimoCodigo;
   suiButton2Click(Sender);

 {Atraso := StrToIntDef(edAtraso.Text,0) ;
  if Atraso > 0 then
  begin
     pAtraso.Visible := true ;
     Application.ProcessMessages ;
     Sleep( Atraso );
     pAtraso.Visible := false ;
  end ;}
end;

procedure TFormInventarioEstoque.suiButton2Click(Sender: TObject);
begin
keybd_event(VK_RETURN, 0, 0, 0);
end;

procedure TFormInventarioEstoque.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     ACBrLCB5.Porta := INI.ReadString('LEITOR','Porta', ACBrLCB5.Porta);
     ACBrLCB5.sufixo := INI.ReadString('LEITOR','Sulfixo',ACBrLCB5.Sufixo);
     ACBrLCB5.Device.Baud := INI.ReadInteger('LEITOR','baud',ACBrLCB5.Device.Baud);
     ACBrLCB5.ExcluirSufixo := INI.ReadBool('LEITOR','ExcluirSulfixo',ACBrLCB5.ExcluirSufixo);
     ACBrLCB5.Intervalo := INI.ReadInteger('LEITOR','Intervalo',ACBrLCB5.Intervalo);
  finally
     INI.Free ;
  end ;
end;


procedure TFormInventarioEstoque.BtnConsLocalClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
  FrmConsLocaisEstoque.Tag:= 4;
  FrmConsLocaisEstoque.ShowModal;
end;

procedure TFormInventarioEstoque.BtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFormInventarioEstoque.EdtCodLocalExit(Sender: TObject);
begin
CorSaida(Sender);
  EdtNomeLocal.Text:= consulta('locais_estoque', EdtCodLocal, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
  if trim(EdtNomeLocal.Text) = '' then
     begin
        showmessage('Local de Estoque não Cadastrado');
        EdtCodLocal.SetFocus;
     end;
end;

procedure TFormInventarioEstoque.EdtCodLocalEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormInventarioEstoque.EdtCodLocalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = vk_f2 then
     BtnConsLocal.Click;
end;

procedure TFormInventarioEstoque.EdtCodLocalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormInventarioEstoque.SalvarClick(Sender: TObject);
var
  contador, e : Integer;
begin

         



           QBuscaItens.First;
           Contador:=QBuscaItens.RecordCount;
           For E:=1 to Contador do
           begin

             { BUSCA O CUSTO DO PRODUTO }
            if dm.IBTransaction.Active then
               dm.IBTransaction.Commit;
            dm.IBTransaction.StartTransaction;
            try
              try
                with dm.Consulta do
                   begin
                      close;
                      sql.Clear;
                      sql.add('SELECT, estoque, PRECO_CUSTO, CUSTO_MEDIO, PRECO_VENDA FROM PRODUTOS WHERE CODIGO = :CODPRO');
                      Parambyname('CODPRO').AsInteger:= QBuscaItensCOD_PRODUTO.AsInteger;
                      ExecQuery;
                      estoque     := fieldbyname('ESTOQUE').AsCurrency;
                      cPrecoCusto := fieldbyname('preco_custo').AsCurrency;
                      CUSTO_MEDIO := fieldbyname('custo_MEDIO').AsCurrency;
                      PRECO_ANT   := fieldbyname('preco_VENDA').AsCurrency;
                   end;
                dm.IBTransaction.Commit;
              except
                dm.IBTransaction.Rollback;
              //  showmessage('Erro ao buscar o custo do produto');
              end;
            finally
              dm.Consulta.Close;
            end;


               dm.ProxCod.Close;
               dm.ProxCod.SQL.Clear;
               dm.ProxCod.SQL.Add('select max(ID_OCORRENCIA) as N_CODIGO FROM PRODUTOS_PRECOS_LOG');
               DM.ProxCod.Open;

              if DM.IBTransaction.Active then
                 DM.IBTransaction.Commit;
              DM.IBTransaction.StartTransaction;
              try
                try
                  with DM.logpro do
                     begin
                        close;
                        parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                        Parambyname('ID_PRODUTO').AsInteger     := QBuscaItensCOD_PRODUTO.AsInteger;
                        parambyname('ID_OCORRENCIA').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                        Parambyname('TIPO_ALTERACAO').AsInteger := 4; // inventario de estoque
                        Parambyname('DATA_HORA').AsDateTime     := date;
                        Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                        Parambyname('P_COMPRA_ANT').Asfloat     := cPrecoCusto;
                        Parambyname('P_CUSTO_ANT').Asfloat      := cPrecoCusto;
                        Parambyname('P_CUSTO_MEDIO_ANT').Asfloat := CUSTO_MEDIO;
                        Parambyname('P_VENDA_ANT').Asfloat      := preco_ant;
                        Parambyname('P_COMPRA_NOVO').Asfloat    := cPrecoCusto;
                        Parambyname('P_CUSTO_NOVO').Asfloat     := cPrecoCusto;
                        Parambyname('P_CUSTO_MEDIO_NOVO').Asfloat   := CUSTO_MEDIO;
                        Parambyname('P_VENDA_NOVO').Asfloat     :=  QBuscaItensPRECO_VENDA.asfloat;
                        ExecSQL;
                     end;
                  DM.IBTransaction.Commit;

                except
                  DM.IBTransaction.Rollback;
                  showmessage('Erro ao Gravar o log do produto, ' + #13 +
                              'Verifique que já foi lançFDo');
                end;
              finally
                dm.LogPro.Close;
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
                  with DM.logEst do
                     begin
                        close;
                        parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                        Parambyname('ID_PRODUTO').AsInteger     := QBuscaItensCOD_PRODUTO.AsInteger;
                        Parambyname('ID_LOTE').Value            := null;
                        Parambyname('ID_PRODUTO_SERIE').Value   := null;
                        Parambyname('DATA').AsDateTime          := date;
                        Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                        parambyname('ID_MOVIMENTO').AsInteger   := QBuscaItensCOD_INVENTARIO.AsInteger;
                        Parambyname('FRACAO').Asfloat           := QBuscaItensFRACAO.Value;
                        Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                        Parambyname('QUANTIDADE').Asfloat       := QBuscaItensQUANTIDADE.asfloat;
                        Parambyname('ESTOQUE_POSTERIOR').Asfloat := QBuscaItensQUANTIDADE.asfloat;
                        Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 4;  // 4 - ACERTO ESTOQUE
                        if estoque <= QBuscaItensQUANTIDADE.AsFloat THEN
                        begin
                        Parambyname('OPERACAO').TEXT             := '+';
                        end;
                        if estoque >= QBuscaItensQUANTIDADE.AsFloat THEN
                        begin
                        Parambyname('OPERACAO').TEXT             := '-';
                        end;
                        Parambyname('ACAO_BD').TEXT               := 'I';
                        Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                        parambyname('COD_VENDA').value              :=  null;
                        parambyname('COD_COMPRA').value              :=  null;
                        Parambyname('HISTORICO').TEXT            := 'Inclusão do Inventário Estoque Nº '+ QBuscaItensCOD_INVENTARIO.Text;
                        Parambyname('HORA').AsString           := TimeToStr(Time);
                        ExecSQL;
                     end;
                  DM.IBTransaction.Commit;

                except
                  DM.IBTransaction.Rollback;
                  showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                              'Verifique que já foi lançFDo');
                end;
              finally
                dm.logEst.Close;
               end;
           QBuscaItens.Next;
           end;

           formprincipal.log(codigo_usuario,'IV_ESTOQUE',QBuscaItensCOD_PRODUTO.Text,'INCLUIU','INCLUSAO ACERTO DO PRODUTO Nº '+QBuscaItensCOD_PRODUTO.Text +' Nome: '+ QBuscaItensDESCRICAO_NOVA.text + 'Qtde '+ QBuscaItensQUANTIDADE.text);

           QBuscaItens.First;
           Contador:=QBuscaItens.RecordCount;
           For E:=1 to Contador do
           begin
            SPC_ATUALIZA.ParamByname('CODIGO').AsInteger    := QBuscaItensCOD_PRODUTO.AsInteger;
            SPC_ATUALIZA.ParamByname('CODIGO_B').AsString   := QBuscaItensCOD_BARRAS.AsString;
            SPC_ATUALIZA.ParamByname('REF').AsString        := QBuscaItensREFERNCIA.AsString;
            SPC_ATUALIZA.ParamByname('DESCRICAO').AsString  := QBuscaItensDESCRICAO_NOVA.AsString;
            SPC_ATUALIZA.ParamByname('Quant').Value         := QBuscaItensQUANTIDADE.Value;
            SPC_ATUALIZA.ParamByname('CUSTO').Value         := QBuscaItensPRECO_CUSTO.Value;
            SPC_ATUALIZA.ParamByname('VENDA').Value         := QBuscaItensPRECO_VENDA.Value;
            SPC_ATUALIZA.ParamByname('VENDA2').Value        := QBuscaItensPRECO_VENDA2.Value;
            SPC_ATUALIZA.ParamByname('ATIV').AsString       := 'A'; //ClientDataSet1.FieldByname('ativo').AsString;
            SPC_ATUALIZA.ParamByname('DATA_ALT').AsDate     := DATE;
            SPC_ATUALIZA.ParamByname('USU').AsString        := FormPrincipal.UserLogado;
            SPC_ATUALIZA.ParamByname('Fracao').Value        := QBuscaItensFRACAO.Value;
            SPC_ATUALIZA.ParamByname('Quant_Fracao').Value  := QBuscaItensQUANT_FRACIONADA.Value;
            SPC_ATUALIZA.ExecProc;
            QBuscaItens.Next;
           end;
          { except
             ShowMessage('Não foi Possivel Gravar os Dados');
             SPC_ATUALIZA.Cancel;
           end;  }

          if IBTRinv.Active then
          IBTRInv.Commit;
          IBTRInv.StartTransaction;
                   with IBSQLInv do
                    begin
                       close;
                       sql.Clear;
                       sql.Add('UPDATE ITENS_INVENTARIO_ESTOQUE SET STATUS = :STATUSN');
                      // Parambyname('STATUSA').AsString   := 'P';
                       Parambyname('STATUSN').AsString   := 'B';
                       ExecQuery;
                    end;

          //  IBTRinv.CommitRetaining;

          IBTRInv.Commit; 
          salvar.enabled := false;
          cancelar.enabled := false;
          XDBGrid2.Enabled := False;
end;


procedure TFormInventarioEstoque.FDvGlowButton8Click(Sender: TObject);
var
  pendente : string;
begin
  pendente := 'P';
  if IBTRinv.Active then
   IBTRInv.Commit;
   IBTRInv.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('status').Asstring := pendente;
         open;
         Last;
      end;
   IBTRinv.CommitRetaining;

   if QBuscaItens.eof then
   begin
   salvar.enabled := True;
   cancelar.enabled := true;
   XDBGrid2.Enabled := True;
   end;


end;

procedure TFormInventarioEstoque.CancelarClick(Sender: TObject);
begin
 QBuscaItens.Close;
 salvar.enabled := false;
 cancelar.enabled := false;
 XDBGrid2.Enabled := False;

end;

procedure TFormInventarioEstoque.FDvGlowButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormInventarioEstoque.XDBGrid1CellClick(Column: TXColumn);
begin
ClientDataSet1.Edit;
end;

procedure TFormInventarioEstoque.a1Click(Sender: TObject);
begin
 if FormPrincipal.Label1.Caption ='N'then
begin

 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Excluir/Alterao o Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'delete from ITENS_INVENTARIO_ESTOQUE WHERE COD_INVENTARIO =:inv and COD_PRODUTO =:COD';
           Parambyname('INV').AsInteger    := StrToInt(QBuscaItensCOD_INVENTARIO.TEXT);
           Parambyname('COD').AsInteger    := StrToInt(QBuscaItensCOD_PRODUTO.TEXT);
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
   FDvGlowButton8Click(Sender);
end;
end;

end.
