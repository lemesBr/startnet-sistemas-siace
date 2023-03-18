unit contaspagar_nf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, DB,  Grids, Wwdbigrd, Wwdbgrid, Menus,
  aDvGlowButton, RzEdit, RzDBEdit, XDBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvPanel;

type
  Tfrmcontaspagar_nf = class(TForm)
    Panel1: TAdvPanel;
    qrnota: TFDQuery;
    qritem: TFDQuery;
    qrfornecedor: TFDQuery;
    Bevel1: TBevel;
    Label1: TLabel;
    dsnota: TDataSource;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    wwDBGrid1: TXDBGrid;
    dsitem: TDataSource;
    qrproduto: TFDQuery;
    Panel2: TAdvPanel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit3: TRzDBNumericEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBNumericEdit5: TRzDBNumericEdit;
    RzDBNumericEdit6: TRzDBNumericEdit;
    RzDBNumericEdit7: TRzDBNumericEdit;
    RzDBNumericEdit8: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    Label5: TLabel;
    Label6: TLabel;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnotaCODIGO_NOTA: TIntegerField;
    qrnotaNUM_NOTA: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP_NOTA: TStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaCOD_FORNECEDOR: TIntegerField;
    qrnotaFORNECEDOR: TStringField;
    qrnotaDATA_VENCIMENTO: TDateField;
    qrnotaCNPJ: TStringField;
    qrnotaIE: TStringField;
    qrnotaUSUARIO_CADASTRO: TStringField;
    qrnotaDATA_CADASTRO: TDateField;
    qrnotaOBSERVACOES: TBlobField;
    qrnotaMES: TStringField;
    qrnotaANO: TStringField;
    qrnotaCHAVE_NFE: TStringField;
    qrnotaPROTOCOLO_NFE: TStringField;
    qritemCODIGO_ITEM: TIntegerField;
    qritemCODIGO_PRODUTO: TIntegerField;
    qritemCODIGO_BARRAS: TStringField;
    qritemCODIGO_NOTA: TIntegerField;
    qritemDESCRICAO: TStringField;
    qritemNCM_SH: TStringField;
    qritemCST: TStringField;
    qritemCFOP: TStringField;
    qritemDESC_UNIDADE: TStringField;
    qritemQUANTIDADE: TBCDField;
    A1: TMenuItem;
    qrnotaTOTAL_NOTA: TFMTBCDField;
    qrnotaBASE_CALCULO_ICMS: TFMTBCDField;
    qrnotaVALOR_ICMS: TFMTBCDField;
    qrnotaBASE_CALC_ICMS_SUBST: TFMTBCDField;
    qrnotaVALOR_ICMS_SUBST: TFMTBCDField;
    qrnotaVALOR_FRETE: TFMTBCDField;
    qrnotaVALOR_SEGURO: TFMTBCDField;
    qrnotaVALOR_DESCONTO: TFMTBCDField;
    qrnotaVALOR_OUTRAS_DESPESAS: TFMTBCDField;
    qrnotaVALOR_IPI: TFMTBCDField;
    qrnotaVALOR_TOTAL_PRODUTOS: TFMTBCDField;
    qrnotaVALOR_TOTAL_ITENS_NOTA: TFMTBCDField;
    qrnotaVLR_ICMS_GARANTIDO: TFMTBCDField;
    qrnotacod_pagto: TIntegerField;
    qrnotaTP: TStringField;
    qrnotaENDERECO_CLI_FORN: TStringField;
    qrnotaEND_NUM_CLIENTE: TStringField;
    qrnotaCOD_IBGE: TStringField;
    qrnotaCEP_CLIENTE_FORN: TStringField;
    qrnotaBAIRRO_CLIENTE_FORN: TStringField;
    qrnotaTIPO_PESSOA: TStringField;
    qrnotaTELEFONE: TStringField;
    qrnotaCIDADE_CLIENTE_FORN: TStringField;
    qrnotaUF_CLIENTE_FORN: TStringField;
    qrnotaDESC_PAGTO: TStringField;
    qrnotaVALOR_AVISTA: TFMTBCDField;
    qrnotaVALOR_PRAZO: TFMTBCDField;
    qrnotapagamento: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaEMITENTE: TStringField;
    qrnotaVALOR_COFINS: TFMTBCDField;
    qrnotaVALOR_PIS: TFMTBCDField;
    qrnotaVALOR_PIS_ST: TFMTBCDField;
    qrnotaVALOR_COFIS_ST: TFMTBCDField;
    qrnotaPERC_ICMS: TFMTBCDField;
    qrnotaCST: TStringField;
    qrnotaSUB_SERIE: TStringField;
    qrnotaTRANSP_NOME: TStringField;
    qrnotaTRANSP_PLACA: TStringField;
    qrnotaTRANSP_PLACAUF: TStringField;
    qrnotaTRANSP_IE: TStringField;
    qrnotaTRANSP_CNPJ: TStringField;
    qrnotaTRANSP_ENDERECO: TStringField;
    qrnotaTRANSP_CIDADE: TStringField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaTRANSP_QTDE: TFMTBCDField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaTRANSP_NUMERO: TStringField;
    qrnotaTRANSP_PESOBRUTO: TFMTBCDField;
    qrnotaTRANSP_PESOLIQUIDO: TFMTBCDField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaOBS4: TStringField;
    qrnotaOBS5: TStringField;
    qrnotaOBS6: TStringField;
    qrnotaOBS7: TStringField;
    qrnotaOBS8: TStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TStringField;
    qrnotaNOTA_FISCAL: TStringField;
    qrnotaICMS_ISENTO: TFMTBCDField;
    qrnotaICMS_OUTRAS: TFMTBCDField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFMTBCDField;
    qrnotaITEM_FRETE_BASE: TFMTBCDField;
    qrnotaITEM_FRETE_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_FRETE_ICMS: TFMTBCDField;
    qrnotaITEM_SEGURO_VALOR: TFMTBCDField;
    qrnotaITEM_SEGURO_BASE: TFMTBCDField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_SEGURO_ICMS: TFMTBCDField;
    qrnotaITEM_PIS_VALOR: TFMTBCDField;
    qrnotaITEM_PIS_BASE: TFMTBCDField;
    qrnotaITEM_PIS_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_PIS_ICMS: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_BASE: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFMTBCDField;
    qrnotaITEM_SERVICO_VALOR: TFMTBCDField;
    qrnotaITEM_SERVICO_BASE: TFMTBCDField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_SERVICO_ICMS: TFMTBCDField;
    qrnotaITEM_OUTRAS_VALOR: TFMTBCDField;
    qrnotaITEM_OUTRAS_BASE: TFMTBCDField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_OUTRAS_ICMS: TFMTBCDField;
    qrnotaITEM_ESPECIAL_TOTAL: TFMTBCDField;
    qrnotaITEM_ESPECIAL_VALOR: TFMTBCDField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFMTBCDField;
    qrnotaCREDITO_ICMS: TFMTBCDField;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TStringField;
    qrnotaCOD_EMPRESA: TIntegerField;
    qrnotaICMSRETIDO: TFMTBCDField;
    qrnotaPERC_ICMSRETIDO: TFMTBCDField;
    qrnotaESPECIE: TStringField;
    qrnotaCODREMETENTE: TIntegerField;
    qrnotaREMETENTE: TStringField;
    qrnotaVALOR_MERCADORIAS: TFMTBCDField;
    qrnotaCONF_BASEICMS: TFMTBCDField;
    qrnotaCONF_VALORICMS: TFMTBCDField;
    qrnotaCONF_BASESUB: TFMTBCDField;
    qrnotaCONF_VALORSUB: TFMTBCDField;
    qrnotaCONF_FRETE: TFMTBCDField;
    qrnotaCONF_SEGURO: TFMTBCDField;
    qrnotaCONF_OUTRAS: TFMTBCDField;
    qrnotaCONF_IPI: TFMTBCDField;
    qrnotaCONF_DESCONTO: TFMTBCDField;
    qrnotaCONF_TOTALPRODUTOS: TFMTBCDField;
    qrnotaCONF_TOTALNOTA: TFMTBCDField;
    qrnotaCONF_ICMSRETIDO: TFMTBCDField;
    qrnotaCONF_ICMSREDITO_PERC: TFMTBCDField;
    qrnotaCONFI_PIS: TFMTBCDField;
    qrnotaCONF_COFINS: TFMTBCDField;
    qrnotaCOD_CENTRO_CUSTO: TIntegerField;
    qrnotaCOD_IMOVEL: TIntegerField;
    qritemVALOR_UNI: TBCDField;
    qritemVALOR_DESC: TFMTBCDField;
    qritemTOTAL_ITEM: TFMTBCDField;
    qritemDATA: TDateField;
    qritemBASE_ICMS: TFMTBCDField;
    qritemVALOR_ICMS: TFMTBCDField;
    qritemVALOR_IPI: TFMTBCDField;
    qritemPERC_ICMS: TFMTBCDField;
    qritemPERC_IPI: TFMTBCDField;
    qritemPRECO_VENDA: TFMTBCDField;
    qritemPRECO_VENDA2: TFMTBCDField;
    qritemDATA_VALIDADE: TDateField;
    qritemDATA_FABRICACAO: TDateField;
    qritemFRACAO: TIntegerField;
    qritemQUANT_FRACIONADA: TBCDField;
    qritemLOTE_MED: TStringField;
    qritemMARG_LUCRO: TFMTBCDField;
    qritemATIVO: TStringField;
    qritemBASE_ICMS_ST: TFMTBCDField;
    qritemALIC_ICMS_ST: TFMTBCDField;
    qritemVALOR_ICMS_ST: TFMTBCDField;
    qritemCOD_EMPRESA: TIntegerField;
    qritemIMOBILZ: TStringField;
    qritemBASE_PIS: TFMTBCDField;
    qritemPERC_PIS: TFMTBCDField;
    qritemVALOR_PIS: TFMTBCDField;
    qritemBASE_COFINS: TFMTBCDField;
    qritemPERC_COFINS: TFMTBCDField;
    qritemVALOR_COFINS: TFMTBCDField;
    qritemBASE_IPI: TFMTBCDField;
    qritemUN_FRACAO: TStringField;
    qritemITEM: TIntegerField;
    qritemCODFORNECEDOR: TIntegerField;
    qritemNUM_NOTA: TStringField;
    qritemICMS_RETIDO: TStringField;
    qritemSUBTOTAL: TFMTBCDField;
    qritemDESCONTO_P: TFMTBCDField;
    qritemICMS_REDUCAO: TFMTBCDField;
    qritemICMS_VALORRETIDO: TFMTBCDField;
    qritemICMS_ISENTO: TFMTBCDField;
    qritemICMS_NAOTRIBUTADO: TFMTBCDField;
    qritemIPI_TIPO: TStringField;
    qritemTIPO: TIntegerField;
    qritemFRETE: TFMTBCDField;
    qritemOUTRAS: TFMTBCDField;
    qritemSEGURO: TFMTBCDField;
    qritemCLASSIFICACAO_FISCAL: TStringField;
    qritemSUB_PRODUTOS: TFMTBCDField;
    qritemITEM_ESPECIAL_VALOR: TFMTBCDField;
    qritemICMS_OUTRAS: TFMTBCDField;
    qritemALTERA_ITEM: TIntegerField;
    qritemCREDITO_ICMS: TFMTBCDField;
    qritemCREDITO_ICMS_BASE: TFMTBCDField;
    qritemPMARGEM: TSingleField;
    qritemPRECO_CUSTO: TFMTBCDField;
    qritemCODLANCAMENTO: TStringField;
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure A1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_nf: Tfrmcontaspagar_nf;
  
implementation

uses ModulodeDados, Principal, UAltPreco, UFormacaoPreco;

{$R *.dfm}

procedure Tfrmcontaspagar_nf.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_nf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  frmcontaspagar_nf :=nil;
end;

procedure Tfrmcontaspagar_nf.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontaspagar_nf.wwDBGrid1DblClick(Sender: TObject);
begin
 iAuxCodPro:= qritemCODIGO_PRODUTO.AsInteger;
  // if iTipoEmp = 0 then
      begin
         Application.CreateForm(TFrmAltPreco, FrmAltPreco);
         FrmAltPreco.tag :=  2;
         with FrmAltPreco do
            begin
               LProduto.Caption    := qritemCODIGO_PRODUTO.AsString + ' - ' + qritemDESCRICAO.AsString;
               edtvalor.Text       := qritemPRECO_VENDA.AsString;
               edtpromocao.Text    := qritemPRECO_VENDA.AsString;
               EdtProgramado.Text  := qritemPRECO_VENDA2.AsString;
               EdtCusto.Text       := floattostr(qritemVALOR_UNI.asfloat / qritemfracao.AsFloat);
               Edit1.Text          := qritemNCM_SH.Text;
               showmodal;
               qritem.Refresh;
            end;
      end;
  { else
      begin
         Application.CreateForm(TFrmFormacaoPreco, FrmFormacaoPreco);
         FrmFormacaoPreco.EdtCodProd.Text  := qritemCODIGO_PRODUTO.AsString;
         FrmFormacaoPreco.EdtNomeProd.Text := qritemDESCRICAO.AsString;
         FrmFormacaoPreco.Tag:= 1;
         FrmFormacaoPreco.ShowModal;
      end; }
end;

procedure Tfrmcontaspagar_nf.A1Click(Sender: TObject);
begin
wwDBGrid1DblClick(Sender);
end;

end.


