unit FrmComposicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, Mask,
  DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, acPNG;

type
  TFComposicao = class(TForm)
    pgcComposicao: TPageControl;
    tbGrid: TTabSheet;
    tbEdit: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    edtPesquisa: TEdit;
    Grid: TDBGrid;
    Panel2: TPanel;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    GridItens: TDBGrid;
    Bevel1: TBevel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    spbIncluirItens: TSpeedButton;
    spbAlterarItens: TSpeedButton;
    spbExcluirItens: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblPesoTotal: TLabel;
    lblCustoTotal: TLabel;
    lblValorTotal: TLabel;
    dsComposicao: TDataSource;
    dsComposicaoItens: TDataSource;
    edtObs: TDBEdit;
    edtNomeProduto: TDBEdit;
    edtMedida: TDBEdit;
    spbOrdemComposicao: TSpeedButton;
    tbOrdemComposicao: TTabSheet;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    edtQuantidade: TEdit;
    Label11: TLabel;
    rdgOpcoes: TRadioGroup;
    lblValorTotalCom: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    lblCustoTotalCom: TLabel;
    lblPesoTotalCom: TLabel;
    Label10: TLabel;
    Panel4: TPanel;
    spbProcesso: TSpeedButton;
    Bevel2: TBevel;
    GridCom: TDBGrid;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    qrMaterias: TFDMemTable;
    qrMateriasID_PRODUTO: TIntegerField;
    qrMateriasPRODUTO: TStringField;
    qrMateriasMEDIDA: TStringField;
    qrMateriasC_UNITARIO: TCurrencyField;
    qrMateriasV_UNITARIO: TCurrencyField;
    qrMateriasCUSTO_TOTAL: TCurrencyField;
    qrMateriasVALOR_TOTAL: TCurrencyField;
    dsMaterias: TDataSource;
    qrMateriasQUANTIDADE: TFloatField;
    spbVoltar: TSpeedButton;
    qrMateriasESTOQUE: TFloatField;
    edtMaoDeObra: TDBEdit;
    Label19: TLabel;
    Image1: TImage;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label20: TLabel;
    Bevel6: TBevel;
    Label21: TLabel;
    procedure spbIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure spbIncluirItensClick(Sender: TObject);
    procedure spbExcluirItensClick(Sender: TObject);
    procedure GridComDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spbOrdemComposicaoClick(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure spbProcessoClick(Sender: TObject);
    procedure spbVoltarClick(Sender: TObject);
    procedure edtMaoDeObraExit(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function ConverteReais(Valor: String): Currency;
    function ConverteText(Valor: String): string;
    procedure SomaValoresMaterias;
    procedure AlteraEstoqueProduto(ID_PRODUTO: Integer; ESTOQUE,PRECO: currency);
  end;

var
  FComposicao: TFComposicao;
  Alterando: Boolean;

implementation

uses uDMMovimentacao, ConsProdutosVendas, ModulodeDados,
  FrmComposicaoItens;

{$R *.dfm}

procedure TFComposicao.spbIncluirClick(Sender: TObject);
begin
  dsComposicao.DataSet.Insert;  
  pgcComposicao.ActivePage:= tbEdit;
end;

procedure TFComposicao.FormCreate(Sender: TObject);
begin
  dsComposicao.DataSet.Open;
  dsComposicaoItens.DataSet.Open;
  pgcComposicao.ActivePage:= tbGrid;
end;

procedure TFComposicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsComposicao.DataSet.Close;
  dsComposicaoItens.DataSet.Close;

  Action := caFree;
  FComposicao := nil;
end;

procedure TFComposicao.spbAlterarClick(Sender: TObject);
begin
  if not dsComposicao.DataSet.IsEmpty then
  begin
    pgcComposicao.ActivePage:= tbEdit;
    dsComposicao.DataSet.Edit;
    lblPesoTotal.Caption:= FloatToStrF(dsComposicao.DataSet.FieldByName('PESO_TOTAL').AsCurrency,ffNumber,12,3);
    lblCustoTotal.Caption:= FloatToStrF(dsComposicao.DataSet.FieldByName('CUSTO_TOTAL').AsCurrency,ffNumber,12,2);
    lblValorTotal.Caption:= FloatToStrF(dsComposicao.DataSet.FieldByName('VALOR_TOTAL').AsCurrency,ffNumber,12,2);
  end;
end;

procedure TFComposicao.spbExcluirClick(Sender: TObject);
begin
  try
    if not dsComposicao.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o item selecionado?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsComposicao.DataSet.Delete;
        DMMovimentacao.Adapter.ApplyUpdates(0);
        dsComposicao.DataSet.Refresh;
      end;
    end;
  except
    Application.MessageBox('Erro ao tentar excluir!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFComposicao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TFComposicao.spbCancelarClick(Sender: TObject);
begin
  dsComposicao.DataSet.Cancel;
  TFDQuery(dsComposicaoItens.DataSet).CancelUpdates;
  pgcComposicao.ActivePage:= tbGrid;
end;

procedure TFComposicao.spbSalvarClick(Sender: TObject);
begin
  dsComposicao.DataSet.FieldByName('PESO_TOTAL').AsCurrency:= ConverteReais(lblPesoTotal.Caption);
  dsComposicao.DataSet.FieldByName('CUSTO_TOTAL').AsCurrency:= ConverteReais(lblCustoTotal.Caption);
  dsComposicao.DataSet.FieldByName('VALOR_TOTAL').AsCurrency:= ConverteReais(lblValorTotal.Caption);
  dsComposicao.DataSet.Post;
  TFDQuery(dsComposicaoItens.DataSet).ApplyUpdates(0);
  DMMovimentacao.Adapter.ApplyUpdates(0);
  pgcComposicao.ActivePage:= tbGrid;
end;

procedure TFComposicao.spbIncluirItensClick(Sender: TObject);
begin
  try
    FComposicaoItens:= TFComposicaoItens.Create(nil);
    if TSpeedButton(Sender).Tag = 100 then
    begin
      FComposicaoItens.edtNomeProduto.Tag:= dsComposicaoItens.DataSet.FieldByName('ID_PRODUTO').AsInteger;
      FComposicaoItens.edtQuantidade.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('QUANTIDADE').AsCurrency,ffNumber,12,1);
      FComposicaoItens.edtNomeProduto.Hint:= dsComposicaoItens.DataSet.FieldByName('MEDIDA').AsString;
      FComposicaoItens.edtPesoUnitario.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('P_UNITARIO').AsCurrency,ffNumber,12,3);
      FComposicaoItens.edtCustoUnitario.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('C_UNITARIO').AsCurrency,ffNumber,12,2);
      FComposicaoItens.edtUnitario.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('V_UNITARIO').AsCurrency,ffNumber,12,2);
      FComposicaoItens.edtPesoTotal.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('PESO_TOTAL').AsCurrency,ffNumber,12,3);
      FComposicaoItens.edtTotal.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('VALOR_TOTAL').AsCurrency,ffNumber,12,2);
      FComposicaoItens.edtCustoTotal.text:= FloatToStrF(dsComposicaoItens.DataSet.FieldByName('CUSTO_TOTAL').AsCurrency,ffNumber,12,2);
      FComposicaoItens.edtNomeProduto.text:= dsComposicaoItens.DataSet.FieldByName('DESCRICAO').AsString;
    end;
    
    FComposicaoItens.ShowModal;
  finally
    if FComposicaoItens.Gravar = True then
    begin
      if TSpeedButton(Sender).Tag = 100 then
      begin
        dsComposicaoItens.DataSet.Edit;
        lblPesoTotal.Caption:= FloatToStrF((ConverteReais(lblPesoTotal.Caption) -
        dsComposicaoItens.DataSet.FieldByName('PESO_TOTAL').AsCurrency) + ConverteReais(FComposicaoItens.edtPesoTotal.text),ffNumber,12,3);
        lblCustoTotal.Caption:= FloatToStrF((ConverteReais(lblCustoTotal.Caption) -
        dsComposicaoItens.DataSet.FieldByName('CUSTO_TOTAL').AsCurrency) + ConverteReais(FComposicaoItens.edtCustoTotal.text),ffNumber,12,2);
        lblValorTotal.Caption:= FloatToStrF((ConverteReais(lblValorTotal.Caption) -
        dsComposicaoItens.DataSet.FieldByName('VALOR_TOTAL').AsCurrency) + ConverteReais(FComposicaoItens.edtTotal.text),ffNumber,12,2);
      end
      else
      begin
        dsComposicaoItens.DataSet.Insert;
        lblPesoTotal.Caption:= FloatToStrF(ConverteReais(lblPesoTotal.Caption)
         + ConverteReais(FComposicaoItens.edtPesoTotal.text),ffNumber,12,3);
        lblCustoTotal.Caption:= FloatToStrF(ConverteReais(lblCustoTotal.Caption)
        + ConverteReais(FComposicaoItens.edtCustoTotal.text),ffNumber,12,2);
        lblValorTotal.Caption:= FloatToStrF(ConverteReais(lblValorTotal.Caption) +
        ConverteReais(FComposicaoItens.edtTotal.text),ffNumber,12,2);
      end;

      dsComposicaoItens.DataSet.FieldByName('ID_PRODUTO').AsInteger:=
        FComposicaoItens.edtNomeProduto.Tag;
      dsComposicaoItens.DataSet.FieldByName('QUANTIDADE').AsCurrency:=
      ConverteReais(FComposicaoItens.edtQuantidade.text);
      dsComposicaoItens.DataSet.FieldByName('MEDIDA').AsString:=
      FComposicaoItens.edtNomeProduto.Hint;
      dsComposicaoItens.DataSet.FieldByName('P_UNITARIO').AsCurrency:=
      ConverteReais(FComposicaoItens.edtPesoUnitario.text);
      dsComposicaoItens.DataSet.FieldByName('C_UNITARIO').AsCurrency:=
      ConverteReais(FComposicaoItens.edtCustoUnitario.text);
      dsComposicaoItens.DataSet.FieldByName('V_UNITARIO').AsCurrency:=
      ConverteReais(FComposicaoItens.edtUnitario.text);
      dsComposicaoItens.DataSet.FieldByName('PESO_TOTAL').AsCurrency:=
      ConverteReais(FComposicaoItens.edtPesoTotal.text);
      dsComposicaoItens.DataSet.FieldByName('VALOR_TOTAL').AsCurrency:=
      ConverteReais(FComposicaoItens.edtTotal.text);
      dsComposicaoItens.DataSet.FieldByName('CUSTO_TOTAL').AsCurrency:=
      ConverteReais(FComposicaoItens.edtCustoTotal.text);
      dsComposicaoItens.DataSet.FieldByName('DESCRICAO').AsString:=
      FComposicaoItens.edtNomeProduto.text;

      dsComposicaoItens.DataSet.Post;
    end;

    FreeAndNil(FComposicaoItens);
  end;
end;

function TFComposicao.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

function TFComposicao.ConverteText(Valor: String): string;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= FloatToStr(Round(StrtoFloat(Trim(Valor))));
end;

procedure TFComposicao.spbExcluirItensClick(Sender: TObject);
begin
  try
    if not dsComposicaoItens.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o item selecionado?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        lblPesoTotal.Caption:= FloatToStrF(ConverteReais(lblPesoTotal.Caption) -
        dsComposicaoItens.DataSet.FieldByName('PESO_TOTAL').AsCurrency,ffNumber,12,3);
        lblCustoTotal.Caption:= FloatToStrF(ConverteReais(lblCustoTotal.Caption) -
        dsComposicaoItens.DataSet.FieldByName('CUSTO_TOTAL').AsCurrency,ffNumber,12,2);
        lblValorTotal.Caption:= FloatToStrF(ConverteReais(lblValorTotal.Caption) -
        dsComposicaoItens.DataSet.FieldByName('VALOR_TOTAL').AsCurrency,ffNumber,12,2);
        dsComposicaoItens.DataSet.Delete
      end;
    end;
  except
    Application.MessageBox('Erro ao tentar excluir!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFComposicao.GridComDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dsMaterias.DataSet.FieldByName('ESTOQUE').asinteger <
    dsMaterias.DataSet.FieldByName('QUANTIDADE').asinteger then
  begin
    GridCom.Canvas.Font.Color:= clRed;
    GridCom.DefaultDrawDataCell(Rect, GridCom.columns[datacol].field, State);
  end
  else
  if dsMaterias.DataSet.FieldByName('ESTOQUE').asinteger >=
    dsMaterias.DataSet.FieldByName('QUANTIDADE').asinteger then
  begin
    GridCom.Canvas.Font.Color:= clGreen;
    GridCom.DefaultDrawDataCell(Rect, GridCom.columns[datacol].field, State);
  end;
end;

procedure TFComposicao.spbOrdemComposicaoClick(Sender: TObject);
begin
  if not dsComposicao.DataSet.IsEmpty then
    SomaValoresMaterias;
end;

procedure TFComposicao.SomaValoresMaterias;
var
  qr,qr2: TFDQuery;
  I: Integer;
  Quantidade: currency;
begin
  Quantidade:= 0;
  lblPesoTotalCom.Caption:=
  FloatToStrF(dsComposicao.DataSet.fieldbyname('PESO_TOTAL').AsCurrency *
  ConverteReais(edtQuantidade.Text),ffNumber,12,3);

  lblCustoTotalCom.Caption:=
  FloatToStrF(dsComposicao.DataSet.fieldbyname('CUSTO_TOTAL').AsCurrency *
  ConverteReais(edtQuantidade.Text),ffNumber,12,2);

  lblValorTotalCom.Caption:=
  FloatToStrF((dsComposicao.DataSet.fieldbyname('VALOR_TOTAL').AsCurrency *
  ConverteReais(edtQuantidade.Text) +
  dsComposicao.DataSet.fieldbyname('VALOR_MAO_OBRA').AsCurrency),ffNumber,12,2);

  qrMaterias.close;
  qrMaterias.Open;
  qr2:= TFDQuery.Create(nil);
  qr2.Connection:= DM.Coneccao;
  qr2.SQL.Add('SELECT * FROM ITENS_COMPOSICAO WHERE ID_ITEM_COMPOSTO = ' +
  IntToStr(dsComposicao.DataSet.fieldbyname('ID').AsInteger));
  qr2.Open;

  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = ' +
  IntToStr(dsComposicao.DataSet.fieldbyname('ID_PRODUTO').AsInteger));
  qr.Open;
  edtQuantidade.hint:= FloatToStr(qr.fieldbyname('ESTOQUE').AsCurrency);
  qr.Close;
  while not qr2.eof do
  begin
    qr.SQL.Clear;
    qr.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = ' +
    IntToStr(qr2.fieldbyname('ID_PRODUTO').AsInteger));
    qr.Open;

    qrMaterias.Insert;
    qrMateriasID_PRODUTO.Value:= qr2.fieldbyname('ID_PRODUTO').AsInteger;
    qrMateriasPRODUTO.Value:= qr.fieldbyname('DESCRICAO').asstring;
    qrMateriasMEDIDA.value:= qr.fieldbyname('DESC_UNIDADE').asstring;
    qrMateriasESTOQUE.Value:= qr.fieldbyname('ESTOQUE').AsFloat;
    if (dsComposicao.DataSet.FieldByName('MEDIDA').AsString = 'KG') or
    (dsComposicao.DataSet.FieldByName('MEDIDA').AsString = 'LT') then
    begin
      qrMateriasQuantidade.Value:= qr2.fieldbyname('QUANTIDADE').AsCurrency;
      Quantidade:= Quantidade + qr2.fieldbyname('QUANTIDADE').AsCurrency;
    end
    else
      qrMateriasQuantidade.Value:= (ConverteReais(edtQuantidade.text) + qr2.fieldbyname('QUANTIDADE').AsCurrency) -1;
    qrMateriasC_UNITARIO.value:= qr.fieldbyname('PRECO_CUSTO').asFloat;
    qrMateriasV_UNITARIO.value:= qr.fieldbyname('PRECO_VENDA').asFloat;
    qrMateriasCUSTO_TOTAL.value:= (qr.fieldbyname('PRECO_CUSTO').asFloat * qrMateriasQuantidade.Value);
    qrMateriasVALOR_TOTAL.value:= (qr.fieldbyname('PRECO_VENDA').asFloat * qrMateriasQuantidade.Value);
    qrMaterias.Post;

    qr.Close;
    qr2.Next;
  end;

  if (dsComposicao.DataSet.FieldByName('MEDIDA').AsString = 'KG') or
   (dsComposicao.DataSet.FieldByName('MEDIDA').AsString = 'LT') then
  begin
    edtQuantidade.text:= FloatToStrF(Quantidade,ffNumber,12,1);
    edtQuantidade.ReadOnly:= True;
  end
  else
  begin
    edtQuantidade.ReadOnly:= False;
  end;

  qr.Destroy;
  qr2.Destroy;
  pgcComposicao.ActivePage:= tbOrdemComposicao;
end;

procedure TFComposicao.edtQuantidadeExit(Sender: TObject);
begin
  if (dsComposicao.DataSet.FieldByName('MEDIDA').AsString = 'KG') or
   (dsComposicao.DataSet.FieldByName('MEDIDA').AsString = 'LT') then
    edtQuantidade.Text:= FloatToStrF(ConverteReais(edtQuantidade.Text),ffNumber,12,1)
  else
    edtQuantidade.Text:= ConverteText(edtQuantidade.Text);
    
  SomaValoresMaterias;
end;

procedure TFComposicao.spbProcessoClick(Sender: TObject);
begin
  try
    if rdgOpcoes.ItemIndex = 0 then
    begin
      while not qrMaterias.eof do
      begin
        if dsMaterias.DataSet.FieldByName('ESTOQUE').AsFloat <
          dsMaterias.DataSet.FieldByName('QUANTIDADE').AsFloat then
        begin
          Application.MessageBox('Existem produtos em falta no estoque.' +
          ' Verifique os que estão na cor vermelha!','Atenção',MB_ICONWARNING);
          Exit;
        end;
        qrMaterias.Next;
      end;

      qrMaterias.Refresh;
      qrMaterias.First;
      while not qrMaterias.eof do
      begin
        AlteraEstoqueProduto(qrMateriasID_PRODUTO.Value,(qrMateriasESTOQUE.Value - qrMateriasQUANTIDADE.Value),ConverteReais(lblValorTotalCom.Caption));
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
        DM.ProxCod.Open;

        if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
        DM.IBTransaction.StartTransaction;

        try
          with dm.logEst do
          begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            Parambyname('ID_PRODUTO').AsInteger     := qrMateriasID_PRODUTO.Value;
            Parambyname('ID_LOTE').Value            := null;
            Parambyname('ID_PRODUTO_SERIE').Value  := null;
            Parambyname('DATA').AsDateTime     := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger   :=  0;
            Parambyname('FRACAO').Asfloat           := 1;
            Parambyname('ESTOQUE_ANTERIOR').Asfloat := qrMateriasESTOQUE.Value;
            Parambyname('QUANTIDADE').Asfloat       :=  qrMateriasQUANTIDADE.Value;
            Parambyname('ESTOQUE_POSTERIOR').Asfloat := (qrMateriasESTOQUE.Value - qrMateriasQUANTIDADE.Value);
            Parambyname('OPERACAO').TEXT             := '-';
            Parambyname('HISTORICO').TEXT               := 'Composição de Itens - Montando Produto - Materia Prima';
            Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 4;  // 4 - ACERTO ESTOQUE
            Parambyname('ACAO_BD').TEXT               := 'I';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').value              :=  null;
            parambyname('COD_COMPRA').value              :=  null;
            Parambyname('HORA').AsString           := TimeToStr(Time);
            ExecSQL;
          end;
          DM.IBTransaction.Commit;

        except
          DM.IBTransaction.Rollback;
          Application.MessageBox('Erro ao Gravar o log do Estoque!','Erro',MB_ICONERROR);
          Exit;
        end;
        qrMaterias.Next;
      end;

      AlteraEstoqueProduto(dsComposicao.DataSet.fieldbyname('ID_PRODUTO').AsInteger,
      (ConverteReais(edtQuantidade.text) + ConverteReais(edtQuantidade.Hint)),ConverteReais(lblValorTotalCom.Caption));
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
      DM.ProxCod.Open;

      if DM.IBTransaction.Active then
         DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

      try
        with dm.logEst do
        begin
          close;
          parambyname('ID_EMPRESA').AsInteger          := strtoint(dm.sds_empresacodigo.Text);
          parambyname('ID_FILIAL').AsInteger           := strtoint(dm.sds_empresacodigo.Text);
          parambyname('ID_AJUSTE').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
          Parambyname('ID_PRODUTO').AsInteger          := dsComposicao.DataSet.fieldbyname('ID_PRODUTO').AsInteger;
          Parambyname('ID_LOTE').Value                 := null;
          Parambyname('ID_PRODUTO_SERIE').Value        := null;
          Parambyname('DATA').AsDateTime               := date;
          Parambyname('ID_USUARIO').Asinteger          := dm.sds_usuariosCodigo.AsInteger;
          parambyname('ID_MOVIMENTO').AsInteger        :=  0;
          Parambyname('FRACAO').Asfloat                := 1;
          Parambyname('ESTOQUE_ANTERIOR').Asfloat      := ConverteReais(edtQuantidade.Hint);
          Parambyname('QUANTIDADE').Asfloat            :=  ConverteReais(edtQuantidade.text);
          Parambyname('ESTOQUE_POSTERIOR').Asfloat     := (ConverteReais(edtQuantidade.text) + ConverteReais(edtQuantidade.Hint));
          Parambyname('OPERACAO').TEXT                 := '+';
          Parambyname('HISTORICO').TEXT                := 'Composição de Itens - Montando Produto - Produto Montado!';
          Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 4;  // 4 - ACERTO ESTOQUE
          Parambyname('ACAO_BD').TEXT                  := 'I';
          Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
          parambyname('COD_VENDA').value               :=  null;
          parambyname('COD_COMPRA').value              :=  null;
          Parambyname('HORA').AsString                 := TimeToStr(Time);
          ExecSQL;
        end;
        DM.IBTransaction.Commit;

      except
        DM.IBTransaction.Rollback;
        Application.MessageBox('Erro ao Gravar o log do Estoque!','Erro',MB_ICONERROR);
        Exit;
      end;
    end
    else
    begin
      if  ConverteReais(edtQuantidade.Hint) < ConverteReais(edtQuantidade.Text) then
      begin
        Application.MessageBox('Não existem quantidade suficente de produto para desmontar.','Atenção',MB_ICONWARNING);
        Exit;
      end;

      qrMaterias.Refresh;
      while not qrMaterias.eof do
      begin
        AlteraEstoqueProduto(qrMateriasID_PRODUTO.Value,(qrMateriasESTOQUE.Value + qrMateriasQUANTIDADE.Value),ConverteReais(lblValorTotalCom.Caption));
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
        DM.ProxCod.Open;

        if DM.IBTransaction.Active then
           DM.IBTransaction.Commit;
        DM.IBTransaction.StartTransaction;

        try
          with dm.logEst do
          begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('ID_PRODUTO').AsInteger     := qrMateriasID_PRODUTO.Value;
            Parambyname('ID_LOTE').Value            := null;
            Parambyname('ID_PRODUTO_SERIE').Value   := null;
            Parambyname('DATA').AsDateTime          := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger    :=  0;
            Parambyname('FRACAO').Asfloat            := 1;
            Parambyname('ESTOQUE_ANTERIOR').Asfloat  := qrMateriasESTOQUE.Value;
            Parambyname('QUANTIDADE').Asfloat        :=  qrMateriasQUANTIDADE.Value;
            Parambyname('ESTOQUE_POSTERIOR').Asfloat := (qrMateriasESTOQUE.Value + qrMateriasQUANTIDADE.Value);
            Parambyname('OPERACAO').TEXT             := '+';
            Parambyname('HISTORICO').TEXT            := 'Composição de Itens - Desmontando Produto - Materia Prima';
            Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 4;  // 4 - ACERTO ESTOQUE
            Parambyname('ACAO_BD').TEXT              := 'I';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').value           :=  null;
            parambyname('COD_COMPRA').value          :=  null;
            Parambyname('HORA').AsString             := TimeToStr(Time);
            ExecSQL;
          end;
          DM.IBTransaction.Commit;

        except
          DM.IBTransaction.Rollback;
          Application.MessageBox('Erro ao Gravar o log do Estoque!','Erro',MB_ICONERROR);
          Exit;
        end;
        qrMaterias.Next;
      end;

      AlteraEstoqueProduto(dsComposicao.DataSet.fieldbyname('ID_PRODUTO').AsInteger,
      (ConverteReais(edtQuantidade.hint) - ConverteReais(edtQuantidade.text)),ConverteReais(lblValorTotalCom.Caption));
       dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
      DM.ProxCod.Open;

      if DM.IBTransaction.Active then
         DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

      try
        with dm.logEst do
        begin
          close;
          parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
          parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
          parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;
          Parambyname('ID_PRODUTO').AsInteger     := dsComposicao.DataSet.fieldbyname('ID_PRODUTO').AsInteger;
          Parambyname('ID_LOTE').Value            := null;
          Parambyname('ID_PRODUTO_SERIE').Value  := null;
          Parambyname('DATA').AsDateTime     := date;
          Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
          parambyname('ID_MOVIMENTO').AsInteger   :=  0;
          Parambyname('FRACAO').Asfloat           := 1;
          Parambyname('ESTOQUE_ANTERIOR').Asfloat := ConverteReais(edtQuantidade.hint);
          Parambyname('QUANTIDADE').Asfloat       :=  ConverteReais(edtQuantidade.text);
          Parambyname('ESTOQUE_POSTERIOR').Asfloat := (ConverteReais(edtQuantidade.text) - ConverteReais(edtQuantidade.hint));
          Parambyname('OPERACAO').TEXT             := '-';
          Parambyname('HISTORICO').TEXT               := 'Composição de Itens - Desmontar Produto - Produto Desmontado!';
          Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 4;  // 4 - ACERTO ESTOQUE
          Parambyname('ACAO_BD').TEXT               := 'I';
          Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
          parambyname('COD_VENDA').value              :=  null;
          parambyname('COD_COMPRA').value              :=  null;
          Parambyname('HORA').AsString           := TimeToStr(Time);
          ExecSQL;
        end;
        DM.IBTransaction.Commit;

      except
        DM.IBTransaction.Rollback;
        Application.MessageBox('Erro ao Gravar o log do Estoque!','Erro',MB_ICONERROR);
        Exit;
      end;
    end;

    Application.MessageBox('Processo concluido com sucesso!','Operação Concluida',MB_ICONINFORMATION);
    SomaValoresMaterias;
  except
    Application.MessageBox('Erro ao tentar processar!!','Erro',MB_ICONERROR);
  end;
end;

procedure TFComposicao.AlteraEstoqueProduto(ID_PRODUTO: Integer; ESTOQUE,PRECO: currency);
begin
  // Atualiza preços do custo e venda do imovel
  try
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;

    dm.IBTransaction.StartTransaction;
    with dm.Consulta do
    begin
      close;
      sql.Clear;
      sql.add('UPDATE PRODUTOS SET ESTOQUE =:ESTOQUE WHERE CODIGO = :CODPRO;');
      Parambyname('ESTOQUE').AsCurrency:= ESTOQUE;
      //Parambyname('PRECO').AsCurrency:= PRECO;
      Parambyname('CODPRO').AsInteger:= ID_PRODUTO;
      ExecSQL;
    end;
    dm.IBTransaction.Commit;
  except
    dm.IBTransaction.rollback;
    showmessage('Erro ao atualizar o custo do produto');
  end;
end;

procedure TFComposicao.spbVoltarClick(Sender: TObject);
begin
  pgcComposicao.ActivePage:= tbGrid;
end;

procedure TFComposicao.edtMaoDeObraExit(Sender: TObject);
begin
  SomaValoresMaterias;
end;

procedure TFComposicao.Image1Click(Sender: TObject);
begin
  try
    FormConsProdutosVendas:= TFormConsProdutosVendas.Create(nil);
    FormConsProdutosVendas.ShowModal;
  finally
    dsComposicao.DataSet.FieldByName('ID_PRODUTO').AsInteger:= DM.Sds_produtos_cCODIGO.Value;
    dsComposicao.DataSet.FieldByName('MEDIDA').asString:= DM.Sds_produtos_cDESC_UNIDADE.Value;
    FreeAndNil(FormConsProdutosVendas);
  end;
end;

procedure TFComposicao.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if not dsComposicao.DataSet.IsEmpty then
    begin
      dsComposicao.DataSet.Filtered:= False;
      dsComposicao.DataSet.Filter:= 'PRODUTO LIKE ' + QuotedStr('%'+edtPesquisa.Text);
      dsComposicao.DataSet.Filtered:= True;

      if not dsComposicao.DataSet.IsEmpty then
        dsComposicao.DataSet.Filtered:= False;
    end;
  end;
end;

procedure TFComposicao.edtNomeProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
    Image1Click(Sender);
end;

end.
