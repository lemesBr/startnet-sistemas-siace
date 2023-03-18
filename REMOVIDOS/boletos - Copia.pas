unit boletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormPadrai, Grids, DBGrids, SUIDBCtrls, SUIDlg,
  SUIButton, ExtCtrls,  StdCtrls, Mylabel, Mask, ToolEdit, RXCtrls,
  SUIImagePanel, SUIEdit, Menus,  ImgList, DB, DBTables, DBCtrls, SUITabControl,  RXDBCtrl, SUIPageControl,
  ComCtrls, Buttons,DBXpress,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  RLBoleto, RLPreviewForm, RLPrintDialog, RLPDFFilter, RLFilters,
  RLRichFilter, RLHTMLFilter, TaskDialog, sDBNavigator, sBitBtn, sPanel,
  sCustomComboEdit, sTooledit, sDBDateEdit, sDBEdit, sGroupBox, sMaskEdit,
  sComboBox, sEdit, acDBGrid, sLabel, FDvSmoothMessageDialog, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CurrEdit;
type
  TFormBoletosBanc = class(TFormPadrao)
    RxLabel1: TsLabel;
    myLabel3d1: TsLabelFX;
    Panel6: TsPanel;
    Panel7: TsPanel;
    RxLabel6: TsLabel;
    Panel8: TsPanel;
    RxLabel7: TsLabel;
    suiDBGrid1: TsDBGrid;
    PopupMenu1: TPopupMenu;
    Visualizar1: TMenuItem;
    Imprimir1: TMenuItem;
    Panel3: TsPanel;
    Edit2: TsEdit;
    suiButton1: TsBitBtn;
    Label3: TsLabel;
    suiButton2: TsBitBtn;
    RxLabel2: TsLabel;
    RxLabel3: TsLabel;
    Panel4: TsPanel;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    GBTitulo1: TRLBTitulo;
    Panel5: TsPanel;
    ComboBox1: TsComboBox;
    MaskEdit1: TsMaskEdit;
    Label2: TsLabel;
    Label1: TsLabel;
    edit1: TComboEdit;
    AlteraDataVencimento1: TMenuItem;
    GroupBox1: TsGroupBox;
    DBEdit1: TsDBEdit;
    Label4: TsLabel;
    DBDateEdit1: TsDBDateEdit;
    Label5: TsLabel;
    BitBtn1: TsBitBtn;
    Edit3: TEdit;
    DateEdit3: TDateEdit;
    sPanel1: TsPanel;
    ComboEdit1: TComboEdit;
    sPanel2: TsPanel;
    sLabel1: TsLabel;
    sPanel3: TsPanel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    Edit4: TEdit;
    Totais: TFDQuery;
    Panel9: TPanel;
    RxLabel4: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel11: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure AtualizaManutencao;
//    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
//    procedure ClienteExit(Sender: TObject);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrepararTitulo;
    procedure Visualizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure Select1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure edit1ButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AlteraDataVencimento1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edit1Exit(Sender: TObject);
    procedure edit1Change(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure suiDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosBanc: TFormBoletosBanc;
  TD:TTransactionDesc;
      dt :TDateTime;
    data :TDateTime;
    Credito : Real;
    CHAVE :string;
    juros : Currency;
    
implementation

uses UDMCob, ModulodeDadosBaixas, Ubibli1, Z_RotinasGerais, ModulodeDados, ConsClientes,
  Titulos, Principal, ModulodeDadosConsultas, OnGuard, OgUtil;

  const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FA, $6F, $8D, $AB, $FC, $DF, $B4);

{$R *.dfm}

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

procedure TFormBoletosBanc.edit1Change(Sender: TObject);
begin
IF (edit1.Text>='A') AND (edit1.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (edit1.Text>='0') AND (edit1.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF edit1.Text='' THEN
EDIT3.Text:='';
end;


Procedure TFormBoletosBanc.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DMCOB.cds_titulos.State = dsBrowse);
BTNNOVO.Enabled:= (DMCOB.cds_titulos.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMCOB.cds_titulos.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DMCOB.cds_titulos.State = dsBrowse);
BTNSALVAR.Enabled:= (DMCOB.cds_titulos.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMCOB.cds_titulos.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DMCOB.cds_titulos.State = dsBrowse);
end;

procedure TFormBoletosBanc.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servirá de apoio para diveras outras rotinas
}
begin

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));
   case ComboBox1.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;
    for nI := 1 to nQtdeBoletos do
     {Dados do titulo}
   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;

     juros := (DMCOB.cds_titulosValor_Compra.AsFLOAT * dmcob.qryCedentesPERC_JUROS.AsFloat /100);
     juros := ExatoCurrency(juros,2) ;

       if CHAVE > '' then
      //Instrucoes.Text := dmcob.qryCedentesObservacao.Text  + #10+#13 + 'Chave de Liberação: '+ CHAVE
      Instrucoes.Text := dmcob.sds_cedentesObservacao.text + #13 + 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13 +'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+ FloatToStr(juros) +' AO DIA.' +  #10+#13 + 'Chave de Liberação: '+ CHAVE
      else
    //  Instrucoes.Text := dmcob.qryCedentesObservacao.Text;
      Instrucoes.Text :=   dmcob.sds_cedentesObservacao.text + #13+ 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13+ 'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+ FloatToStr(juros) +' AO DIA.';

//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');

      IF DMCOB.cds_titulosCOM_REGISTRO.AsInteger = 1 then
      Registro := '1'
      else
      Registro := '3';

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

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.text + '-'+dmcob.qryCedentesCNPJCEDENTE.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

         {avalista}
         if ComboEdit1.Text > '' then
         SacadorAvalista := sLabel1.Caption
         else
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         
         {Endereço do cedente}
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

         {Dados bancários do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
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
         Nome := dm.Sds_clientesNome_rs.AsString+'-'+dm.Sds_clientesCPF_cnpj.AsString;

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
      GBTitulo1.InsertRecord;
   end; {with Titulo}

end;
end;

procedure TFormBoletosBanc.ClienteEnter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
end;

{procedure TFormBoletosBanc.ClienteExit(Sender: TObject);
begin
  inherited;
If  Cliente.Text='' then
    Begin
    Messagecli.ShowModal;
    Cliente.SetFocus;
    end; // else
//X:= 0;
//DMB.SDS_Cliente.Active:= False;
//DMB.SDS_Cliente.Active:= True;
  If dm.Sds_clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
dm.Sds_clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= dm.Sds_clientesCODIGO.Text;
RXLabel6.Caption:= dm.Sds_clientesNOME_RS.Text;
RXLabel7.Caption:= dm.Sds_clientesCPF_CNPJ.Text;
end;
//DMCOB.cds_titulos.First;
//DMCOB.cds_titulos.RecordCount = 0 then
end;}

procedure TFormBoletosBanc.FormShow(Sender: TObject);
begin
  inherited;
//DMCOB.cds_titulos.Active:= False;
//DMCOB.cds_titulos.Active:= True;
DMCob.SDS_Cedentes.Active:= False;
DMCob.SDS_Cedentes.Active:= True;
dm.Sds_clientes.Active:= False;
dm.Sds_clientes.SQL.Clear;
DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'0'+'order by NOME_RS ASC');
dm.Sds_clientes.Active:= True;
//IF DM.SDS_Titulos.RecordCount = 0 then AtualizaManutencao;
EDIT1.TEXT:= '';
RXLabel6.Caption:= '';
RXLabel7.Caption:= '';
//EDIT2.Text := FORMPEDIDOPARCELADO.EDIT2.TEXT;
edit2.SetFocus;
end;

{procedure TFormBoletosBanc.ClienteButtonClick(Sender: TObject);
begin
  inherited;
Try
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Cliente.Text:= dm.Sds_clientesCODIGO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;}

procedure TFormBoletosBanc.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 Var DtVen: TDateTime;
begin
DtVen:= DMCOB.cds_titulosDATA_VENCIMENTO.Value;
If DtVen < Date then
SUIDbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= Date then
SUIDbgrid1.Canvas.Font.Color:= clBlue;
SUIDbgrid1.DefaultDrawDataCell(Rect, SUIdbgrid1.columns[datacol].field, State);
end;

procedure TFormBoletosBanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormBoletosBanc:=nil;
end;

procedure TFormBoletosBanc.Visualizar1Click(Sender: TObject);
 begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.HTMLText.text:= 'Por favor gere o boleto antes de Visualiza-lo!!!';
MsgInformacao.Execute;
//DBEdit1.SetFocus;
end else
 begin
 TD.TransactionID := 1;
 TD.IsolationLevel := XILReadCommitted;
 DM.SQLC.StartTransaction(TD);
 try
 begin
  inherited;
          PrepararTitulo;
          gbTitulo1.Visualizar
          end;
          begin
          DMCOB.cds_titulos.Edit;
          DMCOB.cds_titulosNumBoleto.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + gbtitulo1.NossoNumero + gbtitulo1.DigitoNossoNumero;
          DMCOB.cds_titulos.Post;
          DMCOB.cds_titulos.ApplyUpdates(0);
          DM.SQLC.Commit(TD);
          end;
          Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro ao visualizar o titulo feche a tela e tente novamente !!!';
   MsgErro.Execute;
   end;
end;
end;

procedure TFormBoletosBanc.Imprimir1Click(Sender: TObject);
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.HTMLText.text:= 'Por favor gere o boleto antes de Imprimi-lo!!!';
MsgInformacao.Execute;
//DBEdit1.SetFocus;
end else
 begin
 TD.TransactionID := 1;
 TD.IsolationLevel := XILReadCommitted;
 DM.SQLC.StartTransaction(TD);
 try
 begin
  inherited;
          PrepararTitulo;
          gbTitulo1.imprimir;
          DMCOB.cds_titulos.Edit;
          DMCOB.cds_titulosNumBoleto.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + gbtitulo1.NossoNumero + gbtitulo1.DigitoNossoNumero;
          DMCOB.cds_titulos.Post;
          DMCOB.cds_titulos.ApplyUpdates(0);
          DM.SQLC.Commit(TD);
          end;
          Except
          DMCOB.cds_titulos.CancelUpdates;
          DM.SQLC.Close;
   MsgErro.HTMLText.text:= 'Ocorreu um Erro ao Imprimir o titulo feche a tela e tente novamente !!!';
   MsgErro.Execute;

   end;
end;
end;

procedure TFormBoletosBanc.AlterarExecute(Sender: TObject);
{Objetivo: Alterar os dados da conta a receber selecionada}
var
    Key : TKey;
    Code : TCode;
    Modifier : Longint;
begin
   Application.CreateForm(TfrmTitulos, frmTitulos);
    TRY
      DMCOB.cds_titulos.Edit;
      frmTitulos.editseunumero.text := DMCOB.cds_titulosCODIGO_COMPRA.Text + '-' + DMCOB.cds_titulosParcela.Text;
      frmTitulos.Tag := 1;

        Data := StrToDate(FormatDateTime('dd',DM.SDS_CONTRATOSDATA_VENCIMENTO.AsDateTime) +'/'+ FormatDateTime('MM',dt) +'/' + FormatDateTime('YYYY',dt))+ 32;
        DateEdit3.Date := data;

        Key := EncryptionKey;
        Modifier := StringHashELF(dm.SDS_ClientesCPF_CNPJ.Text);
        ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
        InitRegCode(Key, '', DateEdit3.Date, Code);
        Edit4.Text := BufferToHex(Code, SizeOf(Code));

       DMCOB.cds_titulos.Edit;
       frmTitulos.editseunumero.text := DMCOB.cds_titulosID_CONTRATO.Text + '-' + DMCOB.cds_titulosParcela.Text;
       frmTitulos.Tag := 1;
       if DM.SDS_CONFIGURACOESCHS.TEXT = 'Y' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := dm.sds_clientesCodigo.text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       frmtitulos.chave :='Entre em contato com a Central fone 66-3555-1453..';
       end else
       begin
       frmtitulos.chave := Edit4.Text;
       end;
       end;

      frmTitulos.Showmodal;
//      AtualizarExecute(Sender);
//      frmTitulos.Release;
    EXCEPT
      on E : Exception do
      begin
         frmTitulos.Release;
         MessageDlg('Ocorreu um erro ao tentar alterar uma conta a receber: ' + E.Message,mtError,[mbOk],0);
      end;
      end;
end;


procedure TFormBoletosBanc.btnCancelarClick(Sender: TObject);
var
    Key : TKey;
    Code : TCode;
    Modifier : Longint;
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.HTMLText.text:= 'Por favor gere o boleto antes de Imprimi-lo!!!';
MsgInformacao.Execute;
end else
 begin
 try
 begin
  inherited;
       Data := StrToDate(FormatDateTime('dd',DM.SDS_CONTRATOSDATA_VENCIMENTO.AsDateTime) +'/'+ FormatDateTime('MM',dt) +'/' + FormatDateTime('YYYY',dt))+ 32;
  DateEdit3.Date := data;

  Key := EncryptionKey;
  Modifier := StringHashELF(dm.SDS_ClientesCPF_CNPJ.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  InitRegCode(Key, '', DateEdit3.Date, Code);
  Edit4.Text := BufferToHex(Code, SizeOf(Code));

  if DM.SDS_CONFIGURACOESCHS.TEXT = 'Y' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := dm.sds_clientesCodigo.text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       chave :='Entre em contato com a Central fone 66-3555-1453..';
       end else
       begin
       chave := Edit4.Text;
       end;
       end;

          PrepararTitulo;



           case ComboBox1.ItemIndex of
            0: GBTitulo1.BoletoLayout := blPadrao;
            1: GBTitulo1.BoletoLayout := blCarne;
          end;



          gbTitulo1.imprimir;
          end;
          Except
          MsgErro.HTMLText.text:= 'Ocorreu um Erro ao Imprimir o titulo feche a tela e tente novamente !!!';
          MsgErro.Execute;
          end;
end;
end;

procedure TFormBoletosBanc.btnEditarClick(Sender: TObject);
var
    Key : TKey;
    Code : TCode;
    Modifier : Longint;
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.HTMLText.text:= 'Por favor gere o boleto antes de Visualiza-lo!!!';
MsgInformacao.Execute;


//DBEdit1.SetFocus;
end else
 begin
// TD.TransactionID := 1;
// TD.IsolationLevel := XILReadCommitted;
// DM.SQLC.StartTransaction(TD);
 try
 begin
  inherited;
        Data := StrToDate(FormatDateTime('dd',DM.SDS_CONTRATOSDATA_VENCIMENTO.AsDateTime) +'/'+ FormatDateTime('MM',dt) +'/' + FormatDateTime('YYYY',dt))+ 32;
  DateEdit3.Date := data;

  Key := EncryptionKey;
  Modifier := StringHashELF(dm.SDS_ClientesCPF_CNPJ.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  InitRegCode(Key, '', DateEdit3.Date, Code);
  Edit4.Text := BufferToHex(Code, SizeOf(Code));
  
       if DM.SDS_CONFIGURACOESCHS.TEXT = 'Y' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := dm.sds_clientesCodigo.text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       chave :='Entre em contato com a Central fone 66-3555-1453..';
       end else
       begin
       chave := Edit4.Text;
       end;
       end;


          PrepararTitulo;
           case ComboBox1.ItemIndex of
            0: GBTitulo1.BoletoLayout := blPadrao;
            1: GBTitulo1.BoletoLayout := blCarne;
          end;


      // txtObservacoes.text := dmcob.sds_cedentesObservacao.text + #13+ 'APÓS VENCIMENTO COBRAR MULTA DE '+ FloatToStr(dmcob.qryCedentesPERC_MULTA.AsFloat)+'%.'+ #13+ 'APÓS VENCIMENTO COBRAR JUROS NO VALOR DE '+FloatToStr(DMCOB.cds_titulosValor_Compra.AsFLOAT * dmcob.qryCedentesPERC_JUROS.AsFloat /100)+' AO DIA.';

          gbTitulo1.PreviewModal;
  //        DMCOB.cds_titulos.Edit;
  //        DMCOB.cds_titulosNumBoleto.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + gbtitulo1.NossoNumero + gbtitulo1.DigitoNossoNumero;
  //        DMCOB.cds_titulos.Post;
  //        DMCOB.cds_titulos.ApplyUpdates(0);
  //        DM.SQLC.Commit(TD);
          end;
          Except
   MsgErro.HTMLText.text:= 'Ocorreu um Erro ao visualizar o titulo feche a tela e tente novamente !!!';
   MsgErro.Execute;

   end;
end;
end;

procedure TFormBoletosBanc.Select1Exit(Sender: TObject);
begin
  inherited;
dm.Sds_clientes.Cancel;
end;

procedure TFormBoletosBanc.Button1Click(Sender: TObject);
begin
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where CODIGO_CLIENTE LIKE :pesquisa AND SITUACAO=''A'' ';
dmcob.qrytitulos.parambyname('pesquisa').asString:=AnsiUpperCase(Edit1.Text){+'%'};
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;

procedure TFormBoletosBanc.suiButton1Click(Sender: TObject);
begin
  inherited;
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from CREDIARIO where CODIGO_COMPRA LIKE :pesquisa AND SITUACAO=''A''';
dmcob.qrytitulos.parambyname('pesquisa').asString:=AnsiUpperCase(Edit2.Text){+'%'};
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;

procedure TFormBoletosBanc.edit1ButtonClick(Sender: TObject);
begin
Try
 // DM.SDS_Clientes.Filtered := False;
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de pesquisa de clientes!!');
end;
BEGIN
EDIT1.Text:= dm.Sds_clientesCODIGO.Text;
RXLabel6.Caption:= dm.Sds_clientesNOME_RS.Text;
RXLabel7.Caption:= dm.Sds_clientesCPF_CNPJ.Text;
end;
end;

procedure TFormBoletosBanc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBoletosBanc.AlteraDataVencimento1Click(Sender: TObject);
begin
  inherited;
GroupBox1.Visible := True;
DMCOB.cds_titulos.Edit;
end;

procedure TFormBoletosBanc.BitBtn1Click(Sender: TObject);
begin
  inherited;
GroupBox1.Visible := false;
DMCOB.cds_titulos.Edit;
DMCOB.cds_titulos.Post;
DMCOB.cds_titulos.ApplyUpdates(0);
suiButton2.Click;
end;

procedure TFormBoletosBanc.edit1Exit(Sender: TObject);
begin
  if edit3.Text='LETRAS' THEN
  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + edit1.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.Locate('CODIGO',edit1.Text,[lopartialkey]);

  IF ACHOU=FALSE THEN
  begin
  edit1ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  RxLabel7.Caption:=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;
  Button1Click(Sender);
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
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + edit1.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:=  DM.SDS_Clientes.Locate('CODIGO',edit1.Text,[lopartialkey]);
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  RxLabel7.Caption:=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
edit1.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  RxLabel7.Caption:=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;
  Button1Click(Sender);

end;
end;
end;

procedure TFormBoletosBanc.edit1KeyPress(Sender: TObject; var Key: Char);
begin
 {if not(key in ['0'..'9', #8]) then
          key := #0;}
end;

procedure TFormBoletosBanc.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
 // DM.SDS_Clientes.Filtered := False;
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

procedure TFormBoletosBanc.ComboEdit1Change(Sender: TObject);
begin
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT3.Text:='';

end;

procedure TFormBoletosBanc.ComboEdit1Exit(Sender: TObject);
begin

 if edit3.Text='LETRAS' THEN
  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.Locate('CODIGO',ComboEdit1.Text,[lopartialkey]);

  IF ACHOU=FALSE THEN
  begin
  ComboEdit1ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  sLabel1.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  sLabel2.Caption:=DM.SDS_Clientes.Fieldbyname('CPF_CNPJ').AsString;
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
  //Button1Click(Sender);

end;
end;
end;

procedure TFormBoletosBanc.suiDBGrid1DblClick(Sender: TObject);
begin
  inherited;
if DMCOB.cds_titulosCHEK_BOX.AsString = 'T' then
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''F'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DMCOB.cds_tituloscodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
end else
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update crediario set crediario.chek_box = ''T'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DMCOB.cds_tituloscodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
 end;
   DMCOB.cds_titulos.Refresh;
   suiDBGrid1.refresh;


   Totais.Close;
   Totais.SQL.Text := 'select SUM(VALOR_TOTAL) as total, SUM(VALOR_COMPRA) as COMPRA, SUM(VALOR_JUROS) as JUROS, SUM(VALOR_ACRESCIMO) as MULTA, SUM(VALOR_PAGO) as PAGO,'+
                      'SUM(VALOR_DESCONTO) as DESC from CREDIARIO where crediario.chek_box = ''T'' and CODIGO_CLIENTE =:CLI AND SITUACAO = ''A'' and COD_EMPRESA=:CODEMP';
   Totais.Parambyname('CLI').AsInteger    := StrToInt(Edit2.TEXT);
   Totais.ParamByName('CODEMP').AsInteger := dm.SDS_EmpresaCODIGO.AsInteger;
   Totais.Open;
  // Total1 := Totais.FieldByName('SUM').AsFloat;
  CurrencyEdit1.VALUE:= Totais.FieldByName('COMPRA').AsFloat;
  CurrencyEdit2.VALUE:= Totais.FieldByName('JUROS').AsFloat;
  CurrencyEdit3.VALUE:= Totais.FieldByName('MULTA').AsFloat;
  CurrencyEdit4.Value:= Totais.FieldByName('PAGO').AsFloat;
  CurrencyEdit5.VALUE:= Totais.FieldByName('TOTAL').AsFloat;
  CurrencyEdit7.VALUE:= Totais.FieldByName('desc').AsFloat;
  Totais.close;


end;

end.
