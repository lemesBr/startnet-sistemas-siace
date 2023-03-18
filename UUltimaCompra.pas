unit UUltimaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls, AlignEdit, DB,
  IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmUltimaCompra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    GroupBox7: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    LDataEmissao: TLabel;
    LFornec: TLabel;
    LNF: TLabel;
    LQuantCompra: TLabel;
    LUnitCompra: TLabel;
    LFrete: TLabel;
    LICMS: TLabel;
    LIPI: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    LVlDesconto: TLabel;
    LVlAcrescimo: TLabel;
    Label58: TLabel;
    LDataEntrada: TLabel;
    Label68: TLabel;
    LVlSubTrib: TLabel;
    Label69: TLabel;
    LEmpresa: TLabel;
    GroupBox8: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    LDataVenda: TLabel;
    LCliente: TLabel;
    LQuantVenda: TLabel;
    LUnitVenda: TLabel;
    GroupBox9: TGroupBox;
    BtnPrimeiro: TSpeedButton;
    BtnAnterior: TSpeedButton;
    BtnProximo: TSpeedButton;
    BtnUltimo: TSpeedButton;
    EdtCodPro: TAlignEdit;
    EdtNomePro: TEdit;
    QCompras: TFDQuery;
    QUltimaVenda: TFDQuery;
    Label49: TLabel;
    Label90: TLabel;
    LCOO: TLabel;
    LNFSaida: TLabel;
    QUltimaVendaQUANTIDADE: TBCDField;
    QUltimaVendaPRECO_UNITARIO: TFMTBCDField;
    QUltimaVendaDATA_PEDIDO: TDateField;
    QUltimaVendaN_CUPOM: TStringField;
    QUltimaVendaNUM_NOTA: TIntegerField;
    QUltimaVendaNOME_RS: TStringField;
    QComprasCODIGO_ITEM: TIntegerField;
    QComprasCODIGO_PRODUTO: TIntegerField;
    QComprasCODIGO_BARRAS: TStringField;
    QComprasCODIGO_NOTA: TIntegerField;
    QComprasDESCRICAO: TStringField;
    QComprasNCM_SH: TStringField;
    QComprasCST: TStringField;
    QComprasCFOP: TStringField;
    QComprasDESC_UNIDADE: TStringField;
    QComprasQUANTIDADE: TBCDField;
    QComprasVALOR_UNI: TBCDField;
    QComprasVALOR_DESC: TFMTBCDField;
    QComprasTOTAL_ITEM: TFMTBCDField;
    QComprasDATA: TDateField;
    QComprasBASE_ICMS: TFMTBCDField;
    QComprasVALOR_ICMS: TFMTBCDField;
    QComprasVALOR_IPI: TFMTBCDField;
    QComprasPERC_ICMS: TFMTBCDField;
    QComprasPERC_IPI: TFMTBCDField;
    QComprasPRECO_VENDA: TFMTBCDField;
    QComprasPRECO_VENDA2: TFMTBCDField;
    QComprasDATA_VALIDADE: TDateField;
    QComprasDATA_FABRICACAO: TDateField;
    QComprasFRACAO: TIntegerField;
    QComprasQUANT_FRACIONADA: TBCDField;
    QComprasLOTE_MED: TStringField;
    QComprasMARG_LUCRO: TFMTBCDField;
    QComprasATIVO: TStringField;
    QComprasBASE_ICMS_ST: TFMTBCDField;
    QComprasALIC_ICMS_ST: TFMTBCDField;
    QComprasVALOR_ICMS_ST: TFMTBCDField;
    QComprasCOD_EMPRESA: TIntegerField;
    QComprasIMOBILZ: TStringField;
    QComprasBASE_PIS: TFMTBCDField;
    QComprasPERC_PIS: TFMTBCDField;
    QComprasVALOR_PIS: TFMTBCDField;
    QComprasBASE_COFINS: TFMTBCDField;
    QComprasPERC_COFINS: TFMTBCDField;
    QComprasVALOR_COFINS: TFMTBCDField;
    QComprasBASE_IPI: TFMTBCDField;
    QComprasUN_FRACAO: TStringField;
    QComprasITEM: TIntegerField;
    QComprasCODFORNECEDOR: TIntegerField;
    QComprasNUM_NOTA: TStringField;
    QComprasICMS_RETIDO: TStringField;
    QComprasSUBTOTAL: TFMTBCDField;
    QComprasDESCONTO_P: TFMTBCDField;
    QComprasICMS_REDUCAO: TFMTBCDField;
    QComprasICMS_VALORRETIDO: TFMTBCDField;
    QComprasICMS_ISENTO: TFMTBCDField;
    QComprasICMS_NAOTRIBUTADO: TFMTBCDField;
    QComprasIPI_TIPO: TStringField;
    QComprasTIPO: TIntegerField;
    QComprasFRETE: TFMTBCDField;
    QComprasOUTRAS: TFMTBCDField;
    QComprasSEGURO: TFMTBCDField;
    QComprasCLASSIFICACAO_FISCAL: TStringField;
    QComprasSUB_PRODUTOS: TFMTBCDField;
    QComprasITEM_ESPECIAL_VALOR: TFMTBCDField;
    QComprasICMS_OUTRAS: TFMTBCDField;
    QComprasALTERA_ITEM: TIntegerField;
    QComprasCREDITO_ICMS: TFMTBCDField;
    QComprasCREDITO_ICMS_BASE: TFMTBCDField;
    QComprasPMARGEM: TSingleField;
    QComprasPRECO_CUSTO: TFMTBCDField;
    QComprasCODLANCAMENTO: TStringField;
    QComprasCODIGO_NOTA_1: TIntegerField;
    QComprasNUM_NOTA_1: TStringField;
    QComprasSERIE_NF: TStringField;
    QComprasCFOP_NOTA: TStringField;
    QComprasDATA_EMISSAO: TDateField;
    QComprasCOD_FORNECEDOR: TIntegerField;
    QComprasFORNECEDOR: TStringField;
    QComprasDATA_VENCIMENTO: TDateField;
    QComprasTOTAL_NOTA: TFMTBCDField;
    QComprasCNPJ: TStringField;
    QComprasIE: TStringField;
    QComprasUSUARIO_CADASTRO: TStringField;
    QComprasDATA_CADASTRO: TDateField;
    QComprasOBSERVACOES: TBlobField;
    QComprasMES: TStringField;
    QComprasANO: TStringField;
    QComprasCHAVE_NFE: TStringField;
    QComprasPROTOCOLO_NFE: TStringField;
    QComprasBASE_CALCULO_ICMS: TFMTBCDField;
    QComprasVALOR_ICMS_1: TFMTBCDField;
    QComprasBASE_CALC_ICMS_SUBST: TFMTBCDField;
    QComprasVALOR_ICMS_SUBST: TFMTBCDField;
    QComprasVALOR_FRETE: TFMTBCDField;
    QComprasVALOR_SEGURO: TFMTBCDField;
    QComprasVALOR_DESCONTO: TFMTBCDField;
    QComprasVALOR_OUTRAS_DESPESAS: TFMTBCDField;
    QComprasVALOR_IPI_1: TFMTBCDField;
    QComprasVALOR_TOTAL_PRODUTOS: TFMTBCDField;
    QComprasVALOR_TOTAL_ITENS_NOTA: TFMTBCDField;
    QComprasVLR_ICMS_GARANTIDO: TFMTBCDField;
    QComprascod_pagto: TIntegerField;
    QComprasTP: TStringField;
    QComprasENDERECO_CLI_FORN: TStringField;
    QComprasEND_NUM_CLIENTE: TStringField;
    QComprasCOD_IBGE: TStringField;
    QComprasCEP_CLIENTE_FORN: TStringField;
    QComprasBAIRRO_CLIENTE_FORN: TStringField;
    QComprasTIPO_PESSOA: TStringField;
    QComprasTELEFONE: TStringField;
    QComprasCIDADE_CLIENTE_FORN: TStringField;
    QComprasUF_CLIENTE_FORN: TStringField;
    QComprasDESC_PAGTO: TStringField;
    QComprasVALOR_AVISTA: TFMTBCDField;
    QComprasVALOR_PRAZO: TFMTBCDField;
    QCompraspagamento: TStringField;
    QComprasMODELO: TStringField;
    QComprasEMITENTE: TStringField;
    QComprasVALOR_COFINS_1: TFMTBCDField;
    QComprasVALOR_PIS_1: TFMTBCDField;
    QComprasVALOR_PIS_ST: TFMTBCDField;
    QComprasVALOR_COFIS_ST: TFMTBCDField;
    QComprasPERC_ICMS_1: TFMTBCDField;
    QComprasCST_1: TStringField;
    QComprasSUB_SERIE: TStringField;
    QComprasTRANSP_NOME: TStringField;
    QComprasTRANSP_PLACA: TStringField;
    QComprasTRANSP_PLACAUF: TStringField;
    QComprasTRANSP_IE: TStringField;
    QComprasTRANSP_CNPJ: TStringField;
    QComprasTRANSP_ENDERECO: TStringField;
    QComprasTRANSP_CIDADE: TStringField;
    QComprasTRANSP_UF: TStringField;
    QComprasTRANSP_QTDE: TFMTBCDField;
    QComprasTRANSP_ESPECIE: TStringField;
    QComprasTRANSP_MARCA: TStringField;
    QComprasTRANSP_NUMERO: TStringField;
    QComprasTRANSP_PESOBRUTO: TFMTBCDField;
    QComprasTRANSP_PESOLIQUIDO: TFMTBCDField;
    QComprasOBS1: TStringField;
    QComprasOBS2: TStringField;
    QComprasOBS3: TStringField;
    QComprasOBS4: TStringField;
    QComprasOBS5: TStringField;
    QComprasOBS6: TStringField;
    QComprasOBS7: TStringField;
    QComprasOBS8: TStringField;
    QComprasSITUACAO: TIntegerField;
    QComprasITENS: TIntegerField;
    QComprasTIPO_1: TStringField;
    QComprasNOTA_FISCAL: TStringField;
    QComprasICMS_ISENTO_1: TFMTBCDField;
    QComprasICMS_OUTRAS_1: TFMTBCDField;
    QComprasDESCONTO_INCIDENTE: TIntegerField;
    QComprasITEM_FRETE_VALOR: TFMTBCDField;
    QComprasITEM_FRETE_BASE: TFMTBCDField;
    QComprasITEM_FRETE_ALIQUOTA: TFMTBCDField;
    QComprasITEM_FRETE_ICMS: TFMTBCDField;
    QComprasITEM_SEGURO_VALOR: TFMTBCDField;
    QComprasITEM_SEGURO_BASE: TFMTBCDField;
    QComprasITEM_SEGURO_ALIQUOTA: TFMTBCDField;
    QComprasITEM_SEGURO_ICMS: TFMTBCDField;
    QComprasITEM_PIS_VALOR: TFMTBCDField;
    QComprasITEM_PIS_BASE: TFMTBCDField;
    QComprasITEM_PIS_ALIQUOTA: TFMTBCDField;
    QComprasITEM_PIS_ICMS: TFMTBCDField;
    QComprasITEM_COMPLEMENTO_VALOR: TFMTBCDField;
    QComprasITEM_COMPLEMENTO_BASE: TFMTBCDField;
    QComprasITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField;
    QComprasITEM_COMPLEMENTO_ICMS: TFMTBCDField;
    QComprasITEM_SERVICO_VALOR: TFMTBCDField;
    QComprasITEM_SERVICO_BASE: TFMTBCDField;
    QComprasITEM_SERVICO_ALIQUOTA: TFMTBCDField;
    QComprasITEM_SERVICO_ICMS: TFMTBCDField;
    QComprasITEM_OUTRAS_VALOR: TFMTBCDField;
    QComprasITEM_OUTRAS_BASE: TFMTBCDField;
    QComprasITEM_OUTRAS_ALIQUOTA: TFMTBCDField;
    QComprasITEM_OUTRAS_ICMS: TFMTBCDField;
    QComprasITEM_ESPECIAL_TOTAL: TFMTBCDField;
    QComprasITEM_ESPECIAL_VALOR_1: TFMTBCDField;
    QComprasBASEICMS_PRODUTOS: TIntegerField;
    QComprasCONF_ITEM_ESPECIAL: TFMTBCDField;
    QComprasCREDITO_ICMS_1: TFMTBCDField;
    QComprasOPERACAO: TStringField;
    QComprasINTEGRACAO: TIntegerField;
    QComprasAPROVEITA_CREDITO_ICMS: TStringField;
    QComprasCOD_EMPRESA_1: TIntegerField;
    QComprasICMSRETIDO: TFMTBCDField;
    QComprasPERC_ICMSRETIDO: TFMTBCDField;
    QComprasESPECIE: TStringField;
    QComprasCODREMETENTE: TIntegerField;
    QComprasREMETENTE: TStringField;
    QComprasVALOR_MERCADORIAS: TFMTBCDField;
    QComprasCONF_BASEICMS: TFMTBCDField;
    QComprasCONF_VALORICMS: TFMTBCDField;
    QComprasCONF_BASESUB: TFMTBCDField;
    QComprasCONF_VALORSUB: TFMTBCDField;
    QComprasCONF_FRETE: TFMTBCDField;
    QComprasCONF_SEGURO: TFMTBCDField;
    QComprasCONF_OUTRAS: TFMTBCDField;
    QComprasCONF_IPI: TFMTBCDField;
    QComprasCONF_DESCONTO: TFMTBCDField;
    QComprasCONF_TOTALPRODUTOS: TFMTBCDField;
    QComprasCONF_TOTALNOTA: TFMTBCDField;
    QComprasCONF_ICMSRETIDO: TFMTBCDField;
    QComprasCONF_ICMSREDITO_PERC: TFMTBCDField;
    QComprasCONFI_PIS: TFMTBCDField;
    QComprasCONF_COFINS: TFMTBCDField;
    QComprasCOD_CENTRO_CUSTO: TIntegerField;
    QComprasCOD_IMOVEL: TIntegerField;
    QComprasNOME: TStringField;
    QComprasRAZAO_SOCIAL: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUltimaCompra: TFrmUltimaCompra;

implementation
Uses ModulodeDados;
var sSqlCompras : string;

{$R *.dfm}

procedure TFrmUltimaCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TFrmUltimaCompra.FormShow(Sender: TObject);
var iCodigoVenda : integer;
begin
   iCodigoVenda:= 0;
   sSqlCompras:= QCompras.sql.Text;

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.Text:= 'SELECT MAX(CODIGO_ID) CODVENDA ' +
                        'FROM PEDIDOS_ITENS ' +
                        'WHERE CODIGO_PROD = :CODPRO AND COD_EMPRESA = :CODEMP ' +
                        'AND QNT_DEV IS NULL';
             Parambyname('codpro').AsInteger:= strtoint(EdtCodpro.text);;
             Parambyname('codemp').AsInteger:= iEmp;
             Open;
             iCodigoVenda:= fieldbyname('codvenda').AsInteger;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar o código da última venda');
     end;
   finally
     dm.QConsulta.Close;
   end;

   if iCodigoVenda > 0 then
      begin
         if dm.IBTransaction.Active then
            dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         try
           try
             with QUltimaVenda do
                begin
                   close;
                   Parambyname('codven').AsInteger:= iCodigoVenda;
                   Parambyname('codpro').AsInteger:= strtoint(EdtCodPro.text);
                   Parambyname('codemp').AsInteger:= iEmp;
                   open;

                   LDataVenda.Caption := FieldByName('data_pedido').AsString;
                   LCliente.Caption   := FieldByName('nome_rs').AsString;
                   LQuantVenda.Caption:= FieldByName('quantidade').AsString;
                   LUnitVenda.Caption := CurrToStrF(FieldByName('preco_unitario').AsCurrency, ffNumber, 2);
                   if fieldbyname('N_cupom').AsInteger > 0 then
                      LCOO.Caption    := fieldbyname('N_cupom').AsString
                   else
                      LCOO.Caption    := '';

                   if fieldbyname('num_nota').AsInteger > 0 then
                      LNFSaida.Caption:= fieldbyname('num_nota').AsString
                   else
                      LNFSaida.Caption:= '';
                end;
             dm.IBTransaction.Commit;
           except
             dm.IBTransaction.Rollback;
           end;
         finally
           QUltimaVenda.Close;
         end;
      end
   else
      begin
         LDataVenda.Caption  := '';
         LCliente.Caption    := '';
         LQuantVenda.Caption := '';
         LUnitVenda.Caption  := '';
         LCOO.Caption:= '';
         LNFSaida.Caption:= '';
      end;

   { compras }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with QCompras do
        begin
           close;
           sql.Clear;

           sql.Text:= sSqlCompras;
           sql.Add(' AND I.COD_EMPRESA = :CODEMP');
           sql.add(' ORDER BY DATA_EMISSAO');

           Parambyname('codemp').AsInteger:= iEmp;
           Parambyname('codpro').AsInteger:= strtoint(EdtCodPro.Text);
           open;
           if recordcount > 0 then
              BtnUltimo.Click
           else
              begin
                 QCompras.Close;
                 dm.IBTransaction.Commit;

                 BtnPrimeiro.Enabled  := false;
                 BtnProximo.Enabled   := false;
                 BtnAnterior.Enabled  := false;
                 BtnUltimo.Enabled    := false;

                 LEmpresa.Caption     := '';
                 LDataEmissao.Caption := '';
                 LDataEntrada.Caption := '';
                 LFornec.Caption      := '';
                 LNF.Caption          := '';
                 LQuantCompra.Caption := '';
                 LUnitCompra.Caption  := '';
                 LFrete.Caption       := '';
                 LVlDesconto.Caption  := '';
                 LVlAcrescimo.Caption := '';
                 LVlSubTrib.Caption   := '';
                 LICMS.Caption        := '';
                 LIPI.Caption         := '';
              end;
        end;

end;

procedure TFrmUltimaCompra.BtnPrimeiroClick(Sender: TObject);
var cTaxaFrete, cTaxaSubTrib, cTaxaAcres, cTaxaDesc : currency;
begin
   cTaxaFrete   := 0;
   cTaxaSubTrib := 0;
   cTaxaAcres   := 0;
   cTaxaDesc    := 0;

   if sender = BtnPrimeiro then
      QCompras.First
   else
      if sender = BtnAnterior then
         QCompras.Prior
      else
         if sender = BtnProximo then
            QCompras.Next
         else
            if sender  = BtnUltimo then
               QCompras.Last;

   if (QCompras.fieldbyname('valor_frete').AsCurrency > 0) then
      cTaxaFrete:= (QCompras.fieldbyname('valor_frete').AsCurrency * 100) / QCompras.fieldbyname('valor_total_produtos').AsCurrency
   else
      cTaxaFrete:= 0;
   if  (QCompras.fieldbyname('VALOR_ICMS_SUBST').AsCurrency > 0) then
      cTaxaSubTrib:= (QCompras.fieldbyname('VALOR_ICMS_SUBST').AsCurrency * 100) / (QCompras.fieldbyname('VALOR_TOTAL_PRODUTOS').AsCurrency - QCompras.fieldbyname('VALOR_ICMS_SUBST').AsCurrency  + QCompras.fieldbyname('valor_desconto').AsCurrency)
   else
      cTaxaSubTrib:= 0;
  { if QCompras.fieldbyname('acres_ent').AsCurrency > 0 then
      cTaxaAcres:= (QCompras.fieldbyname('acres_ent').AsCurrency * 100) / (QCompras.fieldbyname('VALOR_TOTAL_PRODUTOS').AsCurrency - QCompras.fieldbyname('valor_icms_sub').AsCurrency - QCompras.fieldbyname('acres_ent').AsCurrency + QCompras.fieldbyname('desc_ent').AsCurrency)
   else   }
      cTaxaAcres:= 0;
   if QCompras.fieldbyname('valor_desconto').AsCurrency > 0 then
      cTaxaDesc:= (QCompras.fieldbyname('valor_desconto').AsCurrency * 100) / (QCompras.fieldbyname('VALOR_TOTAL_PRODUTOS').AsCurrency - QCompras.fieldbyname('VALOR_ICMS_SUBST').AsCurrency  + QCompras.fieldbyname('valor_desconto').AsCurrency)
   else
      cTaxaDesc:= 0;

   LEmpresa.Caption      := QCompras.fieldbyname('razao_social').AsString;
   LDataEmissao.Caption  := QCompras.FieldByName('data_emissao').AsString;
   LDataEntrada.Caption  := QCompras.FieldByName('data').AsString;
   LFornec.Caption       := QCompras.FieldByName('fornecedor').AsString;
   LNF.Caption           := QCompras.FieldByName('num_nota').AsString;
   LQuantCompra.Caption  := QCompras.FieldByName('quantidade').AsString;
   LUnitCompra.Caption   := currtostrf(QCompras.FieldByName('valor_uni').AsCurrency, ffnumber, 2);
   LFrete.Caption        := currtostrf((QCompras.fieldbyname('valor_uni').AsCurrency * cTaxaFrete) / 100, ffnumber, 2);
   LVlDesconto.Caption   := currtostrf(QCompras.fieldbyname('valor_desc').AsCurrency +
                                                      ((QCompras.fieldbyname('valor_uni').AsCurrency * cTaxaDesc) / 100), ffnumber, 2);
   LVlAcrescimo.Caption  := '0';//currtostrf(QCompras.fieldbyname('valor_acrescimo').AsCurrency +
                                 //                     ((QCompras.fieldbyname('valor_uni').AsCurrency * cTaxaAcres) / 100), ffnumber, 2);
   LVlSubTrib.Caption    := currtostrf((QCompras.fieldbyname('valor_uni').AsCurrency * cTaxaSubTrib) / 100, ffnumber, 2);
   LICMS.Caption         := currtostrf(QCompras.FieldByName('perc_icms').AsCurrency, ffnumber, 2) + '%';
   LIPI.Caption          := currtostrf(QCompras.FieldByName('perc_ipi').AsCurrency, ffnumber, 2) + '%';

   if QCompras.bof then
      begin
         BtnPrimeiro.Enabled:= false;
         BtnAnterior.Enabled:= false;
         BtnProximo.Enabled := true;
         BtnUltimo.Enabled  := true;
      end
   else
      if QCompras.Eof then
         begin
            BtnPrimeiro.Enabled:= true;
            BtnAnterior.Enabled:= true;
            BtnProximo.Enabled := false;
            BtnUltimo.Enabled  := false;
         end
      else
         begin
            BtnPrimeiro.Enabled:= true;
            BtnAnterior.Enabled:= true;
            BtnProximo.Enabled := true;
            BtnUltimo.Enabled  := true;
         end;
end;

procedure TFrmUltimaCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   QCompras.Close;
   Action:= caFree;
end;

end.
