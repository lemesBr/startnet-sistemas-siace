unit ValeFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, DBCtrls,
  Mask,  DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,  frxClass,
  frxDBSet, RxCurrEdit, RxToolEdit;

type
  TFrmValeFuncionario = class(TForm)
    pgcVale: TPageControl;
    tbGrid: TTabSheet;
    tbDetelhes: TTabSheet;
    pnlNav: TPanel;
    spbDetalhes: TSpeedButton;
    Grid: TDBGrid;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edtPesquisa: TEdit;
    Panel1: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Label2: TLabel;
    lblSalario: TLabel;
    Label4: TLabel;
    lblVales: TLabel;
    lblTotal: TLabel;
    Label7: TLabel;
    tbEdit: TTabSheet;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    Label3: TLabel;
    lblNomeFuncionario: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    edtValor: TDBEdit;
    Label8: TLabel;
    dsGrid: TDataSource;
    dsVales: TDataSource;
    spbVoltar: TSpeedButton;
    edtMotivo: TDBEdit;
    Label5: TLabel;
    Bevel4: TBevel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    gbxPagamento: TGroupBox;
    edtCodigoConta: TEdit;
    Label12: TLabel;
    spbPesquisaConta: TSpeedButton;
    edtNomeConta: TEdit;
    Label13: TLabel;
    edtDocumento: TEdit;
    cbxDeposito: TCheckBox;
    cbxCompensarInclusao: TCheckBox;
    edtDataPredatado: TDateEdit;
    Label14: TLabel;
    spbGerarBoletosSiace: TSpeedButton;
    qrcaixa_mov: TFDQuery;
    Qrypagto: TFDQuery;
    QInsCheque: TFDQuery;
    spbPagarFuncionario: TSpeedButton;
    tbPagarFuncionario: TTabSheet;
    Bevel5: TBevel;
    Label15: TLabel;
    lblNomeFuncionarioPgto: TLabel;
    Bevel6: TBevel;
    Label17: TLabel;
    lblSalarioPgto: TLabel;
    lblValesPgto: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    lblSalarioTotalPgto: TLabel;
    Bevel7: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    spbBaixarCheques: TSpeedButton;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    SpeedButton3: TSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    edtCodigoContaPgto: TEdit;
    edtNomeContaPgto: TEdit;
    edtDocumentoPgto: TEdit;
    cbxDepositoPgto: TCheckBox;
    cbxCompensarInclusaoPgto: TCheckBox;
    edtDataPredatadoPgto: TDateEdit;
    Panel2: TPanel;
    spbCancelarPagamento: TSpeedButton;
    spbConfirmaPagamento: TSpeedButton;
    dsPagamento: TDataSource;
    edtValorCaixa: TCurrencyEdit;
    edtValorBanco: TCurrencyEdit;
    edtValorCheques: TCurrencyEdit;
    edtValorTotal: TCurrencyEdit;
    edtValorCaixaPgto: TCurrencyEdit;
    edtValorBancoPgto: TCurrencyEdit;
    edtValorChequePgto: TCurrencyEdit;
    edtValorTotalPgto: TCurrencyEdit;
    spbFuncionarioPagos: TSpeedButton;
    tbPagos: TTabSheet;
    Panel3: TPanel;
    spbVoltarJapagos: TSpeedButton;
    GridPagos: TDBGrid;
    dsPago: TDataSource;
    edtDataInicio: TDateEdit;
    edtDataFinal: TDateEdit;
    spbPesquisar: TSpeedButton;
    Label16: TLabel;
    Label27: TLabel;
    frxReport: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spbDetalhesClick(Sender: TObject);
    procedure spbIncluirClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure spbVoltarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbPesquisaContaClick(Sender: TObject);
    procedure edtValorCaixaExit(Sender: TObject);
    procedure spbGerarBoletosSiaceClick(Sender: TObject);
    procedure edtValorCaixaPgtoExit(Sender: TObject);
    procedure spbBaixarChequesClick(Sender: TObject);
    procedure spbPagarFuncionarioClick(Sender: TObject);
    procedure spbConfirmaPagamentoClick(Sender: TObject);
    procedure spbCancelarPagamentoClick(Sender: TObject);
    procedure spbPesquisarClick(Sender: TObject);
    procedure spbFuncionarioPagosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function valorPorExtenso(vlr: real): string;
    function ConverteReais(Valor: String): real;
  end;

var
  FrmValeFuncionario: TFrmValeFuncionario;

implementation

uses uDMMovimentacao, Principal, ConsContaBancariapas, ModulodeDados,
  contaspagar_cheque,Ubibli1;

{$R *.dfm}

procedure TFrmValeFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsGrid.DataSet.Close;
  dsVales.DataSet.Close;
end;

procedure TFrmValeFuncionario.FormCreate(Sender: TObject);
begin
  dsGrid.DataSet.Open;
  dsVales.DataSet.Open;
  dm.SDS_Conta_Bancaria.Close;
  dm.SDS_Conta_Bancaria.Open;
  pgcVale.ActivePage:= tbGrid;
end;

procedure TFrmValeFuncionario.spbDetalhesClick(Sender: TObject);
begin
  if not dsGrid.DataSet.IsEmpty then
  begin
    dsVales.DataSet.Filter:= 'ID_CLIENTE = ' +
    IntToStr(dsGrid.DataSet.fieldbyname('ID').asinteger) + 'AND QUITADO = 0' ;
    dsVales.DataSet.Filtered:= True;
    pgcVale.ActivePage:= tbDetelhes;
    lblSalario.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('SALARIO').AsCurrency,ffCurrency,12,2);
    lblVales.Caption:= IntToStr(dsGrid.DataSet.fieldbyname('VALES').asinteger);
    lblTotal.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('TOTAL').AsCurrency,ffCurrency,12,2);
  end;
end;

procedure TFrmValeFuncionario.spbIncluirClick(Sender: TObject);
begin
  dsVales.DataSet.Filtered:= False;
  dsVales.DataSet.Refresh;
  pgcVale.ActivePage:= tbEdit;
  lblNomeFuncionario.Caption:= dsGrid.DataSet.fieldbyname('FUNCIONARIO').AsString;
  dsVales.DataSet.Insert;
end;

procedure TFrmValeFuncionario.spbSalvarClick(Sender: TObject);
var
  ID,ID_VALE: Integer;
  cod_caixa : Integer;
  cheque :string;
begin
  if edtValor.Text <> '' then
  begin
    if dsVales.DataSet.State = dsInsert then
      dsVales.DataSet.FieldByName('LANCAMENTO').AsDateTime:= Now
    else
      dsVales.DataSet.FieldByName('ALTERACAO').AsDateTime:= Now;
    ID:= dsGrid.DataSet.fieldbyName('ID').AsInteger;
    ID_VALE:= dsVales.DataSet.FieldByName('ID').AsInteger;
    dsVales.DataSet.FieldByName('ID_CLIENTE').AsInteger:=ID;
    dsVales.DataSet.FieldByName('USUARIO').AsString:= FormPrincipal.UserLogado;
    dsVales.DataSet.FieldByName('QUITADO').AsInteger:= 0;
    dsVales.DataSet.Post;
    dsVales.DataSet.Filtered:= True;
    dsGrid.DataSet.Refresh;
    dsGrid.DataSet.Filter:= 'ID = ' + IntToStr(ID);
    dsGrid.DataSet.Filtered:= True;
    lblSalario.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('SALARIO').AsCurrency,ffCurrency,12,2);
    lblVales.Caption:= IntToStr(dsGrid.DataSet.fieldbyname('VALES').asinteger);
    lblTotal.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('TOTAL').AsCurrency,ffCurrency,12,2);
    dsGrid.DataSet.Filtered:= False;
  end
  else
    Application.MessageBox('Preencha o valor!','Atenção',MB_ICONWARNING);

  if dsVales.DataSet.FieldByName('VALOR').AsFloat <> StrToFloat(edtValorTotal.Text) then
  begin
    application.messagebox('O valor do Vale é diferente do total!!!',
    'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;

  if (edtValorBanco.text <> '0,00') and (edtValorBanco.Text <> '') then
  begin
    if edtCodigoConta.Text = '' then
    begin
      application.messagebox('Impossível prosseguir com pagamento relacionado com o Banco sem informar a conta!', 'Atenção', mb_ok + MB_ICONWARNING);
      edtCodigoConta.setfocus;
      exit;
    end;
  end;

  // dm.qrcaixa_mov.open;
  if (edtValorCaixa.text <> '0,00') and (edtValorCaixa.Text <> '') then // pagamento com caixa
  begin
    dm.ProxCod.Close;
    dm.ProxCod.SQL.Clear;
    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
    DM.ProxCod.Open;

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into movimento_diario');
    qrcaixa_mov.SQL.add('(codigo,id_vale,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:id_vale,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrcaixa_mov.parambyname('id_vale').AsInteger := ID_VALE;
    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
    qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorCaixa.text);
    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorCaixa.text);

    DM.SDS_CONFIGURACOES.open;
    qrcaixa_mov.parambyname('cod_plano').AsInteger := 131;
    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
    qrcaixa_mov.parambyname('historico').asstring := 'FDiantamento de Funcionário '+ edtMotivo.text;
    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
    // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
    qrcaixa_mov.ExecSQL;
    // dm.IBTransaction.CommitRetaining;

  end;

  if (edtValorBanco.text <> '0,00') and (edtValorBanco.Text <> '') then // pagamento com banco
  begin

    if (cbxDeposito.Checked = false) then
    begin
      cheque:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

      try
        try
          with QInsCheque do
          begin
            close;
            Parambyname('cod_cheque').AsInteger     := strtoint(cheque);
            Parambyname('valor').Value              := StrtoFloat(edtValorBanco.text);
            Parambyname('data_emissao').AsDate      := Now;
            Parambyname('data_Vencimento').AsDate   := edtDataPredatado.date;

            if cbxCompensarInclusao.Checked = True then
              Parambyname('pago').AsString            := 'T'
            else
              Parambyname('pago').AsString            := 'F';

            Parambyname('origem').AsString            := 'AV';
            Parambyname('documento_origem').Value     := Null;
            Parambyname('Cod_conta').AsInteger         := StrToInt(edtCodigoConta.Text);

            if cbxCompensarInclusao.Checked = True then
              Parambyname('comp_na_inclusao').Asstring     := 'T'
            else
              Parambyname('comp_na_inclusao').Asstring     := 'F';

            Parambyname('data_compensacao').AsDate      := DATE;
            Parambyname('historico').Asstring           := edtMotivo.text;
            Parambyname('numero_cheque').AsInteger      := StrToInt(edtDocumento.Text);
            Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
            Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
            Parambyname('Troco').AsString               := 'F';
            Parambyname('Favorecido').Asstring          := lblNomeFuncionario.Caption;
            Parambyname('cod_venda').Value              := Null;
            Parambyname('cod_compra').VALUE             := null;
            Parambyname('observacao').AsString          := 'Lançamento de cheque ref a pagto de minutas de fretes' ;
            parambyname('id_vale').AsInteger := ID_VALE;
            ExecSQL;
          end;
        except
          showmessage('Erro ao Gravar o Cheque');
        end;
      finally
        QInsCheque.Close;
      end;
    end;

    // compensa cheque e lança depósito na conta
    if (cbxCompensarInclusao.Checked = True ) or (cbxDeposito.Checked = True) then
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
      DM.ProxCod.Open;

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into movimento_diario');
      qrcaixa_mov.SQL.add('(codigo,id_vale,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CONTAS_PAGAR, CODIGO_CC, NUMERO_CC)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:id_vale,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CONTAS_PAGAR, :CODIGO_CC, :NUMERO_CC)');

      cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('id_vale').AsInteger := ID_VALE;
      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
      qrcaixa_mov.parambyname('data').asdatetime      :=  now;
      qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorBanco.text);
      qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorBanco.text) ;

      DM.SDS_CONFIGURACOES.open;
      qrcaixa_mov.parambyname('cod_plano').AsInteger := 131;
      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 26; // cheques  emitidos
      qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ lblNomeFuncionario.Caption;
      qrcaixa_mov.parambyname('tipo').AsString  := 'B';
      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
      qrcaixa_mov.parambyname('CODIGO_CC').asINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
      qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
      qrcaixa_mov.ExecSQL;
    end;

    if (edtValorCheques.Text <> '0,00') and (edtValorCheques.Text <> '') then // pagamento com cheque de terceiros
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
      DM.ProxCod.Open;

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into movimento_diario');
      qrcaixa_mov.SQL.add('(codigo,id_vale,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:id_vale,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('id_vale').AsInteger := ID_VALE;
      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
      qrcaixa_mov.parambyname('data').asdatetime      := now;
      qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorCheques.Text);
      qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorCheques.Text);

      DM.SDS_CONFIGURACOES.open;
      qrcaixa_mov.parambyname('cod_plano').AsInteger := 131;
      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
      qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ lblNomeFuncionario.Caption;
      qrcaixa_mov.parambyname('tipo').AsString  := 'C';
      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
      qrcaixa_mov.ExecSQL;
    end;

    Application.ProcessMessages;
  end;

  if Application.MESSAGEBOX('Deseja Imprimir o Vale?',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
     frxReport.LoadFromFile('C:\siace\rel\ValeFuncionario.fr3');
     frxReport.Variables['VALOR']:= QuotedStr(edtValorTotal.Text);
     frxReport.Variables['NOME']:= QuotedStr(lblNomeFuncionario.caption);
     frxReport.Variables['VALOR_REAL']:= QuotedStr(Uppercase(valorPorExtenso(ConverteReais(edtValorTotal.Text))));
     frxReport.Variables['DATA']:= QuotedStr(Uppercase(formatdatetime('dd" de " mmmm" de "yyyy',date)));
     frxReport.ShowReport;
  end;

  pgcVale.ActivePage:= tbDetelhes;
end;

procedure TFrmValeFuncionario.spbCancelarClick(Sender: TObject);
begin
  dsVales.DataSet.Cancel;
  pgcVale.ActivePage:= tbDetelhes;
  dsVales.DataSet.Filtered:= True;
end;

procedure TFrmValeFuncionario.spbAlterarClick(Sender: TObject);
begin
  if not dsVales.DataSet.IsEmpty then
  begin
    dsVales.DataSet.Edit;
    pgcVale.ActivePage:= tbEdit;
  end;
end;

procedure TFrmValeFuncionario.spbExcluirClick(Sender: TObject);
var
  ID: Integer;
begin
  try
    if not dsVales.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o vale selecionado?',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        ID:= dsVales.DataSet.fieldbyname('ID_CLIENTE').AsInteger;
        dsVales.DataSet.Delete;
        dsGrid.DataSet.Refresh;
        dsGrid.DataSet.Filter:= 'ID = ' + IntToStr(ID);
        dsGrid.DataSet.Filtered:= True;
        lblSalario.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('SALARIO').AsCurrency,ffCurrency,12,2);
        lblVales.Caption:= IntToStr(dsGrid.DataSet.fieldbyname('VALES').asinteger);
        lblTotal.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('TOTAL').AsCurrency,ffCurrency,12,2);
        dsGrid.DataSet.Filtered:= False;
      end;
    end;
  except
    //
  end;
end;

procedure TFrmValeFuncionario.spbVoltarClick(Sender: TObject);
begin
  dsGrid.DataSet.Refresh;
  pgcVale.ActivePage:= tbGrid;
end;

procedure TFrmValeFuncionario.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    dsGrid.DataSet.Filter:= 'FUNCIONARIO LIKE ' + QuotedStr('%'+edtPesquisa.Text+'%');
    dsGrid.DataSet.Filtered:= True;

    if (dsGrid.DataSet.IsEmpty) then
      dsGrid.DataSet.Filtered:= False;
  end;
end;

procedure TFrmValeFuncionario.SpeedButton1Click(Sender: TObject);
begin
  dsGrid.DataSet.Filter:= 'FUNCIONARIO LIKE ' + QuotedStr('%'+edtPesquisa.Text+'%');
    dsGrid.DataSet.Filtered:= True;

  if (dsGrid.DataSet.IsEmpty) then
    dsGrid.DataSet.Filtered:= False;
end;

procedure TFrmValeFuncionario.spbPesquisaContaClick(Sender: TObject);
begin
  FormConsContaBancaria := tFormConsContaBancaria.create(self);
  FormConsContaBancaria.showmodal;
  edtNomeConta.text := dm.SDS_Conta_BancariaCONTA.asstring;
  edtCodigoConta.text     := dm.SDS_Conta_BancariaCODIGO.asstring;
  if pgcVale.ActivePage = tbEdit then
    edtDocumento.SETFOCUS
  else
  if pgcVale.ActivePage = tbPagarFuncionario then
    edtDocumentoPgto.SETFOCUS
end;

procedure TFrmValeFuncionario.edtValorCaixaExit(Sender: TObject);
var
  Valor: Currency;
begin
  if (edtValorCaixa.Text <> 'R$ 0,00') and (edtValorCaixa.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorCaixa.Text);
  if (edtValorBanco.Text <> 'R$ 0,00') and (edtValorBanco.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorBanco.Text);
  if (edtValorCheques.Text <> 'R$ 0,00') and (edtValorCheques.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorCheques.Text);

  edtValorTotal.text:= CurrToStr(Valor);
end;

procedure TFrmValeFuncionario.spbGerarBoletosSiaceClick(Sender: TObject);
begin
  frmcontaspagar_cheque := tfrmcontaspagar_cheque.create(self);
  frmcontaspagar_cheque.showmodal;

  edtValorTotal.text:= FloatToStr(StrToFloat(edtValorCaixa.Text) +
                             StrToFloat(edtValorBanco.text) +
                             StrToFloat(edtValorCheques.text));
end;

procedure TFrmValeFuncionario.edtValorCaixaPgtoExit(Sender: TObject);
var
  Valor: Currency;
begin
  if (edtValorCaixaPgto.Text <> 'R$ 0,00') and (edtValorCaixaPgto.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorCaixaPgto.Text);
  if (edtValorBancoPgto.Text <> 'R$ 0,00') and (edtValorBancoPgto.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorBancoPgto.Text);
  if (edtValorChequePgto.Text <> 'R$ 0,00') and (edtValorChequePgto.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorChequePgto.Text);

  edtValorTotalPgto.text:= CurrToStr(Valor);
end;

procedure TFrmValeFuncionario.spbBaixarChequesClick(Sender: TObject);
var
  Valor: Currency;
begin
  frmcontaspagar_cheque := tfrmcontaspagar_cheque.create(self);
  frmcontaspagar_cheque.showmodal;

  if (edtValorCaixaPgto.Text <> 'R$ 0,00') and (edtValorCaixaPgto.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorCaixaPgto.Text);
  if (edtValorBancoPgto.Text <> 'R$ 0,00') and (edtValorBancoPgto.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorBancoPgto.Text);
  if (edtValorChequePgto.Text <> 'R$ 0,00') and (edtValorChequePgto.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorChequePgto.Text);

  edtValorTotalPgto.text:= CurrToStr(Valor);
end;

procedure TFrmValeFuncionario.spbPagarFuncionarioClick(Sender: TObject);
begin
  if not dsGrid.DataSet.IsEmpty then
  begin
    pgcVale.ActivePage:= tbPagarFuncionario;
    lblSalarioPgto.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('SALARIO').AsCurrency,ffCurrency,12,2);
    lblValesPgto.Caption:= IntToStr(dsGrid.DataSet.fieldbyname('VALES').asinteger);
    lblSalarioTotalPgto.Caption:= FloatToStrF(dsGrid.DataSet.fieldbyname('TOTAL').AsCurrency,ffCurrency,12,2);
  end;
end;

procedure TFrmValeFuncionario.spbConfirmaPagamentoClick(Sender: TObject);
var
  ID: Integer;
  cod_caixa : Integer;
  cheque :string;
begin
  if StrToFloat(edtValorTotalPgto.Text) <> dsGrid.DataSet.FieldByName('TOTAL').AsFloat then
  begin
    application.messagebox('O valor tota é diferente do Salário total a pagar!',
    'Atenção', mb_ok + MB_ICONWARNING);
    exit;
  end;

  if (edtValorBancoPgto.text <> '0,00') and (edtValorBancoPgto.Text <> '') then
  begin
    if edtCodigoContaPgto.Text = '' then
    begin
      application.messagebox('Impossível prosseguir com pagamento relacionado com o Banco sem informar a conta!', 'Atenção', mb_ok + MB_ICONWARNING);
      edtCodigoContaPgto.setfocus;
      exit;
    end;
  end;
  // dm.qrcaixa_mov.open;
  if (edtValorCaixaPgto.text <> '0,00') and (edtValorCaixaPgto.Text <> '') then // pagamento com caixa
  begin
    dm.ProxCod.Close;
    dm.ProxCod.SQL.Clear;
    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
    DM.ProxCod.Open;

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into movimento_diario');
    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
    qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorCaixaPgto.text);
    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorCaixaPgto.text);

    DM.SDS_CONFIGURACOES.open;
    qrcaixa_mov.parambyname('cod_plano').AsInteger := 54;
    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
    qrcaixa_mov.parambyname('historico').asstring := 'Pagamento de Funcionário ';
    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
    // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
    qrcaixa_mov.ExecSQL;
    // dm.IBTransaction.CommitRetaining;

  end;

  if (edtValorBancoPgto.text <> '0,00') and (edtValorBancoPgto.Text <> '') then // pagamento com banco
  begin

    if (cbxDepositoPgto.Checked = false) then
    begin
      cheque:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

      try
        try
          with QInsCheque do
          begin
            close;
            Parambyname('cod_cheque').AsInteger     := strtoint(cheque);
            Parambyname('valor').Value              := StrtoFloat(edtValorBancoPgto.text);
            Parambyname('data_emissao').AsDate      := Now;
            Parambyname('data_Vencimento').AsDate   := edtDataPredatadoPgto.date;

            if cbxCompensarInclusao.Checked = True then
              Parambyname('pago').AsString            := 'T'
            else
              Parambyname('pago').AsString            := 'F';

            Parambyname('origem').AsString            := 'AV';
            Parambyname('documento_origem').Value     := Null;
            Parambyname('Cod_conta').AsInteger         := StrToInt(edtCodigoContaPgto.Text);

            if cbxCompensarInclusao.Checked = True then
              Parambyname('comp_na_inclusao').Asstring     := 'T'
            else
              Parambyname('comp_na_inclusao').Asstring     := 'F';

            Parambyname('data_compensacao').AsDate      := DATE;
            Parambyname('historico').Asstring           := 'Pagamento de Salário';
            Parambyname('numero_cheque').AsInteger      := StrToInt(edtDocumentoPgto.Text);
            Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
            Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
            Parambyname('Troco').AsString               := 'F';
            Parambyname('Favorecido').Asstring          := lblNomeFuncionarioPgto.Caption;
            Parambyname('cod_venda').Value              := Null;
            Parambyname('cod_compra').VALUE             := null;
            Parambyname('observacao').AsString          := 'Lançamento de cheque ref a pagto de minutas de fretes' ;
            ExecSQL;
          end;
        except
          showmessage('Erro ao Gravar o Cheque');
        end;
      finally
        QInsCheque.Close;
      end;
    end;

    // compensa cheque e lança depósito na conta
    if (cbxCompensarInclusaoPgto.Checked = True ) or (cbxDepositoPgto.Checked = True) then
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
      DM.ProxCod.Open;

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into movimento_diario');
      qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CONTAS_PAGAR, CODIGO_CC, NUMERO_CC)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CONTAS_PAGAR, :CODIGO_CC, :NUMERO_CC)');

      cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
      qrcaixa_mov.parambyname('data').asdatetime      :=  now;
      qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorBancoPgto.text);
      qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorBancoPgto.text);

      DM.SDS_CONFIGURACOES.open;
      qrcaixa_mov.parambyname('cod_plano').AsInteger := 54;
      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 26; // cheques  emitidos
      qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ lblNomeFuncionarioPgto.Caption;
      qrcaixa_mov.parambyname('tipo').AsString  := 'B';
      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
      qrcaixa_mov.parambyname('CODIGO_CC').asINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
      qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
      qrcaixa_mov.ExecSQL;
    end;

    if (edtValorChequePgto.Text <> '0,00') and (edtValorChequePgto.Text <> '') then // pagamento com cheque de terceiros
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
      DM.ProxCod.Open;

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into movimento_diario');
      qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
      qrcaixa_mov.parambyname('data').asdatetime      := now;
      qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorChequePgto.Text);
      qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorChequePgto.Text);

      DM.SDS_CONFIGURACOES.open;
      qrcaixa_mov.parambyname('cod_plano').AsInteger := 54;
      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
      qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ lblNomeFuncionarioPgto.Caption;
      qrcaixa_mov.parambyname('tipo').AsString  := 'C';
      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
      qrcaixa_mov.ExecSQL;
    end;
    
    Application.ProcessMessages;
  end;

  dsVales.DataSet.Filter:= 'ID_CLIENTE = ' +
  IntToStr(dsGrid.DataSet.fieldbyname('ID').asinteger) + 'AND QUITADO = 0' ;
  dsVales.DataSet.Filtered:= True;

  while not dsVales.DataSet.Eof do
  begin
    dsVales.DataSet.Edit;
    dsVales.DataSet.FieldByName('QUITADO').AsInteger:= 1;
    dsVales.DataSet.Post;
  end;

  dsPagamento.DataSet.Open;
  dsPagamento.DataSet.Insert;
  dsPagamento.DataSet.FieldByName('ID_CLIENTE').AsInteger:=  dsGrid.DataSet.fieldbyname('ID').asinteger;
  dsPagamento.DataSet.FieldByName('DATA').AsDateTime:= Now;
  dsPagamento.DataSet.FieldByName('VALOR').AsFloat:= StrToFloat(edtValorTotalPgto.text);
  dsPagamento.DataSet.Post;
  dsPagamento.DataSet.Close;

  dsVales.DataSet.Filtered:= False;
  dsGrid.DataSet.Refresh;

  pgcVale.ActivePage:= tbGrid;
end;

procedure TFrmValeFuncionario.spbCancelarPagamentoClick(Sender: TObject);
begin
  pgcVale.ActivePage:= tbGrid;
end;

procedure TFrmValeFuncionario.spbPesquisarClick(Sender: TObject);
begin
  try
    dsPago.DataSet.Close;
    TFDQuery(dsPago.DataSet).ParamByName('DTI').AsDateTime:= edtDataInicio.Date;
    TFDQuery(dsPago.DataSet).ParamByName('DTF').AsDateTime:= edtDataFinal.Date;
    dsPago.DataSet.Open;
  except
    //
  end;
end;

procedure TFrmValeFuncionario.spbFuncionarioPagosClick(Sender: TObject);
begin
  pgcVale.ActivePage:= tbPagos;
end;

function TFrmValeFuncionario.ConverteReais(Valor: String): real;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

function TFrmValeFuncionario.valorPorExtenso(vlr: real): string;
const
  unidade: array[1..19] of string = ('um', 'dois', 'três', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze',
             'doze', 'treze', 'quatorze', 'quinze', 'dezesseis',
             'dezessete', 'dezoito', 'dezenove');
  centena: array[1..9] of string = ('cento', 'duzentos', 'trezentos',
             'quatrocentos', 'quinhentos', 'seiscentos',
             'setecentos', 'oitocentos', 'novecentos');
  dezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array[0..4] of string = ('', 'mil', 'milhão', 'bilhão', 'trilhão');
  qualificaP: array[0..4] of string = ('', 'mil', 'milhões', 'bilhões', 'trilhões');
var
                        inteiro: Int64;
                          resto: real;
  vlrS, s, saux, vlrP, centavos: string;
     n, unid, dez, cent, tam, i: integer;
                    umReal, tem: boolean;
begin
  if (vlr = 0)
     then begin
            valorPorExtenso := 'zero';
            exit;
          end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracionária do valor
  vlrS := inttostr(inteiro);
  if (length(vlrS) > 15)
     then begin
            valorPorExtenso := 'Erro: valor superior a 999 trilhões.';
            exit;
          end;

  s := '';
  centavos := inttostr(round(resto * 100));

// definindo o extenso da parte inteira do valor
  i := 0;
  umReal := false; tem := false;
  while (vlrS <> '0') do
  begin
    tam := length(vlrS);
// retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
// 1a. parte = 789 (centena)
// 2a. parte = 456 (mil)
// 3a. parte = 123 (milhões)
    if (tam > 3)
       then begin
              vlrP := copy(vlrS, tam-2, tam);
              vlrS := copy(vlrS, 1, tam-3);
            end
    else begin // última parte do valor
           vlrP := vlrS;
           vlrS := '0';
         end;
    if (vlrP <> '000')
       then begin
              saux := '';
              if (vlrP = '100')
                 then saux := 'cem'
              else begin
                     n := strtoint(vlrP);        // para n = 371, tem-se:
                     cent := n div 100;          // cent = 3 (centena trezentos)
                     dez := (n mod 100) div 10;  // dez  = 7 (dezena setenta)
                     unid := (n mod 100) mod 10; // unid = 1 (unidade um)
                     if (cent <> 0)
                        then saux := centena[cent];
                     if ((dez <> 0) or (unid <> 0))
                        then begin
                               if ((n mod 100) <= 19)
                                  then begin
                                         if (length(saux) <> 0)
                                            then saux := saux + ' e ' + unidade[n mod 100]
                                         else saux := unidade[n mod 100];
                                       end
                               else begin
                                      if (length(saux) <> 0)
                                         then saux := saux + ' e ' + dezena[dez]
                                      else saux := dezena[dez];
                                      if (unid <> 0)
                                         then if (length(saux) <> 0)
                                                 then saux := saux + ' e ' + unidade[unid]
                                              else saux := unidade[unid];
                                    end;
                             end;
                   end;
              if ((vlrP = '1') or (vlrP = '001'))
                 then begin
                        if (i = 0) // 1a. parte do valor (um real)
                           then umReal := true
                        else saux := saux + ' ' + qualificaS[i];
                      end
              else if (i <> 0)
                      then saux := saux + ' ' + qualificaP[i];
              if (length(s) <> 0)
                 then s := saux + ', ' + s
              else s := saux;
            end;
    if (((i = 0) or (i = 1)) and (length(s) <> 0))
       then tem := true; // tem centena ou mil no valor
    i := i + 1; // próximo qualificador: 1- mil, 2- milhão, 3- bilhão, ...
  end;

  if (length(s) <> 0)
     then begin
            if (umReal)
               then s := s + ' real'
            else if (tem)
                    then s := s + ' reais'
                 else s := s + ' de reais';
          end;
// definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
     then begin
            if (length(s) <> 0) // se não é valor somente com centavos
               then s := s + ' e ';
            if (centavos = '1')
               then s := s + 'um centavo'
            else begin
                   n := strtoint(centavos);
                   if (n <= 19)
                      then s := s + unidade[n]
                   else begin                 // para n = 37, tem-se:
                          unid := n mod 10;   // unid = 37 % 10 = 7 (unidade sete)
                          dez := n div 10;    // dez  = 37 / 10 = 3 (dezena trinta)
                          s := s + dezena[dez];
                          if (unid <> 0)
                             then s := s + ' e ' + unidade[unid];
                       end;
                   s := s + ' centavos';
                 end;
          end;
  valorPorExtenso := s;
end;

end.
