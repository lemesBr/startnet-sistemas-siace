unit FormRelatorioEstoqueProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Buttons, ExtCtrls,
  StdCtrls, Mask, rxToolEdit;

type
  TFRelatorioEstoqueProduto = class(TForm)
    edtFim: TDateEdit;
    Label2: TLabel;
    edtIni: TDateEdit;
    Label1: TLabel;
    Bevel2: TBevel;
    spbRelatorioContrato: TSpeedButton;
    qrRel: TFDQuery;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    qrRelDATA: TDateField;
    qrRelFRACAO: TIntegerField;
    qrRelESTOQUE_ANTERIOR: TBCDField;
    qrRelQUANTIDADE: TBCDField;
    qrRelESTOQUE_POSTERIOR: TBCDField;
    qrRelSITUACAO_ESTOQUE: TIntegerField;
    qrRelOPERACAO: TStringField;
    qrRelACAO_BD: TStringField;
    qrRelSITUACAO_ESTOQUE_OLD: TIntegerField;
    qrRelCOD_VENDA: TIntegerField;
    qrRelCOD_COMPRA: TIntegerField;
    qrRelHISTORICO: TStringField;
    qrRelHORA: TTimeField;
    qrRelNOME_RS: TStringField;
    qrRelNOME_PRODUTO: TStringField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
    Bevel1: TBevel;
    lblCliente: TLabel;
    edtProduto: TEdit;
    BtnConsPro: TSpeedButton;
    procedure BtnConsProClick(Sender: TObject);
    procedure spbRelatorioContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioEstoqueProduto: TFRelatorioEstoqueProduto;

implementation

uses DMOS1, ModuleDados1, ConsProdutos, ModulodeDados;

{$R *.dfm}

procedure TFRelatorioEstoqueProduto.BtnConsProClick(Sender: TObject);
begin
  Application.CreateForm(TFormConsProdutos, FormConsProdutos);
  FormConsProdutos.showmodal;
  edtProduto.Text:= dm.SDS_PRODUTOSDESCRICAO.AsString;
  edtProduto.Tag:= dm.SDS_PRODUTOSCODIGO.AsInteger;
end;

procedure TFRelatorioEstoqueProduto.spbRelatorioContratoClick(
  Sender: TObject);
begin
  if edtProduto.Text <> '' then
  begin
    frxReport.LoadFromFile('C:\siace\rel\RelatorioEstoquePorProduto.fr3');
    qrRel.Close;
    qrRel.ParamByName('DTINI').AsDate:= edtIni.Date;
    qrRel.ParamByName('DTFIM').AsDate:= edtFim.Date;
    qrRel.ParamByName('ID').Asinteger:= edtProduto.tag;
    qrRel.Open;
    frxReport.ShowReport;
  end
  else
    ShowMessage('É necessário selecionar um Produto!');
end;

end.
