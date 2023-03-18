unit TitulosBancarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, ExtCtrls, CellEditors,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLBoleto, RLPDFFilter, RLHTMLFilter,
  RLFilters, RLRichFilter, RxToolEdit;

type
  TFrmTitulosBancarios = class(TForm)
    Bevel1: TBevel;
    cbxBancoCedente: TComboBoxEditor;
    Bevel2: TBevel;
    edtValorDoc: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtValorDesconto: TEdit;
    Label3: TLabel;
    edtValorAcrecimos: TEdit;
    Label4: TLabel;
    edtValorJurosMora: TEdit;
    Label5: TLabel;
    edtValorPagoCliente: TEdit;
    Label6: TLabel;
    edtValorLiquidoRecebido: TEdit;
    rdgRegistro: TRadioGroup;
    Bevel3: TBevel;
    edtDataDocumento: TDateEdit;
    Label7: TLabel;
    edtDataVencimento: TDateEdit;
    Label8: TLabel;
    cbxLayout: TComboBox;
    Label9: TLabel;
    edtDataRecebimento: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bevel4: TBevel;
    edtBancoPortador1: TEdit;
    edtBancoPortador2: TEdit;
    edtBancoPortador3: TEdit;
    Label12: TLabel;
    edtQuantidade: TEdit;
    Label13: TLabel;
    Bevel5: TBevel;
    Label14: TLabel;
    cbxCliente: TComboBoxEditor;
    Bevel6: TBevel;
    edtSeuNumero: TEdit;
    Label15: TLabel;
    edtNossoNumero: TEdit;
    Label16: TLabel;
    edtDigitoNosso: TEdit;
    Label17: TLabel;
    Bevel7: TBevel;
    Label18: TLabel;
    mmObservacao: TMemo;
    spbConfirmar: TSpeedButton;
    spbCancelar: TSpeedButton;
    Label19: TLabel;
    rlbBoleto: TRLBTitulo;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBRemessa1: TRLBRemessa;
    procedure FormShow(Sender: TObject);
    procedure cbxBancoCedenteChange(Sender: TObject);
    procedure spbConfirmarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreparaTitulo;
    procedure PesquisaBanco(Pesquisa: String);
    function RemoveChar(Const Texto:String):String;
  public
    { Public declarations }
    ID_CREDIARIO: Integer;
    ID_CONTRATO: Integer;
    CHAVE: String;
  end;

var
  FrmTitulosBancarios: TFrmTitulosBancarios;

implementation

uses ModulodeDados, Udmcob,Ubibli1;


{$R *.dfm}


function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

procedure TFrmTitulosBancarios.PesquisaBanco(Pesquisa: String);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  if Pesquisa = '' then
    qr.SQL.Add('SELECT * FROM BOLETO')
  else
    qr.SQL.Add('SELECT * FROM BOLETO WHERE DESCRICAO LIKE ' + QuotedStr('%'+Pesquisa+'%'));
  qr.Open;

  cbxBancoCedente.Items.Clear;
  while not qr.Eof do
  begin
    cbxBancoCedente.Items.Add(qr.FieldByName('DESCRICAO').AsString);
    qr.Next;
  end;
  qr.Destroy;
end;

procedure TFrmTitulosBancarios.PreparaTitulo;
var
  qrCrediario,qrCliente: TFDQuery;
  I: Integer;
begin
  try
    if Self.Tag = 1 then
    begin
      qrCrediario:= TFDQuery.Create(nil);
      qrCrediario.Connection:= DM.Coneccao;
      qrCrediario.SQL.Add('SELECT * FROM CREDIARIO WHERE CODIGO = ' + IntToStr(ID_CREDIARIO));
      qrCrediario.Open;

      qrCrediario.Edit;
      qrCrediario.FieldByName('BANCO_PORTADOR').AsString:= edtBancoPortador1.Text;
      qrCrediario.FieldByName('CODIGOCEDENTE').AsString:=  edtBancoPortador2.Text;
      qrCrediario.FieldByName('ID_PORTADOR').AsString:=    edtBancoPortador2.Text;
      qrCrediario.FieldByName('COD_EMPRESA').AsString:=    DM.SDS_EmpresaCODIGO.Text;
      qrCrediario.FieldByName('TIPO').AsString:= 'BOL';
      qrCrediario.Post;

      for I:= 1 to StrToInt(edtQuantidade.text) do
      begin
        with rlbBoleto do
        begin
          NumeroDocumento   := 'Cont - ' + IntToStr(qrCrediario.FieldByName('ID_CONTRATO').asInteger);
          NossoNumero       := IntToStr(qrCrediario.FieldByName('NUMBOLETO1').AsInteger);
          Carteira          := dmcob.qryCedentesCarteira.AsString;
          DataDocumento     := qrCrediario.FieldByName('DATA_COMPRA').AsDateTime;
          DataProcessamento := now;
          DataVencimento    := qrCrediario.FieldByName('DATA_VENCIMENTO').AsDateTime;
          ValorDocumento    := qrCrediario.FieldByName('VALOR_COMPRA').AsCurrency;
          Instrucoes.Text   := mmObservacao.Text;
          LocalPagamento    := dmcob.qryCedentesLocal_pagamento.Value;
         {
          IF rdgRegistro.ItemIndex = 0 then
            Registro := '1'
          else
            Registro := '3';}

          if not dmcob.qryCedentes.Locate('CODIGO_BOLETO',qrCrediario.FieldByName('ID_PORTADOR').Value,[]) then
             Raise Exception.Create('Cedente não localizado');

          with Cedente do
          begin
            if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
              TipoInscricao := tiPessoaFisica {CPF}
            else
            if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
              TipoInscricao := tiPessoaJuridica {CNPJ}
            else
              TipoInscricao := tiOutro;

            NumeroCPFCGC        := dmcob.qryCedentesCNPJCEDENTE.Value;
            Nome                := dmcob.qryCedentesNomeCedente.Value +'-'+
                                   dmcob.qryCedentesCNPJCEDENTE.Value;
            CodigoCedente       := dmcob.qryCedentesCedenteCodigo.Value;
            DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;
            SacadorAvalista     := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;

            with Endereco do
            begin
              Rua             := dmcob.qryCedentesENDERECO.AsString;
              Endereco.Numero := dmcob.qryCedentesNumero.AsString;
              Complemento     := dmcob.qryCedentesComplemento.AsString;
              Bairro          := dmcob.qryCedentesBairro.AsString;
              Cidade          := dmcob.qryCedentesCidade.AsString;
              Estado          := dmcob.qryCedentesuf.AsString;
              CEP             := RemoveChar(dmcob.qryCedentesCEP.AsString);
              Email           := dmcob.qryCedentesEMail.AsString;
            end;

            with ContaBancaria do
            begin
              Banco.Codigo  := dmcob.qryCedentesBanco_Portador.AsString;
              CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
              DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
              NumeroConta   := dmcob.qryCedentesNumeroConta.AsString;
              DigitoConta   := dmcob.qryCedentesDigitoConta.AsString;
            end;
          end;

          qrCliente:= TFDQuery.Create(nil);
          qrCliente.Connection:= DM.Coneccao;
          qrCliente.SQL.Add('SELECT * FROM CLIENTES WHERE CODIGO = ' +
            IntToStr(qrCrediario.fieldbyname('CODIGO_CLIENTE').AsInteger));
          qrCliente.Open;

          if qrCliente.IsEmpty then
          begin
            qrCliente.Destroy;
            Raise Exception.Create('Cliente (sacado) não localizado');
          end;

          with Sacado do
          begin
            if AnsiUpperCase(qrCliente.FieldByName('TIPO').AsString) = 'F' then
              TipoInscricao :=  tiPessoaFisica
            else
            if AnsiUpperCase(qrCliente.FieldByName('TIPO').AsString) = 'J' then
              TipoInscricao := tiPessoaJuridica
            else
              TipoInscricao := tiOutro;

            NumeroCPFCGC := RemoveChar(qrCliente.FieldByName('CPF_CNPJ').AsString);
            Nome         := qrCliente.FieldByName('NOME_RS').AsString+' ('+
                            qrCliente.FieldByName('APELIDO').AsString+')'+'-'+
                            qrCliente.FieldByName('CPF_CNPJ').AsString;

            with Endereco do
            begin
              Rua         := qrCliente.FieldByName('ENDERECO').AsString;
              Numero      := qrCliente.FieldByName('NUMERO').AsString;
              Complemento := qrCliente.FieldByName('COMPLEMENTO').AsString+'fone: '+
                             qrCliente.FieldByName('TELEFONE').AsString;
              Bairro      := qrCliente.FieldByName('BAIRRO').AsString;
              Cidade      := qrCliente.FieldByName('CIDADE').AsString;
              Estado      := qrCliente.FieldByName('UF').AsString;
              CEP         := RemoveChar(qrCliente.FieldByName('CEP').AsString);
              Email       := qrCliente.FieldByName('EMAIL').AsString
            end;

            with ContaBancaria do
            begin
              Banco.Codigo  := '';
              CodigoAgencia := '';
              DigitoAgencia := '';
              NumeroConta   := '';
              DigitoConta   := '';
            end;
          end;
        end;
        
        rlbBoleto.InsertRecord;
      end;

      qrCrediario.Edit;
      if rdgRegistro.ItemIndex = 0 then
        qrCrediario.FieldByName('COM_REGISTRO').asString:= '1'
      else
        qrCrediario.FieldByName('COM_REGISTRO').asString:= '0';

      qrCrediario.FieldByName('NumBoleto').asString:=
          FormatDateTime('yy',now) + dmcob.sds_cedentesTp_Cobranca.Value +
          Formatar(rlbBoleto.NossoNumero,5,False,'0') + rlbBoleto.DigitoNossoNumero;
      qrCrediario.Post;
    end
    else

    if Self.Tag = 2 then
    begin
      qrCrediario:= TFDQuery.Create(nil);
      qrCrediario.Connection:= DM.Coneccao;
      qrCrediario.SQL.Add('SELECT * FROM CREDIARIO WHERE ID_CONTRATO = ' + IntToStr(ID_CONTRATO)+  ' and ID_CT_PARCELA > 0');
      qrCrediario.Open;

      while not qrCrediario.Eof do
      begin
        qrCrediario.Edit;
        qrCrediario.FieldByName('BANCO_PORTADOR').AsString:= edtBancoPortador1.Text;
        qrCrediario.FieldByName('CODIGOCEDENTE').AsString:=  edtBancoPortador2.Text;
        qrCrediario.FieldByName('ID_PORTADOR').AsString:=    edtBancoPortador2.Text;
        qrCrediario.FieldByName('COD_EMPRESA').AsString:=    DM.SDS_EmpresaCODIGO.Text;
        qrCrediario.FieldByName('TIPO').AsString:= 'BOL';
        qrCrediario.Post;

        for I:= 1 to StrToInt(edtQuantidade.text) do
        begin
          with rlbBoleto do
          begin
            NumeroDocumento   := 'Cont - ' + IntToStr(qrCrediario.FieldByName('ID_CONTRATO').asInteger);
            NossoNumero       := IntToStr(qrCrediario.FieldByName('NUMBOLETO1').AsInteger);
            Carteira          := dmcob.qryCedentesCarteira.AsString;
            DataDocumento     := qrCrediario.FieldByName('DATA_COMPRA').AsDateTime;
            DataProcessamento := now;
            DataVencimento    := qrCrediario.FieldByName('DATA_VENCIMENTO').AsDateTime;
            ValorDocumento    := qrCrediario.FieldByName('VALOR_COMPRA').AsCurrency;
            Instrucoes.Text   := mmObservacao.Text;
            LocalPagamento    := dmcob.qryCedentesLocal_pagamento.Value;

           { IF rdgRegistro.ItemIndex = 0 then
              Registro := '1'
            else
              Registro := '3';    }

            if not dmcob.qryCedentes.Locate('CODIGO_BOLETO',qrCrediario.FieldByName('ID_PORTADOR').Value,[]) then
               Raise Exception.Create('Cedente não localizado');

            with Cedente do
            begin
              if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
                TipoInscricao := tiPessoaFisica {CPF}
              else
              if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
                TipoInscricao := tiPessoaJuridica {CNPJ}
              else
                TipoInscricao := tiOutro;

              NumeroCPFCGC        := dmcob.qryCedentesCNPJCEDENTE.Value;
              Nome                := dmcob.qryCedentesNomeCedente.Value +'-'+
                                     dmcob.qryCedentesCNPJCEDENTE.Value;
              CodigoCedente       := dmcob.qryCedentesCedenteCodigo.Value;
              DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;
              SacadorAvalista     := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;

              with Endereco do
              begin
                Rua             := dmcob.qryCedentesENDERECO.AsString;
                Endereco.Numero := dmcob.qryCedentesNumero.AsString;
                Complemento     := dmcob.qryCedentesComplemento.AsString;
                Bairro          := dmcob.qryCedentesBairro.AsString;
                Cidade          := dmcob.qryCedentesCidade.AsString;
                Estado          := dmcob.qryCedentesuf.AsString;
                CEP             := RemoveChar(dmcob.qryCedentesCEP.AsString);
                Email           := dmcob.qryCedentesEMail.AsString;
              end;

              with ContaBancaria do
              begin
                Banco.Codigo  := dmcob.qryCedentesBanco_Portador.AsString;
                CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
                DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
                NumeroConta   := dmcob.qryCedentesNumeroConta.AsString;
                DigitoConta   := dmcob.qryCedentesDigitoConta.AsString;
              end;
            end;

            qrCliente:= TFDQuery.Create(nil);
            qrCliente.Connection:= DM.Coneccao;
            qrCliente.SQL.Add('SELECT * FROM CLIENTES WHERE CODIGO = ' +
              IntToStr(qrCrediario.fieldbyname('CODIGO_CLIENTE').AsInteger));
            qrCliente.Open;

            if qrCliente.IsEmpty then
            begin
              qrCliente.Destroy;
              Raise Exception.Create('Cliente (sacado) não localizado');
            end;

            with Sacado do
            begin
              if AnsiUpperCase(qrCliente.FieldByName('TIPO').AsString) = 'F' then
                TipoInscricao :=  tiPessoaFisica
              else
              if AnsiUpperCase(qrCliente.FieldByName('TIPO').AsString) = 'J' then
                TipoInscricao := tiPessoaJuridica
              else
                TipoInscricao := tiOutro;

              NumeroCPFCGC := RemoveChar(qrCliente.FieldByName('CPF_CNPJ').AsString);
              Nome         := qrCliente.FieldByName('NOME_RS').AsString+' ('+
                              qrCliente.FieldByName('APELIDO').AsString+')'+'-'+
                              qrCliente.FieldByName('CPF_CNPJ').AsString;

              with Endereco do
              begin
                Rua         := qrCliente.FieldByName('ENDERECO').AsString;
                Numero      := qrCliente.FieldByName('NUMERO').AsString;
                Complemento := qrCliente.FieldByName('COMPLEMENTO').AsString+'fone: '+
                               qrCliente.FieldByName('TELEFONE').AsString;
                Bairro      := qrCliente.FieldByName('BAIRRO').AsString;
                Cidade      := qrCliente.FieldByName('CIDADE').AsString;
                Estado      := qrCliente.FieldByName('UF').AsString;
                CEP         := RemoveChar(qrCliente.FieldByName('CEP').AsString);
                Email       := qrCliente.FieldByName('EMAIL').AsString
              end;

              with ContaBancaria do
              begin
                Banco.Codigo  := '';
                CodigoAgencia := '';
                DigitoAgencia := '';
                NumeroConta   := '';
                DigitoConta   := '';
              end;
            end;
          end;
          rlbBoleto.InsertRecord;
        end;

        qrCrediario.Edit;
        if rdgRegistro.ItemIndex = 0 then
          qrCrediario.FieldByName('COM_REGISTRO').asString:= '1'
        else
          qrCrediario.FieldByName('COM_REGISTRO').asString:= '0';

        qrCrediario.FieldByName('NumBoleto').asString:=
            FormatDateTime('yy',now) + dmcob.sds_cedentesTp_Cobranca.Value +
            Formatar(rlbBoleto.NossoNumero,5,False,'0') + rlbBoleto.DigitoNossoNumero;
        qrCrediario.Post;

        qrCrediario.Next;
      end;
    end;

    case cbxLayout.ItemIndex of
      0: rlbBoleto.BoletoLayout := blPadrao;
      1: rlbBoleto.BoletoLayout := blCarne;
    end;

    qrCrediario.Destroy;
    qrCliente.Destroy;
  except
    qrCrediario.Destroy;
    qrCliente.Destroy;
   end;
end;

function TFrmTitulosBancarios.RemoveChar(Const Texto:String):String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
      S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TFrmTitulosBancarios.FormShow(Sender: TObject);
var
  qr: TFDQuery;
  Cliente: Integer;
  Juros: Currency;
begin
  dmcob.qrycedentes.active := false;
  DMCOB.sds_cedentes.active := false;
  dmcob.qrycedentes.active := true;
  DMCOB.sds_cedentes.active := true;

  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT * FROM CREDIARIO WHERE CODIGO = ' + InttoStr(ID_CREDIARIO));
  qr.Open;
  juros := (qr.FieldByName('VALOR_COMPRA').ascurrency * dmcob.qryCedentesPERC_JUROS.AsFloat /100) ;
  juros := ExatoCurrency(juros,2) ;
  if CHAVE > '' then
  begin
    mmObservacao.Lines.Add(dmcob.sds_cedentesObservacao.text);
    mmObservacao.Lines.Add('APÓS VENCIMENTO COBRAR MULTA DE '+FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.');
    mmObservacao.Lines.Add('APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+FloatToStr(juros)+' AO DIA.');
    mmObservacao.Lines.Add('Chave de Liberação: '+ CHAVE);
  end
  else
  begin
    mmObservacao.Lines.Add(dmcob.sds_cedentesObservacao.text);
    mmObservacao.Lines.Add('APÓS VENCIMENTO COBRAR MULTA DE '+FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.');
    mmObservacao.Lines.Add('APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+FloatToStr(juros)+' AO DIA.');
  end;
  edtDataDocumento.Date   := qr.FieldByName('DATA_COMPRA').AsDateTime;
  edtDataVencimento.Date  := qr.FieldByName('DATA_VENCIMENTO').AsDateTime;
  edtDataRecebimento.Date := qr.FieldByName('DATA_BAIXA').AsDateTime;
  edtValorDoc.Text:= FloatToStrF(qr.FieldByName('VALOR_COMPRA').ascurrency,ffCurrency,12,2);
  edtValorDesconto.Text:= FloatToStrF(qr.FieldByName('VALOR_DESCONTO').ascurrency,ffCurrency,12,2);
  edtValorAcrecimos.Text:= FloatToStrF(qr.FieldByName('VALOR_ACRESCIMO').ascurrency,ffCurrency,12,2);
  edtValorJurosMora.Text:= FloatToStrF(qr.FieldByName('VALOR_JUROS').ascurrency,ffCurrency,12,2);
  edtValorPagoCliente.Text:= FloatToStrF(qr.FieldByName('VALOR_PAGO').ascurrency,ffCurrency,12,2);
  edtValorAcrecimos.Text:= FloatToStrF(qr.FieldByName('VALOR_TOTAL').ascurrency,ffCurrency,12,2);
  Cliente:= qr.FieldByName('CODIGO_CLIENTE').AsInteger;
  qr.Close;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT NOME_RS FROM CLIENTES WHERE CODIGO = ' + IntToStr(Cliente));
  qr.Open;
  cbxCliente.Text:= qr.fieldbyName('NOME_RS').AsString;
  qr.Destroy;
  PesquisaBanco('');
end;

procedure TFrmTitulosBancarios.cbxBancoCedenteChange(Sender: TObject);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT * FROM BOLETO WHERE DESCRICAO = ' +
    QuotedStr(cbxBancoCedente.Text));
  qr.Open;
  edtBancoPortador1.Text:= qr.fieldbyname('BANCO_PORTADOR').AsString;
  edtBancoPortador2.Text:= qr.fieldbyname('CEDENTECODIGO').AsString;
  edtBancoPortador2.Text:= qr.fieldbyname('CODIGO_BOLETO').AsString;
  qr.Destroy;
end;

procedure TFrmTitulosBancarios.spbConfirmarClick(Sender: TObject);
var
  Erro: String;
begin
  if cbxBancoCedente.Text = '' then
    Erro:= 'Selecione o banco do cedente!!!'
  else
  if edtQuantidade.Text = '' then
    Erro:= 'Informe a quantidade de boletos!';

  if Erro <> '' then
  begin
   // Messagedlg(PAnsiChar(Erro),'Operação Concluida.',MB_ICONWARNING,0);
    MessageDlg((Erro), mtInformation,[mbOk], 0);
    exit;
  end;
  PreparaTitulo;
  rlbBoleto.PreviewModal;
  Close;
end;

procedure TFrmTitulosBancarios.spbCancelarClick(Sender: TObject);
begin
  close;
end;

end.
