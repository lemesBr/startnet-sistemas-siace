unit FrmBaixaPlaquetasMadeireira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, DBCtrls, Mask,
    FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, rxToolEdit;

type
  TFBaixaPlaquetasMadeireira = class(TForm)
    pnlfooter: TPanel;
    pnlBody: TPanel;
    spbProcesso: TSpeedButton;
    spbIncluir: TSpeedButton;
    spbCancelar: TSpeedButton;
    Bevel1: TBevel;
    edtPlaqueta: TEdit;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    lblRomaneio: TLabel;
    lblData: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    lblFornecedor: TLabel;
    Bevel3: TBevel;
    Label4: TLabel;
    lblPatio: TLabel;
    Label7: TLabel;
    lblMorista: TLabel;
    Bevel4: TBevel;
    Label6: TLabel;
    lblEspecie: TLabel;
    Label9: TLabel;
    lblComprimento: TLabel;
    Label8: TLabel;
    lblDiamentroPe: TLabel;
    lblDiametroPonta: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    lblM3: TLabel;
    Bevel5: TBevel;
    edtDataSerragem: TDateEdit;
    Label13: TLabel;
    edtSerragem: TEdit;
    Label14: TLabel;
    edtTotal: TEdit;
    Label15: TLabel;
    Label12: TLabel;
    Bevel6: TBevel;
    cbxTurno: TDBComboBox;
    dsBaixar: TDataSource;
    Bevel7: TBevel;
    edtMadeiraSerrada: TEdit;
    Label16: TLabel;
    spbMadeiraSerrada: TSpeedButton;
    rdgOpcoes: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbIncluirClick(Sender: TObject);
    procedure spbProcessoClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure edtPlaquetaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSerragemExit(Sender: TObject);
    procedure spbMadeiraSerradaClick(Sender: TObject);
    procedure edtSerragemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function ConverteReais(Valor: String): Currency;
    function ConverteText(Valor: String): string;
    procedure AlteraEstoqueProduto(ID_PRODUTO,Status: Integer; ESTOQUE: currency);
  public
    { Public declarations }
  end;

var
  FBaixaPlaquetasMadeireira: TFBaixaPlaquetasMadeireira;

implementation

uses ModuleDados1, ModulodeDados, clientes, uDMMovimentacao,
  ConsProdutosVendas;

{$R *.dfm}

procedure TFBaixaPlaquetasMadeireira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  FormClientes:=nil;
end;

procedure TFBaixaPlaquetasMadeireira.spbIncluirClick(Sender: TObject);
begin
  spbCancelar.Visible:= True;
  spbIncluir.Visible:= False;
  spbProcesso.Visible:= True;
  pnlBody.Enabled:= True;
end;

procedure TFBaixaPlaquetasMadeireira.spbProcessoClick(Sender: TObject);
begin
  if (edtSerragem.Text = '') or (edtDataSerragem.Text = '')
  or (edtTotal.Text = '') or (edtMadeiraSerrada.Text = '') then
  begin
    Application.MessageBox('Ainda possue campos a serem preenchidos!','Atenção',MB_ICONWARNING);
    Exit;
  end;

  if rdgOpcoes.ItemIndex = 0 then
  begin
    dsBaixar.DataSet.Open;
    dsBaixar.DataSet.Insert;
    dsBaixar.DataSet.FieldByName('ID_TORAS_ENTRADAS').AsInteger:= edtPlaqueta.Tag;
    dsBaixar.DataSet.FieldByName('ID_SERRADO').AsInteger:= edtMadeiraSerrada.Tag;
    dsBaixar.DataSet.FieldByName('V_SERRAGEM').AsCurrency:= ConverteReais(edtSerragem.Text);
    dsBaixar.DataSet.FieldByName('DATA').AsDateTime:= edtDataSerragem.Date;
    dsBaixar.DataSet.FieldByName('TOTAL').AsCurrency:= ConverteReais(edtTotal.Text);
    dsBaixar.DataSet.FieldByName('TURNO').AsString:= cbxTurno.Text;
    dsBaixar.DataSet.FieldByName('PERCA').AsCurrency:= ConverteReais(lblM3.Caption) - ConverteReais(edtTotal.Text);
    dsBaixar.DataSet.Post;
    dsBaixar.DataSet.Close;

    AlteraEstoqueProduto(edtMadeiraSerrada.Tag,1,ConverteReais(edtTotal.Text));
    AlteraEstoqueProduto(lblEspecie.Tag,0,ConverteReais(edtTotal.Text));
  end
  else
  if rdgOpcoes.ItemIndex = 1 then
  begin
    dsBaixar.DataSet.Open;
    dsBaixar.DataSet.Filter:= 'ID_TORAS_ENTRADAS = ' + IntToStr(edtPlaqueta.Tag);
    dsBaixar.DataSet.Filtered:= True;

    if not dsBaixar.DataSet.IsEmpty then
    begin
      AlteraEstoqueProduto(edtMadeiraSerrada.Tag,0,ConverteReais(edtTotal.Text));
      AlteraEstoqueProduto(lblEspecie.Tag,1,ConverteReais(edtTotal.Text));
      dsBaixar.DataSet.Delete;
    end
    else
    begin
      Application.MessageBox('Essa plaqueda não se encontra baixada!','Atenção',MB_ICONWARNING);
    end;

    dsBaixar.DataSet.Close;
    dsBaixar.DataSet.Filtered:= False;
  end;
  
  spbProcesso.Visible:= False;
  spbIncluir.Visible:= True;
  spbCancelar.Visible:= False;
  pnlBody.Enabled:= False;
end;

procedure TFBaixaPlaquetasMadeireira.spbCancelarClick(Sender: TObject);
begin
  spbProcesso.Visible:= False;
  spbIncluir.Visible:= True;
  spbCancelar.Visible:= False;
  pnlBody.Enabled:= False;
end;

procedure TFBaixaPlaquetasMadeireira.edtPlaquetaKeyPress(Sender: TObject;
  var Key: Char);
var
  qr: TFDQuery;
begin
  if Key = #13 then
  begin
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT TE.PLAQUETA AS PLAQUETA,TE.ID AS ID,PR.CODIGO AS CODIGO_PRODUTO,ET.ROMANEIO AS ROMANEIO,ET.DATA AS DATA,FR.NOME AS FORNECEDOR,'+
    'PT.NOME AS PATIO,CL.NOME_RS AS MOTORISTA,PR.DESCRICAO AS ESPECIE,'+
    'TE.COMPRIMENTO AS COMPRIMENTO,TE.DIAMETRO_PONTA AS DIAMETRO_PONTA,'+
    'TE.DIAMETRO_PE AS DIAMETRO_PE,TE.M3 AS M3 '+
    'FROM MD_TORAS_ENTRADAS TE '+
    'INNER JOIN MD_ENTRADA_TORAS ET ON (ET.ID = TE.ID_ENTRADA_TORAS) '+
    'INNER JOIN FORNECEDORES FR ON (FR.CODIGO = ET.ID_FORNECEDOR) '+
    'INNER JOIN MD_PATIO PT ON (PT.ID = ET.ID_PATIO) '+
    'INNER JOIN CLIENTES CL ON (CL.CODIGO = ET.ID_MOTORISTA)'+
    'INNER JOIN PRODUTOS PR ON (PR.CODIGO = TE.ID_ESPECIE)'+
    ' WHERE TE.PLAQUETA = '+ edtPlaqueta.Text);
    qr.Open;

    if qr.IsEmpty then
      edtPlaqueta.SetFocus
    else
    begin
      lblRomaneio.Caption:= IntToStr(qr.fieldbyname('ROMANEIO').asinteger);
      lblData.Caption:= DateToStr(qr.fieldbyname('DATA').AsDateTime);
      lblFornecedor.Caption:= qr.fieldbyname('FORNECEDOR').AsString;
      lblPatio.Caption:= qr.fieldbyname('PATIO').AsString;
      lblMorista.Caption:= qr.fieldbyname('MOTORISTA').AsString;
      lblEspecie.Caption:= qr.fieldbyname('ESPECIE').AsString;
      lblEspecie.Tag:= qr.FieldByname('CODIGO_PRODUTO').AsInteger;
      lblComprimento.Caption:= FloatToStrF(qr.fieldbyname('COMPRIMENTO').AsCurrency,ffNumber,12,3);
      lblDiamentroPe.Caption:= FloatToStrF(qr.fieldbyname('DIAMETRO_PE').AsCurrency,ffNumber,12,3);
      lblDiametroPonta.Caption:= FloatToStrF(qr.fieldbyname('DIAMETRO_PONTA').AsCurrency,ffNumber,12,3);
      edtPlaqueta.Tag:= qr.fieldbyname('ID').asinteger;
    end;

    qr.Destroy;
  end;
end;

function TFBaixaPlaquetasMadeireira.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

function TFBaixaPlaquetasMadeireira.ConverteText(Valor: String): string;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= FloatToStr(StrtoFloat(Trim(Valor)));
end;

procedure TFBaixaPlaquetasMadeireira.edtSerragemExit(Sender: TObject);
begin
  edtSerragem.Text:= ConverteText(edtSerragem.Text);
end;

procedure TFBaixaPlaquetasMadeireira.spbMadeiraSerradaClick(
  Sender: TObject);
begin
  try
    FormConsProdutosVendas:= TFormConsProdutosVendas.Create(nil);
    FormConsProdutosVendas.ShowModal;
  finally
    if DM.Sds_produtos_cDESC_UNIDADE.Value = 'M3' then
    begin
      edtMadeiraSerrada.Tag:= DM.Sds_produtos_cCODIGO.Value;
      edtMadeiraSerrada.Text:= DM.Sds_produtos_cDESCRICAO.Value;
    end
    else
      Application.MessageBox('A unidade do Produto deve ser M3!','Atenção',MB_ICONWARNING);

    FreeAndNil(FormConsProdutosVendas);
  end;
end;

procedure TFBaixaPlaquetasMadeireira.AlteraEstoqueProduto(
  ID_PRODUTO,Status: Integer; ESTOQUE: currency);
var
  qr: TFDQuery;
begin
  // Atualiza preços do custo e venda do imovel
  try
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT ESTOQUE,CODIGO FROM PRODUTOS WHERE CODIGO = :CODPRO');
    qr.Parambyname('CODPRO').AsInteger:= ID_PRODUTO;
    qr.Open;

    if Status = 1 then
      qr.FieldByName('ESTOQUE').AsCurrency:= qr.fieldbyname('ESTOQUE').AsCurrency + ESTOQUE
    else
      qr.FieldByName('ESTOQUE').AsCurrency:= qr.fieldbyname('ESTOQUE').AsCurrency - ESTOQUE;

    qr.Destroy;
  except
    showmessage('Erro ao atualizar o custo do produto');
  end;
end;

procedure TFBaixaPlaquetasMadeireira.edtSerragemKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not(key in ['0'..'9', #8, #188]) then
    Key:= #0;
end;

end.
