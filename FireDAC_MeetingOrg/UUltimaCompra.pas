unit UUltimaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls, AlignEdit, DB,
  IBCustomDataSet, IBQuery;

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
    QCompras: TIBQuery;
    QUltimaVenda: TIBQuery;
    Label49: TLabel;
    Label90: TLabel;
    LCOO: TLabel;
    LNFSaida: TLabel;
    QUltimaVendaQUANTIDADE: TIBBCDField;
    QUltimaVendaPRECO_UNITARIO: TIBBCDField;
    QUltimaVendaDATA_PEDIDO: TDateField;
    QUltimaVendaN_CUPOM: TIBStringField;
    QUltimaVendaNUM_NOTA: TIntegerField;
    QUltimaVendaNOME_RS: TIBStringField;
    QComprasCODIGO_ITEM: TIntegerField;
    QComprasCODIGO_PRODUTO: TIntegerField;
    QComprasCODIGO_BARRAS: TIBStringField;
    QComprasCODIGO_NOTA: TIntegerField;
    QComprasDESCRICAO: TIBStringField;
    QComprasNCM_SH: TIBStringField;
    QComprasCST: TIBStringField;
    QComprasCFOP: TIBStringField;
    QComprasDESC_UNIDADE: TIBStringField;
    QComprasQUANTIDADE: TIBBCDField;
    QComprasVALOR_UNI: TIBBCDField;
    QComprasVALOR_DESC: TIBBCDField;
    QComprasTOTAL_ITEM: TIBBCDField;
    QComprasDATA: TDateField;
    QComprasBASE_ICMS: TIBBCDField;
    QComprasVALOR_ICMS: TIBBCDField;
    QComprasVALOR_IPI: TIBBCDField;
    QComprasPERC_ICMS: TIBBCDField;
    QComprasPERC_IPI: TIBBCDField;
    QComprasPRECO_VENDA: TIBBCDField;
    QComprasPRECO_VENDA2: TIBBCDField;
    QComprasDATA_VALIDADE: TDateField;
    QComprasDATA_FABRICACAO: TDateField;
    QComprasFRACAO: TIntegerField;
    QComprasQUANT_FRACIONADA: TIBBCDField;
    QComprasLOTE_MED: TIBStringField;
    QComprasMARG_LUCRO: TIBBCDField;
    QComprasATIVO: TIBStringField;
    QComprasBASE_ICMS_ST: TIBBCDField;
    QComprasALIC_ICMS_ST: TIBBCDField;
    QComprasVALOR_ICMS_ST: TIBBCDField;
    QComprasCOD_EMPRESA: TIntegerField;
    QComprasIMOBILZ: TIBStringField;
    QComprasCODIGO_NOTA1: TIntegerField;
    QComprasNUM_NOTA: TIBStringField;
    QComprasSERIE_NF: TIBStringField;
    QComprasCFOP_NOTA: TIBStringField;
    QComprasDATA_EMISSAO: TDateField;
    QComprasCOD_FORNECEDOR: TIntegerField;
    QComprasFORNECEDOR: TIBStringField;
    QComprasDATA_VENCIMENTO: TDateField;
    QComprasTOTAL_NOTA: TIBBCDField;
    QComprasCNPJ: TIBStringField;
    QComprasIE: TIBStringField;
    QComprasUSUARIO_CADASTRO: TIBStringField;
    QComprasDATA_CADASTRO: TDateField;
    QComprasOBSERVACOES: TBlobField;
    QComprasMES: TIBStringField;
    QComprasANO: TIBStringField;
    QComprasCHAVE_NFE: TIBStringField;
    QComprasPROTOCOLO_NFE: TIBStringField;
    QComprasBASE_CALCULO_ICMS: TIBBCDField;
    QComprasVALOR_ICMS1: TIBBCDField;
    QComprasBASE_CALC_ICMS_SUBST: TIBBCDField;
    QComprasVALOR_ICMS_SUBST: TIBBCDField;
    QComprasVALOR_FRETE: TIBBCDField;
    QComprasVALOR_SEGURO: TIBBCDField;
    QComprasVALOR_DESCONTO: TIBBCDField;
    QComprasVALOR_OUTRAS_DESPESAS: TIBBCDField;
    QComprasVALOR_IPI1: TIBBCDField;
    QComprasVALOR_TOTAL_PRODUTOS: TIBBCDField;
    QComprasVALOR_TOTAL_ITENS_NOTA: TIBBCDField;
    QComprasVLR_ICMS_GARANTIDO: TIBBCDField;
    QComprascod_pagto: TIntegerField;
    QComprasTP: TIBStringField;
    QComprasENDERECO_CLI_FORN: TIBStringField;
    QComprasEND_NUM_CLIENTE: TIBStringField;
    QComprasCOD_IBGE: TIBStringField;
    QComprasCEP_CLIENTE_FORN: TIBStringField;
    QComprasBAIRRO_CLIENTE_FORN: TIBStringField;
    QComprasTIPO_PESSOA: TIBStringField;
    QComprasTELEFONE: TIBStringField;
    QComprasCIDADE_CLIENTE_FORN: TIBStringField;
    QComprasUF_CLIENTE_FORN: TIBStringField;
    QComprasDESC_PAGTO: TIBStringField;
    QComprasVALOR_AVISTA: TIBBCDField;
    QComprasVALOR_PRAZO: TIBBCDField;
    QCompraspagamento: TIBStringField;
    QComprasMODELO: TIBStringField;
    QComprasEMITENTE: TIBStringField;
    QComprasVALOR_COFINS: TIBBCDField;
    QComprasVALOR_PIS: TIBBCDField;
    QComprasVALOR_PIS_ST: TIBBCDField;
    QComprasVALOR_COFIS_ST: TIBBCDField;
    QComprasPERC_ICMS1: TIBBCDField;
    QComprasCST1: TIBStringField;
    QComprasSUB_SERIE: TIBStringField;
    QComprasNOME: TIBStringField;
    QComprasRAZAO_SOCIAL: TIBStringField;
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
