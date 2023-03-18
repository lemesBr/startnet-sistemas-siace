unit OSLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxToolEdit, RXDBCtrl, RXCtrls, SUIEdit, DBCtrls,
  StdCtrls, Mask, SUIDBCtrls, SUIButton, ExtCtrls, SUIPageControl,
  SUITabControl, SUIGroupBox, Buttons, ExtDlgs,  RxDBComb,
  DB, SUIDlg, AppEvnts, Grids, XDBGrids, Menus, RzTabs,
  RzPanel, ImgList, wwdblook, Wwdbdlg, TaskDialog, sBitBtn, sPanel,
  sDBNavigator, frxDesgn, frxClass, frxDBSet, RxCurrEdit, RzEdit, RzDBEdit;

type
  TFormOs = class(TForm)
    Panel2: TPanel;
    btnNovo: TsBitBtn;
    btnEditar: TsBitBtn;
    btnCancelar: TsBitBtn;
    btnSalvar: TsBitBtn;
    btnExcluir: TsBitBtn;
    btnLocalizar: TsBitBtn;
    GroupBox1: TGroupBox;
    Hora1: TRzDBDateTimeEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Data1: TDBDateEdit;
    GroupBox5: TGroupBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    data2: TDBDateEdit;
    hora2: TRzDBDateTimeEdit;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    data3: TDBDateEdit;
    hora3: TRzDBDateTimeEdit;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    texto1: TDBEdit;
    texto4: TDBEdit;
    RxLabel11: TRxLabel;
    texto3: TEdit;
    texto7: TEdit;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    texto2: TDBEdit;
    RxLabel14: TRxLabel;
    texto5: TDBEdit;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    texto6: TDBEdit;
    RxLabel17: TRxLabel;
    GroupBox7: TGroupBox;
    texto8: TDBMemo;
    texto9: TDBMemo;
    dblookup1: TDBLookupComboBox;
    dblookup3: TDBLookupComboBox;
    dblookup4: TDBLookupComboBox;
    dblookup5: TDBLookupComboBox;
    dblookup6: TDBLookupComboBox;
    dblookup7: TDBLookupComboBox;
    dblookup8: TDBLookupComboBox;
    dblookup2: TDBComboBox;
    btnfaturar: TsBitBtn;
    cliente1: TRxDBComboEdit;
    cliente2: TDBEdit;
    XDBGrid1: TXDBGrid;
    suiDBEdit1: TDBEdit;
    RxLabel18: TRxLabel;
    suiEdit1: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    GroupBox8: TGroupBox;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel27: TRxLabel;
    RbPreco1: TRadioButton;
    RbPreco2: TRadioButton;
    Label10: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    RxLabel28: TRxLabel;
    RxDBComboEdit1: TComboEdit;
    ComboEdit1: TComboEdit;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    ApagaRegistro1: TMenuItem;
    Pc: TRzPageControl;
    Os: TRzTabSheet;
    Produtos: TRzTabSheet;
    Solucao: TRzTabSheet;
    Laudo: TRzTabSheet;
    Imagens: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RxLabel19: TRxLabel;
    edit60: TCurrencyEdit;
    RxLabel21: TRxLabel;
    Edit61: TCurrencyEdit;
    RxLabel20: TRxLabel;
    Edit62: TCurrencyEdit;
    Shape1: TShape;
    E: TsDBNavigator;
    RzGroupBox2: TRzGroupBox;
    RxLabel29: TRxLabel;
    RxLabel30: TRxLabel;
    RzGroupBox3: TRzGroupBox;
    RxLabel31: TRxLabel;
    RxLabel33: TRxLabel;
    DBDateEdit2: TDBDateEdit;
    EvDBTimeEdit4: TRzDBDateTimeEdit;
    RzGroupBox4: TRzGroupBox;
    RxLabel32: TRxLabel;
    RxLabel34: TRxLabel;
    DBDateEdit5: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel35: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    btnReabrir: TsBitBtn;
    BtnSolucionar: TsBitBtn;
    suiButton3: TsBitBtn;
    GroupBox9: TGroupBox;
    suiDBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    suiDBEdit3: TDBEdit;
    Label3: TLabel;
    suiDBEdit4: TDBEdit;
    Label4: TLabel;
    suiDBEdit5: TDBEdit;
    Label5: TLabel;
    suiDBEdit6: TDBEdit;
    suiButton4: TsBitBtn;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    EvDBTimeEdit1: TRzDBDateTimeEdit;
    RxLabel22: TRxLabel;
    DBDateEdit4: TDBDateEdit;
    EvDBTimeEdit2: TRzDBDateTimeEdit;
    salvSolucao: TsBitBtn;
    EvDBTimeEdit3: TRzDBDateTimeEdit;
    suiDBMemo1: TDBMemo;
    ComboDlg1: TwwDBLookupComboDlg;
    texto10: TEdit;
    Edit1: TEdit;
    PopupMenu2: TPopupMenu;
    ReabrirOs1: TMenuItem;
    RxLabel36: TRxLabel;
    DBEdit4: TDBEdit;
    RxLabel37: TRxLabel;
    DBEdit5: TDBEdit;
    RxLabel38: TRxLabel;
    DBEdit6: TDBEdit;
    DBComboCliente: TComboEdit;
    BitBtn1: TsBitBtn;
    Edit3: TEdit;
    procedure FormShow(Sender: TObject);
     procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Data1Enter(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Hora1Enter(Sender: TObject);
    procedure Hora1Exit(Sender: TObject);
    procedure Cliente1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    Procedure MostraErros (Sender : Tobject ; E : Exception );
    procedure ormCreate(Sender: TObject);
    procedure texto3Change(Sender: TObject);
    procedure texto7Change(Sender: TObject);
    procedure dblookup6Exit(Sender: TObject);
    procedure dblookup1Enter(Sender: TObject);
    procedure dblookup1Exit(Sender: TObject);
    procedure dblookup2Enter(Sender: TObject);
    procedure dblookup2Exit(Sender: TObject);
    procedure dblookup3Enter(Sender: TObject);
    procedure dblookup3Exit(Sender: TObject);
    procedure dblookup4Enter(Sender: TObject);
    procedure dblookup4Exit(Sender: TObject);
    procedure DBNavigatorBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure btnLocalizarClick(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure CurrencyEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure text(Sender: TObject; var Key: Char);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure InsereItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ApagaRegistro1Click(Sender: TObject);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vens(Sender: TObject);
    procedure EClick(Sender: TObject; Button: TNavigateBtn);
    procedure RxDBComboEdit1Change(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure suiDBEdit4Enter(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure BtnSolucionarClick(Sender: TObject);
    procedure btnReabrirClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure texto7Enter(Sender: TObject);
    procedure texto7Exit(Sender: TObject);
    procedure salvSolucaoClick(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure suiDBMemo1Enter(Sender: TObject);
    procedure Co(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit1Enter(Sender: TObject);
    procedure ComboDlg1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure suiDBEdit1Change(Sender: TObject);
    procedure PcChange(Sender: TObject);
    procedure ReabrirOs1Click(Sender: TObject);
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure DBComboClienteChange(Sender: TObject);
    procedure DBComboClienteEnter(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure ProdutosShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod, ITEN :Integer;
    A,B,C :real;


  end;

var
  FormOs: TFormOs;
 // TD:TTransactionDesc;
  horas : TDateTime;

implementation

uses DMOS1, consClientes, ModulodeDados, Z_RotinasGerais, Principal,
  ConsultaOs, relatorioaberturaos, ConsProdutos, ConsProdutosVendas,
  ConsUsuarios, Vendas, RelSolucaoOs, os_impressao;

{$R *.dfm}

function RemoveChar(Const Texto:String):String; 
  // 
  // Remove caracteres de uma string deixando apenas numeros 
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure tFormOS.InsereItem;
var
  N : Integer;
  begin
 DMOS.SDS_OS_PRODUTO.edit;
 N := 1;
 ITEN := ITEN + N;

  { dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_OS_PRODUTOS_SERVICOS) as N_CODIGO FROM OS_PRODUTOS_SERVICOS');
   DM.ProxCod.Open;  }

 DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.AsInteger := ITEN;
 DMOS.SDS_OS_PRODUTOID_OS_ORDEMSERVICO.Text := DBEdit1.Text;
 DMOS.SDS_OS_PRODUTOCODIGO_BARRAS.Text := RxDBComboEdit1.Text;

// DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
 DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.TEXT          := CurrencyEdit1.Text;
 DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat          := StrToFloatDef(CurrencyEdit2.Text,0.00);
 DMOS.SDS_OS_PRODUTOVALOR_TOTAL.TEXT             := CurrencyEdit3.Text;
 DMOS.SDS_OS_PRODUTODESCRICAO.Text               := suiEdit1.TEXT;
 DMOS.SDS_OS_PRODUTOQUANTIDADE.TEXT              := CurrencyEdit4.TEXT;
 DMOS.SDS_OS_PRODUTOCOD_PRODUTO.Text             := Edit3.Text;
 DMOS.SDS_OS_PRODUTOCODIGO_BARRAS.Text           := DM.Sds_produtos_cCODIGO_BARRAS.Text;
 DMOS.SDS_OS_PRODUTOID_OS_ORDEMSERVICO.Text      := DMOS.SDS_OSID_OS_ORDEMSERVICO.TEXT;
 DMOS.SDS_OS_PRODUTODESC_UNIDADE.Text            := DM.SDS_PRODUTOS_CDESC_UNIDADE.TEXT;
 DMOS.SDS_OS_PRODUTOID_OS_TECNICO.Text           := DM.SDS_UsuariosCODIGO.Text;
 DMOS.SDS_OS_PRODUTOSIT_TRIBUTARIA.Text          := DM.SDS_PRODUTOS_CSIT_TRIBUTARIA.text;
 DMOS.SDS_OS_PRODUTOFRACAO.Text                  := DM.SDS_PRODUTOS_CFRACAO.Text;
 DMOS.SDS_OS_PRODUTOCOD_NCM.TEXT                 := DM.Sds_produtos_cNCM_SH.Text;
 dmos.SDS_OS_PRODUTOPROD_SERV.Text               := DM.Sds_produtos_cPROD_SERV.Text;

 //DM.sds_pedidos_itensITEN.AsInteger          := NItem;
 //if DBGRID.COLUMNS.Grid.Fields[2].AsString > '' then
// DBGRID.COLUMNS.Grid.Fields[5].AsString := ((DBGRID.COLUMNS.Grid.Fields[2].Value * DBGRID.COLUMNS.Grid.Fields[3].Value) - DBGRID.COLUMNS.Grid.Fields[4].Value) ;
end;

//IMPLEMENTAÇÃO DA PROCEDURE MOSTRAERROS
procedure TFormOS.MostraErros(Sender: Tobject;
  E: Exception);
var
msg : string;
I, X: integer;
begin          //Verifica se o erro apresentado ocorre na base de dados
  If E is EdatabaseError then
  begin        //For para varrer o tamanho da mensagem
      for I := 1 To Length(e.Message) Do
          begin    //if para verificar o fim da mensagem definido pelo caracter '|'
            if (e.Message[I] = '|') then       //gravando posição do caracter indicativo
                  X := I;
          END;
              msg := copy(e.Message, 0, 1);
              //APRESENTANDO A MENSAGEM AO USUARIO
       MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
   end

   //APRESENTANDO ERRO SEM FORMATÇÃO SE NÃO FOR ERRO DA BASE DE DADOS
   ELSE
   MessageBox(Application.Handle, PChar(e.Message), 'Erro', MB_OK + MB_ICONERROR);
 end;


Procedure TFormOS.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (DMOS.SDS_OS.State = dsBrowse);
BTNNOVO.Enabled:= (DMOS.SDS_OS.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMOS.SDS_OS.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DMOS.SDS_OS.State = dsBrowse);
BTNSALVAR.Enabled:= (DMOS.SDS_OS.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMOS.SDS_OS.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMOS.SDS_OS.State = dsBrowse);
//btnfaturar.Enabled:= (DMOS.SDS_OS_PRODUTO.State = dsBrowse);
end;

procedure TFormOS.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;


procedure TFormOs.FormShow(Sender: TObject);
begin
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where codigo like ' + #39 + '%' + '0' + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;

groupbox1.Enabled := false;
groupbox2.Enabled := false;
groupbox3.Enabled := false;
groupbox4.Enabled := false;
groupbox5.Enabled := false;
groupbox6.Enabled := false;
groupbox7.Enabled := false;


 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  RbPreco2.Checked := True;
  end;

  if not DMOS.SDS_OS_PRODUTO.Eof then
   begin
     btnfaturar.Enabled := true;
   end;

Pc.ActivePageIndex := 0;


if ComboDlg1.Text > '' then
begin
DMOS.sDS_EQUIPAMENTOS.Locate('ID_OS_EQUIPAMENTOS', DMOS.SDS_OSID_OS_EQUIPAMENTO.Text,[loPartialKey, loCaseInsensitive]);
TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;

//DMOS.SDS_OSID_OS_EQUIPAMENTO.Text := DMOS.sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS.Text;
end;

IF TAG = 1 then
BEGIN
 DBComboCliente.Text := DMOS.CDS_rel_OSID_CLIENTE.TEXT
END ELSE
BEGIN
DBComboCliente.Text := DMOS.SDS_OSID_CLIENTE.Text;
end;

{IF not DMOS.SDS_OS_PRODUTO.Eof then
BEGIN
 DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;
end; }
end;

procedure TFormOs.btnNovoClick(Sender: TObject);
var
  horas : TDateTime;
begin
If FormPrincipal.Label3.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try

   DMOS.SPC_OS.ExecProc;
   Cod:= (DMOS.SPC_OS.ParamByName('ATUAL').AsInteger);
   DMOS.SDS_OS.Insert;
   DMOS.SDS_OSID_OS_ORDEMSERVICO.TEXT:=IntTostr(Cod);
   DMOS.SDS_OSUSERCAD.Text:= FormPrincipal.UserLogado;
   DMOS.SDS_OSDATACAD.Text:= datetostr(now);
   DMOS.SDS_OSSITUACAO.Text :='ABERTA';
   AtualizaManutencao;
   BtnSolucionar.Enabled := False;
   btnReabrir.Enabled := False;
   btnfaturar.Visible := False;
   data1.Color:= clWhite;
   data2.Color:= clWhite;
   data3.Color:= clWhite;
   hora1.Color:= clWhite;
   hora2.Color:= clWhite;
   hora3.Color:= clWhite;
   cliente1.Color:= clWhite;
   dblookup1.color:= clwhite;
   dblookup2.color:= clwhite;
   dblookup3.color:= clwhite;
   dblookup4.color:= clwhite;
   dblookup5.color:= clwhite;
   dblookup6.color:= clwhite;
   dblookup7.color:= clwhite;
   dblookup8.color:= clwhite;
   texto1.color:= clwhite;
   texto2.color:= clwhite;
   texto3.color:= clwhite;
   texto4.color:= clwhite;
   texto5.color:= clwhite;
   texto6.color:= clwhite;
   texto7.color:= clwhite;
   texto8.color:= clwhite;
   texto9.color:= clwhite;
   groupbox1.Enabled := true;
   groupbox2.Enabled := true;
   groupbox3.Enabled := true;
   groupbox4.Enabled := true;
   groupbox5.Enabled := true;
   groupbox6.Enabled := true;
   groupbox7.Enabled := true;
   Cliente2.Clear;
   horas := Time;
   DMOS.SDS_OSDATA_ENTRADA.AsDateTime := Date;
   DMOS.SDS_OSHORA_ENTRADA.Text := TimeToStr(horas);
   DMOS.SDS_OSCAMPO_DATACHEGADA.AsDateTime := Date + 1;
   DMOS.SDS_OSCAMPO_HORACHEGADA.Text := TimeToStr(horas);
   dblookup1.ListFieldIndex := 1;
   dblookup3.ListFieldIndex := 0;
   dblookup2.ItemIndex := 0;
   btnSalvar.Visible := True;

   TEXTO3.Clear;
   TEXTO7.Clear;
   TEXTO10.Clear;

DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
DBComboClienteChange(Sender);

dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;

          DM.SDS_Clientes.locate('CODIGO', DBComboCliente.Text,[]);
          dmos.SDS_OSID_CLIENTE.Text            := DM.SDS_ClientesCODIGO.Text;
          dmos.SDS_OSCONSUMIDOR_NOME.Value      := dm.SDS_ClientesNome_Rs.Value;
          dmos.SDS_OSCONSUMIDOR_ENDERECO.Value  := dm.sds_clientesEndereco.value;
          dmos.SDS_OSCONSUMIDOR_CPFCNPJ.Value   := dm.SDS_ClientesCPF_CNPJ.Value;
          dmos.SDS_OSCONSUMIDOR_TELEFONE.Value  := dm.SDS_ClientesTELEFONE.Value;
          dmos.SDS_OSCONSUMIDOR_RGINSCR.Value   := dm.SDS_ClientesRG_IE.Value;


          Produtos.TabVisible := False;
          Solucao.TABVisible := False;
          Imagens.TabVisible := False;
          Laudo.TabVisible := False;
         // Os.TabIndex :=0;
          Pc.TabIndex := 0;
          DBComboCliente.SetFocus;

   Except
  // MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
  // MsgErro.ShowModal;
   end;
end;
end;

procedure TFormOs.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   pc.ActivePageIndex := 0;
   DMOS.SDS_OS.Edit;

    btnSalvar.Visible := True;
    btnfaturar.Visible := false;


   if not DMOS.SDS_OS_PRODUTO.Eof then
   begin
   DMOS.SDS_OS_PRODUTO.Edit;
   DMOS.SDS_OS_PRODUTO.post;
   btnfaturar.Enabled := True;
   end;
   AtualizaManutencao;
   data1.Color:= clWhite;
   data2.Color:= clWhite;
   data3.Color:= clWhite;
   hora1.Color:= clWhite;
   hora2.Color:= clWhite;
   hora3.Color:= clWhite;
   cliente1.Color:= clWhite;
   dblookup1.color:= clwhite;
   dblookup2.color:= clwhite;
   dblookup3.color:= clwhite;
   dblookup4.color:= clwhite;
   dblookup5.color:= clwhite;
   dblookup6.color:= clwhite;
   dblookup7.color:= clwhite;
   dblookup8.color:= clwhite;
   texto1.color:= clwhite;
   texto2.color:= clwhite;
   texto3.color:= clwhite;
   texto4.color:= clwhite;
   texto5.color:= clwhite;
   texto6.color:= clwhite;
   texto7.color:= clwhite;
   texto8.color:= clwhite;
   texto9.color:= clwhite;
   groupbox1.Enabled := true;
   groupbox2.Enabled := true;
   groupbox3.Enabled := true;
   groupbox4.Enabled := true;
   groupbox5.Enabled := true;
   groupbox6.Enabled := true;
   groupbox7.Enabled := true;
   Data1.SetFocus;
   Except
   //MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   //MsgErro.ShowModal;
   end;
end;
END;
procedure TFormOs.btnCancelarClick(Sender: TObject);
begin
Try
  DMOS.SDS_OS.Cancel;
 if DMOS.SDS_OS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
   data1.Color:= $00DDF8D6;
   data2.Color:= $00DDF8D6;
   data3.Color:= $00DDF8D6;
   hora1.Color:= $00DDF8D6;
   hora2.Color:= $00DDF8D6;
   hora3.Color:= $00DDF8D6;
   cliente1.Color:= $00DDF8D6;
   dblookup1.color:= $00DDF8D6;
   dblookup2.color:= $00DDF8D6;
   dblookup3.color:= $00DDF8D6;
   dblookup4.color:= $00DDF8D6;
   dblookup5.color:= $00DDF8D6;
   dblookup6.color:= $00DDF8D6;
   dblookup7.color:= $00DDF8D6;
   dblookup8.color:= $00DDF8D6;
   texto1.color:= $00DDF8D6;
   texto2.color:= $00DDF8D6;
   texto3.color:= $00DDF8D6;
   texto4.color:= $00DDF8D6;
   texto5.color:= $00DDF8D6;
   texto6.color:= $00DDF8D6;
   texto7.color:= $00DDF8D6;
   texto8.color:= $00DDF8D6;
   texto9.color:= $00DDF8D6;
   groupbox1.Enabled := false;
   groupbox2.Enabled := false;
    groupbox3.Enabled := false;
    groupbox4.Enabled := false;
    groupbox5.Enabled := false;
    groupbox6.Enabled := false;
    groupbox7.Enabled := false;
   //Cliente2.Text:= DM.SDS_ClientesNOME_RS.Text;
   DBComboCliente.Text := DMOS.SDS_OSID_CLIENTE.Text;
    Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;
end;

procedure TFormOs.btnSalvarClick(Sender: TObject);
var
  os : string;
begin
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//dm.sqlc.StartTransaction(TD);

If dblookup1.Text = '' then
begin
 MessageDlg('Informe a prioridade da O.S.', mtInformation,[mbOk], 0);
 dblookup1.SetFocus;
end else

If dblookup2.Text = '' then
begin
 MessageDlg('Informe a Modalidade da O.S.', mtInformation,[mbOk], 0);
 dblookup2.SetFocus;
end else

If dblookup3.Text = '' then
begin
 MessageDlg('Informe o Tipo da O.S.', mtInformation,[mbOk], 0);
 dblookup3.SetFocus;
end else

If dblookup4.Text = '' then
begin
 MessageDlg('Informe o Status da O.S.', mtInformation,[mbOk], 0);
 dblookup4.SetFocus;
end else

If dblookup5.Text = '' then
begin
 MessageDlg('Informe o Técnico para a O.S.', mtInformation,[mbOk], 0);
 dblookup5.SetFocus;
end else

If dblookup7.Text = '' then
begin
 MessageDlg('Informe o Cor para a O.S.', mtInformation,[mbOk], 0);
 dblookup7.SetFocus;
end else

If dblookup8.Text = '' then
begin
 MessageDlg('Informe o Localização da O.S.', mtInformation,[mbOk], 0);
 dblookup8.SetFocus;
end else

If dblookup8.Text = '' then
begin
 MessageDlg('Informe o Localização da O.S.', mtInformation,[mbOk], 0);
 dblookup8.SetFocus;
end else

If cliente1.Text = '' then
begin
 MessageDlg('Informe Cliente para a O.S.', mtInformation,[mbOk], 0);
 cliente1.SetFocus;
end else

If ComboDlg1.Text = '' then
begin
 MessageDlg('Informe um Bem para a O.S.', mtInformation,[mbOk], 0);
 ComboDlg1.SetFocus;
end else

if (DMos.sds_os.State in [dsInsert,dsEdit])  then
begin
 Try
      begin
          DMOS.SDS_OSID_EMPRESA.TEXT := DM.SDS_EmpresaCODIGO.TEXT;
          DMOS.SDS_OSID_CLIENTE.TEXT := DBComboCliente.TEXT;

          DMOS.SDS_OS.Post;
          DMOS.SDS_OS.ApplyUpdates(0);
          if (DMOS.SDS_OS_PRODUTO.State in [dsInsert, dsEdit]) THEN
          begin
          DMOS.SDS_OS_PRODUTO.EDIT;
          DMOS.SDS_OSID_CLIENTE.TEXT := DBComboCliente.TEXT;
          DMOS.SDS_OS_PRODUTO.Post;
          DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
          end;
  //      dm.sqlc.Commit(TD);
          AtualizaManutencao;
          data1.Color:= $00DDF8D6;
          data2.Color:= $00DDF8D6;
          data3.Color:= $00DDF8D6;
          hora1.Color:= $00DDF8D6;
          hora2.Color:= $00DDF8D6;
          hora3.Color:= $00DDF8D6;
          cliente1.Color:= $00DDF8D6;
          dblookup1.color:= $00DDF8D6;
          dblookup2.color:= $00DDF8D6;
          dblookup3.color:= $00DDF8D6;
          dblookup4.color:= $00DDF8D6;
          dblookup5.color:= $00DDF8D6;
          dblookup6.color:= $00DDF8D6;
          dblookup7.color:= $00DDF8D6;
          dblookup8.color:= $00DDF8D6;
          texto1.color:= $00DDF8D6;
          texto2.color:= $00DDF8D6;
          texto3.color:= $00DDF8D6;
          texto4.color:= $00DDF8D6;
          texto5.color:= $00DDF8D6;
          texto6.color:= $00DDF8D6;
          texto7.color:= $00DDF8D6;
          texto8.color:= $00DDF8D6;
          texto9.color:= $00DDF8D6;
          groupbox1.Enabled := false;
          groupbox2.Enabled := false;
          groupbox3.Enabled := false;
          groupbox4.Enabled := false;
          groupbox5.Enabled := false;
          groupbox6.Enabled := false;
          groupbox7.Enabled := false;

          Produtos.TabVisible := True;
          Solucao.TabVisible := True;
          Imagens.TabVisible := True;
          Laudo.TabVisible := True;
          Edit2.text:= DMOS.SDS_OSID_OS_ORDEMSERVICO.Text;
          OS := Edit2.Text;
         { Impressao.HTMLText.text :='Confirma Impressão da Abertura da Ordem de Serviço?';
          Impressao.Execute;
          if Impressao.ClickButton(0) then }
          if Application.MESSAGEBOX('Confirma Impressão da Abertura da Ordem de Serviço?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

               begin
                     DMOS.SDS_Clientes.Active:= False;
                    DM.SDS_Empresa.active := false;
                    DMOS.cds_rel_os.Active := FALSE;
                    DMOS.SDS_REL_PRODUTO.Active := false;
                    DMOS.Qry_rel_os.close;
                    DMOS.Qry_rel_os.SQL.Clear;
                    DMOS.Qry_rel_os.SQL.add('SELECT * from V_ORDEM_SERVICO where ID_EMPRESA >0'+'');
                    if os > '' then
                    DMOS.Qry_rel_os.SQL.add('and ID_OS_ORDEMSERVICO ='+(os)+'');
                    DMOS.Qry_rel_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO ASC');
                    DMOS.Qry_rel_os.Open;
                    DMOS.cds_rel_os.Active := True;
                    DMOS.SDS_REL_PRODUTO.Active := True;
                    //DMOS.SDS_REL_OS.DataSet.CommandText:='SELECT * from V_ORDEM_SERVICO WHERE ID_OS_ORDEMSERVICO like ' + #39 + '%' + dbEdit1.Text + '%' + #39+'' +'order by ID_OS_ORDEMSERVICO asc';
                    DMOS.SDS_ClienteS.Active:= True;
                    DM.SDS_Empresa.active := true;

               {  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                 end else

                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                 //   FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end;
                    iF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    begin
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end else
                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    // FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end else
                    begin
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;   }

                    frmos_impressao := Tfrmos_impressao.Create(self);
                    frmos_impressao.edit1.Text := Edit2.Text;
                    frmos_impressao.showmodal;

                    end;

           btnSalvar.Visible := False;

           if not DMOS.SDS_OS_PRODUTO.Eof then
           begin
             btnfaturar.Enabled := True;
           end;
          BtnSolucionar.Visible := true;
          BtnSolucionar.Enabled := true;
      end;
 
       Except
      //MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      //MsgErro.ShowModal;
      on E: EDatabaseError do
                ShowMessage(E.Message);
    end;
 end;
 end;

procedure TFormOs.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
FormPrincipal.MsgInformacao.HTMLText.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a exclusão da O.S.?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
Try
 Begin
    DMOS.SDS_OS.Delete;
    DMOS.SDS_OS.ApplyUpdates(0);
 end;
 if DMOS.SDS_OS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      FormPrincipal.MsgErro.HTMLText.text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      FormPrincipal.MsgErro.Execute;
      Cliente2.Clear;
end;
end;
end;
end;
procedure TFormOs.Data1Enter(Sender: TObject);
begin
CORENTRADA(SENDER);
end;

procedure TFormOs.Data1Exit(Sender: TObject);
begin
CORSAIDA(SENDER);
end;

procedure TFormOs.Hora1Enter(Sender: TObject);
begin
CORENTRADA(sender);
end;

procedure TFormOs.Hora1Exit(Sender: TObject);
begin
corSaida(sender);
end;

procedure TFormOs.Cliente1Exit(Sender: TObject);
var
  texto : pansichar;
begin
corSaida(sender);
//cliente2.Clear;
 {

  if Cliente1.Text = '' then
 begin
   cliente1.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   Cliente1.SetFocus;
 end else

 if edit1.Text='LETRAS' THEN
 BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where NOME_RS like ' + #39 + '%' + DBComboCliente.TEXT + '%' + #39+'order by NOME_RS ASC';
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.TEXT,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  DBComboClienteButtonClick(sender);
  end;


  IF ACHOU=TRUE THEN
  begin
          //DM.SDS_Clientes.locate('CODIGO', Cliente1.Text,[]);

          DMOS.SDS_OS.Edit;
          dmos.SDS_OSCONSUMIDOR_NOME.Value := dm.SDS_ClientesNome_Rs.Value;
          dmos.SDS_OSCONSUMIDOR_ENDERECO.Value := dm.sds_clientesEndereco.value;
          dmos.SDS_OSCONSUMIDOR_CPFCNPJ.Value := dm.SDS_ClientesCPF_CNPJ.Value;
          dmos.SDS_OSCONSUMIDOR_TELEFONE.Value := dm.SDS_ClientesTELEFONE.Value;
          dmos.SDS_OSCONSUMIDOR_RGINSCR.Value := dm.SDS_ClientesRG_IE.Value;
  end;
 end else

IF EDIT1.Text='NUMEROS' THEN
BEGIN
 IF Cliente1.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente1.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
 Cliente1.SetFocus;
end else
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + Cliente1.Text + '%' + #39+'order by NOME_RS ASC';
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(Cliente1.Text),[]);
          DMOS.SDS_OS.Edit;
          dmos.SDS_OSCONSUMIDOR_NOME.Value := dm.SDS_ClientesNome_Rs.Value;
          dmos.SDS_OSCONSUMIDOR_ENDERECO.Value := dm.sds_clientesEndereco.value;
          dmos.SDS_OSCONSUMIDOR_CPFCNPJ.Value := dm.SDS_ClientesCPF_CNPJ.Value;
          dmos.SDS_OSCONSUMIDOR_TELEFONE.Value := dm.SDS_ClientesTELEFONE.Value;
          dmos.SDS_OSCONSUMIDOR_RGINSCR.Value := dm.SDS_ClientesRG_IE.Value;

  end;
       IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'B' then
     begin // bloqueado
        texto := pansichar('Cliente com crédito Bloqueado!, não sera possivel continuar?');
        application.MessageBox(texto,'Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
        CLIENTE1.setfocus;
        exit;
     end;

      IF  dm.SDS_Clientes.FieldByName('ativo').asstring = 'I' then
       begin // inativo
        texto := pansichar('Cliente INATIVO!, não sera possivel continuar?');
        application.MessageBox(texto,'Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
            CLIENTE1.setfocus;
            exit;
       end;

      IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'S' then
      begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        CLIENTE1.SetFocus;
        exit;
      end;  }

end;

procedure TFormOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormOs:=nil;
end;

procedure TFormOs.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if DMOS.SDS_OS.State in [dsInsert, dsEdit] then
  begin
  if Application.MESSAGEBOX('Atenção!!! Deseja cancelar a digitação?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_NO then
  BEGIN
  CanClose := False ;
  Exit;
  end;
end;
end;

procedure TFormOs.ormCreate(Sender: TObject);
begin
//Application.OnException := MostraErros;
//SetWindowPos(Handle,HWND_TOP,110,20,0,0,SWP_NOSIZE);
dmOS.SDS_OS_PRODUTO.active := false;
dmOS.SDS_OS_PRODUTO.active := True;

dmOS.sDS_EQUIPAMENTOS.active := false;
dmOS.sDS_EQUIPAMENTOS.active := True;

dmos.sds_os.active := false;
dmos.sds_os.active := true;




dmos.sds_oscor.active := false;
dmos.sds_oscor.active := true;

dmos.SDS_OSMarcas.active := false;
dmos.SDS_OSMarcas.active := true;
dmos.Sds_localizacao.active := false;
dmos.Sds_localizacao.active := true;
dmos.Sds_bem.active := false;
dmos.Sds_bem.active := true;
dmos.SDS_TPatendimento.active := false;
dmos.SDS_TPatendimento.active := true;
dmos.Sds_Prioridade.active := false;
dmos.Sds_Prioridade.active := true;
dmos.Sds_Status.active := false;
dmos.Sds_status.active := true;


dm.SDS_CONFIGURACOES.Active := False;
dm.SDS_CONFIGURACOES.Active := True;
end;

procedure TFormOs.texto3Change(Sender: TObject);
begin
//TEXTO3.Text := DMOS.SDS_TipoBensTIPO.Text;
end;

procedure TFormOs.texto7Change(Sender: TObject);
begin
//TEXTO7.Text := dmos.SDS_OSMarcasMARCA.Text;
end;

procedure TFormOs.dblookup6Exit(Sender: TObject);
begin
TEXTO3.Text := DMOS.SDS_TipoBensTIPO.Text;
TEXTO7.Text := dmos.SDS_OSMarcasMARCA.Text;
end;

procedure TFormOs.dblookup1Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormOs.dblookup1Exit(Sender: TObject);
begin
corsaida(sender);
end;

procedure TFormOs.dblookup2Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormOs.dblookup2Exit(Sender: TObject);
begin
corsaida(Sender);
end;

procedure TFormOs.dblookup3Enter(Sender: TObject);
begin
corentrada(SENDER);
end;

procedure TFormOs.dblookup3Exit(Sender: TObject);
begin
corsaida(sender);
end;

procedure TFormOs.dblookup4Enter(Sender: TObject);
begin
corentrada(SENDER);
end;

procedure TFormOs.dblookup4Exit(Sender: TObject);
begin
corsaida(sender);
end;

procedure TFormOs.DBNavigatorBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
cliente2.Clear;
Cliente2.Text:= DM.SDS_ClientesNOME_RS.Value;
end;

procedure TFormOs.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsOS=nil   then
    begin
    FormConsOS:=TFormConsOS.Create(self);
      FormConsOS.Showmodal;

       DMOS.SDS_OS.Locate('ID_OS_ORDEMSERVICO',DMOS.CDS_OSID_OS_ORDEMSERVICO.TEXT, [loCaseInsensitive]);

       DBComboCliente.Text := DMOS.CDS_OSID_CLIENTE.Text;

      IF DMOS.SDS_OSSITUACAO.TEXT = 'ABERTA' then
      begin
        if DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
         begin
           btnfaturar.Enabled := true;
         end;
        BtnSolucionar.Visible:= True;
      end else
      IF DMOS.SDS_OSSITUACAO.TEXT = 'FATURADA' then
      begin
        btnfaturar.Enabled := False;
       // btnReabrir.Visible := True;
        BtnSolucionar.Visible:= False;
        btnReabrir.Visible := FALSE;
        btnEditar.Enabled := False;
        end else
        IF DMOS.SDS_OSSITUACAO.TEXT = 'SOLUCIONADA' then
      begin

      if DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
         begin
           btnfaturar.Visible := True;
           btnfaturar.Enabled := true;
         end;
        btnReabrir.Visible := True;
        btnReabrir.Enabled := True;
        btnEditar.Enabled := False;
        BtnSolucionar.Visible:= False;
        end;
            end;

        if ComboDlg1.Text > '' then
        begin
        DMOS.sDS_EQUIPAMENTOS.Locate('ID_OS_EQUIPAMENTOS', DMOS.SDS_OSID_OS_EQUIPAMENTO.Text,[loPartialKey, loCaseInsensitive]);
        TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
        TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
        TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;
        //DMOS.SDS_OSID_OS_EQUIPAMENTO.Text := DMOS.sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS.Text;
        DBComboCliente.Text := DMOS.SDS_OSID_CLIENTE.Text;
        end;

        //somar o valores da O.S.
        if ComboDlg1.Text > '' then
        begin
        DMOS.sDS_EQUIPAMENTOS.Locate('ID_OS_EQUIPAMENTOS', DMOS.SDS_OSID_OS_EQUIPAMENTO.Text,[loPartialKey, loCaseInsensitive]);
        TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
        TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
        TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;
        //DMOS.SDS_OSID_OS_EQUIPAMENTO.Text := DMOS.sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS.Text;
        end;

        IF  not DMOS.SDS_OS_PRODUTO.Eof then
        BEGIN
        DMOS.SDS_OS_PRODUTO.First;
        FormOs.A := 0;
        FormOs.B := 0;
        FormOs.C := 0;
        FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
        FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
        FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
        DMOS.SDS_OS_PRODUTO.Next;
        FormOs.Edit60.Text := FloatToStr(FormOs.B);
        FormOs.Edit61.Text := FloatToStr(FormOs.C);
        FormOs.Edit62.Text := FloatToStr(FormOs.A);
        While not DMOS.SDS_OS_PRODUTO.Eof do
        begin
        FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
        FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
        FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
        DMOS.SDS_OS_PRODUTO.Next;
        FormOs.Edit60.Text := FloatToStr(FormOs.B);
        FormOs.Edit61.Text := FloatToStr(FormOs.C);
        FormOs.Edit62.Text := FloatToStr(FormOs.A);
        end;
        DMOS.SDS_OS_PRODUTO.last;
        end ELSE
        begin
        FormOs.Edit60.Text := '0';
        FormOs.Edit61.Text := '0';
        FormOs.Edit62.Text := '0'
        end;

      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consultas de OS!!');
end;
end;

procedure TFormOs.RxDBComboEdit1ButtonClick(Sender: TObject);
begin

 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
 FormConsProdutosVendas.Showmodal;
 RxDBComboEdit1.Text := dm.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;

 if RbPreco1.Checked then
 begin
 CurrencyEdit1.Text := DM.SDS_PRODUTOS_CPRECO_VENDA.Text;
 CurrencyEdit4.Text := '1';
 suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 CurrencyEdit4.SetFocus;
 end else
  if RbPreco2.Checked then
 begin
 CurrencyEdit1.Text := DM.SDS_PRODUTOS_CPRECO_VENDA2.Text;
 suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 CurrencyEdit4.Text := '1';
 CurrencyEdit4.SetFocus;
 end ;
 end;

procedure TFormOs.CurrencyEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key =#09) then begin
   SelectNext(TWincontrol(Sender),True,True);
   Key:=#0;
end;
end;

procedure TFormOs.text(Sender: TObject; var Key: Char);
begin

if (Key=#13) or (key =#09) then
begin


if edit2.Text='LETRAS' THEN
BEGIN
  if RxDBComboEdit1.Text > '' then
 begin
// DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.Text := '1';

 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
 FormConsProdutosVendas.Edit1.Text := RxDBComboEdit1.Text;
 FormConsProdutosVendas.Showmodal;
 RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
 //CurrencyEdit1.Text := DM.SDS_PRODUTOS_CPRECO_VENDA.Text;
 suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
 if RbPreco1.Checked then
 begin
 CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA.Text;
 CurrencyEdit4.Text := '1';
 suiEdit1.Text := dm.SDS_PRODUTOS_cDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 CurrencyEdit4.SetFocus;
 end else
  if RbPreco2.Checked then
 begin
 CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA2.Text;
 suiEdit1.Text := dm.Sds_produtos_cDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 CurrencyEdit4.Text := '1';
 CurrencyEdit4.SetFocus;
 end ;
 end;

//IF ACHOU=TRUE THEN

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
if RxDBComboEdit1.Text > '' then
 begin
//ComboEdit1.Text := FormatFloat('0000',StrToFloat(ComboEdit1.Text));
// ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + RxDBComboEdit1.text + '%' + #39+'ORDER BY DESCRICAO asc';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', RxDBComboEdit1.text,[])=True then
      begin
     // DM.Sds_pedidos_itens.Edit;
     // DM.Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
       RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
 //    CurrencyEdit1.Text := DM.SDS_PRODUTOS_CPRECO_VENDA.Text;
       suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       if RbPreco1.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA.Text;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_cDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       CurrencyEdit4.SetFocus;
       end else
        if RbPreco2.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA2.Text;
       suiEdit1.Text := dm.Sds_produtos_cDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       CurrencyEdit4.Text := '1';
       CurrencyEdit4.SetFocus;
       end ;

      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', RxDBComboEdit1.text,[])=True then
      begin
      //SHOWMESSAGE('Produto Não Localizado');
      // ComboEdit1.SetFocus;
       DMOS.SDS_OS_PRODUTOCOD_PRODUTO.Text := '1';
       FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
       FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
      if RbPreco1.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA.Text;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_cDESCRICAO.Text;
       CurrencyEdit4.SetFocus;
       end else
        if RbPreco2.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA2.Text;
       suiEdit1.Text := dm.Sds_produtos_cDESCRICAO.Text;
       CurrencyEdit4.Text := '1';
       CurrencyEdit4.SetFocus;
       end ;

       end;
end;
end;
end;
end;


procedure TFormOs.CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key =#09) then begin
   SelectNext(TWincontrol(Sender),True,True);
   Key:=#0;
end;
end;

procedure TFormOs.CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key =#09) then begin
   SelectNext(TWincontrol(Sender),True,True);
   Key:=#0;
end;
end;

procedure TFormOs.RxDBComboEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key =#09) then begin
   SelectNext(TWincontrol(Sender),True,True);
   Key:=#0;
end;
end;

procedure TFormOs.CurrencyEdit4Exit(Sender: TObject);
begin
if CurrencyEdit4.value <= 0 then
begin
 Application.MESSAGEBOX('Valor tem que ser maior que Zero...', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
 CurrencyEdit4.setfocus;
end else
CurrencyEdit3.Value := (currencyEdit1.Value * CurrencyEdit4.value) - CurrencyEdit2.Value;

end;

procedure TFormOs.CurrencyEdit1Exit(Sender: TObject);
begin
if CurrencyEdit1.value <= 0 then
begin
 Application.MESSAGEBOX('Valor tem que ser maior que Zero...', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
 CurrencyEdit1.setfocus;
end else
CurrencyEdit3.Value := (currencyEdit1.Value * CurrencyEdit4.value) - CurrencyEdit2.Value;
end;

procedure TFormOs.CurrencyEdit2Exit(Sender: TObject);
begin
if CurrencyEdit2.Value < 0 then
begin
 Application.MESSAGEBOX('Valor tem que ser maior que Zero...', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
 CurrencyEdit1.setfocus;
end else
CurrencyEdit3.Value := (currencyEdit1.Value * CurrencyEdit4.value) - CurrencyEdit2.Value;
end;

procedure TFormOs.ComboEdit1ButtonClick(Sender: TObject);
begin
 FormConsUSUARIOS:=NIL;
 FormConsUsuarios:=TFormConsUsuarios.Create(self);
 FormConsUsuarios.Showmodal;
 ComboEdit1.TEXT := DM.SDS_UsuariosCODIGO.Text;
end;


procedure TFormOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

//if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TComboEdit) and NOT (ActiveControl is TRxDBComboEdit) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormOs.ApagaRegistro1Click(Sender: TObject);
begin
     if Application.MESSAGEBOX('Confirma a Exlusão do item selecionado Da OS?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      DMOS.SDS_OS_PRODUTO.Delete;
      DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
      {Sds_Orcamentos_itens.First;
      A:= 0;
      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
      Sds_Orcamentos_itens.Next;
      Edit55.Text:= FloatToStr(A);
      While not Sds_Orcamentos_itens.Eof do
      begin
      A:= A + Sds_Orcamentos_itensPRECO_TOTAL.AsFloat;
      Sds_Orcamentos_itens.Next;
      Edit55.Text:= FloatToStr(A);
      Edit57.Text:= FloatToStr(A - Edit56.Value);
      end; }
            DMOS.SDS_OS_PRODUTO.Refresh;

      IF  not DMOS.SDS_OS_PRODUTO.Eof then
      BEGIN
      DMOS.SDS_OS_PRODUTO.First;
      FormOs.A := 0;
      FormOs.B := 0;
      FormOs.C := 0;
      FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
      FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
      FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
      DMOS.SDS_OS_PRODUTO.Next;
      FormOs.Edit60.Text := FloatToStr(FormOs.B);
      FormOs.Edit61.Text := FloatToStr(FormOs.C);
      FormOs.Edit62.Text := FloatToStr(FormOs.A);
      While not DMOS.SDS_OS_PRODUTO.Eof do
      begin
      FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
      FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
      FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
      DMOS.SDS_OS_PRODUTO.Next;
      FormOs.Edit60.Text := FloatToStr(FormOs.B);
      FormOs.Edit61.Text := FloatToStr(FormOs.C);
      FormOs.Edit62.Text := FloatToStr(FormOs.A);
      end;
      DMOS.SDS_OS_PRODUTO.last;
     { end ELSE
      begin
      FormOs.Edit60.Text := '0';
      FormOs.Edit61.Text := '0';
      FormOs.Edit62.Text := '0'}
      end;
     end;
end;

procedure TFormOs.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
    begin
     if Application.MESSAGEBOX('Confirma a Exlusão do item selecionado Da OS?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      DMOS.SDS_OS_PRODUTO.DELETE;
      DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
     { Sds_pedidos_itens.First;
      A:= 0;
      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
      Sds_pedidos_itens.Next;
      Edit60.Text:= FloatToStr(A);
      Edit62.Text:= FloatToStr(A);
      While not Sds_pedidos_itens.Eof do
      begin
      A:= A + Sds_pedidos_itensPRECO_TOTAL.AsFloat;
      Sds_pedidos_itens.Next;
      Edit60.Text:= FloatToStr(A);
      Edit62.Text:= FloatToStr(A - E_desconto.Value);
      end; }
      DMOS.SDS_OS_PRODUTO.Refresh;

      IF  not DMOS.SDS_OS_PRODUTO.Eof then
      BEGIN
      DMOS.SDS_OS_PRODUTO.First;
      FormOs.A := 0;
      FormOs.B := 0;
      FormOs.C := 0;
      FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
      FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
      FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
      DMOS.SDS_OS_PRODUTO.Next;
      FormOs.Edit60.Text := FloatToStr(FormOs.B);
      FormOs.Edit61.Text := FloatToStr(FormOs.C);
      FormOs.Edit62.Text := FloatToStr(FormOs.A);
      While not DMOS.SDS_OS_PRODUTO.Eof do
      begin
      FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
      FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
      FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
      DMOS.SDS_OS_PRODUTO.Next;
      FormOs.Edit60.Text := FloatToStr(FormOs.B);
      FormOs.Edit61.Text := FloatToStr(FormOs.C);
      FormOs.Edit62.Text := FloatToStr(FormOs.A);
      end;
      DMOS.SDS_OS_PRODUTO.last;
     { end ELSE
      begin
      FormOs.Edit60.Text := '0';
      FormOs.Edit61.Text := '0';
      FormOs.Edit62.Text := '0'}
      end;
      end;
end;
end;

procedure TFormOs.vens(Sender: TObject);
var
 E, N, Contador: Integer;
begin
  //Msg_cd.Text:= '';
 // Msg_cd.Text:= 'Confirma a Geração da Venda?';
//if Msg_cd.Showmodal = mryes then
 if Application.MESSAGEBOX('Confirma a Geração da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  //Exit;
begin
 If formVendas = nil   then
    begin
     formVendas:=TformVendas.Create(self);
     formVendas.tag := 0;
    //  formVendas.Show;
      end;

//if not DMOS.SDS_OS_PRODUTO.Eof then
begin
formvendas.sds_pedidos.Insert;
formvendas.sds_pedidos.EDIT;
formvendas.SPC_Codigo.ExecProc;
N:= (formvendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formvendas.sds_pedidosCODIGO.Text :=IntTostr(N);
formvendas.N_venda.Text          := IntToStr(N);
formvendas.sds_pedidosDATA_PEDIDO.AsDateTime  := date;
formvendas.sds_pedidosDATA_ENTREGA.AsDateTime := date;
formvendas.sds_pedidosVALOR_ITENS.Text       := EDIT60.Text;
formvendas.sds_pedidosVALOR_DESCONTO.Text    := EDIT61.Text;
formvendas.sds_pedidosVALOR_TOTAL.Text       := EDIT62.Text;
formvendas.sds_pedidosCODIGO_CLIENTE.Text    := DMOS.SDS_OSID_CLIENTE.Text;
formvendas.DBComboCliente.Text               := DMOS.SDS_OSID_CLIENTE.Text;
formvendas.sds_pedidosNOME_CLIENTE.Text      := DMOS.SDS_OSCONSUMIDOR_NOME.Text;
formvendas.sds_pedidosENC_FINANCEIRO.Text    := '0';
formvendas.Sds_pedidosENDERECO.Text          := DMOS.SDS_OSCONSUMIDOR_ENDERECO.Text;
formvendas.Sds_pedidosCPF_CNPJ.Text          := DMOS.SDS_OSCONSUMIDOR_CPFCNPJ.Text;
formvendas.Sds_pedidosFONE.text              := DMOS.SDS_OSCONSUMIDOR_TELEFONE.text;
formvendas.Sds_pedidosRG_IE.text             := DMOS.SDS_OSCONSUMIDOR_RGINSCR.text;
formvendas.sds_pedidosCOD_VENDEDOR.text      := DMOS.SDS_OSID_TECNICORESPONSAVEL.text;
formvendas.sds_pedidosUSUARIO.Text           := FormPrincipal.UserLogado;
formvendas.sds_pedidosCOD_EMPRESA.Text       := DM.SDS_EmpresaCODIGO.Text;
formvendas.Sds_pedidosCOD_OS.Text            := DBEDIT1.Text;
formVendas.Sds_pedidoskm.Text                := '0';
formVendas.Sds_pedidosOBSERVACOES.TEXT       := 'VEICULO: ' + DMOS.SDS_OSVEICULO.TEXT + 'PLACA: '+ DMOS.SDS_OSPLACA.TEXT + 'KM: '+ DMOS.SDS_OSKM.TEXT;

DMOS.SDS_OS_PRODUTO.First;
Contador := DMOS.SDS_OS_PRODUTO.RecordCount;
For E:=1 to Contador do
 begin
formvendas.sds_pedidos_itens.Insert;
formvendas.sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formvendas.sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formvendas.sds_pedidos_itensCODIGO_ID.Text            := formvendas.N_venda.Text;
formvendas.sds_pedidos_itensCODIGO_PROD.Text          := DMOS.SDS_OS_PRODUTOCOD_PRODUTO.Text;
formvendas.sds_pedidos_itensCODIGO_PRODUTO.Text       := DMOS.SDS_OS_PRODUTOCODIGO_BARRAS.Text;
formvendas.sds_pedidos_itensDESCRICAO_PRODUTO.Text    := DMOS.SDS_OS_PRODUTODESCRICAO.Text;
formvendas.sds_pedidos_itensDESCONTO.TEXT             := DMOS.SDS_OS_PRODUTOVLRDESCONTO.Text;
formvendas.sds_pedidos_itensQUANTIDADE.Text           := DMOS.SDS_OS_PRODUTOQUANTIDADE.Text;
formvendas.sds_pedidos_itensPRECO_UNITARIO.Text       := DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.Text;
formvendas.sds_pedidos_itensPRECO_TOTAL.Text          := DMOS.SDS_OS_PRODUTOVALOR_TOTAL.Text;
formvendas.sds_pedidos_itensVENDEDOR.Text             := DMOS.SDS_OS_PRODUTOID_OS_TECNICO.Text;
formvendas.sds_pedidos_itensUNIDADE.Text              := DMOS.SDS_OS_PRODUTODESC_UNIDADE.Text;
formvendas.sds_pedidos_itensSIT_TRIBUTARIA.Text       := DMOS.SDS_OS_PRODUTOSIT_TRIBUTARIA.Text;
//formvendas.sds_pedidos_itensENC_FINANCEIRO.TEXT       := DMOS.SDS_OS_PRODUTOENC_FINANCEIRO.Text;
formvendas.sds_pedidos_itensFRACAO.text               := DMOS.SDS_OS_PRODUTOFRACAO.Text;
formvendas.sds_pedidos_itensCOD_NCM.Text              := DMOS.SDS_OS_PRODUTOCOD_NCM.Text;
formvendas.sds_pedidos_itensPROD_SERV.Text            := DMOS.SDS_OS_PRODUTOPROD_SERV.TEXT;
formvendas.sds_pedidos_itensITEN.Text                 := DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.Text;
DMOS.SDS_OS_PRODUTO.Next;

end;


formvendas.sds_pedidos.Post;

{DMOS.SDS_OS_PRODUTO.Edit;
DMOS.SDS_OS_PRODUTOEXPORTADO.TEXT := 'S';
DMOS.SDS_OS_PRODUTO.Post;
DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);}
//formvendas.sds_pedidos_itens.Post;
formvendas.Pc.ActivePageIndex := 1;
formvendas.Tvendas.PageIndex := 1;
formvendas.Inserir.Enabled:= False;
formvendas.pesquisar.Enabled := False;
formvendas.confirmar.Enabled := True;
formvendas.GroupBox1.Enabled := True;
formvendas.GroupBox2.Enabled := True;
formvendas.groupbox3.Enabled := True;
formvendas.cancelar.Enabled:=true;

 formvendas.Edit60.Visible := true;
 formvendas.E_desconto.Visible := true;
 formvendas.Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formvendas.RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formvendas.RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := True;
  end;

if formvendas.Tag = 0 then
begin
if DM.SDS_CONFIGURACOESREGISTRADORA.Text = 'S' then
begin
formvendas.N_venda.Text :='0';
formvendas.CheckBox5.Checked := True;
end else
begin
formvendas.CheckBox4.Checked := True;
end;
end;
      formvendas.sds_pedidos_itens.last;
      formvendas.sds_pedidos_itens.Insert;

      //formvendas.DBComboClienteExit(Sender);

      formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      formvendas.sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
      btnfaturar.Visible := False;

end;
end;
end;


procedure TFormOs.EClick(Sender: TObject;
  Button: TNavigateBtn);
begin
//DBComboCliente.Text := cliente1.Text;
DBComboCliente.Text := DMOS.SDS_OSID_CLIENTE.Text;
if ComboDlg1.Text > '' then
begin
DMOS.sDS_EQUIPAMENTOS.Locate('ID_OS_EQUIPAMENTOS', DMOS.SDS_OSID_OS_EQUIPAMENTO.Text,[loPartialKey, loCaseInsensitive]);
TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;
//DMOS.SDS_OSID_OS_EQUIPAMENTO.Text := DMOS.sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS.Text;
end;

IF  not DMOS.SDS_OS_PRODUTO.Eof then
BEGIN
DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;
end ELSE
begin
FormOs.Edit60.Text := '0';
FormOs.Edit61.Text := '0';
FormOs.Edit62.Text := '0'
end;

end;

procedure TFormOs.RxDBComboEdit1Change(Sender: TObject);
begin
IF (RxDBComboEdit1.Text>='A') AND (RxDBComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (RxDBComboEdit1.Text>='0') AND (RxDBComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF RxDBComboEdit1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormOs.ComboEdit1Change(Sender: TObject);
begin
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormOs.suiDBEdit4Enter(Sender: TObject);
begin
dmos.SDS_OS.Edit;
if RadioButton1.Checked then
begin
dmos.SDS_OSCONSUMIDOR_CPFCNPJ.EditMask:= '999.999.999-99;1;_';
end else
if RadioButton2.Checked then
begin
dmos.SDS_OSCONSUMIDOR_CPFCNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormOs.suiButton4Click(Sender: TObject);
begin
GroupBox9.Visible := False;
end;

procedure TFormOs.suiButton3Click(Sender: TObject);
begin
GroupBox9.Visible := True;
end;

procedure TFormOs.BtnSolucionarClick(Sender: TObject);
begin
          pc.ActivePageIndex := 2;
          salvSolucao.Visible := True;
          salvSolucao.Enabled := True;
          DMOS.SDS_OS.Edit;
          DMOS.SDS_OSSITUACAO.AsString := 'SOLUCIONADA';
          DMOS.SDS_OSDATA_SOLUCAO.AsDateTime := Date;
          DMOS.SDS_OSHORA_SOLUCAO.Text := TimeToStr(horas);
          //DMOS.SDS_OS.Post;
          //DMOS.SDS_OS.ApplyUpdates(0);

          BtnSolucionar.Visible := False;
      end;


procedure TFormOs.btnReabrirClick(Sender: TObject);
begin
          Pc.TabIndex := 0;
          DMOS.SDS_OS.Edit;
          DMOS.SDS_OSSITUACAO.TEXT := 'ABERTA';
          //DMOS.SDS_OS.Post;
          //DMOS.SDS_OS.ApplyUpdates(0);
          AtualizaManutencao;
          btnSalvar.Visible := True;
          btnSalvar.Enabled := True;
          btnfaturar.Visible := False;
          btnReabrir.Enabled := False;
          data1.Color:= clWhite;
   data2.Color:= clWhite;
   data3.Color:= clWhite;
   hora1.Color:= clWhite;
   hora2.Color:= clWhite;
   hora3.Color:= clWhite;
   cliente1.Color:= clWhite;
   dblookup1.color:= clwhite;
   dblookup2.color:= clwhite;
   dblookup3.color:= clwhite;
   dblookup4.color:= clwhite;
   dblookup5.color:= clwhite;
   dblookup6.color:= clwhite;
   dblookup7.color:= clwhite;
   dblookup8.color:= clwhite;
   texto1.color:= clwhite;
   texto2.color:= clwhite;
   texto3.color:= clwhite;
   texto4.color:= clwhite;
   texto5.color:= clwhite;
   texto6.color:= clwhite;
   texto7.color:= clwhite;
   texto8.color:= clwhite;
   texto9.color:= clwhite;
   groupbox1.Enabled := true;
   groupbox2.Enabled := true;
   groupbox3.Enabled := true;
   groupbox4.Enabled := true;
   groupbox5.Enabled := true;
   groupbox6.Enabled := true;
   groupbox7.Enabled := true;
   DBComboCliente.Text := DMOS.SDS_OSID_CLIENTE.Text;
   Data1.SetFocus;
end;

procedure TFormOs.FormPaint(Sender: TObject);
begin
{IF DMOS.SDS_OSSITUACAO.TEXT = 'ABERTA' then
begin
  if DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
   begin
     btnfaturar.Enabled := true;
   end;
  BtnSolucionar.Visible:= True;
end else
IF DMOS.SDS_OSSITUACAO.TEXT = 'FATURADA' then
begin
  btnfaturar.Enabled := False;
 // btnReabrir.Visible := True;
  BtnSolucionar.Visible:= False;
  btnReabrir.Visible := FALSE;
  btnEditar.Enabled := False;
  end else
  IF DMOS.SDS_OSSITUACAO.TEXT = 'SOLUCIONADA' then
begin

if DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
   begin
     btnfaturar.Visible := True;
     btnfaturar.Enabled := true;
   end;
  btnReabrir.Visible := True;
  btnReabrir.Enabled := True;
  btnEditar.Enabled := False;
  BtnSolucionar.Visible:= False;
  end;

TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;
DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;   }
  end;

procedure TFormOs.texto7Enter(Sender: TObject);
begin
CorEntrada(SENDER);
end;

procedure TFormOs.texto7Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormOs.salvSolucaoClick(Sender: TObject);
var
  os :string;
begin
if (DMos.sds_os.State in [dsInsert,dsEdit])  then
begin

          DMOS.SDS_OSID_EMPRESA.TEXT := DM.SDS_EmpresaCODIGO.TEXT;
          DMOS.SDS_OS.Post;
          DMOS.SDS_OS.ApplyUpdates(0);
          if (DMOS.SDS_OS_PRODUTO.State in [dsInsert, dsEdit]) THEN
          begin
          DMOS.SDS_OS_PRODUTO.EDIT;
          DMOS.SDS_OS_PRODUTO.Post;
          DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
          end;
          AtualizaManutencao;
          salvSolucao.Visible :=False;
         // BtnSolucionar.Visible := false;
           Edit2.Text:= DMOS.SDS_OSID_OS_ORDEMSERVICO.Text;
            os:= Edit2.Text;

         { Impressao.HTMLText.text :='Confirma Impressão da Solução da Ordem de Serviço?';
          Impressao.Execute
          if Impressao.ClickButton(0) then }

          if Application.MESSAGEBOX('Confirma Impressão da Solução da Ordem de Serviço?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

               begin
                    DMOS.SDS_Clientes.Active:= False;
                    DM.SDS_Empresa.active := false;
                    DMOS.cds_rel_os.Active := FALSE;
                    DMOS.SDS_REL_PRODUTO.Active := false;
                    DMOS.Qry_rel_os.close;
                    DMOS.Qry_rel_os.SQL.Clear;
                    DMOS.Qry_rel_os.SQL.add('SELECT * from V_ORDEM_SERVICO where ID_EMPRESA >0'+'');
                    if os > '' then
                    DMOS.Qry_rel_os.SQL.add('and ID_OS_ORDEMSERVICO ='+(os)+'');
                    DMOS.Qry_rel_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO ASC');
                    DMOS.Qry_rel_os.Open;
                    DMOS.cds_rel_os.Active := True;
                    DMOS.SDS_REL_PRODUTO.Active := True;
                    //DMOS.SDS_REL_OS.DataSet.CommandText:='SELECT * from V_ORDEM_SERVICO WHERE ID_OS_ORDEMSERVICO like ' + #39 + '%' + dbEdit1.Text + '%' + #39+'' +'order by ID_OS_ORDEMSERVICO asc';
                    DMOS.SDS_ClienteS.Active:= True;
                    DM.SDS_Empresa.active := true;
                  //  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                {    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end else
                  //  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end;

                  {  iF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    begin
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end else
                    iF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    begin
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                   // FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end;}

                    frmos_impressao := Tfrmos_impressao.Create(self);
                    frmos_impressao.edit1.Text := Edit2.Text;
                    frmos_impressao.showmodal;

                 end;

          btnReabrir.Visible :=True;
          btnReabrir.Enabled :=True;

          if not DMOS.SDS_OS_PRODUTO.Eof then
           begin
             btnfaturar.Visible := True;
             btnfaturar.Enabled := True;

           end;
         //    ShowMessage('Falha ao Gravar os dados');

end;
end;

procedure TFormOs.DBEdit4Enter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormOs.DBEdit4Exit(Sender: TObject);
begin
CorSaida(sender);
end;

procedure TFormOs.suiDBMemo1Enter(Sender: TObject);
begin
DMOS.SDS_OS.Edit;
end;

procedure TFormOs.Co(Sender: TObject);
begin
if ComboDlg1.Text > '' then
begin
DMOS.sDS_EQUIPAMENTOS.Locate('ID_OS_EQUIPAMENTOS', DMOS.SDS_OSID_OS_EQUIPAMENTO.Text,[loPartialKey, loCaseInsensitive]);
TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;

//DMOS.SDS_OSID_OS_EQUIPAMENTO.Text := DMOS.sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS.Text;
end;
end;

procedure TFormOs.ProdutosClick(Sender: TObject);
begin
DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;
end;

procedure TFormOs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

      if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

      if (Key=VK_F2) then
      begin
      btnLocalizar.Click;
      end;
       if (Key=VK_F3) then
      begin
      btnNovo.Click;
      end;
       if (Key=VK_F4) then
      begin
      btnReabrir.Click;
      end;
       if (Key=VK_F5) then
      begin
      btnCancelar.Click;
      end;
       if (Key=VK_F6) then
      begin
      btnfaturar.Click;
      end;
       if (Key=VK_F7) then
      begin
      btnExcluir.Click;
      end;
       if (Key=VK_F8) then
      begin
      salvSolucao.Click;
      end;
       if (Key=VK_F9) then
      begin
      BtnSolucionar.Click;
      end;
        if (Key=VK_F10) then
      begin
      btnSalvar.Click;
      end;
end;

procedure TFormOs.RxDBComboEdit1Enter(Sender: TObject);
begin
DMOS.sds_os_produto.Edit;
end;

procedure TFormOs.ComboDlg1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
end;

procedure TFormOs.RxDBComboEdit1Exit(Sender: TObject);
begin
if edit2.Text='LETRAS' THEN
BEGIN
  if RxDBComboEdit1.Text > '' then
 begin
// DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.Text := '1';

 FormConsProdutosVendas:=NIL;
 FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
 FormConsProdutosVendas.Edit1.Text := RxDBComboEdit1.Text;
 FormConsProdutosVendas.Showmodal;
 RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
 //CurrencyEdit1.Text := DM.SDS_PRODUTOS_CPRECO_VENDA.Text;
 suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 if RbPreco1.Checked then
 begin
  RxDBComboEdit1.Text := dm.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
 CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA.Text;
 CurrencyEdit4.Text := '1';
 suiEdit1.Text := dm.SDS_PRODUTOS_cDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 CurrencyEdit4.SetFocus;
 end else
  if RbPreco2.Checked then
 begin
  RxDBComboEdit1.Text := dm.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
 CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA2.Text;
 suiEdit1.Text := dm.Sds_produtos_cDESCRICAO.Text;
 Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
 CurrencyEdit4.Text := '1';
 CurrencyEdit4.SetFocus;
 end ;
 end;

//IF ACHOU=TRUE THEN

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
if RxDBComboEdit1.Text > '' then
 begin
//ComboEdit1.Text := FormatFloat('0000',StrToFloat(ComboEdit1.Text));
// ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + RxDBComboEdit1.text + '%' + #39+'ORDER BY DESCRICAO asc';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', RxDBComboEdit1.text,[])=True then
      begin
     // DM.Sds_pedidos_itens.Edit;
     // DM.Sds_pedidos_itensCODIGO_PRODUTO.TEXT := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
       RxDBComboEdit1.Text :=DM.Sds_produtos_cCODIGO_BARRAS.Text;
 //    CurrencyEdit1.Text := DM.SDS_PRODUTOS_CPRECO_VENDA.Text;
       suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       if RbPreco1.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA.Text;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_cDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       CurrencyEdit4.SetFocus;
       end else
        if RbPreco2.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA2.Text;
       suiEdit1.Text := dm.Sds_produtos_cDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       CurrencyEdit4.Text := '1';
       CurrencyEdit4.SetFocus;
       end ;

      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', RxDBComboEdit1.text,[])=True then
      begin
      //SHOWMESSAGE('Produto Não Localizado');
      // ComboEdit1.SetFocus;
         FormConsProdutosVendas:=NIL;
       FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
       FormConsProdutosVendas.Edit1.Text := ComboEdit1.Text;
       FormConsProdutosVendas.Showmodal;
       CurrencyEdit4.Text := '1';
       RxDBComboEdit1.Text := dm.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
       suiEdit1.Text := dm.SDS_PRODUTOS_CDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
      if RbPreco1.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA.Text;
       CurrencyEdit4.Text := '1';
       suiEdit1.Text := dm.SDS_PRODUTOS_cDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       CurrencyEdit4.SetFocus;
       end else
        if RbPreco2.Checked then
       begin
       CurrencyEdit1.Text := DM.SDS_PRODUTOS_cPRECO_VENDA2.Text;
       suiEdit1.Text := dm.Sds_produtos_cDESCRICAO.Text;
       Edit3.Text :=  dm.SDS_PRODUTOS_CCODIGO.Text;
       CurrencyEdit4.Text := '1';
       CurrencyEdit4.SetFocus;
       end ;

       end;
end;
end;
end;


procedure TFormOs.ComboEdit1Exit(Sender: TObject);
begin
 //end;
// begin
 if ComboEdit1.Text = '' then
 begin
  ShowMessage('Campo do vendedor não pode estar em branco');
  ComboEdit1.SetFocus;
 end else

if edit2.Text='LETRAS' THEN
BEGIN
 if ComboEdit1.Text > '' then
 begin
 FormConsUSUARIOS:=NIL;
 FormConsUsuarios:=TFormConsUsuarios.Create(self);
 FormConsUsuarios.Showmodal;
 ComboEdit1.TEXT := DM.SDS_UsuariosCODIGO.Text;

   DMOS.SDS_OS_PRODUTO.Insert;
   DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.AsInteger := 1;
   DMOS.SDS_OS_PRODUTOID_OS_ORDEMSERVICO.Text := DBEdit1.Text;
   InsereItem;
   rxdbcomboedit1.Clear;
   suiEdit1.Clear;
   //ComboEdit1.Clear;
   CurrencyEdit2.Value := 1;
   CurrencyEdit1.Clear;
   CurrencyEdit2.Clear;
   CurrencyEdit3.Clear;
   DMOS.SDS_OS_PRODUTO.EDIT;
   DMOS.SDS_OS_PRODUTO.Post;
   DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
   rxdbcomboedit1.SetFocus;
end;
END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
if ComboEdit1.Text > '' then
 begin
      If DM.SDS_Usuarios.locate('CODIGO', ComboEdit1.Text,[])=True then
      begin
      ComboEdit1.TEXT := DM.SDS_UsuariosCODIGO.Text;
       DMOS.SDS_OS_PRODUTO.Insert;
       DMOS.SDS_OS_PRODUTO.Edit;
       DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.AsInteger := 1;
       DMOS.SDS_OS_PRODUTOID_OS_ORDEMSERVICO.Text := DBEdit1.Text;
       InsereItem;
       rxdbcomboedit1.Clear;
       suiEdit1.Clear;
      // ComboEdit1.Clear;
       CurrencyEdit2.Value := 1;
       CurrencyEdit1.Clear;
       CurrencyEdit2.Clear;
       CurrencyEdit3.Clear;
       DMOS.SDS_OS_PRODUTO.EDIT;
          DMOS.SDS_OS_PRODUTO.Post;
          DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
       rxdbcomboedit1.SetFocus;
      end else
      If not DM.SDS_Usuarios.locate('CODIGO', ComboEdit1.Text,[])=True then
      begin
      FormConsUSUARIOS:=NIL;
      FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.Showmodal;
      ComboEdit1.TEXT := DM.SDS_UsuariosCODIGO.Text;
        DMOS.SDS_OS_PRODUTO.Insert;
        DMOS.SDS_OS_PRODUTOID_OS_PRODUTOS_SERVICOS.AsInteger := 1;
        DMOS.SDS_OS_PRODUTOID_OS_ORDEMSERVICO.Text := DBEdit1.Text;
       InsereItem;
       rxdbcomboedit1.Clear;
       suiEdit1.Clear;
      // ComboEdit1.Clear;
       CurrencyEdit2.Value := 1;
       CurrencyEdit1.Clear;
       CurrencyEdit2.Clear;
       CurrencyEdit3.Clear;
       DMOS.SDS_OS_PRODUTO.EDIT;
       DMOS.SDS_OS_PRODUTO.Post;
       DMOS.SDS_OS_PRODUTO.ApplyUpdates(0);
       rxdbcomboedit1.SetFocus;

      end;
end;
end;
end;

procedure TFormOs.suiDBEdit1Change(Sender: TObject);
begin

IF DMOS.SDS_OSSITUACAO.TEXT = 'ABERTA' then
begin

    btnfaturar.Enabled := true;
    btnEditar.Enabled := True;
    btnReabrir.Visible := false;
     BtnSolucionar.Visible:= True;

end else
IF DMOS.SDS_OSSITUACAO.TEXT = 'FATURADA' then
begin
  btnfaturar.Enabled := False;
 // btnReabrir.Visible := True;
  BtnSolucionar.Visible:= False;
  btnReabrir.Visible := FALSE;
  btnEditar.Enabled := False;
  end else
  IF DMOS.SDS_OSSITUACAO.TEXT = 'SOLUCIONADA' then
begin

if DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
   begin
     btnfaturar.Visible := True;
     btnfaturar.Enabled := true;
   end;
  btnReabrir.Visible := True;
  btnReabrir.Enabled := True;
  btnEditar.Enabled := False;
  BtnSolucionar.Visible:= False;
  end;

  {if DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
begin
  DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;
end;}
end;

procedure TFormOs.PcChange(Sender: TObject);
begin

IF Pc.ActivePageIndex = 1 then
BEGIN
 IF  DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
BEGIN
 DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A:= FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;
end ELSE
begin
FormOs.Edit60.Text := '0';
FormOs.Edit61.Text := '0';
FormOs.Edit62.Text := '0'
end;
end;
end;

procedure TFormOs.ReabrirOs1Click(Sender: TObject);
begin
   DMOS.SDS_OS.Edit;
   DMOS.SDS_OSSITUACAO.TEXT := 'ABERTA';
   DMOS.SDS_OSID_VENDA.IsNull;
   DMOS.SDS_OS.Post;
   DMOS.SDS_OS.ApplyUpdates(0);
end;

procedure TFormOs.DBComboClienteButtonClick(Sender: TObject);
begin
 Try    
if FormConsClientes=nil   then
    begin
    FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Cliente1.Clear;
Cliente2.Text:= DM.SDS_ClientesNOME_RS.Text;
cliente1.Text:= DM.SDS_ClientesCodigo.AsString;
DBComboCliente.Text:= DM.SDS_ClientesCodigo.AsString;
  dmos.SDS_OSCONSUMIDOR_NOME.Value := dm.SDS_ClientesNome_Rs.Value;
          dmos.SDS_OSCONSUMIDOR_ENDERECO.Value := dm.sds_clientesEndereco.value;
          dmos.SDS_OSCONSUMIDOR_CPFCNPJ.Value := dm.SDS_ClientesCPF_CNPJ.Value;
          dmos.SDS_OSCONSUMIDOR_TELEFONE.Value := dm.SDS_ClientesTELEFONE.Value;
          dmos.SDS_OSCONSUMIDOR_RGINSCR.Value := dm.SDS_ClientesRG_IE.Value;
DBComboCliente.SetFocus;
end;

procedure TFormOs.DBComboClienteChange(Sender: TObject);
begin
IF (DBComboCliente.Text>='A') AND (DBComboCliente.Text<='Z') THEN
EDIT1.Text:='LETRAS';

IF (DBComboCliente.Text>='0') AND (DBComboCliente.Text<='9') THEN
EDIT1.Text:='NUMEROS';

IF DBComboCliente.Text='' THEN
EDIT1.Text:='';
end;

procedure TFormOs.DBComboClienteEnter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormOs.DBComboClienteExit(Sender: TObject);
var
  texto : pansichar;
begin
 if edit1.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  DBComboClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
          DMOS.SDS_OS.Edit;
          DBComboCliente.Text := dm.SDS_ClientesCODIGO.Text;
          dmos.SDS_OSCONSUMIDOR_NOME.Value := dm.SDS_ClientesNome_Rs.Value;
          dmos.SDS_OSCONSUMIDOR_ENDERECO.Value := dm.sds_clientesEndereco.value;
          dmos.SDS_OSCONSUMIDOR_CPFCNPJ.Value := dm.SDS_ClientesCPF_CNPJ.Value;
          dmos.SDS_OSCONSUMIDOR_TELEFONE.Value := dm.SDS_ClientesTELEFONE.Value;
          dmos.SDS_OSCONSUMIDOR_RGINSCR.Value := dm.SDS_ClientesRG_IE.Value;
          cliente1.Text := DBComboCliente.Text;
   end;
    except
     ShowMessage('erro ao consultar');
    end;
  end else

IF EDIT1.Text='NUMEROS' THEN
BEGIN
 IF DBComboCliente.text > '999999' then
begin
 DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
 DBComboCliente.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  DBComboCliente.Text := RemoveChar(DBComboCliente.Text);
  cliente1.Text := DBComboCliente.Text;
 // dblookup1.SetFocus;

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
DBComboCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
 IF DBComboCliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
 DBComboCliente.SetFocus;
end else
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
          DMOS.SDS_OS.Edit;
          DBComboCliente.Text := dm.SDS_ClientesCODIGO.text;
          cliente1.Text := dm.SDS_ClientesCODIGO.Text;
          dmos.SDS_OSCONSUMIDOR_NOME.Value := dm.SDS_ClientesNome_Rs.Value;
          dmos.SDS_OSCONSUMIDOR_ENDERECO.Value := dm.sds_clientesEndereco.value;
          dmos.SDS_OSCONSUMIDOR_CPFCNPJ.Value := dm.SDS_ClientesCPF_CNPJ.Value;
          dmos.SDS_OSCONSUMIDOR_TELEFONE.Value := dm.SDS_ClientesTELEFONE.Value;
          dmos.SDS_OSCONSUMIDOR_RGINSCR.Value := dm.SDS_ClientesRG_IE.Value;
          cliente1.Text := DBComboCliente.Text;

  end;
     IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'B' then
     begin // bloqueado
      //  texto := pansichar('Cliente com crédito Bloqueado!, não sera possivel continuar?');
        application.MessageBox('Cliente com crédito Bloqueado!, não sera possivel continuar?','Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
        DBComboCliente.setfocus;
        exit;
     end;

       IF  dm.SDS_Clientes.FieldByName('ativo').asstring = 'I' then
       begin // inativo
       // texto := pansichar('Cliente INATIVO!, não sera possivel continuar?');
        application.MessageBox('Cliente INATIVO!, não sera possivel continuar?','Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
        DBComboCliente.setfocus;
            exit;
       end;

      IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'S' then
      begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        DBComboCliente.SetFocus;
        exit;
      end;

 end;
end;

procedure TFormOs.DBEdit1Change(Sender: TObject);
begin
{DBComboCliente.Text := cliente1.Text;
if ComboDlg1.Text > '' then
begin
DMOS.sDS_EQUIPAMENTOS.Locate('ID_OS_EQUIPAMENTOS', DMOS.SDS_OSID_OS_EQUIPAMENTO.Text,[loPartialKey, loCaseInsensitive]);
TEXTO3.Text := DMOS.sDS_EQUIPAMENTOSTIPO.Text;
TEXTO7.Text := DMOS.sDS_EQUIPAMENTOSMARCA.Text;
TEXTO10.Text := DMOS.sDS_EQUIPAMENTOSMODELO.Text;
//DMOS.SDS_OSID_OS_EQUIPAMENTO.Text := DMOS.sDS_EQUIPAMENTOSID_OS_EQUIPAMENTOS.Text;
end;   }


end;

procedure TFormOs.ProdutosShow(Sender: TObject);
begin
{IF Produtos.TabVisible = true then
BEGIN
IF  DMOS.SDS_OS_PRODUTO.RecordCount > 0 then
BEGIN
 DMOS.SDS_OS_PRODUTO.First;
FormOs.A := 0;
FormOs.B := 0;
FormOs.C := 0;
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
While not DMOS.SDS_OS_PRODUTO.Eof do
begin
FormOs.A := FormOs.A + DMOS.SDS_OS_PRODUTOVALOR_TOTAL.AsFloat;
FormOs.B := FormOs.B + DMOS.SDS_OS_PRODUTOVALOR_UNITARIO.AsFloat;
FormOs.C := FormOs.C + DMOS.SDS_OS_PRODUTOVLRDESCONTO.AsFloat;
DMOS.SDS_OS_PRODUTO.Next;
FormOs.Edit60.Text := FloatToStr(FormOs.B);
FormOs.Edit61.Text := FloatToStr(FormOs.C);
FormOs.Edit62.Text := FloatToStr(FormOs.A);
end;
DMOS.SDS_OS_PRODUTO.last;
end ELSE
begin
FormOs.Edit60.Text := '0';
FormOs.Edit61.Text := '0';
FormOs.Edit62.Text := '0'
end;
end;   }
end;

procedure TFormOs.BitBtn1Click(Sender: TObject);
var
  os : string;
begin
   Edit2.text:= DMOS.SDS_OSID_OS_ORDEMSERVICO.Text;
          OS := Edit2.Text;
         { Impressao.HTMLText.text :='Confirma Impressão da Abertura da Ordem de Serviço?';
          Impressao.Execute;
          if Impressao.ClickButton(0) then }
       //   if Application.MESSAGEBOX('Confirma Impressão da Abertura da Ordem de Serviço?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

               begin
                    DMOS.SDS_Clientes.Active:= False;
                    DM.SDS_Empresa.active := false;
                    DMOS.cds_rel_os.Active := FALSE;
                    DMOS.SDS_REL_PRODUTO.Active := false;
                    DMOS.Qry_rel_os.close;
                    DMOS.Qry_rel_os.SQL.Clear;
                    DMOS.Qry_rel_os.SQL.add('SELECT * from V_ORDEM_SERVICO where ID_EMPRESA >0'+'');
                    if os > '' then
                    DMOS.Qry_rel_os.SQL.add('and ID_OS_ORDEMSERVICO ='+(os)+'');
                    DMOS.Qry_rel_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO ASC');
                    DMOS.Qry_rel_os.Open;
                    DMOS.cds_rel_os.Active := True;
                    DMOS.SDS_REL_PRODUTO.Active := True;
                    //DMOS.SDS_REL_OS.DataSet.CommandText:='SELECT * from V_ORDEM_SERVICO WHERE ID_OS_ORDEMSERVICO like ' + #39 + '%' + dbEdit1.Text + '%' + #39+'' +'order by ID_OS_ORDEMSERVICO asc';
                    DMOS.SDS_ClienteS.Active:= True;
                    DM.SDS_Empresa.active := true;
                    frmos_impressao := Tfrmos_impressao.Create(self);
                    frmos_impressao.edit1.Text := Edit2.Text;
                    frmos_impressao.showmodal;

end;
end;

end.
