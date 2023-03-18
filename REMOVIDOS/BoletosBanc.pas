unit BoletosBanc;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormPadrai, Grids, DBGrids, SUIDBCtrls, SUIDlg,
  SUIButton, ExtCtrls, StdCtrls, Mask,  RXCtrls,
  SUIImagePanel, SUIEdit, Menus,  ImgList, DB,  DBCtrls, SUITabControl,  RXDBCtrl, SUIPageControl,
  ComCtrls, Buttons, ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  XDBGrids, TaskDialog, sDBNavigator, sBitBtn,
  sPanel, sMaskEdit, sComboBox, sEdit, sLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit, AdvSmoothMessageDialog,
  sCustomComboEdit, AdvGlowButton;

type
  TFormBoletos = class(TFormPadrao)
    Panel3: TsPanel;
    Label3: TsLabel;
    Edit2: TsEdit;
    suiButton1: TsBitBtn;
    Panel7: TsPanel;
    RxLabel6: TsLabel;
    Panel4: TsPanel;
    myLabel3d1: TsLabelFX;
    ComboBox1: TsComboBox;
    Label1: TsLabel;
    Label2: TsLabel;
    MaskEdit1: TsMaskEdit;
    PopupMenu1: TPopupMenu;
    Visualizar1: TMenuItem;
    Imprimir1: TMenuItem;
    XDBGrid1: TXDBGrid;
    sLabel3: TsLabel;
    sPanel1: TsPanel;
    ComboEdit1: TComboEdit;
    sPanel2: TsPanel;
    sLabel1: TsLabel;
    sPanel3: TsPanel;
    sLabel2: TsLabel;
    sLabel5: TsLabel;
    sLabel4: TsLabel;
    Edit3: TEdit;
    procedure PrepararTitulo;
    procedure suiButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletos: TFormBoletos;
//  TD:TTransactionDesc;
  juros : Currency;

implementation

uses UDMCob, Z_RotinasGerais, ModulodeDados, ConsClientes,
  Titulos, Principal, Ubibli1, ModulodeDadosBaixas;

{$R *.dfm}

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;


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

procedure TFormBoletos.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
    {Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servirá de apoio para diveras outras rotinas}
begin

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));

    for nI := 1 to nQtdeBoletos do
     {Dados do titulo}
//  DMCOB.cds_titulos.first;
   // repeat

   with gbTitulo1 do
     begin
      NumeroDocumento   :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero       :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira          := dmcob.qryCedentesCarteira.AsString;
      DataDocumento     :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataVencimento    :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento    :=  DMCOB.cds_titulosValor_Compra.AsCurrency;

      //   Instrucoes.Text   := dmcob.qryCedentesObservacao.Value;
      //   InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
     {      if CHAVE > '' then
      //Instrucoes.Text := dmcob.qryCedentesObservacao.Text  + #10+#13 + 'Chave de Liberação: '+ CHAVE
      Instrucoes.Text := dmcob.sds_cedentesObservacao.text + #13 + 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13 +'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+FloatToStr(DMCOB.cds_titulosValor_Compra.AsFLOAT * dmcob.qryCedentesPERC_JUROS.AsFloat /100)+' AO DIA.' +  #10+#13 + 'Chave de Liberação: '+ CHAVE
      else }
      //  Instrucoes.Text := dmcob.qryCedentesObservacao.Text;
      juros := (DMCOB.cds_titulosValor_Compra.AsFLOAT * dmcob.qryCedentesPERC_JUROS.AsFloat /100);
      juros := ExatoCurrency(juros,2) ;

      Instrucoes.Text :=   dmcob.sds_cedentesObservacao.text + #13+ 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13+ 'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+ FloatToStr(juros)+' AO DIA.';



      LocalPagamento    := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

     { IF DMCOB.cds_titulosCOM_REGISTRO.AsInteger = 1 then
      Registro := '1'
      else
      Registro := '3';  }

      {Se não localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC         := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome                 := dmcob.qryCedentesNomeCedente.text+'-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente        := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente  := dmcob.qryCedentesCedenteCodigoDigito.Value;

         {avalista}
         if ComboEdit1.Text > '' then
         SacadorAvalista := sLabel1.Caption
         else
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;


         {Endereço do cedente}
         with Endereco do
         begin
            Rua              := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero  := dmcob.qryCedentesNumero.AsString;
            Complemento      := dmcob.qryCedentesComplemento.AsString;
            Bairro           := dmcob.qryCedentesBairro.AsString;
            Cidade           := dmcob.qryCedentesCidade.AsString;
            Estado           := dmcob.qryCedentesuf.AsString;
            CEP              := dmcob.qryCedentesCEP.AsString;
            Email            := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados bancários do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo    := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia   := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia   := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta     := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta     := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

      {Se não localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      {Dados do sacado do título}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := RemoveChar(dm.Sds_clientesCPF_cnpj.AsString);
         Nome := dm.Sds_clientesNome_rs.AsString + '-'+dm.Sds_clientesCPF_cnpj.AsString;

         {Endereço do sacado do título}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString + 'fone: '+ dm.SDS_ClientesTELEFONE.text;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := dm.Sds_clientesCEP.AsString;
            Email := dm.Sds_clientesEMail.AsString;
         end; {with Endereco}

         {Dados bancários do sacado do título}
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
   end;
end;



procedure TFormBoletos.suiButton1Click(Sender: TObject);
begin
  inherited;
if Tag = 1 then
begin
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where CODIGO_COMPRA LIKE :pesquisa AND SITUACAO=''A'' ';
dmcob.qrytitulos.parambyname('pesquisa').asString:=AnsiUpperCase(Edit2.Text){+'%'};
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;
if Tag = 2 then
begin
 dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where COD_ENTRADA LIKE :pesquisa AND SITUACAO=''A'' ';
dmcob.qrytitulos.parambyname('pesquisa').asString:=AnsiUpperCase(Edit2.Text){+'%'};
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;
end;

procedure TFormBoletos.btnNovoClick(Sender: TObject);
begin
  inherited;
     Application.CreateForm(TfrmTitulos, frmTitulos);
     TRY
      frmTitulos.Tag := 2;
      frmTitulos.Showmodal;
    EXCEPT
      on E : Exception do
      begin
         frmTitulos.Release;
         MessageDlg('Ocorreu um erro ao tentar alterar uma conta a receber: ' + E.Message,mtError,[mbOk],0);
      end;
      end;
end;


procedure TFormBoletos.Visualizar1Click(Sender: TObject);
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.HTMLText.text:= 'Por favor gere o boleto antes de Visualiza-lo!!!';
MsgInformacao.Execute;
end else
begin
  inherited;
 try
 begin
  inherited;
          PrepararTitulo;

          case ComboBox1.ItemIndex of
           0: gBTitulo1.BoletoLayout := blPadrao;
           1: gBTitulo1.BoletoLayout := blCarne;
           end;


          gbTitulo1.PreviewModal;
          end;
          begin
          end;
          Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro ao visualizar o titulo feche a tela e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;


procedure TFormBoletos.Imprimir1Click(Sender: TObject);
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.HTMLText.text:= 'Por favor gere o boleto antes de Imprimi-lo!!!';
MsgInformacao.Execute;
end else
begin
  inherited;
 try
 begin
  inherited;
          PrepararTitulo;
           case ComboBox1.ItemIndex of
           0: gBTitulo1.BoletoLayout := blPadrao;
           1: gBTitulo1.BoletoLayout := blCarne;
           end;

          gbTitulo1.imprimir;
          end;
          Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro ao Imprimir o titulo feche a tela e tente novamente !!!';
   MsgErro.Execute;

   end;
end;
end;

procedure TFormBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormBoletos:=nil;
end;

procedure TFormBoletos.FormShow(Sender: TObject);
begin
  inherited;
DMCob.SDS_Cedentes.Active:= False;
DMCob.SDS_Cedentes.Active:= True;
dm.Sds_clientes.Active:= False;
dm.SDS_Clientes.SQL.Clear;
DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'0'+'order by NOME_RS ASC');
dm.Sds_clientes.Active:= True;
suiButton1Click(Sender);

end;
procedure TFormBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBoletos.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de pesquisa de clientes!!');
end;
BEGIN
ComboEdit1.Text:= dm.Sds_clientesCODIGO.Text;
sLabel1.Caption:= dm.Sds_clientesNOME_RS.Text;
sLabel2.Caption:= dm.Sds_clientesCPF_CNPJ.Text;
end;

end;

procedure TFormBoletos.ComboEdit1Change(Sender: TObject);
begin
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT3.Text:='';
end;

procedure TFormBoletos.ComboEdit1Exit(Sender: TObject);
begin
 if edit3.Text='LETRAS' THEN
  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.Locate('CODIGO',ComboEdit1.Text,[lopartialkey]);

  IF ACHOU=FALSE THEN
  begin
  ComboEdit1ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  sLabel1.Caption :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  sLabel2.Caption :=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;
 // Button1Click(Sender);
   end;
    except
    { on E: EDatabaseError do
     ShowMessage(E.Message); }
     ShowMessage('erro ao consultar');
    end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:=  DM.SDS_Clientes.Locate('CODIGO',comboedit1.Text,[lopartialkey]);
  sLabel1.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  sLabel2.Caption:=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
ComboEdit1.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  sLabel1.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  sLabel2.Caption:=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;
end;
end;

end;

end.
