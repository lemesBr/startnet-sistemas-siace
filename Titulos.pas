unit Titulos;

interface

uses
  Forms, Controls, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, SUIDlg,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Dialogs, SUIButton,  SUIDBCtrls, Menus,  ImgList, DB,
  RXCtrls, RXDBCtrl,   Grids, DBGrids,   ComCtrls,
  ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs, SUITitleBar, TaskDialog,
  sComboBox, sMemo, sMaskEdit, sEdit, sDBLookupComboBox, sDBEdit, sLabel,
  sBitBtn, sPanel, sCustomComboEdit, XDBGrids,  ACBrBase, ACBrBoleto,
  ACBrBoletoConversao, ACBrBoletoRetorno, TypInfo, DateUtils, pcnConversao,
  ACBrDFeSSL, RxToolEdit;

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
    Label6: TsLabel;
    txtObservacoes: TsMemo;
    Edit1: TsEdit;
    Edit2: TsEdit;
    Edit3: TsEdit;
    cboCedente: TsDBLookupComboBox;
    CheckBox2: TCheckBox;
    Panel2: TPanel;
    XDBGrid1: TXDBGrid;
    cbxLayOut: TComboBox;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sPanel2: TsPanel;
    sLabel1: TsLabel;
    sPanel3: TsPanel;
    sLabel2: TsLabel;
    sPanel1: TsPanel;
    ComboEdit1: TComboEdit;
    sEdit1: TsEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    procedure FormShow(Sender: TObject);
    procedure butConfirmarClick(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure cboCedenteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboCedenteEnter(Sender: TObject);
    procedure cboCedenteExit(Sender: TObject);
    procedure PrepararTitulo;
    procedure cbxLayOutChange(Sender: TObject);
    procedure alimenta ;
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
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

uses ModulodeDados, Udmcob, Ubibli1, Principal, ContratosBoletos,
   ContaBancaria,ACBrUtil, xloc_funcionario, uDMMovimentacao;


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
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
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
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
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
var
  I: TACBrBolLayOut;
begin
  //SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
 cbxLayOut.Items.Clear;
  For I := Low(TACBrBolLayOut) to High(TACBrBolLayOut) do
    cbxLayOut.Items.Add(GetEnumName(TypeInfo(TACBrBolLayOut), Integer(I)));
  cbxLayOut.ItemIndex := 0;

  // dmcob.qryTitulos.Open;


if Tag = 1 then
begin
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where CODIGO_COMPRA  =:pesquisa AND SITUACAO=''A''';
dmcob.qrytitulos.parambyname('pesquisa').AsString:= cod_venda;
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;

if Tag = 2 then
begin
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where COD_ENTRADA =:pesquisa AND SITUACAO=''A'' ';
dmcob.qrytitulos.parambyname('pesquisa').asString:=AnsiUpperCase(sEdit1.Text){+'%'};
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;

 if Tag = 3 then
begin
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where CODIGO =:pesquisa AND SITUACAO=''A'' ';
dmcob.qrytitulos.parambyname('pesquisa').asString := COD_CRED;
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;

   dmcob.qrycedentes.active := false;
   dmcob.qrycedentes.active := true;

   DMCOB.sds_cedentes.active := false;
   DMCOB.sds_cedentes.active := true;

   dm.Sds_clientes.close;
   dm.SDS_Clientes.SQL.Clear;
   DM.SDS_Clientes.SQL.add('select * from clientes where codigo = :pesquisa order by NOME_RS ASC');
   DM.SDS_Clientes.parambyname('pesquisa').text := DMCOB.cds_tituloscodigo_cliente.text;
   dm.Sds_clientes.open;

   //dmcob.cds_Titulos.Active := false;
   //dmcob.cds_Titulos.Active := true;

   if CHAVE > '' then
   txtObservacoes.text := dmcob.sds_cedentesObservacao.text + #13 + 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13 +'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+FloatToStr(juros)+' AO DIA.' +  #10+#13 + 'Chave de Liberação: '+ CHAVE + #10+#13 + 'Ref. NF-e: ' + N_nfe
   else
   txtObservacoes.text := dmcob.sds_cedentesObservacao.text + #13+ 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13+ 'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+ FloatToStr(juros)+' AO DIA.'+ #10+#13+ 'Ref. NF-e: ' + N_nfe;
  // editseunumero.text := DMCOB.cds_titulosCODIGO_COMPRA.Text + '-' + DMCOB.cds_titulosParcela.Text;
 // DMCOB.ConfigurarBoleta;
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
      Servirá de apoio para diveras outras rotinas
}
begin
    dtAux := (DATE);

  // if dmCob.qryCedentes.State = dsInactive then
    //  dmcob.qryCedentes.Open;

   begin
  // nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));
  { case ComboBox1.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;}
{  if tag = 2 then
  begin
   for nI := 1 to nQtdeBoletos do
    //Dados do titulo
    DMCOB.cds_titulos.first;
    repeat

    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    if CheckBox2.Checked = True then
     DMCOB.cds_titulosFILTRO.Text:= '1'
     else
     DMCOB.cds_titulosFILTRO.Text:= '0';
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
      Instrucoes.Text :=  txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

       //ver a função com registro e sem registro
      IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';

      //Se não localizar o cedente, gera erro
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      //Dados do cedente
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value + '-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;
         //avalista
         IF FormBoletos.ComboEdit1.TEXT > '' then
         begin
         SacadorAvalista := FormBoletos.SLABEL1.CAPTION;
         end ELSE
         BEGIN
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         end;
         
         //Endereço do cedente
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
         end;

         //Dados bancários do cedente
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end;
      end;

        dm.SDS_Clientes.Active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + DMCOB.cds_titulosCodigo_Cliente.Text + '%' + #39+'order by NOME_RS ASC');
        dm.SDS_Clientes.Active := True;
      //Se não localizar o sacado, gera erro
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      //Dados do sacado do título
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

         //Endereço do sacado do título
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
         end;

         //Dados bancários do sacado do título
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end;
      end;
   end;

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
      Instrucoes.Text :=  txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

      IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';

      //Se não localizar o cedente, gera erro
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      //Dados do cedente
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value+'-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

          //avalista
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;

         //Endereço do cedente
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
         end;

         //Dados bancários do cedente
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end;
      end;

      //Se não localizar o sacado, gera erro
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      //Dados do sacado do título
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

         //Endereço do sacado do título
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
          end;

         //Dados bancários do sacado do título
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end;
      end;
   end;

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
      Instrucoes.Text := txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

      IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';

      //Se não localizar o cedente, gera erro
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      //Dados do cedente
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value + '-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

          //avalista
         IF FormBoletosBanc.ComboEdit1.TEXT > '' then
         begin
         SacadorAvalista := FormBoletosBanc.SLABEL1.CAPTION;
         end ELSE
         BEGIN
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         end;
         //Endereço do cedente
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
         end;

         //Dados bancários do cedente
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end;
      end;

      //Se não localizar o sacado, gera erro
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      //Dados do sacado do título
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

         //Endereço do sacado do título
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
          end;

         //Dados bancários do sacado do título
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end;
      end;
   end;

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
      Instrucoes.Text :=  txtObservacoes.Text ;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

      IF CheckBox1.Checked = True then
      Registro := '1'
      else
      Registro := '3';

      //Se não localizar o cedente, gera erro
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      //Dados do cedente
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value +'-'+ dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

         // avalista
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         //Endereço do cedente
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
         end;

         //Dados bancários do cedente
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end;
      end;

      //Se não localizar o sacado, gera erro
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      //Dados do sacado do título
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

         //Endereço do sacado do título
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
          end;

         //Dados bancários do sacado do título
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end;
      end;
   end;

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

  END; }
 end;
end;

procedure TfrmTitulos.sBitBtn1Click(Sender: TObject);
begin
  dmcob.ACBrBoleto.ACBrBoletoFC.NomeArquivo := ExtractFilePath(Application.ExeName) + '\boleto\boleto.html';
  dmcob.ACBrBoleto.GerarHTML;
end;

procedure TfrmTitulos.sBitBtn2Click(Sender: TObject);
begin
  dmcob.ACBrBoleto.ACBrBoletoFC.NomeArquivo := ExtractFilePath(Application.ExeName) + '\boleto\boleto.pdf';

      dmcob.ACBrBoleto.GerarPDF;
end;

procedure TfrmTitulos.sBitBtn3Click(Sender: TObject);
begin
  dmcob.ACBrBoleto.Imprimir;
end;

procedure TfrmTitulos.alimenta;
var
  Beneficiario : TACBrCedente;
  Titulo : TACBrTitulo;
  VQtdeCarcA, VQtdeCarcB, VQtdeCarcC :Integer;
  VLinha, logo : string;
  I: Integer;
  NrTitulos: Integer;
  T: Integer;
  dtaux : TDateTime;
begin
  //NrTitulos:=  DMCOB.cds_titulos.RecordCount;
    juros := (DMCOB.cds_titulosValor_Compra.AsFLOAT * DMCOB.qryCBR_CONFIGPERC_JUROS.AsFloat /100) ;
   juros := ExatoCurrency(juros,2) ;

 DMCob.ACBrBoleto.ListadeBoletos.Clear;

 with DMCOB.cds_titulos do
  begin
  First;
    while  not eof do //for T := 0 to NrTitulos do
   begin
    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.AsInteger   := iemp;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

    Titulo := DMCob.ACBrBoleto.CriarTituloNaLista;

  Titulo.Vencimento        := DMCob.cds_titulosDATA_VENCIMENTO.AsDateTime;
  Titulo.DataDocumento     := DMCob.cds_titulosDATA_COMPRA.AsDateTime;
  Titulo.NumeroDocumento   := DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
  Titulo.EspecieDoc        := DMCOB.qryCBR_CONFIGespecie.Text;

  if DMCOB.qryCBR_CONFIGACEITE.TEXT ='SIM' then
     Titulo.Aceite := atSim
  else
     Titulo.Aceite := atNao;

  Titulo.DataProcessamento        := Now;
  Titulo.Carteira                 := DMCOB.qryCBR_CONFIGCarteira.AsString;
  Titulo.NossoNumero              := DMCOB.cds_titulosNumboleto1.AsString;
  Titulo.ValorDocumento           := DMCOB.cds_titulosValor_Compra.AsCurrency;
  Titulo.Sacado.NomeSacado        := dm.Sds_clientesnome_rs.AsString ;
    case OnlyNumber(dm.sds_clientescpf_cnpj.AsString).Trim.Length of
        11:
          Titulo.Sacado.Pessoa := pFisica;
        14:
         Titulo.Sacado.Pessoa := pJuridica;
      else
        raise Exception.Create('Erro com CPF/CNPJ Cliente: ' + sLineBreak +
          dm.sds_clientescpf_cnpj.AsString + ' | ' +
          DM.sds_clientesnome_rs.AsString);
      end;
  Titulo.Sacado.CNPJCPF           := OnlyNumber(dm.Sds_clientesCPF_cnpj.TEXT);
  Titulo.Sacado.Logradouro        := dm.Sds_clientesEndereco.AsString;
  Titulo.Sacado.Numero            := dm.Sds_clientesNumero.AsString;
  Titulo.Sacado.Bairro            := dm.Sds_clientesBairro.AsString;
  Titulo.Sacado.Cidade            := dm.Sds_clientesCidade.AsString;
  Titulo.Sacado.UF                := dm.Sds_clientesUF.Text;
  Titulo.Sacado.CEP               := OnlyNumber(dm.Sds_clientesCEP.Text);
  Titulo.ValorAbatimento          := 0;
  Titulo.LocalPagamento           := DMCOB.qryCBR_CONFIGLocal_pagamento.Value;
  Titulo.ValorMoraJuros           := DMCOB.qryCBR_CONFIGPERC_JUROS.ascurrency;
  Titulo.ValorDesconto            := 0;
  Titulo.ValorAbatimento          := 0;
  Titulo.DataMoraJuros            := DMCob.cds_titulosDATA_VENCIMENTO.AsDateTime + 1;
  Titulo.DataDesconto             := 0;
  Titulo.TipoDesconto             := tdNaoConcederDesconto;
  Titulo.DataAbatimento           := 0;
  if DMCOB.qryCBR_CONFIGPROTESTAR_AUTOMATICO.Text = 'S' then
  Titulo.DataProtesto             := DMCob.cds_titulosDATA_VENCIMENTO.AsDateTime + DMCOB.qryCBR_CONFIGQUANT_DIAS_PROTESTO.value
  else
  Titulo.DataProtesto             := 0;
  Titulo.PercentualMulta          := DMCOB.qryCBR_CONFIGperc_multa.ascurrency;
  Titulo.CodigoMoraJuros          := cjTaxaDiaria;
  Titulo.OcorrenciaOriginal.Tipo  := toRemessaRegistrar;
  Titulo.Instrucao1               := trim(DMCOB.qryCBR_CONFIGOBSERVACAO.Text);
 // Titulo.Instrucao2               := trim(edtInstrucoes2.Text);

  Titulo.QtdePagamentoParcial     := 1;
  Titulo.TipoPagamento            := tpNao_Aceita_Valor_Divergente;
  Titulo.PercentualMinPagamento   := 0;
  Titulo.PercentualMaxPagamento   := 0;
  Titulo.ValorMinPagamento        := 0;
  Titulo.ValorMaxPagamento        := 0;



 { Beneficiario   := Boleto.Cedente;
  BeneficiarioWS := Beneficiario.CedenteWS;

  Beneficiario.Agencia                       := edtAgencia.Text;
  Beneficiario.AgenciaDigito                 := edtAgenciaDV.Text;
  Beneficiario.Conta                         := edtConta.Text;
  Beneficiario.ContaDigito                   := edtContaDV.Text;
  Beneficiario.DigitoVerificadorAgenciaConta := edtAgenciaContaDV.Text;
  Beneficiario.Convenio                      := edtConvenio.Text;
  Beneficiario.Modalidade                    := edtModalidade.Text;
  Beneficiario.Operacao                      := edtOperacao.Text;
  Beneficiario.CodigoTransmissao             := edtCodigoTransmissao.Text;
  Beneficiario.CodigoCedente                 := edtCodigoCedente.Text;

 Beneficiario.TipoDocumento                 := TACBrTipoDocumento(cbxTipoDocumento.ItemIndex);

  Beneficiario.IdentDistribuicao             := TACBrIdentDistribuicao(cbxTipoDistribuicao.itemIndex);
  Beneficiario.ResponEmissao                 := TACBrResponEmissao(cbxResponsavelEmissao.ItemIndex);
  Beneficiario.CaracTitulo                   := TACBrCaracTitulo(cbxCaracteristicaTitulo.itemIndex);
  Beneficiario.TipoCarteira                  := TACBrTipoCarteira(cbxTipoCarteira.itemIndex);  }

  if ComboEdit1.Text > '' then
  begin
  if Length(OnlyNumber(DMMovimentacao.querycpf_CNPJ.Text)) = 14 then
    Beneficiario.TipoInscricao               := pJuridica
  else
    Beneficiario.TipoInscricao               := pFisica;

  Beneficiario.CNPJCPF                       := DMMovimentacao.querycpf_CNPJ.Text;
  Beneficiario.Nome                          := DMMovimentacao.querynome_rs.Text;
  Beneficiario.FantasiaCedente               := DMMovimentacao.queryAPELIDO.Text;
  Beneficiario.Logradouro                    := DMMovimentacao.queryEndereco.Text;
  Beneficiario.NumeroRes                     := DMMovimentacao.queryNUMERO.Text;
  Beneficiario.Complemento                   := DMMovimentacao.queryComplemento.Text;
  Beneficiario.Bairro                        := DMMovimentacao.queryBairro.Text;
  Beneficiario.Cidade                        := DMMovimentacao.queryCidade.Text;
  Beneficiario.UF                            := DMMovimentacao.queryUF.Text;
  Beneficiario.CEP                           := DMMovimentacao.queryCEP.Text;
  Beneficiario.Telefone                      := DMMovimentacao.queryTelefone.Text;
  end;


{ if cbxLayOut.ItemIndex = 6 then
  begin
    for i:=0 to 3 do
    begin
      VLinha := '.';

      VQtdeCarcA := length('Descrição Produto/Serviço ' + IntToStr(I));
      VQtdeCarcB := Length('Valor:');
      VQtdeCarcC := 85 - (VQtdeCarcA + VQtdeCarcB);

      VLinha := PadLeft(VLinha,VQtdeCarcC,'.');

      Titulo.Detalhamento.Add('Descrição Produto/Serviço ' + IntToStr(I) + ' '+ VLinha + ' Valor:   '+  PadRight(FormatCurr('R$ ###,##0.00', StrToCurr(edtValorDoc.Text) * 0.25),18,' ') );
    end;
    Titulo.Detalhamento.Add('');
    Titulo.Detalhamento.Add('');
    Titulo.Detalhamento.Add('');
    Titulo.Detalhamento.Add('');
    Titulo.Detalhamento.Add('Desconto ........................................................................... Valor: R$ 0,00' );
  end;


  Titulo.Verso := ((cbxImprimirVersoFatura.Checked) and ( cbxImprimirVersoFatura.Enabled = true ));   }
 //   dmcob.ACBrBoleto.Banco.MontarCampoNossoNumero(titulo);

   DMCOB.cds_titulos.Edit;
  IF CheckBox2.Checked = True then
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '1'
   else
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '0';
   DMCOB.cds_titulosNumBoleto.text := OnlyNumber(dmcob.ACBrBoleto.Banco.MontarCampoNossoNumero(titulo)); // FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Titulo.NossoNumero + Titulo.NossoNumeroCorrespondente;
   if ComboEdit1.Text > '' then
   begin
   DMCOB.cds_titulosCOD_AVALISTA.Text := ComboEdit1.Text;
   end;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);

   DMCOB.cds_titulos.NEXT;
 end;

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
            exit; // ... você pode usar o conjunto mensagem + abort!
            end;
//         Try
          begin
          dmcob.ACBrBoleto.ListadeBoletos.Clear;

          dmcob.ConfigurarBoleta;

          alimenta;

          if cbxLayOut.ItemIndex = 1 then
          begin
          dmcob.ACBrBoletoFCFR1.FastReportFile := ExtractFilePath(Application.ExeName) + 'rel\BoletoCarne.fr3';
          end else
          if cbxLayOut.ItemIndex = 2 then
          begin
          dmcob.ACBrBoletoFCFR1.FastReportFile := ExtractFilePath(Application.ExeName) + 'rel\BoletoFatura.fr3';
          end else
          if cbxLayOut.ItemIndex = 8 then
          begin
          dmcob.ACBrBoletoFCFR1.FastReportFile := ExtractFilePath(Application.ExeName) + 'rel\BoletoPIX.fr3';
          end else
          begin
          dmcob.ACBrBoletoFCFR1.FastReportFile := ExtractFilePath(Application.ExeName) + 'rel\boleto.fr3';
           end;



          dmcob.ACBrBoleto.Imprimir;

        //  PrepararTitulo;
         // GBTitulo1.PreviewModal;
         // Frmtitulos.Close;
        end;


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
   cod_cob  := DMCOB.sds_cedentesCODIGO_BOLETO.asinteger;



  { dmcob.qrycedentes.active := false;
   dmcob.qrycedentes.Params[0].value := cod_cob;
   dmcob.qrycedentes.active := true;  }
  // gbTitulo1.NossoNumero := EditNossoNumero.Text;
  // txtDigitoNossoNumero.Text := gbTitulo1.DigitoNossoNumero;
end;

procedure TfrmTitulos.cbxLayOutChange(Sender: TObject);
begin
 dmcob.ACBrBoleto.ACBrBoletoFC.LayOut := TACBrBolLayOut( cbxLayOut.ItemIndex );

 { cbxImprimirVersoFatura.Enabled := (cbxLayOut.ItemIndex = 6); // lFaturaDetal
  if cbxLayOut.ItemIndex <> 6 then
   cbxImprimirVersoFatura.Checked := false;}
end;

procedure TfrmTitulos.ComboEdit1ButtonClick(Sender: TObject);
begin
    frmxloc_FUNCIONARIO := tfrmxloc_FUNCIONARIO.create(self);
    frmxloc_FUNCIONARIO.tag := 2;
    frmxloc_FUNCIONARIO.showmodal;
    ComboEdit1.text  :=DMMovimentacao.query.Fieldbyname('codigo').AsString;
    sLabel1.Caption:=DMMovimentacao.query.Fieldbyname('NOME_RS').AsString;
    sLabel2.Caption:=DMMovimentacao.query.Fieldbyname('CPF_CNPJ').AsString;

end;

procedure TfrmTitulos.ComboEdit1Exit(Sender: TObject);
begin
if comboedit1.text > '' then
begin
   DMMovimentacao.query.Close;
  DMMovimentacao.query.SQL.clear;
  DMMovimentacao.query.SQL.Add('select * from clientes where codigo = '+ comboedit1.text +'');
  DMMovimentacao.query.open;
   ComboEdit1.text  :=DMMovimentacao.query.Fieldbyname('codigo').AsString;
   sLabel1.Caption:=DMMovimentacao.query.Fieldbyname('NOME_RS').AsString;
    sLabel2.Caption:=DMMovimentacao.query.Fieldbyname('CPF_CNPJ').AsString;
end;

end;

end.
