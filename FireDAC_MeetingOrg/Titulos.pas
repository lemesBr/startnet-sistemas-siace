unit Titulos;

interface

uses
  Forms, Controls, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, SUIDlg,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Dialogs, SUIButton,  SUIDBCtrls, Menus,  ImgList, DB,
  RXCtrls, RXDBCtrl,   Grids, DBGrids,   ComCtrls,
  ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs, SUITitleBar, RLBoleto,
  RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter, TaskDialog,
  sComboBox, sMemo, sMaskEdit, sEdit, sDBLookupComboBox, sDBEdit, sLabel,
  sBitBtn, sPanel;

type
  TfrmTitulos = class(TForm)
    Panel1: TsPanel;
    pnlInformacoes: TsPanel;
    Label35: TsLabel;
    Label22: TsLabel;
    Label18: TsLabel;
    EditSeuNumero: TsDBEdit;
    Label19: TsLabel;
    EditNossoNumero: TsDBEdit;
    Label17: TsLabel;
    Label16: TsLabel;
    Label15: TsLabel;
    Label13: TsLabel;
    cboCliente: TsDBLookupComboBox;
    lblDataDocumento: TsLabel;
    Label1: TLabel;
    lblDataCredito: TsLabel;
    lblValorLiquidoRecebido: TsLabel;
    lblValorPagoPeloCliente: TsLabel;
    lblObservacoes: TsLabel;
    butConfirmar: TsBitBtn;
    butCancelar: TsBitBtn;
    Label2: TsLabel;
    DataDocumento: TsDBEdit;
    DataVencimento: TsDBEdit;
    ValorDocumento: TsDBEdit;
    ValorDesconto: TsDBEdit;
    ValorAcrescimo: TsDBEdit;
    ValorMoraJuros: TsDBEdit;
    ValorPagoPeloCliente: TsDBEdit;
    ValorLiquidoRecebido: TsDBEdit;
    DataRecebimento: TsDBEdit;
    txtDigitoNossoNumero: TsEdit;
    Label5: TsLabel;
    Label3: TsLabel;
    MaskEdit1: TsMaskEdit;
    Label4: TsLabel;
    Label6: TsLabel;
    txtObservacoes: TsMemo;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    ComboBox3: TsComboBox;
    RLBRemessa1: TRLBRemessa;
    gBTitulo1: TRLBTitulo;
    Edit1: TsEdit;
    Edit2: TsEdit;
    Edit3: TsEdit;
    cboCedente: TsDBLookupComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure butConfirmarClick(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure cboCedenteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboCedenteEnter(Sender: TObject);
    procedure cboCedenteExit(Sender: TObject);
    procedure PrepararTitulo;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
      CHAVE :string;
      juros : Currency;
  end;

var
  frmTitulos: TfrmTitulos;
 // TD:TTransactionDesc;


implementation

uses ModulodeDados, Udmcob, Ubibli1, Boletos, Principal, ContratosBoletos,
  BoletosBanc;


{$R *.DFM}

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
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

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve est� no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inv�lidos e acrescentar caracteres � esquerda ou � direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante dever� ter
   AcrescentarADireita: Indica se o car�cter ser� acrescentado � direita ou � esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar �ltimos caracteres do texto
   CaracterAcrescentar: Car�cter que dever� ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{N�o faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'A';
            '�','�' : Texto[i] := 'E';
            '�','�' : Texto[i] := 'I';
            '�','�' : Texto[i] := 'O';
            '�','�' : Texto[i] := 'U';
            '�','�' : Texto[i] := 'C';
            '�','�' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TfrmTitulos.FormShow(Sender: TObject);
begin
  //SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
   dmcob.qrycedentes.active := false;
   DMCOB.sds_cedentes.active := false;
   dmcob.qrycedentes.active := true;
   DMCOB.sds_cedentes.active := true;

   dmcob.qryTitulos.Open;
   juros := (DMCOB.cds_titulosValor_Compra.AsFLOAT * dmcob.qryCedentesPERC_JUROS.AsFloat /100) ;
   juros := ExatoCurrency(juros,2) ;
   //dmcob.cds_Titulos.Active := false;
   //dmcob.cds_Titulos.Active := true;

   if CHAVE > '' then
   txtObservacoes.text := dmcob.sds_cedentesObservacao.text + #13 + 'AP�S VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13 +'AP�S VENCIMENTO COBRAR JUROS NO VALOR DE '+FloatToStr(juros)+' AO DIA.' +  #10+#13 + 'Chave de Libera��o: '+ CHAVE + #10+#13 + 'Ref. NF-e: ' + N_nfe
   else
   txtObservacoes.text := dmcob.sds_cedentesObservacao.text + #13+ 'AP�S VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13+ 'AP�S VENCIMENTO COBRAR JUROS NO VALOR DE '+ FloatToStr(juros)+' AO DIA.'+ #10+#13+ 'Ref. NF-e: ' + N_nfe;
  // editseunumero.text := DMCOB.cds_titulosCODIGO_COMPRA.Text + '-' + DMCOB.cds_titulosParcela.Text;
   cboCedente.SetFocus;
end;

procedure TfrmTitulos.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
  dtaux : TDateTime;
{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servir� de apoio para diveras outras rotinas
}
begin
    dtAux := (DATE);

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));
  { case ComboBox1.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;}
  if tag = 2 then
  begin
   for nI := 1 to nQtdeBoletos do
    {Dados do titulo}
    DMCOB.cds_titulos.first;
    repeat

    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataProcessamento :=  Date;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := {dmcob.qryCedentesObservacao.Value;} txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

       //ver a fun��o com registro e sem registro
    {  IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';   }

      {Se n�o localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente n�o localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value + '-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;
         {avalista}
         IF FormBoletos.ComboEdit1.TEXT > '' then
         begin
         SacadorAvalista := FormBoletos.SLABEL1.CAPTION;
         end ELSE
         BEGIN
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         end;
         
         {Endere�o do cedente}
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := dmcob.qryCedentesCEP.AsString;
            Email := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados banc�rios do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

        dm.SDS_Clientes.Active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + DMCOB.cds_titulosCodigo_Cliente.Text + '%' + #39+'order by NOME_RS ASC');
        dm.SDS_Clientes.Active := True;
      {Se n�o localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) n�o localizado');

      {Dados do sacado do t�tulo}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := RemoveChar(dm.Sds_clientesCPF_cnpj.AsString);
         Nome := dm.Sds_clientesNome_rs.AsString + ' ('+ dm.SDS_ClientesAPELIDO.AsString +')'+'-'+dm.Sds_clientesCPF_cnpj.AsString;

         {Endere�o do sacado do t�tulo}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString+ 'fone: '+ dm.SDS_ClientesTELEFONE.Text;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := dm.Sds_clientesCEP.AsString;
            Email := dm.Sds_clientesEMail.AsString;
         end; {with Endereco}

         {Dados banc�rios do sacado do t�tulo}
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end; {with Banco}
      end; {with Sacado}
   end; {with Titulo}

   GBTitulo1.InsertRecord;
   DMCOB.cds_titulos.Edit;
 //  DMCOB.cds_titulosCOD_AVALISTA.TEXT := FormBoletos.COMBOEDIT1.TEXT;
    IF CheckBox1.Checked = True then
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '1'
   else
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '0';
   DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);

   DMCOB.cds_titulos.Next;
   until DMCOB.cds_titulos.eof;
   DMCOB.cds_titulos.first;
   end else

  if tag = 4 then
  begin
    for nI := 1 to nQtdeBoletos do
    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataProcessamento :=  Date;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := {dmcob.qryCedentesObservacao.Value;} txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

   {   IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';     }

      {Se n�o localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente n�o localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value+'-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

          {avalista}
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;

         {Endere�o do cedente}
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := dmcob.qryCedentesCEP.AsString;
            Email := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados banc�rios do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

      {Se n�o localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) n�o localizado');

      {Dados do sacado do t�tulo}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := RemoveChar(dm.Sds_clientesCPF_cnpj.AsString);
         Nome := dm.Sds_clientesNome_rs.AsString+ ' ('+ dm.SDS_ClientesAPELIDO.AsString +')' + '-'+dm.Sds_clientesCPF_cnpj.AsString;;

         {Endere�o do sacado do t�tulo}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString+'fone: '+dm.SDS_ClientesTELEFONE.AsString;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := dm.Sds_clientesCEP.AsString;
            Email := dm.Sds_clientesEMail.AsString;
          end; {with Endereco}

         {Dados banc�rios do sacado do t�tulo}
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end; {with Banco}
      end; {with Sacado}
   end; {with Titulo}

   GBTitulo1.InsertRecord;

   DMCOB.cds_titulos.Edit;
 //  DMCOB.cds_titulosCOD_AVALISTA.TEXT := FormBoletosBanc.ComboBox1.TEXT;
    IF CheckBox1.Checked = True then
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '1'
   else
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '0';
   DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);
   end;

  if tag = 1 then
  begin
    for nI := 1 to nQtdeBoletos do
    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataProcessamento :=  Date;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := {dmcob.qryCedentesObservacao.Value;} txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

    {  IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';     }

      {Se n�o localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente n�o localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value + '-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

          {avalista}
         IF FormBoletosBanc.ComboEdit1.TEXT > '' then
         begin
         SacadorAvalista := FormBoletosBanc.SLABEL1.CAPTION;
         end ELSE
         BEGIN
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         end;
         {Endere�o do cedente}
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := dmcob.qryCedentesCEP.AsString;
            Email := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados banc�rios do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

      {Se n�o localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) n�o localizado');

      {Dados do sacado do t�tulo}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := RemoveChar(dm.Sds_clientesCPF_cnpj.AsString);
         Nome := dm.Sds_clientesNome_rs.AsString+ ' ('+ dm.SDS_ClientesAPELIDO.AsString +')'+'-'+dm.Sds_clientesCPF_cnpj.AsString;

         {Endere�o do sacado do t�tulo}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString+'fone: '+dm.SDS_ClientesTELEFONE.AsString;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := dm.Sds_clientesCEP.AsString;
            Email := dm.Sds_clientesEMail.AsString;
          end; {with Endereco}

         {Dados banc�rios do sacado do t�tulo}
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end; {with Banco}
      end; {with Sacado}
   end; {with Titulo}

   GBTitulo1.InsertRecord;

   DMCOB.cds_titulos.Edit;
      IF CheckBox1.Checked = True then
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '1'
   else
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '0';
 //  DMCOB.cds_titulosCOD_AVALISTA.TEXT := FormBoletosBanc.ComboBox1.TEXT;
   DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);
   end;


  if tag = 3 then
  begin
  try
  DM.SDS_Contratos.First;
  repeat
  FormContratosBoleto.COD:= DM.SDS_CONTRATOSID_CONTRATO.Text;
  dmcob.qryTitulos.close;
  dmcob.qryTitulos.sql.clear;
  DMCOB.cds_titulos.Active := FALSE;
  dmcob.qryTitulos.SQL.add('select * from crediario where situacao = ''A'' and id_contrato >0'+'');
  dmcob.qryTitulos.SQL.add('AND ID_CONTRATO ='+(FormContratosBoleto.cod)+'');
  dmcob.qryTitulos.SQL.add('AND DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FormContratosBoleto.dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FormContratosBoleto.dtmovf)))+'');
  dmcob.qryTitulos.SQL.add('ORDER BY id_contrato asc');
  dmcob.qrytitulos.open;
  DMCOB.cds_titulos.Active := TRUE;

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO = ' + DM.SDS_CONTRATOSCOD_CLIENTE.Text + ' order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  If DM.SDS_Clientes.locate('CODIGO', DM.SDS_CONTRATOSCOD_CLIENTE.Text,[])=True then

    for nI := 1 to nQtdeBoletos do
    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

    with gbTitulo1 do
    begin
      NumeroDocumento :=  'Cont - ' + DMCOB.cds_titulosID_CONTRATO.AsString ;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataProcessamento :=  Date;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := {dmcob.qryCedentesObservacao.Value;} txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

      {IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';   }

      {Se n�o localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente n�o localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value +'-'+ dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

          {avalista}
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         {Endere�o do cedente}
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := RemoveChar(dmcob.qryCedentesCEP.AsString);
            Email := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados banc�rios do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

      {Se n�o localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) n�o localizado');

      {Dados do sacado do t�tulo}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := RemoveChar(dm.Sds_clientesCPF_cnpj.AsString);
         Nome := dm.Sds_clientesNome_rs.AsString+ ' ('+ dm.SDS_ClientesAPELIDO.AsString +')'+'-'+(dm.Sds_clientesCPF_cnpj.AsString);;

         {Endere�o do sacado do t�tulo}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString +'fone: '+ dm.SDS_ClientesTELEFONE.AsString;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := RemoveChar(dm.Sds_clientesCEP.AsString);
            Email := dm.Sds_clientesEMail.AsString;
          end; {with Endereco}

         {Dados banc�rios do sacado do t�tulo}
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end; {with Banco}
      end; {with Sacado}
   end; {with Titulo}

   GBTitulo1.InsertRecord;

   DMCOB.cds_titulos.Edit;
   IF CheckBox1.Checked = True then
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '1'
   else
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '0';
   DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);

   DM.SDS_Contratos.next;
   until DM.SDS_Contratos.eof;
   DM.SDS_Contratos.first;
   except
   DM.SDS_Contratos.cancel;
   end;

  END;
 end;
end;

procedure TfrmTitulos.butConfirmarClick(Sender: TObject);
var
dtaux : TDateTime;
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
begin
           dtAux := (DATE);
           if length(cboCedente.text) = 0 then
           begin
            showmessage('Preencha o nome do banco corretamente.');
            abort; // ... voc� pode usar o conjunto mensagem + abort!
            end;
//         Try
          begin
        //  DMCOB.cds_titulos.Refresh;
        {  DMCOB.cds_titulos.Edit;

          DMCOB.cds_titulosbanco_portador.text := dmcob.sds_cedentesBANCO_PORTADOR.Text;
          DMCOB.cds_titulosCODIGOCEDENTE.text  := dmcob.sds_cedentesCEDENTECODIGO.Text;
          DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
          DMCOB.cds_titulosTIPO.Text := 'BOL';
          DMCOB.cds_titulos.Post;  }



           PrepararTitulo;


           case ComboBox3.ItemIndex of
            0: GBTitulo1.BoletoLayout := blPadrao;
            1: GBTitulo1.BoletoLayout := blCarne;
          end;




          {for nI := 1 to nQtdeBoletos do
          begin
            //Dados do Cedente
            RLBTitulo1.DataProcessamento := Date;
            RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := Trim(Copy(dmcob.qryCedentesBanco_Portador.Text,1,3));
            RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := Trim(DMCOB.qryCedentesCODIGOAGENCIA.Text);
            RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := Trim(DMCOB.qryCedentesDIGITOAGENCIA.Text);
            RLBTitulo1.Cedente.ContaBancaria.NumeroConta := Trim(DMCOB.qryCedentesNUMEROCONTA.Text);
            RLBTitulo1.Cedente.ContaBancaria.DigitoConta := Trim(DMCOB.qryCedentesDIGITOCONTA.Text);
            RLBTitulo1.Cedente.CodigoCedente := Trim(DMCOB.qryCedentesCEDENTECODIGO.Text);
            RLBTitulo1.Cedente.DigitoCodigoCedente := Trim(DMCOB.qryCedentesCEDENTECODIGODIGITO.Text);
            RLBTitulo1.Carteira := Trim(dmcob.qryCedentesCarteira.Text);
            RLBTitulo1.Cedente.ContaBancaria.Convenio := Trim(DMCOB.qryCedentesCONVENIO.Text);
            RLBTitulo1.Cedente.ContaBancaria.NomeCliente := Trim(DMCOB.qryCedentesNOMECEDENTE.Text);

            if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            RLBTitulo1.Cedente.TipoInscricao := tiPessoaFisica {CPF}{
            else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica {CNPJ}{
            else
            RLBTitulo1.Cedente.TipoInscricao := tiOutro;
          //  RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
            RLBTitulo1.Cedente.NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.text;
            RLBTitulo1.Cedente.Nome := Trim(DMCOB.qryCedentesNOMECEDENTE.Text);
            //dados do sacado

            RLBTitulo1.Sacado.Nome := Trim(DM.SDS_ClientesNOME_RS.Text);
            {case ComboBox2.ItemIndex of
              0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
              1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
            end;}
             { if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
              RLBTitulo1.Sacado.TipoInscricao :=  tiPessoaFisica
               else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
             RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica
              else
            RLBTitulo1.Sacado.NumeroCPFCGC := Trim(DM.SDS_ClientesCPF_CNPJ.Text);
            RLBTitulo1.Sacado.Endereco.Rua := Trim(DM.SDS_ClientesENDERECO.Text);
            RLBTitulo1.Sacado.Endereco.CEP := Trim(DM.SDS_ClientesCEP.Text);
            RLBTitulo1.Sacado.Endereco.Cidade := Trim(dm.SDS_ClientesCIDADE.Text);
            RLBTitulo1.Sacado.Endereco.Estado := Trim(DM.SDS_ClientesUF.Text);
            //dados da cobranca
            RLBTitulo1.NossoNumero := Trim(DMCOB.cds_titulosNumboleto1.Text);
            RLBTitulo1.ValorDocumento := StrToCurr(DMCOB.cds_titulosVALOR_COMPRA.Text);
            RLBTitulo1.DataDocumento := dmcob.cds_titulosDATA_COMPRA.AsDateTime;
            RLBTitulo1.DataVencimento := dmcob.cds_titulosData_Vencimento.asdateTime;//StrToDate(MaskEdit1.Text);
            RLBTitulo1.NumeroDocumento := Trim(DMCOB.cds_titulosCodigo_Compra.Text + '-' +  DMCOB.cds_titulosParcela.Text);
            RLBTitulo1.Instrucoes.Text := txtObservacoes.Text;

            RLBTitulo1.InsertRecord;}
          {  Edit4.Text     := IntToStr(StrToIntDef(Trim(Edit4.Text),0)+1); //Simulando o nosso numero
            MaskEdit1.Text := DateToStr(IncDay(StrToDate(MaskEdit1.Text)));
            Edit10.Text    := CurrToStr(StrToCurr(Edit10.Text) + 1.23);}
          //end;



          GBTitulo1.PreviewModal;

         { DMCOB.cds_titulos.Edit;
          DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
          DMCOB.cds_titulos.Post;
          DMCOB.cds_titulos.ApplyUpdates(0);   }
         // DM.SQLC.Commit(TD);
          Frmtitulos.Close;
        end;

{   Except
   FormPrincipal.MsgErro.HTMLText.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   FormPrincipal.MsgErro.Execute;
   end;  }
end;

procedure TfrmTitulos.butCancelarClick(Sender: TObject);
begin
   DMCOB.cds_titulos.Cancel;
   DMCOB.cds_titulos.CancelRange;
   DMCOB.cds_titulos.CancelUpdates;
end;

procedure TfrmTitulos.cboCedenteClick(Sender: TObject);
begin
//   with dmCobranca do
//      qryTitulosNumBoleto.Value := CalcularProximoNumero(qryTitulosId_portador.Value);
end;

procedure TfrmTitulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FrmTitulos:=nil;
end;

procedure TfrmTitulos.cboCedenteEnter(Sender: TObject);
begin
   //editnossonumero.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + DMCOB.cds_titulosNUMBOLETO1.AsString;
//   gbTitulo1.Cedente.ContaBancaria.Banco.Codigo := dmcob.sds_cedentesBANCO_PORTADOR.Text;
   //gbTitulo1.NossoNumero := EditNossoNumero.Text;
   //txtDigitoNossoNumero.Text := gbTitulo1.DigitoNossoNumero;
end;

procedure TfrmTitulos.cboCedenteExit(Sender: TObject);
begin
  // editnossonumero.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + DMCOB.cds_titulosNUMBOLETO1.AsString;
   edit1.text:= dmcob.sds_cedentesBANCO_PORTADOR.Text;
   edit2.text:= dmcob.sds_cedentesCEDENTECODIGO.Text;
   edit3.text:= DMCOB.sds_cedentesCODIGO_BOLETO.Text;
  // gbTitulo1.NossoNumero := EditNossoNumero.Text;
  // txtDigitoNossoNumero.Text := gbTitulo1.DigitoNossoNumero;
end;

procedure TfrmTitulos.CheckBox1Click(Sender: TObject);
begin
IF CheckBox1.Checked = True then
CheckBox2.Checked := False;
end;

procedure TfrmTitulos.CheckBox2Click(Sender: TObject);
begin
IF CheckBox2.Checked = True then
CheckBox1.Checked := False;
end;

end.
