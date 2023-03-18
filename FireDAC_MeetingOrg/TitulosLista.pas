unit TitulosLista;

interface

uses
  SysUtils, Forms, DB, Variants, Classes, Controls, Dialogs, ActnList,
  ImgList, Menus, ComCtrls, ToolWin, Grids, DBGrids, ExtDlgs,
  SUIDBCtrls,Windows, Messages, Graphics, SUIDlg,
  SUIButton, ExtCtrls, stdCtrls, Mylabel, Mask,  RXCtrls,
  SUIImagePanel, SUIEdit,  DBCtrls, SUITabControl,  RXDBCtrl,
  Buttons, SUIGroupBox, Formata_CPF_CNPJ, defs, RxGIF,
  RLBoleto, RLFilters, RLDraftFilter, RLRichFilter, RLHTMLFilter,
  RLPDFFilter,  XDBGrids, sBitBtn, sPanel, sButton, System.Actions,
  System.ImageList, RxToolEdit;

  type
  TfrmTitulosLista = class(TForm)
    ImageList1: TImageList;
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
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    ImageList2: TImageList;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    suiButton2: TsBitBtn;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    ComboBox4: TComboBox;
    MaskEdit2: TMaskEdit;
    suiButton1: TsBitBtn;
    gbCobranca1: TRLBRemessa;
    gBTitulo1: TRLBTitulo;
    Edit1: TEdit;
    suiButton3: TsBitBtn;
    XDBGrid1: TXDBGrid;
    sPanel1: TsPanel;
    btnLocalizar: TsBitBtn;
    btnNovo: TsBitBtn;
    btnEditar: TsBitBtn;
    btnCancelar: TsBitBtn;
//    procedure AlterarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
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

    procedure VisualizarImpressaoExecute(Sender: TObject);
//    procedure GerarImagemBoletoExecute(Sender: TObject);
//    procedure EnviarBoletoEMailExecute(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
//    procedure gridTitulosDblClick(Sender: TObject);
//    procedure ToolButton17Click(Sender: TObject);
//    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure FormCreate(Sender: TObject);
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
  Principal, Ubibli1;

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

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit2.Text));
   case ComboBox4.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;
    for nI := 1 to nQtdeBoletos do

     {Dados do titulo}
   with gbTitulo1 do
     begin
        {Se não localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', dmcob.CDS_Cobranca1Id_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      NumeroDocumento :=  dmcob.CDS_Cobranca1Codigo_Compra.AsString + '-' +  dmcob.CDS_Cobranca1Parcela.AsString;
      if dmcob.CDS_COBRANCA1BANCO_PORTADOR.Text = '237' then
       NossoNumero :=  dmcob.CDS_Cobranca1Numboleto1.AsString
      else
      NossoNumero :=  dmcob.CDS_Cobranca1Numboleto.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataProcessamento := (Date);


      if dmcob.CDS_Cobranca1FILTRO.AsInteger = 1 THEN
      begin
  {    Protesto := '06';
      diasprotesto :=  dmcob.qryCedentesQUANT_DIAS_PROTESTO.AsString;
      end else
      begin
      Protesto := '00';
      diasprotesto :='00'; }
      end;
      DataDocumento   :=  dmcob.CDS_Cobranca1Data_Compra.AsDateTime;
      DataVencimento  :=  dmcob.CDS_Cobranca1Data_Vencimento.AsDateTime;
      ValorDocumento  :=  dmcob.CDS_Cobranca1Valor_Compra.AsCurrency;
      //DataDesconto    :=
      ValorDesconto :=   dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsCurrency;
      ValorMoraJuros  :=  dmcob.CDS_Cobranca1Valor_Compra.AsFloat * dmcob.qryCedentesPERC_JUROS.AsFloat /100;
 //     percmulta       :=  dmcob.qryCedentesPERC_MULTA.AsFloat;     ativar

      Instrucoes.Text := dmcob.qryCedentesObservacao.Value;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');


      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Text;
         Nome := dmcob.qryCedentesNomeCedente.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

         {Endereço do cedente}
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
      if not dm.Sds_Clientes.Locate('Codigo', dmcob.CDS_Cobranca1Codigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      {Dados do sacado do título}
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

         {Endereço do sacado do título}
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
         end; {with Endereco}

         IF dmcob.CDS_Cobranca1Cod_avalista.Text > '' then
         BEGIN
         if not dm.Sds_Clientes.Locate('Codigo', dmcob.CDS_Cobranca1Cod_avalista.Text,[]) then
         Raise Exception.Create('Cliente (Avalista) não localizado');

         SacadorAvalista :=  dm.sds_ClientesNome_rs.AsString;
       //  avalistaCPFCGC  :=  removechar(dm.sds_ClientesCPF_cnpj.Text);  ativar
         end;

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
end;
end;

procedure TfrmTitulosLista.VisualizarImpressaoExecute(Sender: TObject);
{Objetivo: Apresentar na tela o boleto referente à conta selecionada}
  begin
   PrepararTitulo;
//   if MessageDlg('Para visualizar um boleto bancário PFDrão, clique no botão SIM. Para visualizar um boleto personalizado, clique no botão NÃO. Quer visualizar um boleto PFDrão?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
//   gBTitulo1.pREVIEWMODAL;
  gbTitulo1.Visualizar
   end;

procedure TfrmTitulosLista.ImprimirExecute(Sender: TObject);
{Objetivo: Imprimir o boleto referente à conta selecionada}
begin
   PrepararTitulo;
  // if MessageDlg('Para imprimir um boleto bancário PFDrão, clique no botão SIM. Para imprimir um boleto personalizado, clique no botão NÃO. Quer imprimir um boleto PFDrão?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      gbTitulo1.Imprimir;
end;

procedure TfrmTitulosLista.SairExecute(Sender: TObject);
{Objetivo: Fechar esta janela}
begin
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
   Application.OnHint := ShowHint;
end;

procedure TfrmTitulosLista.FormShow(Sender: TObject);
begin

   dmcob.SDS_CEDENTEs.Active := false;

    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

   dmcob.SDS_CEDENTEs.active := true;
   dmcob.CDS_Cobranca1.active := false;
///   AtualizarExecute(Sender);

end;

procedure TfrmTitulosLista.GerarArquivoRemessaExecute(Sender: TObject);
{Objetivo: Gerar arquivo para banco contendo os títulos mostrados na tela}
Var Enviar : String;
       Ok : Boolean;
       DeStr,mes:string;
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

   {Dados da remessa}
   with gbCobranca1 do
   begin
      dmcob.sds_Cedentes.Active := false;
      dmcob.sds_Cedentes.Active := true;

      SaveDialog1.InitialDir := ExtractFilePath(Application.ExeName) + 'C:\SIACE\Remessa';
      SaveDialog1.FileName := dmcob.sds_CedentesNumeroConta.AsString + DeStr + FormatDateTime('dd',Date) + '.CRM';
      SaveDialog1.Title := 'Salvar arquivo remessa em';
      if SaveDialog1.Execute then
         NomeArquivo := SaveDialog1.FileName
      else
         Exit;
      NumeroArquivo := DMCOB.sds_cedentesNUMERO_REMESSA.Value;
      DataArquivo := Now;
      Titulos.Clear;

      {Inclui todos os títulos}
     dmcob.CDS_Cobranca1.First;
      while not  dmcob.CDS_Cobranca1.Eof do
       begin
                         //dbgrid1.SelectedRows.CurrentRowSelected := 'X';
                          // dbgrid1.Columns.Items[0].FieldName := 'X';
         PrepararTitulo;
         Titulos.Add(gbTitulo1);
         dmcob.CDS_Cobranca1.Next;
      end;
      DMCOB.sds_cedentes.Edit;
      DMCOB.sds_cedentesNUMERO_REMESSA.Value := DMCOB.sds_cedentesNUMERO_REMESSA.Value + 1;
      dmcob.sds_Cedentes.Post;
      dmcob.sds_cedentes.ApplyUpdates(0);

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

      if GerarRemessa then
         MessageDlg('Sistema Gerou a remessa de nº: ' + IntToStr(NumeroArquivo) + ' no arquivo ' + NomeArquivo,mtInformation,[mbOk],0);

   end; {with Remessa}
end;


procedure TfrmTitulosLista.FormDeactivate(Sender: TObject);
begin
   Application.Hint := '';
   Application.OnHint := nil;
end;

procedure TfrmTitulosLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FrmTITULOSLISTA:=nil;
end;



procedure TfrmTitulosLista.ToolButton2Click(Sender: TObject);
begin
PrepararTitulo;
gbTitulo1.Visualizar;
end;

procedure TfrmTitulosLista.suiButton2Click(Sender: TObject);
var
vcli1,vcli2:STRING;
port:string;
begin
vcli1:=datetostr(DATE);
vcli2:=datetostr(DATE);

VCLI1:=dateedit3.TexT;
VCLI2:=dateedit4.TexT;
port:=EDIT1.text;
dmcob.CDS_Cobranca1.Filtered := FALSE;
dmcob.CDS_Cobranca1.Active :=FALSE;
dmcob.QRYcobranca1.close;
dmcob.QRYcobranca1.SQL.Clear;
dmcob.qrycobranca1.SQL.add('select * from CREDIARIO WHERE SITUACAO = ''A'' and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(VCLI1)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(VCLI2)))+'');
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
end;
end;


procedure TfrmTitulosLista.suiButton1Click(Sender: TObject);
Var Banco : String;
       Ok : Boolean;
begin
  { banco := 'Todos';
   Ok := InputQuery('Filtra Bancos', 'Digite o nº do banco: (Todos remove o filtro)',banco);
   If Ok then
     With dmcob.cds_cobranca1 do
     begin
       Filtered := false; // Desativa o filtro
       if banco <>  'Todos' then
       begin      // A função QuotedStr coloca apóstrofos  no string.
         Filter := 'BANCO_PORTADOR = ' + QuotedStr(Banco); // monta o filtro
         Filtered := true; // Ativa o filtro
       end;
     end; }
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

