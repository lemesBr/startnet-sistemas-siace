unit lista_pagar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB,  frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, aDvGlowButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit, AdvReflectionImage, AdvPanel;

type
  Tfrmlista_pagar2 = class(TForm)
    Bevel3: TBevel;
    Panel1: TAdvPanel;
    pnl1: TAdvPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    combo_relatorio: TComboBox;
    combo_fornecedor: TComboBox;
    combo_conta: TComboBox;
    combo_situacao: TComboBox;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    fxcontaspagar: TfrxReport;
    fscontaspagar: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcontaspagar: TFDQuery;
    qrresumo: TFDQuery;
    fsresumo: TfrxDBDataset;
    img: TAdvReflectionImage;
    qrresumoNOME: TWideStringField;
    qrresumoCODIGO: TWideStringField;
    qrresumoSITUACAO: TIntegerField;
    bimprimir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    QrContasPagas: TFDQuery;
    frxReport1: TfrxReport;
    frxDB_pagas: TfrxDBDataset;
    QrContasPagasCODIGO: TIntegerField;
    QrContasPagasDATA_EMISSAO: TDateField;
    QrContasPagasDATA_VENCIMENTO: TDateField;
    QrContasPagasDATA_PAGAMENTO: TDateField;
    QrContasPagasCODCONTA: TIntegerField;
    QrContasPagasCODFORNECEDOR: TIntegerField;
    QrContasPagasVALOR: TFMTBCDField;
    QrContasPagasVALORPAGO: TFMTBCDField;
    QrContasPagasLIQUIDO: TFMTBCDField;
    QrContasPagasDESCONTO: TFMTBCDField;
    QrContasPagasACRESCIMO: TFMTBCDField;
    QrContasPagasDOCUMENTO: TStringField;
    QrContasPagasNOTAFISCAL: TStringField;
    QrContasPagasHISTORICO: TStringField;
    QrContasPagasC: TStringField;
    QrContasPagasE: TStringField;
    QrContasPagasFILTRO: TIntegerField;
    QrContasPagasESPECIE: TStringField;
    QrContasPagasSITUACAO: TIntegerField;
    QrContasPagasCODNOTA: TIntegerField;
    QrContasPagasMOVIMENTO: TIntegerField;
    QrContasPagasCODCAIXA: TIntegerField;
    QrContasPagasFORNECEDOR: TStringField;
    QrContasPagasPL_CONTAS: TStringField;
    QrContasPagasVALOR_PAGO: TFMTBCDField;
    QrContasPagasDATA_PAGTO: TDateField;
    QrContasPagasCOD_EMPRESA: TIntegerField;
    procedure combo_fornecedorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_contaChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_situacaoSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_pagar2: Tfrmlista_pagar2;
  juro_taxa, juro_multa, total_original, total_juros: real;
  juro_carencia , cod_for, cod_conta: integer;
  data_caixa: tdatetime;

implementation

uses  principal, ModulodeDados, Ubibli1, ConsPlanoContas, xloc_fornecedor;

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

procedure Tfrmlista_pagar2.combo_fornecedorChange(Sender: TObject);
var
  I: Integer;
begin
  if combo_fornecedor.Text = 'SELECIONAR' then
  begin
    try
      RESULTADO_PESQUISA1:= '';
      frmxloc_fornecedor:= Tfrmxloc_fornecedor.Create(nil);
      frmxloc_fornecedor.ShowModal;
      if RESULTADO_PESQUISA1 = '' then Exit;
      for I := 0 to Pred(combo_fornecedor.Items.Count) do
      begin
        if Trim(RESULTADO_PESQUISA1) = Trim(Copy(combo_fornecedor.Items[I], 1, Pos(' ', combo_fornecedor.Items[I]))) then
        begin
          RESULTADO_PESQUISA1:= '';
          combo_fornecedor.ItemIndex:= I;
          Break;
        end;
      end;
      if RESULTADO_PESQUISA1 = '' then Exit;
    finally
      FreeAndNil(frmxloc_fornecedor);
    end;

    if not DM.SDS_Fornecedores.Active then
      DM.SDS_Fornecedores.Active:= True;
    DM.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

    RESULTADO_PESQUISA1:= DM.SDS_FornecedoresCODIGO.AsString;
    RESULTADO_PESQUISA2:= DM.SDS_FornecedoresNOME.AsString;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_fornecedor.Items.Add(RESULTADO_PESQUISA1 + ' ' + RESULTADO_PESQUISA2);
      combo_fornecedor.ItemIndex:= combo_fornecedor.Items.Count - 1;
    end
    else
      combo_fornecedor.ItemIndex:= 0;
  end;
end;

procedure Tfrmlista_pagar2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.SDS_Fornecedores.Active:= False;
end;

procedure Tfrmlista_pagar2.FormShow(Sender: TObject);
begin
  DM.SDS_Usuarios.LOCATE('CODIGO', '99', [LOCASEINSENSITIVE]);
  data_caixa:= DM.SDS_Usuarios.Fieldbyname('data').AsDateTime;

  combo_relatorio.ItemIndex:= 0;
  combo_fornecedor.ItemIndex:= 0;
  combo_conta.ItemIndex:= 0;
  combo_situacao.ItemIndex:= 0;
  combo_periodo.ItemIndex:= 1;
  DateEdit1.Date:= Now;
  DateEdit2.date:= Now;
end;

procedure Tfrmlista_pagar2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_pagar2.combo_contaChange(Sender: TObject);
var
  I: Integer;
begin
  if combo_conta.Text = 'SELECIONAR' then
  begin
    try
      RESULTADO_PESQUISA1:= 'A';
      FormConsPlanoContas:= TFormConsPlanoContas.create(nil);
      FormConsPlanoContas.ShowModal;
      for I := 0 to Pred(combo_conta.Items.Count) do
      begin
        if Trim(DM.SDS_PlContasCODIGO.Text) = Trim(Copy(combo_conta.Items[I], 1, Pos(' ', combo_conta.Items[I]))) then
        begin
          RESULTADO_PESQUISA1:= '';
          combo_conta.ItemIndex:= I;
          Break;
        end;
      end;
      if RESULTADO_PESQUISA1 = '' then Exit;
    finally
      FreeAndNil(FormConsPlanoContas);
    end;

    RESULTADO_PESQUISA1:= DM.SDS_PlContasCODIGO.Text;
    RESULTADO_PESQUISA2:= DM.SDS_PlContasNOME.Text;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_conta.Items.Add(RESULTADO_PESQUISA1 + ' ' + RESULTADO_PESQUISA2);
      combo_conta.ItemIndex:= combo_conta.Items.Count - 1;
    end
    else
      combo_conta.ItemIndex:= 0;
  end;
end;

procedure Tfrmlista_pagar2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_pagar2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_pagar2.bimprimirClick(Sender: TObject);
var
  Fornecedor, Conta, Situacao, Periodo, Ordem: string;
begin
  Fornecedor:= EmptyStr;
  Conta:= EmptyStr;
  Situacao:= EmptyStr;

  DM.QRRELATORIO.Open;
  DM.qrrelatorio.Edit;

  DM.QRRELATORIO.FieldByName('LINHA1').AsString:= EmptyStr;
  DM.QRRELATORIO.FieldByName('LINHA2').AsString:= EmptyStr;
  DM.QRRELATORIO.FieldByName('LINHA3').AsString:= EmptyStr;
  DM.QRRELATORIO.FieldByName('LINHA4').AsString:= EmptyStr;
  DM.QRRELATORIO.FieldByName('LINHA5').AsString:= EmptyStr;
  DM.QRRELATORIO.FieldByName('LINHA6').AsString:= EmptyStr;
  DM.QRRELATORIO.FieldByName('LINHA7').AsString:= EmptyStr;

  cod_for:= StrToIntDef(Trim(Copy(combo_fornecedor.Text, 1, Pos(' ', combo_fornecedor.Text))), 0);
  cod_conta:= StrToIntDef(Trim(Copy(combo_conta.Text, 1, Pos(' ', combo_conta.Text))), 0);

  if combo_fornecedor.ItemIndex > 0 then
  begin
    Fornecedor:= ' and codfornecedor = ' + QuotedStr(IntToStr(cod_for));
    DM.QRRELATORIO.FieldByName('LINHA3').AsString:= 'FORNECEDOR: ' + combo_fornecedor.Text;
  end;

  if combo_conta.ItemIndex > 0 then
  begin
    Conta:= ' and codconta = ' + QuotedStr(IntToStr(cod_conta));
    DM.QRRELATORIO.FieldByName('LINHA4').AsString:= 'CONTA: ' + combo_conta.Text;
  end;

  if combo_situacao.ItemIndex > 0 then
  begin
    case combo_situacao.ItemIndex of
      1: Situacao:= ' and situacao = 1 ';
      2: Situacao:= ' and situacao = 2 ';
    end;
    DM.QRRELATORIO.FieldByName('LINHA6').AsString:= 'SITUAÇÃO: ' + combo_situacao.Text;
  end;

  case combo_periodo.ItemIndex of
    0:begin
      Periodo:= ' data_emissao >= :datai and data_emissao <= :dataf ';
      Ordem:= 'data_emissao';
      DM.QRRELATORIO.FieldByName('LINHA2').AsString:= 'PERÍODO DA COMPRA: ' + DateEdit1.Text + ' A ' + DateEdit2.Text;
    end;

    1:begin
      Periodo:= ' data_vencimento >= :datai and data_vencimento <= :dataf ';
      Ordem:= 'data_vencimento';
      DM.QRRELATORIO.FieldByName('LINHA2').AsString:= 'PERÍODO DE VENCIMENTO: ' + DateEdit1.Text + ' A ' + DateEdit2.Text;
    end;

    2:begin
      Periodo:= ' data_pagamento >= :datai and data_pagamento <= :dataf ';
      Ordem:= 'data_pagamento';
      DM.QRRELATORIO.FieldByName('LINHA2').AsString:= 'PERÍODO DE PAGAMENTO: ' + DateEdit1.Text + ' A ' + DateEdit2.Text;
    end;
  end;

  qrcontaspagar.Close;
  qrcontaspagar.SQL.Clear;
  qrcontaspagar.SQL.Add('select * from v_contas_a_pagar where cod_empresa =:cod_emp and ' + Periodo + Fornecedor + Conta + Situacao + ' order by ' + Ordem);
  qrcontaspagar.Params.ParamByName('cod_emp').AsInteger := iEmp;
  qrcontaspagar.Params.ParamByName('datai').AsDateTime := DateEdit1.Date;
  qrcontaspagar.Params.ParamByName('dataf').AsDateTime := DateEdit2.Date;
  qrcontaspagar.Open;

  DM.QRRELATORIO.FieldByName('LINHA1').AsString:= 'RELATÓRIO DE CONTAS A PAGAR';
  fxcontaspagar.LoadFromFile('rel\f000063.fr3');
  fxcontaspagar.ShowReport;
end;

procedure Tfrmlista_pagar2.combo_situacaoSelect(Sender: TObject);
begin
  case combo_situacao.ItemIndex of
    0: combo_periodo.ItemIndex:= 0;
    1: combo_periodo.ItemIndex:= 1;
    2: combo_periodo.ItemIndex:= 2;
  end;
end;

end.
