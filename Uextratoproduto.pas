unit Uextratoproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RzDBGrid, aDvGlowButton, StdCtrls, sLabel, Mask,
  RXCtrls, ExtCtrls, FMTBcd, SqlExpr, XDBGrids, DB, Provider,
  DBClient, frxClass, frxDBSet, acPNG, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Buttons,
  RxToolEdit;

type
  TFormLogProduto = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    Dts_Estoque: TDataSource;
    Edit3: TEdit;
    Label2: TLabel;
    frxReport: TfrxReport;
    qrRel: TfrxDBDataset;
    Label3: TLabel;
    Label4: TLabel;
    imgSearchOrigem: TImage;
    edtProduto: TEdit;
    Bevel1: TBevel;
    edtDataInicial: TDateEdit;
    edtDataFinal: TDateEdit;
    Image1: TImage;
    Label1: TLabel;
    Label5: TLabel;
    qrEstoque: TFDQuery;
    qrEstoqueUSUARIO: TStringField;
    qrEstoqueID_EMPRESA: TIntegerField;
    qrEstoqueID_FILIAL: TIntegerField;
    qrEstoqueID_PRODUTO: TIntegerField;
    qrEstoqueID_OCORRENCIA: TIntegerField;
    qrEstoqueTIPO_ALTERACAO: TSmallintField;
    qrEstoqueDATA_HORA: TDateField;
    qrEstoqueID_USUARIO: TIntegerField;
    qrEstoqueP_COMPRA_ANT: TBCDField;
    qrEstoqueP_CUSTO_ANT: TBCDField;
    qrEstoqueP_CUSTO_MEDIO_ANT: TBCDField;
    qrEstoqueP_VENDA_ANT: TBCDField;
    qrEstoqueP_COMPRA_NOVO: TBCDField;
    qrEstoqueP_CUSTO_NOVO: TBCDField;
    qrEstoqueP_CUSTO_MEDIO_NOVO: TBCDField;
    qrEstoqueP_VENDA_NOVO: TBCDField;
    spbImprimir: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure imgSearchOrigemClick(Sender: TObject);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image1Click(Sender: TObject);
    procedure spbImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogProduto: TFormLogProduto;

implementation

uses ModulodeDados, ConsProdutos;

{$R *.dfm}

procedure TFormLogProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormLogProduto:= NIL;
end;

procedure TFormLogProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#27 then
    CLOSE;
end;

procedure TFormLogProduto.imgSearchOrigemClick(Sender: TObject);
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

procedure TFormLogProduto.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    imgSearchOrigemClick(Sender);
end;

procedure TFormLogProduto.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFormLogProduto.Image1Click(Sender: TObject);
begin
  Dts_Estoque.DataSet.Filtered:= False;
  Dts_Estoque.DataSet.Filter:= 'DATA_HORA BETWEEN ' + QuotedStr(DateToStr(edtDataInicial.date)) +
  'AND ' + QuotedStr(DateToStr(edtDataFinal.date));
  Dts_Estoque.DataSet.Filtered:= True;
end;

procedure TFormLogProduto.spbImprimirClick(Sender: TObject);
begin
  try
    frxReport.LoadFromFile('C:\siace\rel\relatorioExtratoEstoque02.fr3');
    frxReport.variables['NOME_PRODUTO']:= QuotedStr(edtProduto.text);
    frxReport.variables['CODIGO_PRODUTO']:= QuotedStr(InttoStr(edtProduto.Tag));
    frxReport.ShowReport;
  except
    Application.MessageBox('Erro ao Tentar Imprimir. Contate o Suporte!','Atenção',MB_ICONWARNING);
  end;
end;

end.
