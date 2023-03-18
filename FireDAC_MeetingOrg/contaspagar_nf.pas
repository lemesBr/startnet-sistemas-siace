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
    qrnotaTOTAL_NOTA: TBCDField;
    qrnotaCNPJ: TStringField;
    qrnotaIE: TStringField;
    qrnotaUSUARIO_CADASTRO: TStringField;
    qrnotaDATA_CADASTRO: TDateField;
    qrnotaOBSERVACOES: TBlobField;
    qrnotaMES: TStringField;
    qrnotaANO: TStringField;
    qrnotaCHAVE_NFE: TStringField;
    qrnotaPROTOCOLO_NFE: TStringField;
    qrnotaBASE_CALCULO_ICMS: TBCDField;
    qrnotaVALOR_ICMS: TBCDField;
    qrnotaBASE_CALC_ICMS_SUBST: TBCDField;
    qrnotaVALOR_ICMS_SUBST: TBCDField;
    qrnotaVALOR_FRETE: TBCDField;
    qrnotaVALOR_SEGURO: TBCDField;
    qrnotaVALOR_DESCONTO: TBCDField;
    qrnotaVALOR_OUTRAS_DESPESAS: TBCDField;
    qrnotaVALOR_IPI: TBCDField;
    qrnotaVALOR_TOTAL_PRODUTOS: TBCDField;
    qrnotaVALOR_TOTAL_ITENS_NOTA: TBCDField;
    qrnotaVLR_ICMS_GARANTIDO: TBCDField;
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
    qrnotaVALOR_AVISTA: TBCDField;
    qrnotaVALOR_PRAZO: TBCDField;
    qrnotapagamento: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaEMITENTE: TStringField;
    qrnotaVALOR_COFINS: TBCDField;
    qrnotaVALOR_PIS: TBCDField;
    qrnotaVALOR_PIS_ST: TBCDField;
    qrnotaVALOR_COFIS_ST: TBCDField;
    qrnotaPERC_ICMS: TBCDField;
    qrnotaCST: TStringField;
    qrnotaSUB_SERIE: TStringField;
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
    qritemVALOR_UNI: TBCDField;
    qritemVALOR_DESC: TBCDField;
    qritemTOTAL_ITEM: TBCDField;
    qritemDATA: TDateField;
    qritemBASE_ICMS: TBCDField;
    qritemVALOR_ICMS: TBCDField;
    qritemVALOR_IPI: TBCDField;
    qritemPERC_ICMS: TBCDField;
    qritemPERC_IPI: TBCDField;
    qritemPRECO_VENDA: TBCDField;
    qritemPRECO_VENDA2: TBCDField;
    qritemDATA_VALIDADE: TDateField;
    qritemDATA_FABRICACAO: TDateField;
    qritemFRACAO: TIntegerField;
    qritemQUANT_FRACIONADA: TBCDField;
    qritemLOTE_MED: TStringField;
    qritemMARG_LUCRO: TBCDField;
    qritemATIVO: TStringField;
    qritemBASE_ICMS_ST: TBCDField;
    qritemALIC_ICMS_ST: TBCDField;
    qritemVALOR_ICMS_ST: TBCDField;
    qritemCOD_EMPRESA: TIntegerField;
    qritemIMOBILZ: TStringField;
    qritemBASE_PIS: TBCDField;
    qritemPERC_PIS: TBCDField;
    qritemVALOR_PIS: TBCDField;
    qritemBASE_COFINS: TBCDField;
    qritemPERC_COFINS: TBCDField;
    qritemVALOR_COFINS: TBCDField;
    qritemBASE_IPI: TBCDField;
    A1: TMenuItem;
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
               EdtCusto.Text       := qritemVALOR_UNI.AsString;
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


