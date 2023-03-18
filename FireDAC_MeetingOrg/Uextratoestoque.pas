unit Uextratoestoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzDBGrid, aDvGlowButton, StdCtrls, sLabel, Mask,
  RXCtrls, ExtCtrls, FMTBcd, SqlExpr, XDBGrids, DB, Provider,
  DBClient, frxClass, frxDBSet, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, acPNG,
  RxToolEdit;

type
  TFormLogEstoque = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    Dts_Estoque: TDataSource;
    frxReport: TfrxReport;
    qrRel: TfrxDBDataset;
    spbImprimir: TSpeedButton;
    qrEstoque: TFDQuery;
    XDBGrid1: TDBGrid;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    imgSearchOrigem: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    edtProduto: TEdit;
    edtDataInicial: TDateEdit;
    edtDataFinal: TDateEdit;
    qrEstoqueUSUARIO: TStringField;
    qrEstoqueID_EMPRESA: TIntegerField;
    qrEstoqueID_FILIAL: TIntegerField;
    qrEstoqueID_AJUSTE: TIntegerField;
    qrEstoqueID_PRODUTO: TIntegerField;
    qrEstoqueID_LOTE: TStringField;
    qrEstoqueID_PRODUTO_SERIE: TStringField;
    qrEstoqueDATA: TDateField;
    qrEstoqueID_USUARIO: TIntegerField;
    qrEstoqueID_MOVIMENTO: TIntegerField;
    qrEstoqueFRACAO: TIntegerField;
    qrEstoqueESTOQUE_ANTERIOR: TBCDField;
    qrEstoqueQUANTIDADE: TBCDField;
    qrEstoqueESTOQUE_POSTERIOR: TBCDField;
    qrEstoqueSITUACAO_ESTOQUE: TIntegerField;
    qrEstoqueOPERACAO: TStringField;
    qrEstoqueACAO_BD: TStringField;
    qrEstoqueSITUACAO_ESTOQUE_OLD: TIntegerField;
    qrEstoqueCOD_VENDA: TIntegerField;
    qrEstoqueCOD_COMPRA: TIntegerField;
    qrEstoqueHISTORICO: TStringField;
    qrEstoqueHORA: TTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure spbImprimirClick(Sender: TObject);
    procedure imgSearchOrigemClick(Sender: TObject);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogEstoque: TFormLogEstoque;

implementation

uses ModulodeDados, ConsProdutos;

{$R *.dfm}

procedure TFormLogEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormLogEstoque:= NIL;
end;

procedure TFormLogEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#27 then
CLOSE;
end;

procedure TFormLogEstoque.spbImprimirClick(Sender: TObject);
begin
  try
    frxReport.LoadFromFile('\siace\rel\relatorioExtratoEstoque01.fr3');
    frxReport.variables['NOME_PRODUTO']:= QuotedStr(edtProduto.Text);
    frxReport.ShowReport;
  except
    ShowMessage('Erro ao tentar Imprimir!');
  end;
end;

procedure TFormLogEstoque.imgSearchOrigemClick(Sender: TObject);
begin
  try
    FormConsProdutos:=TFormConsProdutos.Create(self);
    FormConsProdutos.ShowModal;
  finally
    if DM.SDS_PRODUTOS.Active = True then
    begin
      if DM.SDS_PRODUTOS.RecordCount > 0 then
      begin
        edtProduto.text := DM.SDS_PRODUTOSDESCRICAO.Text;
        Edit3.TEXT := DM.SDS_PRODUTOSESTOQUE.Text;
        edtProduto.Tag:= DM.SDS_PRODUTOSCODIGO.AsInteger;

        qrEstoque.Close;
        qrEstoque.Params.ParamByName('cod_pro').AsINTEGER :=  edtProduto.Tag;
        qrEstoque.Open;
      end;
    end;
    FreeAndNil(FormConsProdutos);
  end;
end;

procedure TFormLogEstoque.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    imgSearchOrigemClick(Sender);
end;

procedure TFormLogEstoque.Image1Click(Sender: TObject);
begin
  Dts_Estoque.DataSet.Filtered:= False;
  Dts_Estoque.DataSet.Filter:= 'DATA BETWEEN ' + QuotedStr(DateToStr(edtDataInicial.date)) +
  'AND ' + QuotedStr(DateToStr(edtDataFinal.date));
  Dts_Estoque.DataSet.Filtered:= True;
end;

procedure TFormLogEstoque.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //Se o DataSorce Não for Vazio
  if not TDBGrid(Sender).DataSource.DataSet.IsEmpty then
  begin
    TDBGrid(Sender).Canvas.Brush.Color:= clBtnFace;
    TDBGrid(Sender).Canvas.Font.Style:= [];
    TDBGrid(Sender).Canvas.Font.Color:= clBlack;

    //Passa Cores para Grid
    If gdselected in state then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= $00FFCF9F;
      TDBGrid(Sender).Canvas.Font.Style:= [];
      TDBGrid(Sender).Canvas.Font.Color:= clBlack;
    end;
  end;
end;

end.
