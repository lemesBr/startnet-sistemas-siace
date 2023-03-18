unit TitulosLista;

interface

uses
  SysUtils, Forms, DB, Variants, Classes, Controls, Dialogs, ActnList,
  ImgList, Menus, ComCtrls, ToolWin, Grids, DBGrids, ExtDlgs,
  SUIDBCtrls,Windows, Messages, Graphics, SUIDlg,
  SUIButton, ExtCtrls, stdCtrls, Mask,  RXCtrls,
  SUIImagePanel, SUIEdit,  DBCtrls, SUITabControl, RXDBCtrl,
  Buttons, SUIGroupBox, Formata_CPF_CNPJ, defs, RxGIF,
  XDBGrids, sBitBtn, sPanel, sButton, System.Actions,
  System.ImageList, RxToolEdit, sLabel, NxPageControl,ACBrBase, ACBrBoleto,
  ACBrBoletoConversao, ACBrBoletoRetorno, TypInfo, DateUtils, pcnConversao,
  ACBrDFeSSL, ACBrUtil, AdvGlowButton, sDBLookupComboBox, sEdit;

  type
  TfrmTitulosLista = class(TForm)
    ActionList1: TActionList;
    Imprimir: TAction;
    Incluir: TAction;
    Alterar: TAction;
    Excluir: TAction;
    Sair: TAction;
    Atualizar: TAction;
    Filtrar: TAction;
    AjudaTopicos: TAction;
    AjudaSobre: TAction;
    StatusBar1: TStatusBar;
    GerarArquivoRemessa: TAction;
    LerArquivoRetorno: TAction;
    OpenDialog1: TOpenDialog;
    GerarRelatorioRetorno: TAction;
    SaveDialog1: TSaveDialog;
    VisualizarImpressao: TAction;
    EnviarBoletoEMail: TAction;
    dlgSalvarImagem: TSavePictureDialog;
    GerarImagemBoleto: TAction;
    PopupMenu1: TPopupMenu;
    Imprimir2: TMenuItem;
    Visializar1: TMenuItem;
    MessageBanco: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    suiButton2: TAdvGlowButton;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Edit1: TEdit;
    suiButton3: TAdvGlowButton;
    sPanel1: TsPanel;
    btnLocalizar: TAdvGlowButton;
    btnNovo: TAdvGlowButton;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    XDBGrid1: TXDBGrid;
    Panel1: TPanel;
    XDBGrid2: TXDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    XDBGrid3: TXDBGrid;
    sLabelFX1: TsLabelFX;
    Panel5: TPanel;
    sLabelFX2: TsLabelFX;
    Label35: TsLabel;
    Edit2: TsEdit;
    Edit3: TsEdit;
    Cliente: TComboEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    sEdit2: TsEdit;
    procedure SairExecute(Sender: TObject);
//    procedure AtualizarExecute(Sender: TObject);
//    procedure FiltrarExecute(Sender: TObject);
    procedure AjudaTopicosExecute(Sender: TObject);
    procedure AjudaSobreExecute(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrepararTitulo;
    procedure GerarArquivoRemessaExecute(Sender: TObject);
//    procedure GerarImagemBoletoExecute(Sender: TObject);
//    procedure EnviarBoletoEMailExecute(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
//    procedure gridTitulosDblClick(Sender: TObject);
//    procedure ToolButton17Click(Sender: TObject);
//    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure FormCreate(Sender: TObject);
    procedure alimenta;
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ClienteChange(Sender: TObject);
//    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTitulosLista: TfrmTitulosLista;
   masc, fem: TbitMap;

implementation

uses Titulos, BoletoPersonalizado, ModulodeDados, UDMCob, ConsLyBancos,
  Principal, Ubibli1, uDMMovimentacao;

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

procedure TfrmTitulosLista.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servirá de apoio para diveras outras rotinas
}
begin

  { if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit2.Text));
   case ComboBox4.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;
    for nI := 1 to nQtdeBoletos do

     //Dados do titulo
   with gbTitulo1 do
     begin
        //Se não localizar o cedente, gera erro
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', dmcob.CDS_Cobranca1Id_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      NumeroDocumento :=  dmcob.CDS_Cobranca1Codigo_Compra.AsString + '-' +  dmcob.CDS_Cobranca1Parcela.AsString;
      if dmcob.CDS_COBRANCA1BANCO_PORTADOR.Text = '237' then
       NossoNumero :=  dmcob.CDS_Cobranca1Numboleto1.AsString
      else
      NossoNumero :=  dmcob.CDS_Cobranca1Numboleto.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataProcessamento := (Date);

      {  if dmcob.CDS_Cobranca1FILTRO.AsInteger = 1 THEN
      begin
      Protesto := '06';
      diasprotesto :=  dmcob.qryCedentesQUANT_DIAS_PROTESTO.AsString;
      end else
      begin
      Protesto := '00';
      diasprotesto :='00';
      end;  }

    {  DataDocumento   :=  dmcob.CDS_Cobranca1Data_Compra.AsDateTime;
      DataVencimento  :=  dmcob.CDS_Cobranca1Data_Vencimento.AsDateTime;
      ValorDocumento  :=  dmcob.CDS_Cobranca1Valor_Compra.AsCurrency;
      //DataDesconto    :=
      ValorDesconto :=   dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsCurrency;
      ValorMoraJuros  :=  dmcob.CDS_Cobranca1Valor_Compra.AsFloat * dmcob.qryCedentesPERC_JUROS.AsFloat /100;
      // percmulta       :=  dmcob.qryCedentesPERC_MULTA.AsFloat;     ativar

      Instrucoes.Text := dmcob.qryCedentesObservacao.Value;
//    InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//    logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//    MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');


      //Dados do cedente
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Text;
         Nome := dmcob.qryCedentesNomeCedente.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

         //Endereço do cedente
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := dmcob.qryCedentesCEP.TEXT;
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
      if not dm.Sds_Clientes.Locate('Codigo', dmcob.CDS_Cobranca1Codigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      //Dados do sacado do título
      with Sacado do
      begin
         if AnsiUpperCase(dm.sds_ClientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.sds_ClientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := removechar(dm.sds_ClientesCPF_cnpj.Text);
         Nome := dm.sds_ClientesNome_rs.AsString;

         //Endereço do sacado do título
         with Endereco do
         begin
            Rua := dm.sds_ClientesEndereco.AsString;
            Numero := dm.sds_ClientesNumero.AsString;
            Complemento := dm.sds_ClientesComplemento.AsString;
            Bairro := dm.sds_ClientesBairro.AsString;
            Cidade := dm.sds_ClientesCidade.AsString;
            Estado := dm.sds_ClientesUF.AsString;
            CEP := Removechar(dm.sds_ClientesCEP.TEXT);
            Email := dm.sds_ClientesEMail.AsString;
         end;

         IF dmcob.CDS_Cobranca1Cod_avalista.Text > '' then
         BEGIN
         if not dm.Sds_Clientes.Locate('Codigo', dmcob.CDS_Cobranca1Cod_avalista.Text,[]) then
         Raise Exception.Create('Cliente (Avalista) não localizado');

         SacadorAvalista :=  dm.sds_ClientesNome_rs.AsString;
       //  avalistaCPFCGC  :=  removechar(dm.sds_ClientesCPF_cnpj.Text);  ativar
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
   end
end; }
end;

procedure TfrmTitulosLista.SairExecute(Sender: TObject);
{Objetivo: Fechar esta janela}
begin
   DMCob.ACBrBoleto.ListadeBoletos.Clear;
   Close;
end;

procedure TfrmTitulosLista.AjudaTopicosExecute(Sender: TObject);
{Objetivo: Mostrar o help do software}
begin
   MessageDlg('A rotina "Tópicos da ajuda" ainda não implementada',mtError,[mbCancel],0);
end;

procedure TfrmTitulosLista.AjudaSobreExecute(Sender: TObject);
{Objetivo: Mostrar a janela Sobre, contendo informações como Nome e Versão do software}
begin
   MessageDlg('A rotina "Ajuda sobre" ainda não implementada',mtError,[mbCancel],0);
end;

procedure TfrmTitulosLista.ShowHint(Sender : TObject);
{Objetivo: Mostrar hints na barra de tarefas}
begin
   StatusBar1.Panels[0].Text := GetLongHint(Application.Hint);
end;

procedure TfrmTitulosLista.FormActivate(Sender: TObject);
{Objetivo: Associar o procedimento ShowHint ao evento OnHint da aplicação}
begin
//   Application.OnHint := ShowHint;
end;

procedure TfrmTitulosLista.FormShow(Sender: TObject);
begin
   dmcob.qrycedentes.active := false;
   dmcob.qrycedentes.active := true;

   DMCOB.sds_cedentes.active := false;
   DMCOB.sds_cedentes.active := true;

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


   dmcob.CDS_Cobranca1.active := false;
///   AtualizarExecute(Sender);
end;


procedure TfrmTitulosLista.alimenta;
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
    if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;
     if DMMovimentacao.query.State = dsInactive then
      DMMovimentacao.query.Open;


 with DMCob.ACBrBoleto do
  begin
  //First;
   { DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;  }

    Titulo := DMCob.ACBrBoleto.CriarTituloNaLista;

    Titulo.Vencimento        := dmcob.CDS_Cobranca1DATA_VENCIMENTO.AsDateTime;
    Titulo.DataDocumento     := dmcob.CDS_Cobranca1DATA_COMPRA.AsDateTime;
    Titulo.NumeroDocumento   := dmcob.CDS_Cobranca1Codigo_Compra.AsString + '-' +  dmcob.CDS_Cobranca1Parcela.AsString;
    Titulo.EspecieDoc        := DMCob.qryCBR_CONFIGespecie.Text;

    if dmcob.qryCedentesACEITE.TEXT ='SIM' then
     Titulo.Aceite := atSim
    else
     Titulo.Aceite := atNao;

    Titulo.DataProcessamento        := Now;
    Titulo.Carteira                 := DMCob.qryCBR_CONFIGCarteira.AsString;
    Titulo.NossoNumero              := dmcob.CDS_Cobranca1Numboleto1.AsString;
    Titulo.ValorDocumento           := dmcob.CDS_Cobranca1Valor_Compra.AsCurrency;

    if not dm.Sds_Clientes.Locate('Codigo', dmcob.CDS_Cobranca1Codigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

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
  Titulo.LocalPagamento           := DMCob.qryCBR_CONFIGLocal_pagamento.Value;
  Titulo.ValorMoraJuros           := DMCob.qryCBR_CONFIGPERC_JUROS.ascurrency;
  Titulo.ValorDesconto            := 0;
  Titulo.ValorAbatimento          := 0;
  Titulo.DataMoraJuros            := dmcob.CDS_Cobranca1DATA_VENCIMENTO.AsDateTime + 1;
  Titulo.DataDesconto             := 0;
  Titulo.TipoDesconto             := tdNaoConcederDesconto;
  Titulo.DataAbatimento           := 0;
  if DMCob.qryCBR_CONFIGPROTESTAR_AUTOMATICO.Text = 'S' then
  Titulo.DataProtesto             := dmcob.CDS_Cobranca1DATA_VENCIMENTO.AsDateTime + DMCob.qryCBR_CONFIGQUANT_DIAS_PROTESTO.value
  else
  Titulo.DataProtesto             := 0;
  Titulo.PercentualMulta          := DMCob.qryCBR_CONFIGperc_multa.ascurrency;
  Titulo.CodigoMoraJuros          := cjTaxaDiaria;
  Titulo.OcorrenciaOriginal.Tipo  := toRemessaRegistrar;
  Titulo.Instrucao1               := trim(DMCob.qryCBR_CONFIGOBSERVACAO.Text);
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
  {
  DMMovimentacao.query.Locate('Codigo', dmcob.CDS_Cobranca1Codigo_Cliente.Value,[]) ;

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

     }

{  if cbxLayOut.ItemIndex = 6 then
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

  { DMCOB.cds_titulos.Edit;
  IF CheckBox2.Checked = True then
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '1'
   else
   DMCOB.CDS_TITULOSCOM_REGISTRO.TEXT := '0';
   DMCOB.cds_titulosNumBoleto.text := OnlyNumber(dmcob.ACBrBoleto.Banco.MontarCampoNossoNumero(titulo)); // FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Titulo.NossoNumero + Titulo.NossoNumeroCorrespondente;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);

   DMCOB.cds_titulos.NEXT;   }
 end;
end;

procedure TfrmTitulosLista.ClienteButtonClick(Sender: TObject);
begin
    if Cliente.Text = '' then
    begin
    DM.sds_LyBancos.Active:= False;
   // DM.sds_LyBancos.DataSet.CommandText.Clear;
    DM.sds_LyBancos.DataSet.CommandText :=('select * from BOLETO');
    DM.sds_LyBancos.Active:= True;
    end;

    if FormConsLyBancos=nil   then
    begin
     FormConsLyBancos:=TFormConsLyBancos.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsLyBancos.Edit1.Text := Cliente.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
     // FormConsClientes.Tag := 1;
      FormConsLyBancos.ShowModal;

      Cliente.Clear;
      Cliente.Text      := RemoveChar(DM.sds_LyBancosCODIGO_BOLETO.Text);

      //ClienteChange(Sender);
      cod_cob   := DM.sds_LyBancosCODIGO_BOLETO.ASINTEGER;
      EDIT1.TEXT  := DM.sds_LyBancosBANCO_PORTADOR.Text;
      RXLabel6.Caption  := DM.sds_LyBancosNOMECEDENTE.Text;
      EDIT2.TEXT  := DM.sds_LyBancosNUMEROCONTA.Text;
      EDIT3.TEXT  := DM.sds_LyBancosDIGITOCONTA.Text;
    end;

end;

procedure TfrmTitulosLista.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text <='Z') THEN
begin
sEDIT2.Text :='LETRAS';
end else
IF (Cliente.Text>='0') AND (Cliente.Text <='9') THEN
begin
sEDIT2.Text:='NUMEROS';
end;
IF Cliente.Text='' THEN
begin
sEDIT2.Text:=''
end;
end;

procedure TfrmTitulosLista.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
   If  Cliente.Text >'' then
  BEGIN
   DM.SDS_lyBancos.Active := False;
   DM.SDS_lyBancos.Active := TRUE;
 Application.ProcessMessages;

 //suiButton4.Click;
 if sEDIT2.Text ='NUMEROS' then
 begin
    DM.SDS_lyBancos.Locate('CODIGO_BOLETO', Cliente.Text,[lopartialkey]);
 end;
  if sEDIT2.Text ='LETRAS' then
 begin
 DM.SDS_lyBancos.Locate('DESCRICAO', Cliente.Text,[lopartialkey]);
 end;

 if NOT  DM.sds_LyBancos.Eof then
 begin
      cod_cob   := DM.sds_LyBancosCODIGO_BOLETO.ASINTEGER;
      EDIT1.TEXT  := DM.sds_LyBancosBANCO_PORTADOR.Text;
      RXLabel6.Caption  := DM.sds_LyBancosNOMECEDENTE.Text;
      EDIT2.TEXT  := DM.sds_LyBancosNUMEROCONTA.Text;
      EDIT3.TEXT  := DM.sds_LyBancosDIGITOCONTA.Text;
 end;
 Application.ProcessMessages;

if  DM.sds_LyBancos.Eof then
begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Sem Registro para mostrar!';
    FormPrincipal.MsgInformacao.Execute;
Cliente.SetFocus;
end;
end;
end;
end;

procedure TfrmTitulosLista.GerarArquivoRemessaExecute(Sender: TObject);
{Objetivo: Gerar arquivo para banco contendo os títulos mostrados na tela}
Var Enviar : String;
       Ok : Boolean;
       DeStr,mes:string;
       Titulo : TACBrTitulo;
 begin
       enviar := 'T';
         //    Ok := InputQuery('Enviar', 'Clique OK para enviar os registros Selecionados ou digite - Todos - para enviar Todos ',Enviar);
         //     If Ok then
       With dmcob.cds_cobranca1 do
        begin
         Filtered := false; // Desativa o filtro
          //       if Enviar <>  'Todos' then
          //    begin      // A função QuotedStr coloca apóstrofos  no string.
         Filter := 'chek_box = ' + QuotedStr(Enviar); // monta o filtro
         Filtered := true; // Ativa o filtro
       end;
       
mes := FormatDateTime('MM',Date);

if mes='01' then DeStr:='1';
if mes='02' then DeStr:='2';
if mes='03' then DeStr:='3';
if mes='04' then DeStr:='4';
if mes='05' then DeStr:='5';
if mes='06' then DeStr:='6';
if mes='07' then DeStr:='7';
if mes='08' then DeStr:='8';
if mes='09' then DeStr:='9';
if mes='10' then DeStr:='O';
if mes='11' then DeStr:='N';
if mes='12' then DeStr:='D';

      dmcob.ConfigurarBoleta;

   {Dados da remessa}
   with DMCob.ACBrBoleto do
   begin
   // dmcob.sds_Cedentes.Active := false;
   // dmcob.sds_Cedentes.Active := true;
    {  if edit1.Text = '748' then
      begin
      SaveDialog1.InitialDir := ExtractFilePath(Application.ExeName)+ '\Remessa';
      SaveDialog1.FileName := DMCOB.qryCBR_CONFIGNumeroConta.AsString.Trim + DeStr + FormatDateTime('dd',Date) + '.CRM';
      SaveDialog1.Title := 'Salvar arquivo remessa em';
      end else
     // if edit.Text = '756' then
      begin
      SaveDialog1.InitialDir := ExtractFilePath(Application.ExeName)+ '\Remessa';
      SaveDialog1.FileName := 'Remessa' +'-'+ DMCOB.qryCBR_CONFIGNumeroConta.AsString.Trim +'-'+ FormatDateTime('dd',Date) +'-'+ FormatDateTime('mm',Date) +'-'+ FormatDateTime('yyyy',Date) +'.REM';
      SaveDialog1.Title := 'Salvar arquivo remessa em';
      end;
      if SaveDialog1.Execute then
         DirArqRemessa := SaveDialog1.FileName
      else
      Exit;    }


      NumeroArquivo := DMCOB.qryCBR_CONFIGNUMERO_REMESSA.AsInteger;
      DataArquivo := Now;
     //  Titulos.Clear;

     ListadeBoletos.Clear;


      {Inclui todos os títulos}
      dmcob.CDS_Cobranca1.First;
      while not  dmcob.CDS_Cobranca1.Eof do
       begin
        //dbgrid1.SelectedRows.CurrentRowSelected := 'X';
         // dbgrid1.Columns.Items[0].FieldName := 'X';
        // PrepararTitulo;
        // Titulos.Add(gbTitulo1);

       //  dmcob.ACBrBoleto.ListadeBoletos.Clear;

          alimenta;


         dmcob.CDS_Cobranca1.Next;
      end;

       DMCob.ACBrBoleto.GerarRemessa(NumeroArquivo);


      DMCOB.qryCBR_CONFIG.Edit;
      DMCOB.qryCBR_CONFIGNUMERO_REMESSA.Value := DMCOB.qryCBR_CONFIGNUMERO_REMESSA.Value + 1;
      DMCOB.qryCBR_CONFIG.Post;
      DMCOB.qryCBR_CONFIG.ApplyUpdates(0);

       dmcob.CDS_Cobranca1.First;
       while not  dmcob.CDS_Cobranca1.Eof do
       begin
         dmcob.CDS_Cobranca1.edit;
         dmcob.CDS_COBRANCA1ENVIADO.Text := 'S';
         DMCOB.CDS_COBRANCA1REMESSA.AsInteger :=  NumeroArquivo;
         dmcob.CDS_Cobranca1.post;
         dmcob.CDS_Cobranca1.Next;
      end;
      dmcob.CDS_Cobranca1.ApplyUpdates(0);

   //   if GerarRemessa = true then
      MessageDlg('Sistema Gerou a remessa de nº: ' + IntToStr(NumeroArquivo) + ' no arquivo ' + SaveDialog1.FileName,mtInformation,[mbOk],0);

   end; {with Remessa}
end;


procedure TfrmTitulosLista.FormDeactivate(Sender: TObject);
begin
//   Application.Hint := '';
 //  Application.OnHint := nil;
end;

procedure TfrmTitulosLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FrmTITULOSLISTA:=nil;
end;



procedure TfrmTitulosLista.ToolButton2Click(Sender: TObject);
begin
//PrepararTitulo;
//gbTitulo1.Visualizar;
end;

procedure TfrmTitulosLista.suiButton2Click(Sender: TObject);
var
vcli1,vcli2:STRING;
port:string;
begin
if Edit1.Text ='' then
BEGIN
  ShowMessage('Preencha os dados do banco e conta antes de localizar...') ;
  Exit;
END;



vcli1:=datetostr(DATE);
vcli2:=datetostr(DATE);

VCLI1:=dateedit3.TexT;
VCLI2:=dateedit4.TexT;
port:=EDIT1.text;
dmcob.CDS_Cobranca1.Filtered := FALSE;
dmcob.CDS_Cobranca1.Active :=FALSE;
dmcob.QRYcobranca1.close;
dmcob.QRYcobranca1.SQL.Clear;
dmcob.qrycobranca1.SQL.add('select * from CREDIARIO WHERE SITUACAO = ''A'' and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(VCLI1)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(VCLI2)))+ ' and cod_empresa ='+ inttostr(iemp) +' ');
if port > '' then
dmcob.qrycobranca1.SQL.add('and BANCO_PORTADOR ='+(port));
dmcob.qrycobranca1.Open;
dmcob.CDS_Cobranca1.Active :=TRUE;
dmcob.CDS_Cobranca1.Filtered := FALSE;

Try
dmcob.CDS_Cobranca1.first;
repeat
dmcob.CDS_Cobranca1.edit;
dmcob.CDS_Cobranca1CHEK_BOX.Value:='';
dmcob.CDS_Cobranca1.Post;
dmcob.CDS_Cobranca1.ApplyUpdates(0);
dmcob.CDS_Cobranca1.Next;
until dmcob.CDS_Cobranca1.eof;
//dmcob.CDS_Cobranca1.Refresh;
xdbgrid1.refresh;
dmcob.CDS_Cobranca1.first;
//xdbgrid1.cursor:=crdefault;
except
dmcob.CDS_Cobranca1.cancel;
dmcob.CDS_Cobranca1.Filtered := FALSE;
cod_cob  := strtoint(cliente.Text);
end;
end;


procedure TfrmTitulosLista.suiButton3Click(Sender: TObject);
begin
DateEdit3.Clear;
DateEdit4.Clear;
Edit1.Clear;
end;

procedure TfrmTitulosLista.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
    Var Check: Integer;
       R: TRect;
begin
//Desenha um checkbox no dbgrid
if column.FieldName = 'CHEK_BOX' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if dmcob.CDS_COBRANCA1CHEK_BOX.AsString = 'T' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-0,-0); {Diminue o tamanho do CheckBox}
DrawFrameControl(xDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;

//Desenha um checkbox no dbgrid
if column.FieldName = 'COM_REGISTRO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if dmcob.CDS_COBRANCA1COM_REGISTRO.AsINTEGER = 1 then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-0,-0); {Diminue o tamanho do CheckBox}
DrawFrameControl(xDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;
{If DataCol=6 Then // se for a nossa coluna 1
begin
if dmcob.CDS_COBRANCA1.FieldByName('ENVIADO').asstring = 'S' then
TDbGrid(Sender).Canvas.Draw(Rect.Left,Rect.Top,masc)
else
if dmcob.CDS_COBRANCA1.FieldByName('ENVIADO').asstring = 'N' then
TDbGrid(Sender).Canvas.Draw(Rect.Left,Rect.Top,fem)  }


//Desenha um checkbox no dbgrid
if column.FieldName = 'ENVIADO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if dmcob.CDS_COBRANCA1ENVIADO.AsString = 'S' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-0,-0); {Diminue o tamanho do CheckBox}
DrawFrameControl(xDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;


//Desenha um checkbox no dbgrid
if column.FieldName = 'FILTRO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if dmcob.CDS_COBRANCA1FILTRO.AsInteger = 1 then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-0,-0); {Diminue o tamanho do CheckBox}
DrawFrameControl(xDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;

 { if (Column.Field.FieldName = 'CHEK_BOX') and (not (gdFixed in State)) then
  begin
  // Desenha um campo em branco
  XDbgrid1.Canvas.FillRect(Rect);

  // Testa de a linha está selecionada ou não
  if XDbgrid1.SelectedRows.IndexOf(XDbgrid1.DataSource.DataSet.Bookmark) >= 0 then
    DrawFrameControl(XDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
  else
    DrawFrameControl(XDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;


 if (Column.Field.FieldName = 'FILTRO') and (not (gdFixed in State)) then
  begin
  // Desenha um campo em branco
  XDbgrid1.Canvas.FillRect(Rect);

  // Testa de a linha está selecionada ou não
  if XDbgrid1.SelectedRows.IndexOf(XDbgrid1.DataSource.DataSet.Bookmark) >= 0 then
    DrawFrameControl(XDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
  else
    DrawFrameControl(XDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end; }

end;



procedure TfrmTitulosLista.XDBGrid1CellClick(Column: TXColumn);
begin
DMCOB.CDS_COBRANCA1.Edit;
if xDBGrid1.SelectedField = DMCOB.CDS_COBRANCA1CHEK_BOX THEN
begin
if DMCOB.CDS_COBRANCA1CHEK_BOX.AsString = 'T' then
DMCOB.CDS_COBRANCA1CHEK_BOX.AsString := ''
else DMCOB.CDS_COBRANCA1CHEK_BOX.AsString := 'T';
//XDBGrid1.SelectedRows.CurrentRowSelected := not XDBGrid1.SelectedRows.CurrentRowSelected;
end;
if xDBGrid1.SelectedField = DMCOB.CDS_COBRANCA1FILTRO THEN
begin
if DMCOB.CDS_COBRANCA1FILTRO.AsString = '1' then
DMCOB.CDS_COBRANCA1FILTRO.AsString := '0'
else DMCOB.CDS_COBRANCA1filtro.AsString := '1';
//XDBGrid1.SelectedRows.CurrentRowSelected := not XDBGrid1.SelectedRows.CurrentRowSelected;
end;


DMCOB.CDS_COBRANCA1.Post;
DMCOB.CDS_COBRANCA1.ApplyUpdates(0);
//DM.SQLC.Commit(0);



end;

procedure TfrmTitulosLista.FormCreate(Sender: TObject);
begin
{masc:=TBitMap.Create;
masc.LoadFromFile('C:\siace\imagens\chek.bmp');
fem :=Tbitmap.create;
fem.LoadFromFile('C:\siace\imagens\chek1.bmp');  }
end;

end.

