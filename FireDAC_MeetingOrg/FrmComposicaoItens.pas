unit FrmComposicaoItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, acPNG;

type
  TFComposicaoItens = class(TForm)
    edtNomeProduto: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtQuantidade: TEdit;
    edtCustoUnitario: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    edtCustoTotal: TEdit;
    Label4: TLabel;
    edtPesoUnitario: TEdit;
    Label5: TLabel;
    edtPesoTotal: TEdit;
    Label6: TLabel;
    edtUnitario: TEdit;
    Label7: TLabel;
    edtTotal: TEdit;
    Label8: TLabel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    Image1: TImage;
    procedure edtQuantidadeExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure spbSalvarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Gravar: Boolean;
    function ConverteReais(Valor: String): Currency;
    function ConverteText(Valor: String): string;
  end;

var
  FComposicaoItens: TFComposicaoItens;

implementation

uses ConsProdutosVendas, ModulodeDados, DB;

{$R *.dfm}

function TFComposicaoItens.ConverteReais(Valor: String): Currency;
begin
   while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));  
end;

function TFComposicaoItens.ConverteText(Valor: String): string;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= Trim(Valor);
end;

procedure TFComposicaoItens.edtQuantidadeExit(Sender: TObject);
begin
  edtQuantidade.Text:= FloatToStrF(ConverteReais(edtQuantidade.Text),ffNumber,12,3);
  edtCustoTotal.Text:= FloatToStrF(ConverteReais(edtCustoUnitario.Text) * ConverteReais(edtQuantidade.text),ffNumber,12,2);
  edtPesoTotal.Text:= FloatToStrF(ConverteReais(edtPesoUnitario.Text) * ConverteReais(edtQuantidade.text),ffNumber,12,6);
  edtTotal.Text:= FloatToStrF(ConverteReais(edtUnitario.Text) * ConverteReais(edtQuantidade.text),ffNumber,12,2);
end;

procedure TFComposicaoItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TFComposicaoItens.spbSalvarClick(Sender: TObject);
begin
  if edtNomeProduto.text = '' then
  begin
    ShowMessage('Selecione um produto!');
    Exit;
  end;

  if (edtQuantidade.Text = '0,000') or (edtQuantidade.Text = '') then
  begin
    ShowMessage('Selecione a quantidade válida!');
    edtQuantidade.SetFocus;
    Exit;
  end;

  edtQuantidadeExit(Sender);
  Gravar:= True;
  Close;
end;

procedure TFComposicaoItens.spbCancelarClick(Sender: TObject);
begin
  Gravar:= False;
  Close;
end;

procedure TFComposicaoItens.FormCreate(Sender: TObject);
begin
  Gravar:= False;
end;

procedure TFComposicaoItens.Image1Click(Sender: TObject);
begin
  try
    FormConsProdutosVendas:= TFormConsProdutosVendas.Create(nil);
    FormConsProdutosVendas.ShowModal;
  finally
    edtNomeProduto.Tag:= DM.Sds_produtos_cCODIGO.Value;
    edtNomeProduto.Hint:= DM.Sds_produtos_cDESC_UNIDADE.Value;
    edtNomeProduto.Text:= DM.Sds_produtos_cDESCRICAO.Value;
    edtCustoUnitario.Text:= FloatToStrF(DM.Sds_produtos_cPRECO_CUSTO.AsCurrency,ffNumber,12,2);
    edtCustoTotal.Text:= FloatToStrF(DM.Sds_produtos_cPRECO_VENDA.AsCurrency * ConverteReais(edtQuantidade.Text),ffNumber,12,2);
    edtPesoUnitario.Text:= FloatToStrF(DM.Sds_produtos_cPESOLIQUIDO.AsCurrency,ffNumber,12,3);
    edtPesoTotal.Text:= FloatToStrF(DM.Sds_produtos_cPESOBRUTO.AsCurrency,ffNumber,12,3);
    edtUnitario.Text:= FloatToStrF(DM.Sds_produtos_cPRECO_VENDA.AsCurrency,ffNumber,12,2);
    edtTotal.Text:= FloatToStrF(DM.Sds_produtos_cPRECO_VENDA.AsCurrency * ConverteReais(edtQuantidade.Text),ffNumber,12,2);

    FreeAndNil(FormConsProdutosVendas);
  end;
end;

end.
