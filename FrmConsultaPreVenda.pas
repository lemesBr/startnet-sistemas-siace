unit FrmConsultaPreVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxDesgn, frxClass, DB, IBCustomDataSet, DBClient, SimpleDS,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Menus, RDprint, SqlExpr, SUIDlg,
  ExtCtrls, SUIDBCtrls, StdCtrls, Mask, DBCtrls,
  RXCtrls, Grids, DBGrids, SUIButton, aDvPanel, frxDBSet, Data.DBXFirebird,
  RxToolEdit, RxCurrEdit;

type
  TFConsultaPreVenda = class(TForm)
    Memo1: TMemo;
    Panel: TAdvPanel;
    BitBtn3: TsuiButton;
    suiButton2: TsuiButton;
    suiButton3: TsuiButton;
    Panel4: TAdvPanel;
    suiDBGrid2: TDBGrid;
    Panel8: TAdvPanel;
    RxLabel41: TRxLabel;
    l_total: TRxLabel;
    RxLabel44: TRxLabel;
    RxLabel45: TRxLabel;
    L_prazo: TRxLabel;
    L_avista: TRxLabel;
    RxLabel9: TRxLabel;
    Panel11: TAdvPanel;
    Label9: TLabel;
    suiDBEdit43: TDBEdit;
    suiDBEdit44: TDBEdit;
    v_PRAZO: TRxCalcEdit;
    v_TOTAL: TRxCalcEdit;
    v_AVISTA: TRxCalcEdit;
    q_VENDAS: TRxCalcEdit;
    suiDBEdit10: TsuiDBEdit;
    Panel9: TAdvPanel;
    suiDBGrid1: TDBGrid;
    pnpesq: TAdvPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Cliente: TComboEdit;
    suiButton7: TsuiButton;
    Edit4: TEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    RDprint1: TRDprint;
    PopupMenu1: TPopupMenu;
    AlteradadosdoCliente1: TMenuItem;
    Action11: TMenuItem;
    D1: TMenuItem;
    I1: TMenuItem;
    Qrsoma: TFDQuery;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    qrPreVenda: TFDQuery;
    qrPreVendaCODIGO: TIntegerField;
    qrPreVendaUSUARIO: TStringField;
    qrPreVendaDATA_PEDIDO: TDateField;
    qrPreVendaDATA_ENTREGA: TDateField;
    qrPreVendaCODIGO_CLIENTE: TIntegerField;
    qrPreVendaNOME_CLIENTE: TStringField;
    qrPreVendaPAGAMENTO: TStringField;
    qrPreVendaSTATUS: TStringField;
    qrPreVendaSITUACAO: TStringField;
    qrPreVendaUSUARIO_ENTREGA: TStringField;
    qrPreVendaTP: TStringField;
    qrPreVendaOBSERVACOES: TStringField;
    qrPreVendaCOD_VENDEDOR: TIntegerField;
    qrPreVendaCOD_PAGTO: TIntegerField;
    qrPreVendaN_CUPOM: TStringField;
    qrPreVendaN_ECF: TStringField;
    qrPreVendaCOD_EMPRESA: TIntegerField;
    qrPreVendaHORA: TTimeField;
    qrPreVendaCOD_ORCAMENTO: TIntegerField;
    qrPreVendaCOD_PEDIDO: TIntegerField;
    qrPreVendaCOD_OS: TSmallintField;
    qrPreVendaNUM_NOTA: TIntegerField;
    qrPreVendaSERIE_NOTA: TStringField;
    qrPreVendaENDERECO: TStringField;
    qrPreVendaCPF_CNPJ: TStringField;
    qrPreVendaRG_IE: TStringField;
    qrPreVendaFONE: TStringField;
    qrPreVendaCIDADE: TStringField;
    qrPreVendaBAIRRO: TStringField;
    qrPreVendaN_PARTIDA: TStringField;
    qrPreVendaPROPRIEDADE: TStringField;
    qrPreVendaQUANT_VENDIDA: TBCDField;
    qrPreVendaSALDO_VENDIDO: TBCDField;
    qrPreVendaMED_VETERINARIO: TStringField;
    qrPreVendaDATA_VACINA: TDateField;
    qrPreVendaUF: TStringField;
    qrPreVendaCOD_IBGE: TStringField;
    qrPreVendaCEP: TStringField;
    qrPreVendaNUMERO: TStringField;
    qrPreVendaTIPO: TStringField;
    qrPreVendaENTREGADOR: TStringField;
    qrPreVendaTIPO_PEDIDO: TStringField;
    qrPreVendaFECHADO: TStringField;
    qrPreVendaMESA: TStringField;
    qrPreVendaREFERENCIA: TStringField;
    qrPreVendaCELULAR: TStringField;
    qrPreVendaPROD_RURAL: TStringField;
    qrPreVendaIE_PRODUTOR: TStringField;
    qrPreVendaKM: TIntegerField;
    qrPreVendaCHAVE_FP: TStringField;
    qrPreVendaCHAVE_FP_CANCEL: TStringField;
    qrPreVendaCUPON_CANCELADO: TStringField;
    qrPreVendaCRZ: TIntegerField;
    qrPreVendaCHEK_BOX: TStringField;
    qrPreVendaANO: TIntegerField;
    qrPreVendaMODELO_NF: TStringField;
    qrPreVendaCFOP_NF: TStringField;
    qrPreVendaCOD_OS_AUTO: TIntegerField;
    dsPreVenda: TDataSource;
    qrPrevenda_Itens: TFDQuery;
    qrPrevenda_ItensCODIGO: TIntegerField;
    qrPrevenda_ItensCODIGO_ID: TIntegerField;
    qrPrevenda_ItensITEN: TIntegerField;
    qrPrevenda_ItensCODIGO_PROD: TIntegerField;
    qrPrevenda_ItensCODIGO_PRODUTO: TStringField;
    qrPrevenda_ItensDESCRICAO_PRODUTO: TStringField;
    dsPrevendaItens: TDataSource;
    Edit3: TEdit;
    qrPrevendaRel: TfrxDBDataset;
    qrPrevendaItemRel: TfrxDBDataset;
    qrPreVendaVALOR_ITENS: TFMTBCDField;
    qrPreVendaENC_FINANCEIRO: TFMTBCDField;
    qrPreVendaVALOR_DESCONTO: TFMTBCDField;
    qrPreVendaVALOR_TOTAL: TFMTBCDField;
    qrPreVendaVALOR_COMISSAO: TFMTBCDField;
    qrPreVendaVALOR_ACRESCIMOS: TFMTBCDField;
    qrPreVendaVALOR_AVISTA: TFMTBCDField;
    qrPreVendaVALOR_PRAZO: TFMTBCDField;
    qrPreVendaVALOR_PAGO: TFMTBCDField;
    qrPreVendaVALOR_TROCO: TFMTBCDField;
    qrPreVendaVLR_PIS: TFMTBCDField;
    qrPreVendaVLR_COFINS: TFMTBCDField;
    qrPrevenda_ItensPRECO_UNITARIO: TFMTBCDField;
    qrPrevenda_ItensDESCONTO: TFMTBCDField;
    qrPrevenda_ItensQUANTIDADE: TBCDField;
    qrPrevenda_ItensPRECO_TOTAL: TFMTBCDField;
    qrPrevenda_ItensCOMISSAO: TFMTBCDField;
    qrPrevenda_ItensDEV: TStringField;
    qrPrevenda_ItensQNT_DEV: TBCDField;
    qrPrevenda_ItensVAL_DEV: TFMTBCDField;
    qrPrevenda_ItensENC_FINANCEIRO: TFMTBCDField;
    qrPrevenda_ItensUNIDADE: TStringField;
    qrPrevenda_ItensSIT_TRIBUTARIA: TStringField;
    qrPrevenda_ItensVENDEDOR: TIntegerField;
    qrPrevenda_ItensFRACAO: TIntegerField;
    qrPrevenda_ItensCOD_NCM: TStringField;
    qrPrevenda_ItensPROD_SERV: TStringField;
    qrPrevenda_ItensPERC_ISS: TFMTBCDField;
    qrPrevenda_ItensBASE_ISS: TFMTBCDField;
    qrPrevenda_ItensVL_ISS: TFMTBCDField;
    qrPrevenda_ItensPERC_ICM: TFMTBCDField;
    qrPrevenda_ItensBASE_ICMS: TFMTBCDField;
    qrPrevenda_ItensVL_ICM: TFMTBCDField;
    qrPrevenda_ItensPERC_IPI: TFMTBCDField;
    qrPrevenda_ItensBASE_IPI: TFMTBCDField;
    qrPrevenda_ItensVL_IPI: TFMTBCDField;
    qrPrevenda_ItensPERC_COFINS: TFMTBCDField;
    qrPrevenda_ItensBASE_COFINS: TFMTBCDField;
    qrPrevenda_ItensVL_COFINS: TFMTBCDField;
    qrPrevenda_ItensPERC_ICMS_SUBST: TFMTBCDField;
    qrPrevenda_ItensBASE_ICMS_SUBST: TFMTBCDField;
    qrPrevenda_ItensVL_ICMS_SUBST: TFMTBCDField;
    qrPrevenda_ItensPERC_PIS: TFMTBCDField;
    qrPrevenda_ItensBASE_PIS: TFMTBCDField;
    qrPrevenda_ItensVL_PIS: TFMTBCDField;
    qrPrevenda_ItensIMPRIME: TStringField;
    qrPrevenda_ItensCOD_EMPRESA: TIntegerField;
    qrPrevenda_ItensID_BICO: TIntegerField;
    qrPrevenda_ItensID_TANQUE: TStringField;
    qrPrevenda_ItensID_BOMBA: TStringField;
    qrPrevenda_ItensBICO: TStringField;
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton7Click(Sender: TObject);
    procedure suiDBGrid1CellClick(Column: TColumn);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure suiDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure AlteradadosdoCliente1Click(Sender: TObject);
    procedure Action11Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Selecao_Grade(Tipo : Integer);
  end;

var
  FConsultaPreVenda: TFConsultaPreVenda;

implementation

uses ModulodeDados, ConsClientes, Principal, ModulodeDadosConsultas3,
  Z_RotinasGerais, ClientesaddPedido;

{$R *.dfm}

procedure TFConsultaPreVenda.ClienteButtonClick(Sender: TObject);
begin
  DM.SDS_Clientes.Active:= False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
  DM.SDS_Clientes.Active:= True;

  FormConsClientes:=TFormConsClientes.Create(self);
  FormConsClientes.Edit1.Text := Cliente.Text;
  FormConsClientes.ShowModal;
  edit1.text   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Cliente.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFConsultaPreVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  FConsultaPreVenda:=nil;
end;

procedure TFConsultaPreVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_F1) then
  begin
    FormPrincipal.Calculator.Execute;
  end;
end;

procedure TFConsultaPreVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then close;
  if not (ActiveControl is TDBLookupComboBox) then
  If Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  End;
end;

procedure TFConsultaPreVenda.FormPaint(Sender: TObject);
begin
  Application.ProcessMessages;
  Application.ProcessMessages;
end;

procedure TFConsultaPreVenda.FormShow(Sender: TObject);
begin
  qrPreVenda.Close;
  qrPrevenda_Itens.Close;
  DateEdit1.SetFocus;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;

  suiDBGrid1.SetFocus;
  if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'N' then
  begin
    l_total.visible := False;
    V_total.visible := False;
    L_avista.visible := False;
    L_prazo.visible := false;
    V_avista.visible := false;
    V_prazo.visible := False;
  end else
  if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'S' then
  begin
    l_total.visible := True;
    L_avista.visible := True;
    L_prazo.visible := True;
    V_total.visible := True;
    V_avista.visible := True;
    V_prazo.visible := True;
  end;

  suiButton1Click(Sender);
end;

procedure TFConsultaPreVenda.suiButton1Click(Sender: TObject);
var
  inicio, final, periodo, cli, venda, user :string;
begin
  inicio:=datetostr(DATE);
  final:=datetostr(DATE);

  inicio:=dateedit1.TexT;
  final:=dateedit2.TexT;

  cli := cliente.Text;

  Venda := edit2.text;
  user :=   Edit4.text;

  qrPreVenda.Filtered := False;
  qrPreVenda.close;
  qrPreVenda.SQL.Clear;
  qrPreVenda.SQL.add('select * from PREVENDA where codigo >0' +'');
  if inicio >'  /  /    ' then
    qrPreVenda.SQL.add('and DATA_pedido >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+
    ' and DATA_PEDIDO<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
  if cli >'' then
    qrPreVenda.SQL.add('and CODIGO_CLIENTE ='+(cli)+'');
  if venda >'' then
    qrPreVenda.SQL.add('and codigo ='+(venda)+'');
  if user >'' then
    qrPreVenda.SQL.add('and USUARIO ='+QuotedStr(USER)+'');

  qrPreVenda.SQL.add('ORDER BY Codigo ASC');
  qrPreVenda.Open;
  qrPrevenda_Itens.Open;

  if DateEdit1.text <> '  /  /    ' then
    periodo := ' and data_pedido >= :datai and data_pedido <= :dataf ';

  if Cliente.TEXT = '' then
    cli := ''
  else
    cli := ' and codigo_cliente = ''' + Cliente.TEXT + '''';

  if edit2.TEXT = '' then
    VENDA := ''
  else
    VENDA := ' and codigo = ''' + Edit2.TEXT + '''';

  if edit4.TEXT = '' then
    user := ''
  else
    user := ' and USUARIO = ''' + Edit4.TEXT + '''';



  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR_TOTAL) valor_TOTAL, sum(VALOR_AVISTA) valor_AVISTA, sum(VALOR_PRAZO) valor_PRAZO ' + // sum_0 A VENCER
      'from prevenda where codigo is not null ' + periodo + cli + venda);
  if DateEdit1.text <> '  /  /    ' then
  BEGIN
    Qrsoma.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
    Qrsoma.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  end;
  Qrsoma.open;

  V_AVISTA.Value := Qrsoma.FieldByName('VALOR_AVISTA').asfloat;
  v_PRAZO.Value := Qrsoma.FieldByName('VALOR_PRAZO').asfloat;
  v_TOTAL.Value := Qrsoma.FieldByName('VALOR_TOTAL').asfloat;
  q_VENDAS.Text  := IntToStr(dm.sds_vendas.RecordCount);

  suiDBGrid1.refresh;
  qrPreVenda.Last;
end;

procedure TFConsultaPreVenda.ClienteChange(Sender: TObject);
begin
  if (Cliente.Text>='A') AND (Cliente.Text<='Z') then
    EDIT3.Text:='LETRAS';

  IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
    EDIT3.Text:='NUMEROS';

  IF Cliente.Text='' THEN
    EDIT3.Text:=''
end;

procedure TFConsultaPreVenda.ClienteExit(Sender: TObject);
begin
  DM.SDS_Clientes.Filtered := False;

  if edit3.Text='LETRAS' THEN
  begin
    dm.SDS_Clientes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
    dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
    dm.SDS_Clientes.Active := True;

    ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);


    IF ACHOU=FALSE THEN
    begin
      ClienteButtonClick(sender);
    end;

    IF ACHOU=TRUE THEN
    begin
      edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
     end;
  end
  else
  IF EDIT3.Text='NUMEROS' THEN
  BEGIN
    IF Cliente.text > '999999' then
    begin
      Cliente.Text := '';
      Cliente.SetFocus;
    end
    else
    dm.SDS_Clientes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
    dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
    dm.SDS_Clientes.Active := True;
    ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

    IF ACHOU=FALSE THEN
    begin
      SHOWMESSAGE('Codigo do Cliente Não Localizado');
      Cliente.SetFocus;
    end
    else
    IF ACHOU=TRUE THEN
    begin
      Edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
    end;
  end;
end;

procedure TFConsultaPreVenda.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF Key =#13 then
  BEGIN
    if edit3.Text='LETRAS' THEN
    BEGIN
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;

      ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

      IF ACHOU=FALSE THEN
      begin
        ClienteButtonClick(sender);
      end
      ELSE
      IF ACHOU=TRUE THEN
      BEGIN
        Cliente.Text := DM.SDS_ClientesCODIGO.Text;
        EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
      end;
    end
    else
    IF EDIT2.Text='NUMEROS' THEN
    BEGIN
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;

      ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

      IF ACHOU=FALSE THEN
        SHOWMESSAGE('Codigo do Cliente Não Localizado');

      IF ACHOU=TRUE THEN
        Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
    end;
  end;
end;

procedure TFConsultaPreVenda.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9', #8, #32]) then
    key := #0;
end;

procedure TFConsultaPreVenda.DateEdit1Enter(Sender: TObject);
begin
  CorEntrada(Sender);
end;

procedure TFConsultaPreVenda.DateEdit1Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFConsultaPreVenda.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z','a'..'z', #8, #32]) then
    key := #0;
end;

procedure TFConsultaPreVenda.suiButton7Click(Sender: TObject);
begin
  Cliente.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
  Edit1.Clear;
  Edit4.Clear;
end;

procedure TFConsultaPreVenda.suiDBGrid1CellClick(Column: TColumn);
begin
  suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TFConsultaPreVenda.suiDBGrid1DblClick(Sender: TObject);
begin
  selectnext(activecontrol,True,True);
end;

procedure TFConsultaPreVenda.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
VAR
  Check: Integer;
  R: TRect;
begin
  if not odd(DM.Sds_vendas.RecNo) then
  if not (gdselected in State) then
  begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;

  If DM.sds_vendasNUM_NOTA.AsInteger > 0 then
    SuiDbgrid1.Canvas.Font.Color:= clBlue;
  If DM.sds_vendasN_CUPOM.text > '' then
    SuiDbgrid1.Canvas.Font.Color:= clblue;
  If DM.sds_vendasSITUACAO.text = 'C' then
    SuiDbgrid1.Canvas.Font.Color:= clRed;
  suiDbgrid1.DefaultDrawDataCell(Rect, suidbgrid1.columns[datacol].field, State);

  if (Column.Field.FieldName = 'CHEK_BOX') and (not (gdFixed in State)) then
  begin
    // Desenha um campo em branco
    SuiDbgrid1.Canvas.FillRect(Rect);

    // Testa de a linha está selecionada ou não
    if SuiDbgrid1.SelectedRows.IndexOf(SuiDbgrid1.DataSource.DataSet.Bookmark) >= 0 then
      DrawFrameControl(SuiDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
    else
      DrawFrameControl(SuiDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;
end;

procedure TFConsultaPreVenda.suiDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_space then
  begin
    suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
  end;
end;

procedure TFConsultaPreVenda.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    selectnext(activecontrol,True,True);
    Close;
  end;
end;

procedure TFConsultaPreVenda.AlteradadosdoCliente1Click(Sender: TObject);
begin
  if DM.sds_vendasNUM_NOTA.Text > '' then
  begin
    ShowMessage('Nota fiscal ja emitida... Cliente não pode ser alterado.');
  end
  else
    DM.SDS_Clientes.Active:= False;

  DM.SDS_Clientes.Active:= True;
  FormAddClientesPedido:=TFormAddClientesPedido.Create(self);
  FormAddClientesPedido.ShowModal;
end;

procedure TFConsultaPreVenda.Action11Click(Sender: TObject);
begin
  Selecao_Grade(1);
end;

procedure TFConsultaPreVenda.D1Click(Sender: TObject);
begin
  Selecao_Grade(2);
end;

procedure TFConsultaPreVenda.I1Click(Sender: TObject);
begin
  Selecao_Grade(3);
end;

Procedure TFConsultaPreVenda.Selecao_Grade(Tipo : Integer);
Begin
  //DM.sds_vendas.DisableControls;
  DM.sds_vendas.First;
  While not DM.sds_vendas.Eof do
  Begin
    If Tipo = 1 then// Marcar todos
      suiDBGrid1.SelectedRows.CurrentRowSelected := True
    Else
    If Tipo = 2 then  // Desmarcar todas
      suiDBGrid1.SelectedRows.CurrentRowSelected := False
    Else
    If Tipo = 3 then  // Alternar seleção
      suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;

    DM.sds_vendas.Next;
  End;
  DM.sds_vendas.First;
  //DM.sds_vendas.EnableControls;
End;

procedure TFConsultaPreVenda.suiButton2Click(Sender: TObject);
var
  qrPrevenda,qrPrevendaItem: TFDQuery;
begin
  try
    frxReport.LoadFromFile('rel\ImpimirPrevendaConsulta.fr3');

    qrPrevenda:= TFDQuery.Create(nil);
    qrPrevenda.Connection:= DM.Coneccao;
    qrPrevenda.SQL.Add('SELECT '+
    'EP.NOME_FANTASIA AS NOME_EMPRESA,'+
    'PR.CODIGO AS CODIGO_PREVENDA, '+
    'CL.CODIGO AS CLIENTE_CODIGO,'+
    'CL.NOME_RS AS CLIENTE_NOME,'+
    'CL.CPF_CNPJ AS CLIENTE_CPF_CNPJ,'+
    'CL.RG_IE AS CLIENTE_RG,'+
    'PR.DATA_PEDIDO AS DATA_COMPRA,'+
    'CL.ENDERECO AS CLIENTE_ENDERECO,'+
    'CL.BAIRRO AS CLIENTE_BAIRRO,'+
    'CL.CIDADE AS CLIENTE_CIDADE,'+
    'CL.UF AS CLIENTE_UF,'+
    'CL.COMPLEMENTO AS CLIENTE_COMPLEMENTO, '+
    'CL.TELEFONE AS CLIENTE_TELEFONE1, '+
    'CL.TELEFONE2 AS CLIENTE_TELEFONE2, '+
    'CL.CELULAR AS CLIENTE_CELULAR, '+
    'US.USUARIO AS VENDEDOR, '+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 1)  AS DINHEIRO,'+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 7)  AS CHEQUE_VISTA,'+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 3)  AS CHEQUE_PRAZO, '+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 2)  AS CARTAO_DEBITO,'+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 13)  AS CARTAO_CREDITO, '+
    '(SELECT SUM(VALOR) FROM PREVENDA_FORMAS_PAGAMENTO WHERE COD_VENDA = PR.CODIGO AND COD_FORMA = 4)  AS CREDIARIO '+
    'FROM PREVENDA PR '+
    'INNER JOIN empresa EP ON EP.CODIGO = PR.COD_EMPRESA '+
    'INNER JOIN CLIENTES CL ON CL.CODIGO = PR.CODIGO_CLIENTE '+
    'INNER JOIN USUARIOS US ON US.CODIGO = PR.COD_VENDEDOR '+
    ' WHERE PR.CODIGO = ' + IntToStr(dsPreVenda.DataSet.fieldbyname('CODIGO').AsInteger));
    qrPrevenda.Open;
    qrPrevendaRel.DataSet:= qrPrevenda;

    qrPrevendaItem:= TFDQuery.Create(nil);
    qrPrevendaItem.Connection:= DM.Coneccao;
    qrPrevendaItem.SQL.Add('SELECT '+
    'PRI.CODIGO AS CODIGO_ITEM, '+
    'PRI.CODIGO_PRODUTO AS ITEM_CODIGO, '+
    'PR.DESCRICAO AS ITEM_NOME, '+
    'PR.UND_TRIB AS ITEM_UND, '+
    'PRI.QUANTIDADE AS ITEM_QUANTIDADE, '+
    'PRI.PRECO_UNITARIO AS ITEM_PRECO_UNITARIO, '+
    'PRI.PRECO_TOTAL AS ITEM_TOTAL, '+
    'PRI.DESCONTO AS ITEM_DESCONTO '+
    'FROM PREVENDA_ITENS PRI '+
    'INNER JOIN PRODUTOS PR ON PR.CODIGO = PRI.CODIGO_PROD '+
    ' WHERE PRI.CODIGO_ID = ' + IntToStr(qrPrevenda.fieldbyname('CODIGO_PREVENDA').AsInteger));

    qrPrevendaItem.Open;
    qrPrevendaItemRel.DataSet:= qrPrevendaItem;

    frxReport.ShowReport;
  except
    ShowMessage('Erro ao tentar Imprimir!');
  end;
end;

procedure TFConsultaPreVenda.suiButton3Click(Sender: TObject);
begin
  close;
end;

end.
