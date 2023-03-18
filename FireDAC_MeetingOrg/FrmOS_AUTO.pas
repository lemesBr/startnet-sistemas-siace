unit FrmOS_AUTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  Buttons, ExtCtrls, acPNG, ActnList, DB, Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet;

type
  TFOS_AUTO = class(TForm)
    pgcOS: TPageControl;
    tbGrid: TTabSheet;
    tbEdit: TTabSheet;
    gpbCliente: TGroupBox;
    gpbOrdemServico: TGroupBox;
    gpbProdutosServicosGrid: TGroupBox;
    pnlTop: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    lblNOs: TLabel;
    Label4: TLabel;
    lblDataOS: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtAtendimento: TDBLookupComboBox;
    edtTipo: TDBComboBox;
    edtCliente: TDBLookupComboBox;
    edtSolicitante: TDBEdit;
    Panel1: TPanel;
    Image2: TImage;
    Bevel2: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label48: TLabel;
    Label14: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBLookupComboBox1: TDBLookupComboBox;
    edtModelo: TDBEdit;
    edtPlaca: TDBEdit;
    cbxAtendimento: TDBComboBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    cbxCombustivel: TDBComboBox;
    cbxNivel: TDBComboBox;
    mmDefeito: TDBMemo;
    edtRenavan: TDBEdit;
    pgcDados: TPageControl;
    tbLaudo: TTabSheet;
    Bevel6: TBevel;
    Label15: TLabel;
    Bevel7: TBevel;
    Label51: TLabel;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    edtHoraLaudo: TDBEdit;
    edtTecnico: TDBLookupComboBox;
    mmDefeitoLaudo: TDBMemo;
    cbxSistuacao: TDBComboBox;
    mmIntervecoes: TDBMemo;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edtRetiradoPor: TDBEdit;
    tbServicosProdutos: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Panel4: TPanel;
    GridProdutosServicos: TDBGrid;
    Action: TActionList;
    ActionLaudo: TAction;
    ActionServicosProdutos: TAction;
    pnlFooter: TPanel;
    gridOS: TDBGrid;
    V: TDBGrid;
    Label27: TLabel;
    ActionIncluir: TAction;
    ActionAlterar: TAction;
    ActionExcluir: TAction;
    ActionCancelar: TAction;
    ActionSalvar: TAction;
    dsOs: TDataSource;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    spbPesquisaCliente: TSpeedButton;
    spbPesquisaVeiculo: TSpeedButton;
    spbPesquisaTecnico: TSpeedButton;
    spbPesquisaProdutos: TSpeedButton;
    spbPesquisaClienteGrid: TSpeedButton;
    Bevel5: TBevel;
    Bevel8: TBevel;
    Panel2: TPanel;
    Bevel9: TBevel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    edtNomeCliente: TEdit;
    edtDataLaudo: TDBEdit;
    edtDataConclusao: TDBEdit;
    edtDataEntrega: TDBEdit;
    dsProdutos: TDataSource;
    btnIncluirProduto: TButton;
    Bevel10: TBevel;
    Label19: TLabel;
    lblValorTotalDescontos: TLabel;
    lblValorTotalProdutos: TLabel;
    Bevel11: TBevel;
    Label30: TLabel;
    rdgPreco: TRadioGroup;
    edtQtd: TEdit;
    edtValorUnit: TEdit;
    edtDesconto: TEdit;
    edtValorTotal: TEdit;
    edtNomeProduto: TEdit;
    popProdutoService: TPopupMenu;
    E1: TMenuItem;
    spbGerarBoleto: TSpeedButton;
    ActionFaturar: TAction;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    spbImprimirBoleto: TSpeedButton;
    ActionImprimirStatus: TAction;
    frxDBDataset2: TfrxDBDataset;
    DBEdit1: TDBEdit;
    Label28: TLabel;
    DBEdit2: TDBEdit;
    Label29: TLabel;
    procedure ActionLaudoExecute(Sender: TObject);
    procedure ActionServicosProdutosExecute(Sender: TObject);
    procedure ActionIncluirUpdate(Sender: TObject);
    procedure ActionCancelarUpdate(Sender: TObject);
    procedure ActionIncluirExecute(Sender: TObject);
    procedure ActionAlterarExecute(Sender: TObject);
    procedure ActionExcluirExecute(Sender: TObject);
    procedure ActionCancelarExecute(Sender: TObject);
    procedure ActionSalvarExecute(Sender: TObject);
    procedure spbPesquisaClienteClick(Sender: TObject);
    procedure spbPesquisaTecnicoClick(Sender: TObject);
    procedure spbPesquisaVeiculoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirProdutoClick(Sender: TObject);
    procedure edtQtdProdutoExit(Sender: TObject);
    procedure spbPesquisaProdutosClick(Sender: TObject);
    procedure edtQtdExit(Sender: TObject);
    procedure edtValorUnitEnter(Sender: TObject);
    procedure edtValorUnitExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E1Click(Sender: TObject);
    procedure spbPesquisaClienteGridClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionFaturarExecute(Sender: TObject);
    procedure ActionImprimirStatusExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ConverteReais(Valor: String): Currency;
    function ConverteText(Valor: String): string;
    function BuscaValores(N: integer): Currency;
    procedure SomaTotal;
    procedure LimpaESomaProduto;
    procedure RelatorioAberturaOS(ID: integer);
    procedure RelatorioFechamentoOS(ID: Integer);

  end;

var
  FOS_AUTO: TFOS_AUTO;
  Cliente_Endereco: array [1..4] of string;

implementation

uses uDMMovimentacao, xloc_veiculo, ConsClientes, ModulodeDados,
  ConsProdutosVendas, Vendas, DMOS1, Principal;

{$R *.dfm}

procedure TFOS_AUTO.ActionLaudoExecute(Sender: TObject);
begin
  pgcDados.ActivePage:= tbLaudo;
end;

procedure TFOS_AUTO.ActionServicosProdutosExecute(Sender: TObject);
begin
  pgcDados.ActivePage:= tbServicosProdutos;
end;

procedure TFOS_AUTO.ActionIncluirUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:= dsOs.DataSet.State in [dsBrowse,dsInactive];
end;

procedure TFOS_AUTO.ActionCancelarUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:= dsOs.DataSet.State in [dsInsert,dsEdit];
end;

procedure TFOS_AUTO.ActionIncluirExecute(Sender: TObject);
begin
  if dsOs.DataSet.Active = False then
  begin
    dsOs.DataSet.Open;
    dsProdutos.DataSet.Open;
  end;
  dsOs.DataSet.Insert;
  lblNOs.Caption:= InttoStr(dsOs.DataSet.fieldbyname('ID').asinteger);
  dsOs.DataSet.fieldbyname('NUMERO_OS').asinteger:=
  dsOs.DataSet.fieldbyname('ID').asinteger;
  lblDataOS.Caption:= DateToStr(now);
  dsOs.DataSet.FieldByName('DATA_OS').AsDateTime:= Now;
  pgcOS.ActivePage:= tbEdit;
  tbServicosProdutos.TabVisible:= False;
  LimpaESomaProduto;
end;

procedure TFOS_AUTO.ActionAlterarExecute(Sender: TObject);
begin
  if not dsOs.DataSet.IsEmpty then
  begin
    dsOs.DataSet.Edit;
    lblNOs.Caption:= InttoStr(dsOs.DataSet.fieldbyname('NUMERO_OS').asinteger);
    lblDataOS.Caption:= DateToStr(dsOs.DataSet.fieldbyname('DATA_OS').AsDateTime);
    pgcOS.ActivePage:= tbEdit;
    tbServicosProdutos.TabVisible:= True;
    LimpaESomaProduto;
  end;
end;

procedure TFOS_AUTO.ActionExcluirExecute(Sender: TObject);
begin
  if not dsOs.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Confirma a exclusão da O.S.?', 'Confirmar',
     MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      try
        dsOs.DataSet.Delete;
      except
        Application.MESSAGEBOX('A O.S selecionada não pode ser excluida!', 'O.S com depedencia!',
        MB_ICONERROR);
      end;
    end;
  end;
end;

procedure TFOS_AUTO.ActionCancelarExecute(Sender: TObject);
begin
  dsOs.DataSet.Cancel;
  dsOs.DataSet.Close;
  dsProdutos.DataSet.Close;
  pgcOS.ActivePage:= tbGrid;
end;

procedure TFOS_AUTO.ActionSalvarExecute(Sender: TObject);
begin
  if edtCliente.Text <> '' then
  begin
    dsOs.DataSet.post;
    dsOs.DataSet.Close;
    dsProdutos.DataSet.Close;
    pgcOS.ActivePage:= tbGrid;
  end
  else
    ShowMessage('Cliente não foi selecionado!');
end;

procedure TFOS_AUTO.spbPesquisaClienteClick(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    dsOs.DataSet.FieldByName('ID_CLIENTE').AsInteger:=
    DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFOS_AUTO.spbPesquisaTecnicoClick(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    dsOS.DataSet.FieldByName('ID_TECNICO').AsInteger:=
    DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFOS_AUTO.spbPesquisaVeiculoClick(Sender: TObject);
var
  ID: Integer;
begin
  try
    frmxloc_veiculo:= Tfrmxloc_veiculo.Create(nil);
    frmxloc_veiculo.ShowModal;
  finally
    ID:= frmxloc_veiculo.queryCODIGO.Value;
    FreeAndNil(frmxloc_veiculo);
    dsOS.DataSet.FieldByName('ID_VEICULO').AsInteger:= ID;
  end;
end;

procedure TFOS_AUTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsOs.DataSet.Close;
  dsProdutos.DataSet.Close;
  action:= caFree;
  FOS_AUTO:=nil;
end;

procedure TFOS_AUTO.btnIncluirProdutoClick(Sender: TObject);
begin
  if edtNomeProduto.Text <> '' then
  begin
    if StrToInt(edtQtd.text) > 0 then
    begin
      try
        dsProdutos.DataSet.Filter:= 'ID_PRODUTO = ' + IntToStr(btnIncluirProduto.Tag);
        dsProdutos.DataSet.Filtered:= True;

        if dsProdutos.DataSet.IsEmpty then
        begin
          dsProdutos.DataSet.Insert;
          dsProdutos.DataSet.FieldByName('ID_PRODUTO').AsInteger:= btnIncluirProduto.Tag;
          dsProdutos.DataSet.FieldByName('QUANTIDADE').AsInteger:= StrToInt(edtQtd.text);
          dsProdutos.DataSet.FieldByName('VALOR_UNT').AsCurrency:= ConverteReais(edtValorUnit.text);
          dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency:= ConverteReais(edtDesconto.text);
          dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency:= ConverteReais(edtValorTotal.text);
          lblValorTotalDescontos.Caption:= FloatToStrF(ConverteReais(lblValorTotalDescontos.Caption) +
          dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency,ffCurrency,12,2);
          lblValorTotalProdutos.Caption:= FloatToStrF(ConverteReais(lblValorTotalProdutos.Caption) +
          dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency,ffCurrency,12,2);
          dsProdutos.DataSet.Post;
        end
        else
        begin
          dsProdutos.DataSet.Edit;
          dsProdutos.DataSet.FieldByName('QUANTIDADE').AsInteger:= StrToInt(edtQtd.text) +
          dsProdutos.DataSet.FieldByName('QUANTIDADE').AsInteger;
          lblValorTotalProdutos.Caption:=
          FloatToStrF(ConverteReais(lblValorTotalProdutos.Caption) - dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency,ffCurrency,12,2);
          lblValorTotalDescontos.Caption:=
          FloatToStrF(ConverteReais(lblValorTotalDescontos.Caption) - dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency,ffCurrency,12,2);
          dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency:=
          (dsProdutos.DataSet.FieldByName('QUANTIDADE').AsInteger * dsProdutos.DataSet.FieldByName('VALOR_UNT').AsCurrency) -
          dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency;
          
          lblValorTotalDescontos.Caption:= FloatToStrF(ConverteReais(lblValorTotalDescontos.Caption) +
          dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency,ffCurrency,12,2);
          lblValorTotalProdutos.Caption:= FloatToStrF(ConverteReais(lblValorTotalProdutos.Caption) +
          dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency,ffCurrency,12,2);
          dsProdutos.DataSet.Post;
        end;

        dsProdutos.DataSet.Filtered:= False;
      except
        ShowMessage('Erro ao tentar incluir um Produto/Serviço');
        dsProdutos.DataSet.Filtered:= False;
      end;
    end
    else
      ShowMessage('Quantidade de produto/Serviço não pode ser menor ou igual a zero!');
  end
  else
    ShowMessage('Produto/Serviço não selecionado!');
end;

function TFOS_AUTO.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

function TFOS_AUTO.ConverteText(Valor: String): string;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= Trim(Valor);
end;

procedure TFOS_AUTO.edtQtdProdutoExit(Sender: TObject);
begin
  if dsProdutos.DataSet.fieldbyname('VALOR_UNT').AsCurrency <> null then
  begin
    if dsProdutos.DataSet.fieldbyname('QUANTIDADE').AsInteger <= 0 then
      dsProdutos.DataSet.fieldbyname('QUANTIDADE').AsInteger:= 1;

    dsProdutos.DataSet.fieldbyname('TOTAL').AsCurrency:=
    (dsProdutos.DataSet.fieldbyname('QUANTIDADE').AsInteger *
    dsProdutos.DataSet.fieldbyname('VALOR_UNT').AsCurrency) -
    dsProdutos.DataSet.fieldbyname('DESCONTO').AsCurrency;
  end
  else
    ShowMessage('Valor Unitario não pode ser menor ou igual a zero!');
end;

procedure TFOS_AUTO.spbPesquisaProdutosClick(Sender: TObject);
begin
  try
    FormConsProdutosVendas:= TFormConsProdutosVendas.Create(nil);
    FormConsProdutosVendas.ShowModal;
  finally
    btnIncluirProduto.Tag:= DM.Sds_produtos_cCODIGO.Value;
    edtNomeProduto.Text:= DM.Sds_produtos_cDESCRICAO.Value;
    
    if rdgPreco.ItemIndex = 0 then
    begin
      edtValorUnit.Text:=
      FloatToStrF(DM.Sds_produtos_cPRECO_VENDA.AsCurrency,ffNumber,12,2);
    end
    else
    begin
      edtValorUnit.Text:=
      FloatToStrF(DM.Sds_produtos_cPRECO_VENDA2.AsCurrency,ffNumber,12,2);
    end;
    edtQtd.SetFocus;
    FreeAndNil(FormConsProdutosVendas);
  end;
end;

procedure TFOS_AUTO.SomaTotal;
begin
  edtValorTotal.Text:= FloatToStrF((StrToInt(edtQtd.Text) *
  ConverteReais(edtValorUnit.text)) - ConverteReais(edtDesconto.Text),ffNumber,12,2);
end;

procedure TFOS_AUTO.edtQtdExit(Sender: TObject);
begin
  SomaTotal;
end;

procedure TFOS_AUTO.edtValorUnitEnter(Sender: TObject);
begin
  TEdit(Sender).Text:= ConverteText(TEdit(Sender).Text);
end;

procedure TFOS_AUTO.edtValorUnitExit(Sender: TObject);
begin
  TEdit(Sender).Text:= FloatToStrF(ConverteReais(TEdit(Sender).Text),ffNumber,12,2);
  SomaTotal;
end;

procedure TFOS_AUTO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFOS_AUTO.E1Click(Sender: TObject);
begin
  try
    if not dsProdutos.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Confirma a exclusão do Produto/Serviço?', 'Confirmar',
        MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        lblValorTotalProdutos.Caption:=
        FloatToStrF(ConverteReais(lblValorTotalProdutos.Caption) - dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency,ffCurrency,12,2);
        lblValorTotalDescontos.Caption:=
        FloatToStrF(ConverteReais(lblValorTotalDescontos.Caption) - dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency,ffCurrency,12,2);
        dsProdutos.DataSet.Delete;
      end;
    end;
  except
    ShowMessage('Erro ao excluir o registro!');
  end;
end;

procedure TFOS_AUTO.spbPesquisaClienteGridClick(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    dsOs.DataSet.Filter:= 'ID_CLIENTE = ' + IntToStr(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
    dsOs.DataSet.Filtered:= True;
    edtNomeCliente.Text:= DM.DTS_Clientes.DataSet.fieldbyname('NOME_RS').Asstring;
    Cliente_Endereco[1]:= DM.DTS_Clientes.DataSet.fieldbyname('ENDERECO').Asstring;
    Cliente_Endereco[2]:= DM.DTS_Clientes.DataSet.fieldbyname('CPF_CNPJ').Asstring;
    Cliente_Endereco[3]:= DM.DTS_Clientes.DataSet.fieldbyname('TELEFONE').Asstring;
    Cliente_Endereco[4]:= DM.DTS_Clientes.DataSet.fieldbyname('RG_IE').Asstring;
    if dsOs.DataSet.Active = False then
    begin
      dsOs.DataSet.Open;
      dsProdutos.DataSet.Open;
    end;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFOS_AUTO.LimpaESomaProduto;
var
  Total,Desconto: Currency;
begin
  Total:= 0;
  Desconto:= 0;
  edtQtd.Text:= '1';
  edtValorUnit.Text:= '0,00';
  edtDesconto.Text:= '0,00';
  edtValorTotal.Text:= '0,00';
  lblValorTotalDescontos.Caption:= 'R$ 0,00';
  lblValorTotalProdutos.Caption:= 'R$ 0,00';
  edtNomeCliente.Text:= '';

  if dsOs.DataSet.State = dsEdit then
  begin
    while not dsProdutos.DataSet.eof do
    begin
      Total:= Total + dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency;
      Desconto:=  Desconto + dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency;
      dsProdutos.DataSet.Next;
    end;

    lblValorTotalDescontos.Caption:= FloatToStrF(Desconto,ffCurrency,12,2);
    lblValorTotalProdutos.Caption:= FloatToStrF(Total,ffCurrency,12,2);
  end;
end;

procedure TFOS_AUTO.FormCreate(Sender: TObject);
begin
  pgcOS.ActivePage:= tbGrid;
end;

procedure TFOS_AUTO.ActionFaturarExecute(Sender: TObject);
var
  E, N: Integer;
  qr: TFDQUery;
begin
  if not dsOs.DataSet.IsEmpty then
  begin
    if dsOs.DataSet.FieldByName('FATURADO').AsString = 'N' then
    begin
      if Application.MESSAGEBOX('Confirma a Geração da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        //try
          formVendas:= TformVendas.Create(self);
          formVendas.tag := 0;
          formvendas.sds_pedidos.Insert;
          formvendas.sds_pedidos.EDIT;
          formvendas.SPC_Codigo.ExecProc;
          N:= (formvendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
          formvendas.sds_pedidosCODIGO.Text :=IntTostr(N);
          formvendas.N_venda.Text          := IntToStr(N);
          formvendas.sds_pedidosDATA_PEDIDO.AsDateTime  := now;
          formvendas.sds_pedidosDATA_ENTREGA.AsDateTime := now;
          formvendas.sds_pedidosVALOR_ITENS.AsCurrency := BuscaValores(3);
          formvendas.sds_pedidosVALOR_DESCONTO.AsCurrency    := BuscaValores(2);
          formvendas.sds_pedidosVALOR_TOTAL.AsCurrency       := BuscaValores(1);
          formvendas.sds_pedidosCODIGO_CLIENTE.AsInteger    := dsOs.DataSet.Fieldbyname('ID_CLIENTE').asinteger;
          formvendas.DBComboCliente.Text               := dsOs.DataSet.Fieldbyname('CLIENTE').asstring;
          formvendas.sds_pedidosNOME_CLIENTE.asstring      := dsOs.DataSet.Fieldbyname('CLIENTE').asstring;
          formvendas.sds_pedidosENC_FINANCEIRO.Text    := '0';
          formvendas.Sds_pedidosENDERECO.AsString          := Cliente_Endereco[1];
          formvendas.Sds_pedidosCPF_CNPJ.AsString          := Cliente_Endereco[2];
          formvendas.Sds_pedidosFONE.AsString              := Cliente_Endereco[3];
          formvendas.Sds_pedidosRG_IE.AsString             := Cliente_Endereco[4];
          formvendas.sds_pedidosCOD_VENDEDOR.asinteger      := dsOs.DataSet.Fieldbyname('ID_TECNICO').asinteger;
          formvendas.sds_pedidosUSUARIO.Text           := FormPrincipal.UserLogado;
          formvendas.sds_pedidosCOD_EMPRESA.Text       := DM.SDS_EmpresaCODIGO.Text;
          formvendas.Sds_pedidosCOD_OS_AUTO.asinteger  := dsOs.DataSet.Fieldbyname('ID').asinteger;
          formVendas.Sds_pedidoskm.Text                := '0';
          formVendas.Sds_pedidosOBSERVACOES.TEXT       :=
          'VEICULO: ' + dsOs.DataSet.Fieldbyname('VEICULO').asstring + 'PLACA: '+ dsOs.DataSet.Fieldbyname('PLACA_CARRO').asstring;

          dsProdutos.DataSet.First;

          while not dsProdutos.DataSet.Eof do
          begin
            formvendas.sds_pedidos_itens.Insert;
            formvendas.sds_pedidos_itens.Edit;
      
            qr:= TFDQuery.Create(nil);
            qr.Connection:= dm.Coneccao;
            qr.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = ' + IntToStr(dsProdutos.DataSet.fieldbyname('ID_PRODUTO').AsInteger));
            qr.Open;

            formvendas.sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
            formvendas.sds_pedidos_itensCODIGO_ID.Text            := formvendas.N_venda.Text;
            formvendas.sds_pedidos_itensCODIGO_PROD.AsInteger     := qr.fieldbyname('CODIGO').AsInteger;
            formvendas.sds_pedidos_itensCODIGO_PRODUTO.AsString   := qr.fieldbyname('CODIGO_BARRAS').AsString;
            formvendas.sds_pedidos_itensDESCRICAO_PRODUTO.AsString:= qr.fieldbyname('DESCRICAO').AsString;
            formvendas.sds_pedidos_itensDESCONTO.AsCurrency       := dsProdutos.DataSet.fieldbyname('DESCONTO').AsCurrency;
            formvendas.sds_pedidos_itensQUANTIDADE.AsInteger      := dsProdutos.DataSet.fieldbyname('QUANTIDADE').AsInteger;
            formvendas.sds_pedidos_itensPRECO_UNITARIO.AsCurrency := dsProdutos.DataSet.fieldbyname('VALOR_UNT').AsCurrency;
            formvendas.sds_pedidos_itensPRECO_TOTAL.AsCurrency    := dsProdutos.DataSet.fieldbyname('TOTAL').AsCurrency;
            formvendas.sds_pedidos_itensVENDEDOR.asinteger        := dsOs.DataSet.fieldbyname('ID_TECNICO').asinteger;
            formvendas.sds_pedidos_itensUNIDADE.AsString          := qr.fieldbyname('DESC_UNIDADE').AsString;
            formvendas.sds_pedidos_itensSIT_TRIBUTARIA.AsString   := qr.fieldbyname('SIT_TRIBUTARIA').AsString;
            formvendas.sds_pedidos_itensFRACAO.AsInteger          := qr.fieldbyname('FRACAO').AsInteger;
            formvendas.sds_pedidos_itensCOD_NCM.AsString         := qr.fieldbyname('NCM_SH').AsString;
            formvendas.sds_pedidos_itensPROD_SERV.AsString        := qr.fieldbyname('PROD_SERV').AsString;
            formvendas.sds_pedidos_itensITEN.AsInteger            := dsProdutos.DataSet.fieldbyname('ID_OS_AUTO').AsInteger;
            dsProdutos.DataSet.Next;
          end;

          formvendas.sds_pedidos.Post;
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
          end
          else
          IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
          begin
            formvendas.RbPreco2.Checked := True;
          end;

          IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
          begin
            formvendas.DBGRID.Columns.Items[3].ReadOnly := False;
          end
          else
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
            end
            else
            begin
              formvendas.CheckBox4.Checked := True;
            end;
          end;

          formvendas.sds_pedidos_itens.last;
          formvendas.sds_pedidos_itens.Insert;

          formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
          formvendas.sds_pedidos_itens.Edit;
          formVendas.ComboEdit1.Visible := True;
          formVendas.ComboEdit1.SetFocus;

          dsOs.DataSet.Edit;
          dsOs.DataSet.FieldByName('FATURADO').AsString:= 'S';
          dsOs.DataSet.Post;
          formVendas.show;
//        finally
//          FreeAndNil(formVendas);
//        end;
      end;
    end
    else
      ShowMessage('A Os Selecionada já se encontra faturada!');
  end;
end;

function TFOS_AUTO.BuscaValores(N: integer): Currency;
var
  Total,Itens,Desconto: Currency;
begin
  Result:= 0;
  dsProdutos.DataSet.First;
  while not dsProdutos.DataSet.eof do
  begin
    Itens:= Itens + dsProdutos.DataSet.FieldByName('VALOR_UNT').AsCurrency;
    Total:= Total + dsProdutos.DataSet.FieldByName('TOTAL').AsCurrency;
    Desconto:=  Desconto + dsProdutos.DataSet.FieldByName('DESCONTO').AsCurrency;
    dsProdutos.DataSet.Next;
  end;

  if N = 1 then
    Result:= Total
  else
  if N = 2 then
    Result:= Desconto
  else
  if N = 3 then
    Result:= Itens;
end;

procedure TFOS_AUTO.RelatorioAberturaOS(ID: integer);
var
  qr: TFDQuery;
begin
  try
    frxReport.LoadFromFile('C:\siace\rel\OsVeiculoAbertura.fr3');
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT * FROM VIEW_ABERTURA_OS_AUTO WHERE ID = ' + IntToStr(ID));
    frxDBDataset.DataSet:= qr;
    qr.Open;

    frxReport.ShowReport;
  finally
    qr.Destroy;
  end;
end;

procedure TFOS_AUTO.ActionImprimirStatusExecute(Sender: TObject);
begin
  if not dsOs.DataSet.IsEmpty then
  begin
    if (dsOs.DataSet.FieldByName('SITUACAO_LAUDO').asstring =
        'ABERTA - Aguardando Confirmação') or
      (dsOs.DataSet.FieldByName('SITUACAO_LAUDO').asstring =
        'ABERTA - Executando Serviços') then
    begin
      RelatorioAberturaOS(dsOs.DataSet.FieldByName('ID').AsInteger);
    end
    else
    if (dsOs.DataSet.FieldByName('SITUACAO_LAUDO').asstring =
        'FECHADA') then
    begin
      RelatorioFechamentoOS(dsOs.DataSet.FieldByName('ID').AsInteger);
    end
    else
    begin
      ShowMessage('Essa O.S nao possue nenhuma situação, edite e preencha a situação!');
    end;
  end;
end;

procedure TFOS_AUTO.RelatorioFechamentoOS(ID: Integer);
var
  qr,qr2: TFDQuery;
begin
  try
    frxReport.LoadFromFile('C:\siace\rel\OsVeiculoFechamento.fr3');
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT * FROM VIEW_ABERTURA_OS_AUTO WHERE ID = ' + IntToStr(ID));
    frxDBDataset.DataSet:= qr;
    qr.Open;


    qr2:= TFDQuery.Create(nil);
    qr2.Connection:= DM.Coneccao;
    qr2.SQL.Add('SELECT OS.ID_OS_AUTO AS ID_AUTO,'+
                '(SELECT COUNT(CODIGO) FROM PRODUTOS WHERE CODIGO = PR.CODIGO AND PROD_SERV = ''P'') AS PRODUTOS,'+
                '(SELECT COUNT(CODIGO) FROM PRODUTOS WHERE CODIGO = PR.CODIGO AND PROD_SERV = ''S'') AS SERVICOS,'+
                'PR.DESCRICAO AS PRODUTO,OS.QUANTIDADE AS QUANTIDADE,'+
                'PR.UND_TRIB AS UN,OS.VALOR_UNT AS UNITARIO,OS.DESCONTO AS DESCONTO,'+
                'OS.TOTAL AS TOTAL FROM OS_AUTO_PRODUTOS OS '+
                ' LEFT JOIN PRODUTOS PR ON (PR.CODIGO = OS.ID_PRODUTO)'+
                ' WHERE OS.ID_OS_AUTO = '+ IntToStr(id));
    frxDBDataset2.DataSet:= qr2;
    qr2.Open;


    frxReport.ShowReport;
  finally
    qr.Destroy;
  end;
end;

end.
