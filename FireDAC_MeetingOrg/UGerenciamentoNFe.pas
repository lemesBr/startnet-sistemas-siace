unit UGerenciamentoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, pcnConversao, DB,
  IBCustomDataSet, IBDatabase, IBQuery, Menus, ACBrNFe, ACBrNFeDANFEClass,
  Mask, pcnNFeRTXT, RXDBCtrl, DBClient,
  SimpleDS, ImgList, acAlphaImageList, DBCtrls, acPNG,
  NxPageControl, sMaskEdit, sCustomComboEdit, sTooledit, Ubibli1, RpDefine,
  RpRender, RpRenderPDF, pcnConversaoNFe, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvGlowButton;

type
  TFrmGerenciamentoNFe = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnEnviar: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Combo: TComboBox;
    BtnOk: TButton;
    BtnSair: TButton;
    QConsNfe: TIBQuery;
    DSConsNFe: TDataSource;
    IBTRNfe: TIBTransaction;
    PopupMenu1: TPopupMenu;
    Serviosespecias1: TMenuItem;
    ResetarNFe1: TMenuItem;
    QConsNfeNR_NOTA: TIntegerField;
    QConsNfeDT_EMISSAO: TDateField;
    QConsNfeVL_TOTAL: TIBBCDField;
    QConsNfeSTATUS: TIBStringField;
    QConsNfeCOD_CLIENTE: TIntegerField;
    QConsNfeSTATUS_INUTILIZADO: TIBStringField;
    QConsNfeSTATUS_EMAIL: TIBStringField;
    QConsNfeCHAVE_ACESSO_NFE: TIBStringField;
    QConsNfeNR_RECIBO_NFE: TIBStringField;
    QConsNfeNOME_CLIENTE_FOR: TIBStringField;
    QConsNfeSTATUS_CANCELADO: TIBStringField;
    QConsNfeNR_PROTOCOLO_CANC_NFE: TIBStringField;
    QConsNfeCHAVE2: TIBStringField;
    QConsNfeCOD_FORNECEDOR: TIntegerField;
    QConsNfeNR_PROTOCOLO_NFE: TIBStringField;
    QConsNfeCALC_TRANSMITIDO: TStringField;
    QConsNfeCALC_CANCELADO: TStringField;
    QConsNfeCALC_INUTILIZADO: TStringField;
    QConsNfeCALC_EMAIL: TStringField;
    QConsNfeCALC_DESTINATARIO: TStringField;
    QConsNfeDEPEC: TIBStringField;
    Memo: TMemo;
    Ex1: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    QBuscaItens: TIBQuery;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensDESCRICAO: TIBStringField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    QBuscaItensESTOQUE: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    QBuscaItensESTOQUE_FRACAO: TIBBCDField;
    QBuscaItensPERC_ICMS_ESTADUAL: TIBBCDField;
    QBuscaItensPERC_ICMS_INTER_ESTADUAL: TIBBCDField;
    QBuscaItensFLAG_ICMS: TIBStringField;
    QBuscaItensPERC_ALIQUOTA_IPI: TIBBCDField;
    QBuscaItensFLAG_SUBSTITUICAO_TRIB: TIBStringField;
    QBuscaItensPERC_SUBST_TRIBUTARIA: TIBBCDField;
    QBuscaItensFLAG_FABRICACAO_PROPRIA: TIBStringField;
    QBuscaItensFLAG_SERVICO: TIBStringField;
    QBuscaItensPERC_ALIQUOTA_ISS: TIBBCDField;
    QBuscaItensCFOP_EST_COMPRA: TIBStringField;
    QBuscaItensCFOP_INTER_COMPRA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensCST_COMPRA: TIBStringField;
    QBuscaItensCODIGO_BARRAS: TIBStringField;
    qnFE: TSimpleDataSet;
    qnFEN_SEQUENCIA: TIntegerField;
    qnFECD_EMPRESA: TIntegerField;
    qnFENR_NOTA: TIntegerField;
    qnFECOD_CLIENTE: TIntegerField;
    qnFEFL_IMPRESSO: TStringField;
    qnFESERIE_NF: TStringField;
    qnFECD_CFOP: TIntegerField;
    qnFEDT_EMISSAO: TDateField;
    qnFEDT_LANCAMENTO: TDateField;
    qnFEVL_ACRESCIMOS: TFMTBCDField;
    qnFEVL_DESCONTOS: TFMTBCDField;
    qnFEVL_MERCADORIAS: TFMTBCDField;
    qnFEVL_SERVICOS: TFMTBCDField;
    qnFEVL_TOTAL: TFMTBCDField;
    qnFECOD_PGTO: TIntegerField;
    qnFEVL_AVISTA: TFMTBCDField;
    qnFEVL_PRAZO: TFMTBCDField;
    qnFEPESO_TOTAL: TFMTBCDField;
    qnFEQT_PECAS: TFMTBCDField;
    qnFECFOP_DESC: TStringField;
    qnFECD_TRANSPORTADORA: TIntegerField;
    qnFEUF_ORIGEM: TStringField;
    qnFEUF_DESTINO: TStringField;
    qnFEPESO_LIQUIDO: TFMTBCDField;
    qnFEVL_FRETE: TFMTBCDField;
    qnFEVL_SEGURO: TFMTBCDField;
    qnFEVL_BASE_ICM: TFMTBCDField;
    qnFEVL_ICM: TFMTBCDField;
    qnFEVL_BASE_ICM_SUBST: TFMTBCDField;
    qnFEVL_ICM_SUBST: TFMTBCDField;
    qnFEVL_IPI: TFMTBCDField;
    qnFEVL_ISS: TFMTBCDField;
    qnFETP_FRETE: TStringField;
    qnFEQT_VOLUMES: TFMTBCDField;
    qnFEESPECIE_VOLUMES: TStringField;
    qnFEMARCA_VOLUMES: TStringField;
    qnFENR_VOLUMES: TIntegerField;
    qnFECD_TIPOCOBR: TIntegerField;
    qnFECD_FUNCIONARIO: TIntegerField;
    qnFEDT_ATZ: TDateField;
    qnFEPLACA_TRANSP: TStringField;
    qnFEUF_PLACA_TRANSP: TStringField;
    qnFEVL_OUTROS: TFMTBCDField;
    qnFENR_PEDIDO: TIntegerField;
    qnFEVL_BASE_PIS: TFMTBCDField;
    qnFEVL_PIS: TFMTBCDField;
    qnFEVL_BASE_COFINS: TFMTBCDField;
    qnFEVL_COFINS: TFMTBCDField;
    qnFEVL_BASE_IPI: TFMTBCDField;
    qnFEVL_BASE_ISS: TFMTBCDField;
    qnFEVL_DESCONTO_ITEM: TFMTBCDField;
    qnFEVL_ISENTO_ITENS: TFMTBCDField;
    qnFEVL_OUTROS_ITENS: TFMTBCDField;
    qnFENR_PROTOCOLO_NFE: TStringField;
    qnFEDT_PROCESSAMENTO_NFE: TDateField;
    qnFESTATUS: TStringField;
    qnFENR_LOTE_NFE: TStringField;
    qnFENR_RECIBO_NFE: TStringField;
    qnFENR_PROTOCOLO_CANC_NFE: TStringField;
    qnFECHAVE_ACESSO_NFE: TStringField;
    qnFEVL_FRETE_CONHECIMENTO: TFMTBCDField;
    qnFEVL_ST_CONHECIMENTO: TFMTBCDField;
    qnFEVL_ICM_CONHECIMENTO: TFMTBCDField;
    qnFEBASE_ICM_PROPRIO_ST: TFMTBCDField;
    qnFEVL_ICM_PROPRIO_ST: TFMTBCDField;
    qnFEVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    qnFEVL_ICM_SUBST_REAL: TFMTBCDField;
    qnFECNPJ_TRANSP: TStringField;
    qnFENOME_TRANSP: TStringField;
    qnFEIE_TRANSP: TStringField;
    qnFEEND_TRANSPORTADOR: TStringField;
    qnFECIDADE_TRANSP: TStringField;
    qnFEUF_TRANSP: TStringField;
    qnFETP: TStringField;
    qnFEN_NOTA_ENTRADA: TStringField;
    qnFENOME_CLIENTE_FOR: TStringField;
    qnFECPF_CNPJ_CLIENTE_FORN: TStringField;
    qnFEIE_CLIENTE_FORN: TStringField;
    qnFEENDERECO_CLI_FORN: TStringField;
    qnFEEND_NUM_CLIENTE: TStringField;
    qnFECOD_IBGE: TStringField;
    qnFECEP_CLIENTE_FORN: TStringField;
    qnFEBAIRRO_CLIENTE_FORN: TStringField;
    qnFETIPO_PESSOA: TStringField;
    qnFETELEFONE: TStringField;
    qnFECIDADE_CLIENTE_FORN: TStringField;
    qnFEUF_CLIENTE_FORN: TStringField;
    qnFEIE_PRODUTOR: TStringField;
    qnFEPRODUTOR_RURAL: TStringField;
    qnFEPAGAMENTO: TStringField;
    qnFESTATUS_INUTILIZADO: TStringField;
    qnFESTATUS_CANCELADO: TStringField;
    qnFESTATUS_EMAIL: TStringField;
    qnFECOD_FORNECEDOR: TIntegerField;
    qnFEDEPEC: TStringField;
    qnFECHAVE2: TStringField;
    qnFESTATUS_RETORNO: TStringField;
    qnFEJUSTIFICATIVA_CANCEL_INUTIL: TStringField;
    qnFEMODELO: TStringField;
    EdtDataIni: TsDateEdit;
    EdtDataFin: TsDateEdit;
    Paginas: TNxPageControl;
    Notas: TNxTabSheet;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label34: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Label5: TLabel;
    Image5: TImage;
    Label7: TLabel;
    Image6: TImage;
    Label8: TLabel;
    Image7: TImage;
    Label9: TLabel;
    Image11: TImage;
    Label13: TLabel;
    Cartas: TNxTabSheet;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    EnviaCarta: TAdvGlowButton;
    ExcluirCarta: TAdvGlowButton;
    NovaCarta: TAdvGlowButton;
    EditarCarta: TAdvGlowButton;
    ImpCarta: TAdvGlowButton;
    Panel5: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    GroupBox4: TGroupBox;
    Image4: TImage;
    Label6: TLabel;
    Image8: TImage;
    Label10: TLabel;
    Image9: TImage;
    Label11: TLabel;
    Image10: TImage;
    Label12: TLabel;
    Imagens: TsAlphaImageList;
    QConsNfeCORRECAO: TIBStringField;
    QCartas: TIBQuery;
    QCartasCOD: TIntegerField;
    QCartasCOD_NF: TIntegerField;
    QCartasDATA: TDateField;
    QCartasSEQ: TIntegerField;
    QCartasCHAVE: TIBStringField;
    QCartasSTATUS_TRANSMITIDA: TIBStringField;
    QCartasPROTOCOLO: TIBStringField;
    QCartasDATA_AUT: TDateField;
    QCartasHORA_AUT: TTimeField;
    QCartasCORRECAO: TIBStringField;
    QCartasSTATUS: TStringField;
    DSCartas: TDataSource;
    ICartas: TIBQuery;
    RvRenderPDF1: TRvRenderPDF;
    Panel6: TPanel;
    Image12: TImage;
    Label3: TLabel;
    QConsNfeNR_PEDIDO: TIntegerField;
    procedure BtnConsultarServicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QConsNfeCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEnviarEmailClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnInutilizarClick(Sender: TObject);
    procedure BtnCancelamentoClick(Sender: TObject);
    procedure BtnConsultaNFeClick(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure ResetarNFe1Click(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure Ex1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NovaCartaClick(Sender: TObject);
    procedure EditarCartaClick(Sender: TObject);
    procedure ExcluirCartaClick(Sender: TObject);
    procedure EnviaCartaClick(Sender: TObject);
    procedure EnviarrCarta(COD, COD_NF: integer);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PaginasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Corrige();
  end;

var
  FrmGerenciamentoNFe: TFrmGerenciamentoNFe;

implementation

uses  ModulodeDados, USendEmail, VMXCCePrint, Principal,
  Formata_CPF_CNPJ, pcnNFe, UCartaCorrecao, ufrmStatus,
  ThreadEnviarVendaEmail, FrmEnviaParaEmail;

var
  sAmbienteNfe: string;
  sSql: string;
  coluna: Integer;
{$R *.dfm}


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

function Dc_InputQuerySenha(const ACaption, APrompt: string; var Value:
string):
  Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  function GetAveCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do
      Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do
      Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;
  procedure Saida(Sender: TObject);
  begin
    if TEdit(Sender).Text = '' then
    begin
      ShowMessage('Vazio');
      TEdit(Sender).SetFocus;
    end;
  end;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
  try
    Canvas.Font := Font;
    DialogUnits := GetAveCharSize(Canvas);
    BorderStyle := bsDialog;
    Caption := ACaption;
    ClientWidth := MulDiv(180, DialogUnits.X, 4);
    Position := poScreenCenter;
    Prompt := TLabel.Create(Form);
    with Prompt do
    begin
      Parent := Form;
      Caption := APrompt;
      Left := MulDiv(8, DialogUnits.X, 4);
      Top := MulDiv(8, DialogUnits.Y, 8);
      Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
      WordWrap := True;
    end;
    Edit := TEdit.Create(Form);
    with Edit do
    begin
      PasswordChar := '*';
      Parent := Form;
      Left := Prompt.Left;
      Top := Prompt.Top + Prompt.Height + 5;
      Width := MulDiv(164, DialogUnits.X, 4);
      MaxLength := 255;
      Text := Value;
      SelectAll;
    end;
    ButtonTop := Edit.Top + Edit.Height + 15;
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Confirmar';
      ModalResult := mrOk;
      Default := True;
      SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
        ButtonHeight);
    end;
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Cancelar';
      ModalResult := mrCancel;
      Cancel := True;
      SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
        ButtonWidth, ButtonHeight);
      Form.ClientHeight := Top + Height + 13;
    end;
    if ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := True;
    end;
  finally
    Form.Free;
  end;
end;

procedure TFrmGerenciamentoNFe.EnviarrCarta(COD, COD_NF: integer);
Var
  sAmbienteNfe: string;
  sNatureza: string;
  iAux, Tipo_emp: integer;
  JC: String;
  DPEC: boolean;
  Chave, idLote, codOrgao, CNPJ, nSeqEvento, Correcao: string;
  Retorno: String;
  Protocolo: String;
  DataHora: Tdatetime;

begin
  { busca parametros }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT CAMINHO_CERTIFICADO, NFE_SENHA, NFE_CERTIFICAO, NUMERO_SERIE,     '
          + 'TIPO_IMPRESSAO_DANFE, FORMA_EMISSAO_DANFE, NFE_LOGOMARCA,          '
          + 'SALVAR_LOG_DANFE, NFE_CAMINHO_XML, AMBIENTE_DANFE, PASTA_CANCELADAS_DANFE,   '
          + 'PASTA_INUTILIZADAS_DANFE, PASTA_TRANSMITIDAS_DANFE, CAMINHO_ARQUIVOS_PDF,    '
          + 'CAMINHO_RELATORIO_DANFE, ESTADO_NFE                                                      '
          + 'FROM CONFIGURACOES ' + 'WHERE COD_EMPRESA = :CODEMP');
        Parambyname('codemp').AsInteger := iEmp;
        open;

        dm.ACBrNFe1.Configuracoes.Certificados.Senha :=
          trim(fieldbyname('nfe_senha').AsString);
        dm.ACBrNFe1.Configuracoes.Certificados.NumeroSerie :=
          trim(fieldbyname('NFE_CERTIFICAO').AsString);

        if trim(fieldbyname('tipo_impressao_danfe').AsString) = 'R' then
          dm.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
        else
          dm.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
        DPEC := False;
        case fieldbyname('forma_emissao_danfe').AsInteger of
          1:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
              JC := '';
            end;
          2:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;
            end;
          3:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSCAN;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;

            end;
          4:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;
              DPEC := True;
            end;
          5:
            begin
              dm.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA;
              JC := InputBox('Modo de Contingência',
                'Justificativa de entrada em modo de Contingência :', '');
              if JC = '' then
                exit;
              if length(JC) < 15 then
              begin
                showmessage
                  ('A justificativa deve ter no minimo 15 caracteres!');
                exit;
              end;

            end;
        end;

        dm.ACBrNFe1.DANFE.Logo := trim(fieldbyname('NFE_LOGOMARCA')
          .AsString);

        if trim(fieldbyname('salvar_log_danfe').AsString) = 'S' then
          dm.ACBrNFe1.Configuracoes.Geral.Salvar := True
        else
          dm.ACBrNFe1.Configuracoes.Geral.Salvar := False;

        dm.ACBrNFe1.Configuracoes.arquivos.PathSalvar :=
          trim(fieldbyname('NFE_CAMINHO_XML').AsString);

        sAmbienteNfe := trim(fieldbyname('ambiente_danfe').AsString);

        if trim(fieldbyname('ambiente_danfe').AsString) = 'P' then
          dm.ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
        else
          dm.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;

        dm.ACBrNFe1.Configuracoes.WebServices.UF :=
          trim(fieldbyname('estado_nfe').AsString);
        dm.ACBrNFe1.Configuracoes.WebServices.Visualizar := False;

        dm.ACBrNFe1.Configuracoes.Arquivos.PathEvento :=
          trim(fieldbyname('pasta_canceladas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathInu :=
          trim(fieldbyname('pasta_inutilizadas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe :=
          trim(fieldbyname('pasta_transmitidas_danfe').AsString);
      //  dm.ACBrNFe1.Configuracoes.Arquivos.PathMDe :=
      //    trim(fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFeDANFEFR1.PathPDF :=
          trim(fieldbyname('caminho_arquivos_pdf').AsString);
      //  dm.ACBrNFe1.Configuracoes.Arquivos.PathMDe :=
      //    trim(fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.PathEvento :=
          trim(fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFe1.Configuracoes.Arquivos.Salvar := True;

       { dm.ACBrNFeDANFeRL1.FastFile :=
          trim(fieldbyname('caminho_relatorio_danfe').AsString);

        { dm.ACBrNFeDANFERave1.PathPDF := trim
          (fieldbyname('caminho_arquivos_pdf').AsString);
          dm.ACBrNFeDANFERave1.RavFile := trim
          (fieldbyname('caminho_relatorio_danfe').AsString); }
      end;

      dm.IBTransaction.Commit;
    except
      on e: exception do
      begin
        dm.IBTransaction.Rollback;
        ShowMessage('Erro ao buscar os parâmetros' + #13 + e.message);
      end;
    end;
  finally
    dm.QConsulta.close;
  end;

  { BUSCA CARTA }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    dm.QConsulta.close;
    dm.QConsulta.sql.Clear;
    dm.QConsulta.sql.Text := 'SELECT * FROM NOTA_FISCAL_CCE WHERE COD=:COD';
    dm.QConsulta.Parambyname('COD').AsInteger := COD;
    dm.QConsulta.open;
    if dm.QConsulta.IsEmpty then
    begin
      dm.IBTransaction.Rollback;
     ShowMessage('Carta de correção não encontrada!');
      exit;
    end;
    
    Chave := RemoveChar(dm.QConsulta.fieldbyname('CHAVE').AsString);
    { if not ValidarChave(Chave) then
      begin
      MessageDlg('Chave Inválida.', mtError, [mbok], 0);
      exit;
      end; }
    idLote := '1';
    codOrgao := copy(Chave, 1, 2);
    CNPJ := copy(Chave, 7, 14);
    nSeqEvento := dm.QConsulta.fieldbyname('SEQ').AsString;
    Correcao := dm.QConsulta.fieldbyname('CORRECAO').AsString;
    dm.ACBrNFe1.CartaCorrecao.CCe.Evento.Clear;
    // dm.ACBrNFe1.EnvEvento.EnvEventoNFe.idLote := strtoint(idLote);
    dm.ACBrNFe1.EventoNFe.Evento.Clear;
    with dm.ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := Chave;
      infEvento.cOrgao := strtoint(codOrgao);
      infEvento.CNPJ := CNPJ;
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := strtoint(nSeqEvento);
      infEvento.versaoEvento := '1.00';

      infEvento.detEvento.xCorrecao := Correcao;

    end;
    dm.QConsulta.close;
    dm.IBTransaction.Commit;
  except
    on e: exception do
    begin
      dm.IBTransaction.Rollback;
      ShowMessage('Erro ao Buscar Carta' + #13 + e.message);
      exit;
    end;
  end;
  dm.ACBrNFe1.EventoNFe.GerarXML;
  if (frmStatus = nil) then
    frmStatus := TfrmStatus.Create(nil);
  frmStatus.lblStatus.Caption := 'Enviando CC-e';
  frmStatus.Show;
  frmStatus.BringToFront;
  Sleep(100);
  Application.ProcessMessages;
  dm.ACBrNFe1.EnviarEvento(strtoint(idLote));
  frmStatus.close;
  // dm.ACBrNFe1.WebServices.CartaCorrecao.Executar;

  if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.cStat = 128 then
  begin
    if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
      .RetInfEvento.cStat = 573 then
    begin
      showmessage
        ('Esta Carta de correção ja existe enviei um nova para substir');

      dm.QConsulta.close;
      dm.QConsulta.sql.Clear;
      dm.QConsulta.sql.Text :=
        'UPDATE NOTA_FISCAL_CCE SET PROTOCOLO=:PROT, DATA_AUT=:DATA,' +
        'HORA_AUT=:HORA, RETORNO=:RET, STATUS_TRANSMITIDA=:S where COD=:COD';
      dm.QConsulta.Parambyname('PROT').AsString := Protocolo;
      dm.QConsulta.Parambyname('DATA').AsString :=
        FormatDatetime('dd/mm/yyyy', DataHora);
      dm.QConsulta.Parambyname('HORA').AsString :=
        FormatDatetime('hh:mm:ss', DataHora);
      dm.QConsulta.Parambyname('RET').AsString := Retorno;
      dm.QConsulta.Parambyname('S').AsString := 'S';
      dm.QConsulta.Parambyname('COD').AsInteger := COD;
      dm.QConsulta.ExecSQL;
      dm.QConsulta.close;
      dm.IBTransaction.Commit;
      exit;
    end;
    if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
      .RetInfEvento.cStat = 135 then
    begin
      Protocolo := dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
        Items[0].RetInfEvento.nProt;
      DataHora := dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
        Items[0].RetInfEvento.dhRegEvento;
      Retorno := dm.ACBrNFe1.WebServices.EnvEvento.RetornoWS;
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      try
        dm.QConsulta.close;
        dm.QConsulta.sql.Clear;
        dm.QConsulta.sql.Text :=
          'update nota_fiscal_cce set STATUS_TRANSMITIDA=:S where not COD=:COD and COD_NF=:COD_NF';
        dm.QConsulta.Parambyname('COD').AsInteger := COD;
        dm.QConsulta.Parambyname('COD_NF').AsInteger := COD_NF;
        dm.QConsulta.Parambyname('S').AsString := 'C';
        dm.QConsulta.ExecSQL;
        dm.QConsulta.close;
        dm.QConsulta.sql.Clear;
        dm.QConsulta.sql.Text :=
          'UPDATE NOTA_FISCAL_CCE SET PROTOCOLO=:PROT, DATA_AUT=:DATA,' +
          'HORA_AUT=:HORA, RETORNO=:RET, STATUS_TRANSMITIDA=:S where COD=:COD';
        dm.QConsulta.Parambyname('PROT').AsString := Protocolo;
        dm.QConsulta.Parambyname('DATA').AsString :=
          FormatDatetime('dd/mm/yyyy', DataHora);
        dm.QConsulta.Parambyname('HORA').AsString :=
          FormatDatetime('hh:mm:ss', DataHora);
        dm.QConsulta.Parambyname('RET').AsString := Retorno;
        dm.QConsulta.Parambyname('S').AsString := 'A';
        dm.QConsulta.Parambyname('COD').AsInteger := COD;
        dm.QConsulta.ExecSQL;
        dm.QConsulta.close;
        dm.IBTransaction.Commit;
        ShowMessage('Carta enviada' + #13 +
          inttostr(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
          Items[0].RetInfEvento.cStat) + ':' +
          dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.xMotivo);
        FrmGerenciamentoNFe.impCarta.Click;
      except
        on e: exception do
        begin
          dm.IBTransaction.Rollback;
          ShowMessage('Erro ao atualizar carta' + #13 + e.message);
          exit;
        end;
      end;
    end
    else
    begin
      ShowMessage('Carta não autorizada' + #13 +
        inttostr(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items
        [0].RetInfEvento.cStat) + ':' + dm.ACBrNFe1.WebServices.EnvEvento.
        EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);

    end;

  end
  else
  begin
    ShowMessage('Erro ao processar Lote' + #13 +
      inttostr(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.cStat) + ':' +
      dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.xMotivo);

  end;
end;


procedure TFrmGerenciamentoNFe.Corrige;
var
  Chave2, caminho, protocolo, chave, rec: string;
  cod: Integer;
  tempdata: string;
begin

  Chave2 := copy(trim(QConsNfeCHAVE2.AsString), 4,
    length(trim(QConsNfeCHAVE2.AsString)) - 3);
 // caminho := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar + '\' + Chave2 +
 //   '-nfe.xml';
    tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

     Caminho := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
      + sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';


  cod := QConsNfeNR_NOTA.AsInteger;

  if not fileexists(caminho) then
  begin
    ShowMessage('XML não encontrado!');
    exit;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  DM.ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
  DM.ACBrNFe1.WebServices.Consulta.NFeChave := trim(Chave2);
  DM.ACBrNFe1.WebServices.Consulta.Executar;
  if DM.ACBrNFe1.WebServices.Consulta.cStat = 101 then
  begin
    ShowMessage('NF-e costa como cancelada Na Base de Dados da Sefaz..!' + #13 +
        DM.ACBrNFe1.WebServices.Consulta.XMotivo);
    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
    exit;
  end;

  if DM.ACBrNFe1.NotasFiscais.Items[0].Confirmada then
  begin
    DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
    protocolo := DM.ACBrNFe1.WebServices.Consulta.protocolo;
    chave := Chave2;
    if dm.IBTransaction.InTransaction then
      dm.IBTransaction.Commit;
    dm.IBTransaction.StartTransaction;

    try
      try
        with dm.QConsulta do
        begin

          close;
          sql.Clear;
          sql.Text := 'UPDATE NFE_NOTA ' +
            'SET CHAVE_ACESSO_NFE = :CHAVE, NR_PROTOCOLO_NFE = :PROTO' +
            'WHERE NR_NOTA = :CODNF';
          Parambyname('chave').AsString := trim(chave);
          Parambyname('proto').AsString := trim(protocolo);
          Parambyname('codnf').AsInteger := cod;
          ExecSQL;
        end;
        dm.IBTransaction.Commit;
      except
        dm.IBTransaction.Rollback;
        ShowMessage('Erro gravando a Chave e o Protrocolo da NF-e');
      end;
    finally
      dm.QConsulta.close;
    end;

    ShowMessage('Consulta concluída com sucesso!' + #13 + 'NFe autorizada...');

  end;

end;

procedure TFrmGerenciamentoNFe.BtnConsultarServicoClick(Sender: TObject);
begin

IF DM.ACBrNFe1.ssl.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

  DM.ACBrNFe1.WebServices.StatusServico.Executar;
  Memo.Lines.Add('Serviço......');
  Memo.Lines.Add('Status: '  +dm.ACBrNFe1.WebServices.StatusServico.xMotivo);
end;

procedure TFrmGerenciamentoNFe.FormCreate(Sender: TObject);
begin
  sSql := QConsNfe.sql.Text;

  iEmp := DM.SDS_EmpresaCODIGO.AsInteger;

  { busca parametros }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Add(
            'SELECT NFE_CERTIFICAO, NFE_SENHA, CAMINHO_CERTIFICADO,     '
            +
            'TIPO_IMPRESSAO_DANFE, FORMA_EMISSAO_DANFE, NFE_LOGOMARCA,          '
            +
            'SALVAR_LOG_DANFE, NFE_CAMINHO_XML, PASTA_TRANSMITIDAS_DANFE, AMBIENTE_DANFE, PASTA_CANCELADAS_DANFE, '
            +
            'PASTA_INUTILIZADAS_DANFE, CAMINHO_ARQUIVOS_PDF,    ' + 'ESTADO_NFE ' + 'FROM CONFIGURACOES ' + 'WHERE COD_EMPRESA = :CODEMP');
        Parambyname('codemp').AsInteger := iEmp;
        Open;

        { Configurando a NFe }
        DM.ACBrNFe1.Configuracoes.Certificados.Senha := trim
          (fieldbyname('NFE_SENHA').AsString);
        DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := trim
          (fieldbyname('NFE_CERTIFICAO').AsString);

        if trim(fieldbyname('tipo_impressao_danfe').AsString) = 'R' then
          DM.ACBrNFe1.DANFE.TipoDANFE := tiRetrato
        else
          DM.ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;

        case fieldbyname('forma_emissao_danfe').AsInteger of
          1:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
          2:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teContingencia;
          3:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teSCAN;
          4:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teDPEC;
          5:
            DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA;
        end;

          DM.ACBrNFe1.DANFE.Logo := trim(fieldbyname('NFE_LOGOMARCA')
            .AsString);

        if trim(fieldbyname('salvar_log_danfe').AsString) = 'S' then
          DM.ACBrNFe1.Configuracoes.Geral.Salvar := true
        else
          DM.ACBrNFe1.Configuracoes.Geral.Salvar := false;

          DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar := trim
          (fieldbyname('NFE_CAMINHO_XML').AsString);

        sAmbienteNfe := trim(fieldbyname('ambiente_danfe').AsString);

        if trim(fieldbyname('ambiente_danfe').AsString) = 'P' then
          DM.ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
        else
          DM.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;

        DM.ACBrNFe1.Configuracoes.WebServices.UF := trim
          (fieldbyname('estado_nfe').AsString); ;
        DM.ACBrNFe1.Configuracoes.WebServices.Visualizar := false;

        DM.ACBrNFe1.Configuracoes.Arquivos.Pathevento := trim
          (fieldbyname('pasta_canceladas_danfe').AsString);
        DM.ACBrNFe1.Configuracoes.Arquivos.PathInu := trim
          (fieldbyname('pasta_inutilizadas_danfe').AsString);
        DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe := trim
          (fieldbyname('pasta_transmitidas_danfe').AsString);
        dm.ACBrNFeDANFEFR1.PathPDF := trim
          (fieldbyname('caminho_arquivos_pdf').AsString);
       { ACBrNFeDANFeRL1.RavFile := trim
          (fieldbyname('caminho_relatorio_danfe').AsString);}
      end;

      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      ShowMessage('Erro ao buscar os parâmetros');
    end;
  finally
    dm.QConsulta.close;
  end;

  dm.ConfiguraNFe;
  sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);
end;

procedure TFrmGerenciamentoNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if IBTRNfe.Active then
    IBTRNfe.Commit;

  Action := caFree;
  FrmGerenciamentoNFe := nil;
end;

procedure TFrmGerenciamentoNFe.QConsNfeCalcFields(DataSet: TDataSet);
begin
  if trim(QConsNfeSTATUS.AsString) = 'S' then
    QConsNfeCALC_TRANSMITIDO.AsString := 'TRANSMITIDA OK'
  else
    QConsNfeCALC_TRANSMITIDO.AsString := '';
  if QConsNfeDEPEC.AsString = '1' then
    QConsNfeCALC_TRANSMITIDO.AsString := 'TRANS. DEPEC';

  if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
    QConsNfeCALC_CANCELADO.AsString := 'CANCELADA'
  else
    QConsNfeCALC_CANCELADO.AsString := '';

  if trim(QConsNfeSTATUS_INUTILIZADO.AsString) = 'S' then
    QConsNfeCALC_INUTILIZADO.AsString := 'INUTILIZADO'
  else
    QConsNfeCALC_INUTILIZADO.AsString := '';

  if trim(QConsNfeSTATUS_EMAIL.AsString) = 'S' then
    QConsNfeCALC_EMAIL.AsString := 'EMAIL OK'
  else
    QConsNfeCALC_EMAIL.AsString := '';

  {if QConsNfeRAZAO_FOR.IsNull then
    QConsNfeCALC_DESTINATARIO.AsString := QConsNfeNOME_CLI.AsString
  else
    QConsNfeCALC_DESTINATARIO.AsString := QConsNfeRAZAO_FOR.AsString;}
end;

procedure TFrmGerenciamentoNFe.ResetarNFe1Click(Sender: TObject);
var
  Senha: String;
  codnota: Integer;
begin
  Senha := inputBox('Senha programação', 'Digite a senha de programação', '');
  if Senha <> '' then
  begin
    if Senha = '@siace#' then
    begin
      codnota := QConsNfeNR_NOTA.AsInteger;
      if dm.IBTransaction.InTransaction then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      dm.Limpa.close;
      dm.Limpa.Parambyname('CODNF').AsInteger := codnota;
      dm.Limpa.ExecSQL;
      dm.Limpa.close;
      dm.IBTransaction.Commit;
      BtnOkClick(self);
    end
    else
      ShowMessage('Senha incorreta!');
  end;
end;

procedure TFrmGerenciamentoNFe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  { If Odd(QConsNfe.RecNo) then
    begin
    DBGrid1.Canvas.Brush.Color:= $00CEFFFF;
    end
    else
    begin
    DBGrid1.Canvas.Brush.Color:= clWhite;
    end; }
 { if trim(QConsNfeSTATUS.AsString) = 'S' then
  begin
    DBGrid1.Canvas.Font.Color := clBlue;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
  end;
  if QConsNfeDEPEC.AsString = '1' then
  begin
    DBGrid1.Canvas.Font.Color := clGreen;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
  end;
  if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
  end;  }

  { DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString); }


  if Column.field.FieldName = 'STATUS' then // o nome do campo
  begin
    DBGrid1.Canvas.FillRect(Rect);
    if not(QConsNfeSTATUS.AsString = 'S') then
    begin
      Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5, Rect.Top + 1, 3);
      if QConsNfeDEPEC.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18, Rect.Top + 1, 6);
      if QConsNfeSTATUS_INUTILIZADO.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18 + 18 + 18 + 18, Rect.Top + 1, 7);
    end
    else
    begin
      if QConsNfeDEPEC.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18, Rect.Top + 1, 6);
      if QConsNfeSTATUS.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5, Rect.Top + 1, 1);
      if QConsNfeSTATUS_CANCELADO.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18, Rect.Top + 1, 0);
      if QConsNfeSTATUS_EMAIL.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18, Rect.Top + 1, 2);
      if QConsNfeCORRECAO.AsString = 'S' then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18 + 18, Rect.Top + 1, 4);
      if (trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '') and
        (trim(QConsNfeCHAVE2.AsString) <> '') then
        Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18 + 18 + 18,  Rect.Top + 1, 5);
      if QConsNfeSTATUS_INUTILIZADO.AsString = 'S' then
      Imagens.Draw(DBGrid1.Canvas, Rect.Left + 5 + 18 + 18 + 18 + 18 + 18, Rect.Top + 1, 7);

    end;
  end;


end;

procedure TFrmGerenciamentoNFe.BtnOkClick(Sender: TObject);
var
  parametro: string;
begin
  coluna := 0;
  if IBTRNfe.Active then
    IBTRNfe.Commit;
  IBTRNfe.StartTransaction;

  if Combo.ItemIndex = 0 then
    parametro:= ' WHERE N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 1 then
    parametro:= ' WHERE STATUS = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 2 then
    parametro:= ' WHERE STATUS_EMAIL = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 3 then
    parametro:= ' WHERE STATUS_CANCELADO = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 4 then
    parametro:= ' WHERE CORRECAO = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 5 then
    parametro:= ' WHERE CHAVE_ACESSO_NFE = '''' AND CHAVE2 = '''' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 6 then
    parametro:= ' WHERE STATUS = ''N'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 7 then
    parametro:= ' WHERE DEPEC = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC '
  else
  if Combo.ItemIndex = 8 then
    parametro:= ' WHERE STATUS_INUTILIZADO = ''S'' AND N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
    ' ORDER BY N.NR_NOTA ASC ';

  with QConsNfe do
  begin
    close;
    sql.Clear;
    sql.Text := sSql;
    sql.Add(parametro);
    Parambyname('dataini').AsDate := EdtDataIni.Date;
    Parambyname('datafin').AsDate := EdtDataFin.Date;
    Open;
  end;
end;

procedure TFrmGerenciamentoNFe.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmGerenciamentoNFe.FormShow(Sender: TObject);
begin
  EdtDataIni.Date := Date;
  EdtDataFin.Date := Date;
  EdtDataIni.SetFocus;

  DM.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
  DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeRetrato.fr3';
  DM.ACBrNFeDANFEFR1.FastFileEvento := 'C:\Siace\rel\EVENTOS.fr3';
  dm.ACBrNFeDANFEFR1.tipoDanfe := tiRetrato;
 // dm.ACBrNFeDANFEFR1.ShowDialog := True;
//  DM.ACBrNFeDANFEFR1.MostrarPreview := TRUE;
  //dm.ACBrNFeDANFEFR1.tipoDanfe := tiNFe;
  
end;

procedure TFrmGerenciamentoNFe.BtnEnviarEmailClick(Sender: TObject);
var
  vDt,
  vCaminhoXML,
  vCaminhoPDF,
  vEmail,
  vServidorSmpt,
  vPortaSmtp,
  vUsuarioSmpt,
  vSenhaSmtp,
  vEmailFrom,
  vEmailAssunto,
  vEmailTo: String;
  vEmailMensagem,
  vEmailCc: Tstrings;
  vConexaoSegura: boolean;
begin
  if not(QConsNfe.State = dsbrowse) then Exit;

  if Trim(QConsNfeSTATUS.AsString) = 'N' then
  begin
    ShowMessage('NF-e não transmitida.');
    Exit;
  end;

  if Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = EmptyStr then
  begin
    ShowMessage('NF-e sem chave de acesso.');
    Exit;
  end;

  if Trim(QConsNfeNR_PROTOCOLO_NFE.AsString) = EmptyStr then
  begin
    ShowMessage('NF-e sem protocolo.');
    Exit;
  end;

  iCodigoNFe:= QConsNfeNR_NOTA.AsInteger;
  vDt:= FormatDateTime('yyyymm', QConsNfeDT_EMISSAO.AsDateTime);

  vCaminhoXML:= DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +
    sCNPJEmpresa + '\NFe\' + vDt + '\' + Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  vCaminhoPDF:= DM.ACBrNFe1.DANFE.PathPDF + '\' +
    Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.pdf';

  if not fileexists(vCaminhoXML) then
    vCaminhoXML:= DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +
      Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  if not FileExists(vCaminhoXML) then
  begin
    ShowMessage('XML da NF-e inexistente.');
    Exit;
  end;

  if not FileExists(vCaminhoPDF) then
  begin
    ShowMessage('PDF da NF-e inexistente.');
    Exit;
  end;

  if not (QConsNfeCOD_CLIENTE.IsNull) then
    vEmail:= Trim(DM.RetornaStringTabela('email', 'clientes', 'codigo',
      QConsNfeCOD_CLIENTE.AsInteger))
  else
  if not (QConsNfeCOD_FORNECEDOR.IsNull) then
    vEmail:= Trim(DM.RetornaStringTabela('email', 'FORNECEDORES', 'codigo',
      QConsNfeCOD_FORNECEDOR.AsInteger))
  else
    vEmail:= EmptyStr;

  iEmp:= DM.SDS_EmpresaCODIGO.Value;

  if DM.IBTransaction.Active then
    DM.IBTransaction.Commit;

  with DM.QConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select servidor_smtp, porta_smtp, usuario_smtp, senha_smtp, from_smtp,');
    SQL.Add('assunto_email_danfe, smtp_conexao_segura, mensagem_email_danfe ');
    SQL.Add('from configuracoes where cod_empresa = :codemp');
    Params.ParamByName('codemp').AsInteger:= iEmp;
    Open;

    vServidorSmpt:= Trim(FieldByName('servidor_smtp').AsString);
    vPortaSmtp:= Trim(FieldByName('porta_smtp').AsString);
    vUsuarioSmpt:= Trim(FieldByName('usuario_smtp').AsString);
    vSenhaSmtp:= Trim(FieldByName('senha_smtp').AsString);
    vEmailAssunto:= Trim(FieldByName('assunto_email_danfe').AsString);
    vEmailMensagem:= TstringList.Create;
    vEmailMensagem.Add(Trim(FieldByName('mensagem_email_danfe').Text));
    vEmailFrom:= Trim(FieldByName('from_smtp').AsString);

    vConexaoSegura:= Trim(FieldByName('smtp_conexao_segura').AsString) = 'S';
  end;

  DM.SDS_Clientes.Active:= false;
  DM.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.SQL.add('select * from clientes where codigo =:codigo order by nome_rs asc');
  DM.SDS_Clientes.Params.ParamByName('codigo').AsInteger:= QConsNfeCOD_CLIENTE.AsInteger;
  DM.SDS_Clientes.Active:= True;
  vEmailTo:= DM.SDS_ClientesEMAIL.Text;

  if (vServidorSmpt = EmptyStr) or
    (vPortaSmtp = EmptyStr) or
    (vUsuarioSmpt = EmptyStr) or
    (vSenhaSmtp = EmptyStr)
  then
  begin
    ShowMessage('Dados para envio de email não foram configurados.');
    Exit;
  end;

  try
    FEnviaParaEmail:= TFEnviaParaEmail.Create(nil);
    FEnviaParaEmail.Host:= vServidorSmpt;
    FEnviaParaEmail.Usuario:= vUsuarioSmpt;
    FEnviaParaEmail.Porta:= StrToIntDef(vPortaSmtp, 0);
    FEnviaParaEmail.Address:= vUsuarioSmpt;
    FEnviaParaEmail.edtAssunto.text:= vEmailAssunto;
    FEnviaParaEmail.edtEmailPara.text:= vEmailTo;
    FEnviaParaEmail.mmMensahem.Text:= vEmailMensagem.Text;
    FEnviaParaEmail.LocalArquivoXML:= vCaminhoXML;
    FEnviaParaEmail.LocalArquivoPDF:= vCaminhoPDF;
    FEnviaParaEmail.Senha:= vSenhaSmtp;
    FEnviaParaEmail.ShowModal;
  finally
    FreeAndNil(FEnviaParaEmail);
  end;
end;

procedure TFrmGerenciamentoNFe.BtnImprimirClick(Sender: TObject);
var
  sCaminhoArquivo: string;
  tempdata: string;
begin
{DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeRetrato.fr3';
DM.ACBrNFeDANFEFR1.FastFileEvento := 'C:\Siace\rel\EVENTOS.fr3';
DM.ACBrNFeDANFEFR1.tipoDanfe := tiRetrato;
DM.ACBrNFeDANFEFR1.ShowDialog := True;
DM.ACBrNFeDANFEFR1.MostrarPreview := TRUE;
 }

  { verifica se a nota foi transmitida e tem protocolo e chave }
  if trim(QConsNfeSTATUS.AsString) = 'N' then
  begin
    ShowMessage('NFe não transmitida');
    exit;
  end;

  if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
  begin
    ShowMessage('NFe sem chave de acesso');
    exit;
  end;

  if trim(QConsNfeNR_PROTOCOLO_NFE.AsString) = '' then
  begin
    ShowMessage('NFe sem protocolo');
    exit;
  end;


  if QConsNfeSTATUS.AsString = 'S' then
  begin
      tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
       sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not fileexists(sCaminhoArquivo) then
    begin
       sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
       + '\'+ trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
     end;


    if not fileexists(sCaminhoArquivo) then
    begin
      ShowMessage('NFe não encontrada');
      exit;
    end;

    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);

    DM.ACBrNFe1.NotasFiscais.Imprimir;

  end
  else
  begin
      tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
      + sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not fileexists(sCaminhoArquivo) then
    begin
       sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
       + '\'+ trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
     end;

    if not fileexists(sCaminhoArquivo) then
    begin
      ShowMessage('NFe não encontrada');
      exit;
    end;

    DM.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);

     DM.ACBrNFe1.NotasFiscais.Imprimir;
  end;
  BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.BtnInutilizarClick(Sender: TObject);
var
  sModelo, sSerie, sAno, sNumeroInicial, sNumeroFinal: String;
  sCNPJ: string;
begin
   if Pos(RemoveChar(dm.SDS_EmpresaCNPJ.text), DM.ACBrNFe1.SSL.CertSubjectName) = 0 then
    begin
      showmessage('Certificado pertencente a outra empresa / pessoa'+chr(13)+DM.ACBrNFe1.SSL.CertSubjectName);
      exit;
    end;
IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

  iEmp := DM.SDS_EmpresaCODIGO.AsInteger;

  sCNPJ := RetiraCaracter(dm.RetornaStringTabela('cnpj', 'empresa',
      'codigo', iEmp));
  sModelo := '55';

  if not(InputQuery('WebServices Inutilização ', 'Ano', sAno)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Serie', sSerie)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Inicial',
      sNumeroInicial)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Final',
      sNumeroFinal)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Justificativa', sJustifNFe))
    then
    exit;

    iCodigoNfe := QConsNfeNR_NOTA.AsInteger;

    dm.ACBrNFe1.WebServices.Inutiliza(sCNPJ, sJustifNFe, StrToInt(sAno),
    StrToInt(sModelo), StrToInt(sSerie), StrToInt(sNumeroInicial),
    StrToInt(sNumeroFinal));

    if DM.ACBrNFe1.WebServices.Inutilizacao.cStat = 563 then
   begin
    DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_INUTILIZADO', sJustifNFe) ;
   end;

     ShowMessage('Protocolo: '+ DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo);

   if DM.ACBrNFe1.WebServices.Inutilizacao.Protocolo > '' then
   begin
    DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_INUTILIZADO', sJustifNFe) ;
   end else
   begin
     ShowMessage('Nota não inutilizada Houve algum erro');
   end;
  BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.BtnCancelamentoClick(Sender: TObject);
var
  sCaminhoArquivo: string;
  tempdata, idLote: string;
begin

IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

    if Pos(RemoveChar(dm.SDS_EmpresaCNPJ.text), DM.ACBrNFe1.SSL.CertSubjectName) = 0 then
    begin
      showmessage('Certificado pertencente a outra empresa / pessoa'+chr(13)+DM.ACBrNFe1.SSL.CertSubjectName);
      exit;
    end;
  { verifica se a nota foi transmitida e tem protocolo e chave }
  if trim(QConsNfeSTATUS.AsString) = 'N' then
  begin
    ShowMessage('NFe não transmitida');
    exit;
  end;

  if trim(QConsNfeSTATUS_CANCELADO.AsString) = 'S' then
  begin
    ShowMessage('NFe Cancelada');
    exit;
  end;

  if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
  begin
    ShowMessage('NFe sem chave de acesso');
    exit;
  end;

  if trim(QConsNfeNR_PROTOCOLO_NFE.AsString) = '' then
  begin
    ShowMessage('NFe sem protocolo');
    exit;
  end;

  iCodigoNfe := QConsNfeNR_NOTA.AsInteger;

{  tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
    + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);
  // verifica se o arquivo xml da nota existe no caminho especificado
  sCaminhoArquivo := DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +
    tempdata + '\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString)
    + '-nfe.xml';
 { if not fileexists(sCaminhoArquivo) then
  begin
  sCaminhoArquivo := dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +
   trim(QConsNfeCHAVE_ACESSO_NFE.AsString)
    + '-nfe.xml';
  end; }
  { if not fileexists(sCaminhoArquivo) then
    begin
     sCaminhoArquivo := DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\'
      + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
    end
    else
    begin
      sCaminhoArquivo := DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' +
      '\Enviadas\'+ tempdata + '\Nfe\' +  trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
    end;

  if not fileexists(sCaminhoArquivo) then
  begin
    ShowMessage('NFe não encontrada');
    exit;
  end;     }
  if QConsNfeSTATUS.AsString = 'S' then
  begin
     tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
        sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not fileexists(sCaminhoArquivo) then
    begin
       sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text 
       +  trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
     end;


    dm.ACBrNFe1.Configuracoes.Geral.AtualizarXMLCancelado := True;

    if not fileexists(sCaminhoArquivo) then
    begin
      ShowMessage('NFe não encontrada');
      exit;
    end;
      dm.ACBrNFe1.NotasFiscais.Clear;
  dm.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);
  idLote := '1';
  if not(InputQuery('WebServices Cancelamento', 'Justificativa', sJustifNFe))
    then
    exit;

 { dm.ACBrNFe1.Cancelamento(sJustifNFe);}

    dm.ACBrNFe1.EventoNFe.Evento.Clear;
    dm.ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
    with DM.ACBrNFe1.EventoNFe.Evento.Add do
    begin
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := sJustifNFe;
    end;



  // eu tinha feito
 { if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt = 128 then
  begin

   ShowMessage('Protocolo: ' + dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
   DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_CANCELADO', sJustifNFe) ;
  end else
  begin
   ShowMessage('Nota fiscal não cancelada verifique a data e hora se estão corretas e tente novamente');
  end; }
   if DM.ACBrNFe1.EnviarEvento(StrToInt(idLote)) then
    begin
      if dm.ACBrNFe1.WebServices.EnvEvento.cStat = 128 then
      begin
        if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.cStat = 135 then
         begin
          dm.AtualizaStatusNfe(iCodigoNfe, 'STATUS_CANCELADO', sJustifNFe);

          if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         with dm.IBSQL do
          begin
           close;
            sql.Clear;
            sql.Add('update NFE_NOTA set NFE_NOTA.nr_pedido=''-1'' where  nr_nota = :nfe');
            Parambyname('nfe').Asinteger:= iCodigoNfe;
            ExecQuery;
            end;
            dm.IBTransaction.CommitRetaining;

        end else
        begin
          ShowMessage(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
            Items[0].RetInfEvento.XMotivo);
        end;
      end;
  end;
  BtnOk.Click;

   end
   else
   begin
     tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
      + sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not fileexists(sCaminhoArquivo) then
    begin
       sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text 
       +  trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
     end;


    if not fileexists(sCaminhoArquivo) then
    begin
      ShowMessage('NFe não encontrada');
      exit;
    end;


  dm.ACBrNFe1.NotasFiscais.Clear;
  dm.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);
  idLote := '1';
  if not(InputQuery('WebServices Cancelamento', 'Justificativa', sJustifNFe))
    then
    exit;

 { dm.ACBrNFe1.Cancelamento(sJustifNFe);}

    dm.ACBrNFe1.EventoNFe.Evento.Clear;
    dm.ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
    with DM.ACBrNFe1.EventoNFe.Evento.Add do
    begin
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := sJustifNFe;
    end;



  // eu tinha feito
 { if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt = 128 then
  begin

   ShowMessage('Protocolo: ' + dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
   DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_CANCELADO', sJustifNFe) ;
  end else
  begin
   ShowMessage('Nota fiscal não cancelada verifique a data e hora se estão corretas e tente novamente');
  end; }
   if DM.ACBrNFe1.EnviarEvento(StrToInt(idLote)) then
    begin
      if dm.ACBrNFe1.WebServices.EnvEvento.cStat = 128 then
      begin
        if dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.cStat = 135 then
         begin
          dm.AtualizaStatusNfe(iCodigoNfe, 'STATUS_CANCELADO', sJustifNFe);

          if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         with dm.IBSQL do
          begin
           close;
            sql.Clear;
            sql.Add('update NFE_NOTA set NFE_NOTA.nr_pedido=''-1'' where  nr_nota = :nfe');
            Parambyname('nfe').Asinteger:= iCodigoNfe;
            ExecQuery;
            end;
            dm.IBTransaction.CommitRetaining;

        end else
        begin
          ShowMessage(dm.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.
            Items[0].RetInfEvento.XMotivo);
        end;
      end;
  end;
  BtnOk.Click;
end;
end;

procedure TFrmGerenciamentoNFe.BtnConsultaNFeClick(Sender: TObject);
var
  sCaminhoArquivo: string;
  tempdata: string;
begin

IF DM.ACBrNFe1.SSL.CertDataVenc < Now then
begin
 showmessage('Certificado vencido (data de validade expirada)');
 Exit;
end;

  if (trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '') and
    (trim(QConsNfeNR_RECIBO_NFE.AsString) = '') and
    (trim(QConsNfeCHAVE2.AsString) <> '') then
  Begin
    ShowMessage(' NFe danificada será corrigida!');
    Corrige;
  end;
  { verifica se a nota foi transmitida e tem protocolo e chave }
  if trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = '' then
  begin
    ShowMessage('NFe sem chave de acesso');
    exit;
  end;

{ if trim(QConsNfeNR_PROTOCOLO_NFE.AsString) = '' then
  begin
    ShowMessage('NFe sem protocolo');
    exit;
  end; }

  { verifica se o arquivo xml da nota existe no caminho especificado }
    tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text  + '\' +
        sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not fileexists(sCaminhoArquivo) then
    begin
          sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text
       + '\'+ trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
     end;



  if not fileexists(sCaminhoArquivo) then
  begin
    ShowMessage('NFe não encontrada');
    exit;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  // dm.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);
  DM.ACBrNFe1.WebServices.Consulta.NFeChave := trim(QConsNfeCHAVE_ACESSO_NFE.AsString);
  dm.ACBrNFe1.WebServices.Consulta.Executar;
  ShowMessage(DM.ACBrNFe1.WebServices.Consulta.XMotivo);

  if (DM.ACBrNFe1.WebServices.Consulta.cStat = 100) then
  begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
     dm.IBTransaction.StartTransaction;
      with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'UPDATE NFE_NOTA SET STATUS =:STATUS, FL_IMPRESSO =:IMP, DEPEC =:DEPEC, NR_PROTOCOLO_NFE =:PROT, CHAVE_ACESSO_NFE =:CHAVE, CHAVE2 =:CHAVE2, MODELO =:MOD WHERE NR_NOTA = :COD_NF';
            Parambyname('STATUS').ASSTRING   := 'S';
            Parambyname('IMP').AsString      := 'S';
            Parambyname('DEPEC').AsString    := 'N';
            Parambyname('PROT').AsString     := DM.ACBrNFe1.WebServices.Consulta.Protocolo;
            Parambyname('CHAVE').AsString    := DM.ACBrNFe1.WebServices.Consulta.NFeChave;
            Parambyname('CHAVE2').AsString   := 'NFE'+ DM.ACBrNFe1.WebServices.Consulta.NFeChave;
            Parambyname('MOD').AsString      := '55';
            Parambyname('COD_NF').AsInteger  := QConsNfeNR_NOTA.AsInteger;
         ExecSQL;
      end;
     dm.IBTransaction.Commit;
     dm.QConsulta.Close;
     end;
  BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.BtnEnviarClick(Sender: TObject);
begin
  if (trim(QConsNfeCHAVE2.AsString) <> '') and (QConsNfeDEPEC.AsInteger <> 1)
    then
  begin
    ShowMessage('NFe ja enviada... Correções precione consultar!');
    exit;
  end;

  iCodigoNfe := QConsNfeNR_NOTA.AsInteger;
  
 // NotaFiscalEletronica(QConsNfeNR_NOTA.AsInteger);
  BtnOk.Click;
end;

procedure TFrmGerenciamentoNFe.btnGerarPDFClick(Sender: TObject);
var
  vCaminhoArquivo,
  vDt: string;
begin
  if not(QConsNfe.State = dsbrowse) then Exit;

  if Trim(QConsNfeSTATUS.AsString) = 'N' then
  begin
    ShowMessage('NF-e não transmitida.');
    Exit;
  end;

  if Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) = EmptyStr then
  begin
    ShowMessage('NF-e sem chave de acesso.');
    Exit;
  end;

  if Trim(QConsNfeNR_PROTOCOLO_NFE.AsString) = EmptyStr then
  begin
    ShowMessage('NF-e sem protocolo.');
    Exit;
  end;

  vDt:= FormatDateTime('yyyymm', QConsNfeDT_EMISSAO.AsDateTime);
  sCNPJEmpresa:= RemoveChar(DM.SDS_EmpresaCNPJ.Text);

  if QConsNfeDEPEC.AsString = '1' then
  begin
    vCaminhoArquivo:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
      sCNPJEmpresa + '\NFCe\' + vDt + '\' + Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not FileExists(vCaminhoArquivo) then
    begin
      vCaminhoArquivo:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
        Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
    end;

    if not FileExists(vCaminhoArquivo) then
    begin
      ShowMessage('XML da NFC-e inexistente.');
      exit;
    end;
  end
  else
  begin
    vCaminhoArquivo:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
      sCNPJEmpresa + '\NFe\' + vDt + '\' + Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not FileExists(vCaminhoArquivo) then
    begin
      vCaminhoArquivo:= DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text + '\' +
        Trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
    end;

    if not FileExists(vCaminhoArquivo) then
    begin
      ShowMessage('XML da NF-e inexistente.');
      exit;
    end;
  end;

  DM.ACBrNFe1.NotasFiscais.Clear;
  DM.ACBrNFe1.NotasFiscais.LoadFromFile(vCaminhoArquivo);
  DM.ACBrNFe1.NotasFiscais.ImprimirPDF;
end;

procedure TFrmGerenciamentoNFe.Ex1Click(Sender: TObject);
var
  Senha: String;
  codnota: Integer;
begin

{  if QConsNfeCHAVE_ACESSO_NFE.Text > '' then
  begin
   //ShowMessage('Nota Enviada a Sefaz não pode Ser excluida!');
   MessageDlg('Nota Enviada a Sefaz não pode Ser excluida!', mtWarning,[mbOk], 0);
  end else }
 // Senha := ('Senha programação', 'Digite a senha de programação', '');
  Dc_InputQuerySenha('Senha Programacao', 'Digite a Senha Programadda',senha);
 // Senha := //inputBox('Senha programação', 'Digite a senha de programação', '');
  if Senha <> '' then
  begin
    if Senha = '@siace#' then
    begin
      codnota := QConsNfeNR_NOTA.AsInteger;
      if dm.IBTransaction.InTransaction then
        dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      dm.Limpa.close;
      dm.Limpa.SQL.Clear;
      dm.Limpa.SQL.Add('Delete from nfe_nota WHERE NR_NOTA = :CODNF');
      dm.Limpa.Parambyname('CODNF').AsInteger := codnota;
      dm.Limpa.Open;
      dm.Limpa.close;
      dm.IBTransaction.Commit;
      BtnOkClick(self);
    end
    else
      ShowMessage('Senha incorreta!');
  end;
end;

procedure TFrmGerenciamentoNFe.Button1Click(Sender: TObject);
var
  sCaminhoXML: String;
  sCaminhoXMLEvento: String;
  tempdata: string;
  CCeImp1: TCCeImp;
  PastaPDFs: String;
begin

 {
 begin
 OpenDialog1.Title := 'Selecione a NFE';
 OpenDialog1.DefaultExt := '*.XML';
 OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
 if OpenDialog1.Execute then
 begin
 OpenDialog2.Title := 'Selecione o Evento';
  OpenDialog2.DefaultExt := '*.XML';
  OpenDialog2.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog2.InitialDir := DM.ACBrNFe1.Configuracoes.Geral.PathSalvar;
 if OpenDialog2.Execute then
 begin
 CCeImp1 := TCCeImp.Create(nil);
 //CCeImp1.defineSaida(tps_PDF, ''+OpenDialog2.FileName+'.pdf'); // tps_PDF ou tps_Print
 CCeImp1.defineSaida(tps_preview,''+OpenDialog2.FileName+'.pdf'); // tps_PDF ou tps_Print ou tps_preview
 CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
 CCeImp1.defineXMLNFe(OpenDialog1.FileName); // XML da NFe corrigida
 CCeImp1.defineXMLCCe(OpenDialog2.FileName); // XML da CCe
 CCeImp1.defineSoftHouse('Siace Sistemas');
 try
 CCeImp1.Execute;
 except
 // Tratamento
 end;
 CCeImp1.Free;
 end;
end;
end;  }
 tempdata := formatdatetime('yyyymm', QConsNfeDT_EMISSAO.AsDateTime);
  sCaminhoXML := dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' + tempdata +
    '\nfe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

  sCaminhoXMLEvento := dm.ACBrNFe1.Configuracoes.Arquivos.PathSalvar + '\' +
    formatdatetime('yyyymm', QCartasDATA.AsDateTime)+ '\CCe\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '110110' +
    QCartasSEQ.AsString + '-ProcEventoNFe.xml';
  if not fileexists(sCaminhoXML) then
  begin
    ShowMessage('Arquivo XML NFe não encontrado!');
    exit;
  end;
  if not fileexists(sCaminhoXMLEvento) then
  begin
    ShowMessage('Arquivo XML do Evento não encontrado!');
    exit;
  end;
  PastaPDFs := dm.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\PDF\';
  if not DirectoryExists(PastaPDFs) then
  begin
    ForceDirectories(PastaPDFs);
  end;
  CCeImp1 := TCCeImp.Create(nil);

  CCeImp1.defineSaida(tps_PDF,
    PastaPDFs + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-ProcEventoNFe.pdf');
  // tps_PDF ou tps_Print
  CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
  CCeImp1.defineXMLNFe(sCaminhoXML); // XML da NFe corrigida
  CCeImp1.defineXMLCCe(sCaminhoXMLEvento); // XML da CCe
  CCeImp1.defineSoftHouse('Siace Sistemas');
  try
    CCeImp1.Execute;
  except
    // Tratamento
    showmessage('Erro na impressão da CCe');
  end;
  CCeImp1.Free;
  CCeImp1 := TCCeImp.Create(nil);

  CCeImp1.defineSaida(tps_preview,
    PastaPDFs + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-ProcEventoNFe.pdf');
  // tps_PDF ou tps_Print
  CCeImp1.defineLayOut(fp_Portrait); // implementado impressão retrato
  CCeImp1.defineXMLNFe(sCaminhoXML); // XML da NFe corrigida
  CCeImp1.defineXMLCCe(sCaminhoXMLEvento); // XML da CCe
  CCeImp1.defineSoftHouse('Siace Sistemas');
  try
    CCeImp1.Execute;
  except
    // Tratamento
    showmessage('Erro na visualização da CCe');
  end;
  CCeImp1.Free;
end;

procedure TFrmGerenciamentoNFe.Button2Click(Sender: TObject);
var
  i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
  codigo, CHASSI: string;

  qrClientes: TFDQuery;
  qrEmpresa: TFDQuery;
  qrNFE: TFDQuery;
  qrProdutos: TFDQuery;
  qrSQL: TFDQuery;
begin
  dm.SDS_NFE.Active := False;
  dm.SDS_NFE.Active := True;
  dm.sds_nfe_itens.Active := False;
  dm.sds_nfe_itens.Active := True;
  QNfe.Active := False;
  QNfe.Active := True;

  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione o xml da NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := dm.ACBrNFe1.Configuracoes.ARQUIVOS.PathSalvar;

  if OpenDialog1.Execute then
  begin
    dm.ACBrNFe1.NotasFiscais.Clear;
    dm.ACBrNFe1.NotasFiscais.Add;

    NFeRTXT := TNFeRTXT.Create(dm.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);

    if NFeRTXT.LerTxt then
      NFeRTXT.Free
    else
    begin
      NFeRTXT.Free;
      dm.ACBrNFe1.NotasFiscais.Clear;
      try
        DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
      except
        ShowMessage('Arquivo NFe Inválido');
        exit;
      end;
    end;

    if dm.ACBrNFe1.NotasFiscais.Items[n].NFe.Ide.modelo <> 55 then
    begin
      ShowMessage('XML não pertence a uma NF-e válido');
      exit;
    end;

    dm.SDS_NFE.Insert;

    for n:=0 to dm.ACBrNFe1.NotasFiscais.Count-1 do
    begin
      with dm.ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
        qrClientes:= TFDQuery.create(nil);
        qrClientes.Connection:= DM.Coneccao;
        qrClientes.SQL.Add('SELECT * FROM CLIENTES WHERE CPF_CNPJ = ' + QuotedStr(Dest.CNPJCPF));
        qrClientes.Open;

        if qrClientes.IsEmpty then
        begin
          try
            qrClientes.Close;
            qrClientes.SQL.Clear;
            qrClientes.SQL.Add('SELECT * FROM CLIENTES');
            qrClientes.Open;

            qrClientes.Insert;

            qrSQL:= TFDQuery.create(nil);
            qrSQL.Connection:= DM.Coneccao;
            qrSQL.SQL.Add('SELECT MAX(CODIGO) AS CODIGO FROM CLIENTES');
            qrSQL.Open;
            qrClientes.FieldByName('CODIGO').AsInteger         := qrSQL.FieldByName('CODIGO').ASINTEGER + 1;
            qrSQL.Close;
            qrSQL.Destroy;

            qrClientes.FieldByName('USERCAD').AsString             := FormPrincipal.UserLogado;
            qrClientes.FieldByName('DATACAD').AsDateTime           := now;
            qrClientes.FieldByName('Cod_empresa').AsInteger        := DM.SDS_EmpresaCODIGO.AsInteger;
            qrClientes.FieldByName('NOME_RS').AsString             := dest.xNome;
            qrClientes.FieldByName('ENDERECO').AsString            := Dest.enderDest.xLgr;
            qrClientes.FieldByName('CPF_CNPJ').AsString            := tbFmtCPForCNPJ(dest.CNPJCPF);
            qrClientes.FieldByName('RG_IE').AsString               := dest.IE;
            //qrClientes.FieldByName('COD_IBGE').AsInteger           := dest.enderDest.cMun;
            qrClientes.FieldByName('CIDADE').AsString              := dest.enderDest.xMun;
            qrClientes.FieldByName('TELEFONE').AsString            := tbFmtfone(dest.enderDest.fone);
            qrClientes.FieldByName('UF').AsString                  := dest.enderDest.UF;

            if Length(dest.CNPJCPF) > 12 then
              qrClientes.FieldByName('TIPO').Text                := 'J'
            else
              qrClientes.FieldByName('TIPO').Text                := 'F';

            qrClientes.FieldByName('CEP').Text                 := tbFmtCep(IntToStr(dest.enderDest.CEP));
            qrClientes.FieldByName('BAIRRO').Text              := dest.enderDest.xBairro;
            qrClientes.FieldByName('NUMERO').Text              := RemoveChar(dest.enderDest.nro);

            qrClientes.Post;
          except
            Application.MessageBox('Erro ao tentar incluir cliente inexistente!'+
            #13+'Contate o Suporte.','Atenção',MB_ICONWARNING);
            qrClientes.Close;
            qrClientes.Destroy;
            dm.SDS_NFE.Cancel;
            Abort;
          end;
        end;

        dm.SDS_NFECOD_CLIENTE.Text            := qrClientes.FieldByName('CODIGO').Text;
        dm.SDS_NFENOME_CLIENTE_FOR.text       := qrClientes.FieldByName('NOME_RS').Text;
        dm.SDS_NFEENDERECO_CLI_FORN.Text      := qrClientes.FieldByName('ENDERECO').Text;
        dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.Text  := qrClientes.FieldByName('CPF_CNPJ').text;
        dm.SDS_NFEIE_CLIENTE_FORN.Text        := qrClientes.FieldByName('RG_IE').Text;
       // dm.SDS_NFECOD_IBGE.Text               := qrClientes.FieldByName('COD_IBGE').Text;
        dm.SDS_NFETELEFONE.Text               := qrClientes.FieldByName('TELEFONE').Text;
        dm.SDS_NFEUF_CLIENTE_FORN.Text        := qrClientes.FieldByName('UF').Text;
        dm.SDS_NFECIDADE_CLIENTE_FORN.Text    := qrClientes.FieldByName('CIDADE').Text;
        dm.SDS_NFETIPO_PESSOA.Text            := qrClientes.FieldByName('TIPO').Text;
        dm.SDS_NFECEP_CLIENTE_FORN.Text       := removechar(qrClientes.FieldByName('CEP').Text);
        dm.SDS_NFEBAIRRO_CLIENTE_FORN.Text    := qrClientes.FieldByName('BAIRRO').Text;
        dm.SDS_NFEEND_NUM_CLIENTE.text        := qrClientes.FieldByName('NUMERO').Text;

        DM.SDS_NFEN_SEQUENCIA.Text                := '1';
        dm.SDS_NFENR_NOTA.Text                    := RemoveChar(IntToStr(Ide.nNF));
        dm.SDS_NFENR_LOTE_NFE.Text                := RemoveChar(IntToStr(Ide.nNF));
        dm.SDS_NFECHAVE_ACESSO_NFE.Text           := RemoveChar(infNFe.ID);//procNFe.chNFe;
        dm.SDS_NFENR_PROTOCOLO_NFE.Text           := procNFe.nProt;
        dm.SDS_NFECHAVE2.Text                     := procNFe.chNFe;
        dm.SDS_NFEMODELO.Text                     := IntToStr(Ide.modelo);
        dm.SDS_NFESERIE_NF.text                   := IntToStr(Ide.serie);
        dm.SDS_NFEDT_EMISSAO.AsDateTime           := Ide.dEmi;
        dm.SDS_NFEDT_LANCAMENTO.AsDateTime        := Ide.dEmi;
        dm.SDS_NFECFOP_DESC.Text                  := ide.natOp;
        dm.SDS_NFEMODELO.Text                     := '55';
        dm.SDS_NFEVL_BASE_ICM.Text                := FloatToStr(Total.ICMSTot.vBC);
        dm.SDS_NFEVL_ICM.Text                     := FloatToStr(Total.ICMSTot.vICMS) ;
        dm.SDS_NFEVL_BASE_ICM_SUBST.Text          := FloatToStr(Total.ICMSTot.vBCST) ;
        dm.SDS_NFEVL_ICM_SUBST.text               := FloatToStr(Total.ICMSTot.vST) ;
        dm.SDS_NFEVL_MERCADORIAS.Text             := FloatToStr(Total.ICMSTot.vProd) ;
        dm.SDS_NFEVL_FRETE.text                   :=FloatToStr(Total.ICMSTot.vFrete) ;
        dm.SDS_NFEVL_SEGURO.Text                  := FloatToStr(Total.ICMSTot.vSeg) ;
        dm.SDS_NFEVL_DESCONTOS.Text               := FloatToStr(Total.ICMSTot.vDesc) ;
        dm.SDS_NFEVl_IPI.Text                     := FloatToStr(Total.ICMSTot.vIPI) ;
        dm.SDS_NFEVL_PIS.Text                     := FloatToStr(Total.ICMSTot.vPIS) ;
        dm.SDS_NFEVL_COFINS.Text                  := FloatToStr(Total.ICMSTot.vCOFINS) ;
        dm.SDS_NFEVL_ACRESCIMOS.Text              := FloatToStr(Total.ICMSTot.vOutro) ;
        dm.SDS_NFEVL_TOTAL.Text                   := FloatToStr(Total.ICMSTot.vNF) ;
        dm.SDS_NFEPAGAMENTO.Text                  := Cobr.Fat.nFat;
        DM.SDS_NFECD_EMPRESA.Text                 := DM.SDS_EmpresaCODIGO.Text;

        if  procNFe.nProt = ''  then
          DM.SDS_NFESTATUS.Text                     := 'N'
        else
          DM.SDS_NFESTATUS.Text                     := 'S';

        DM.SDS_NFEFL_IMPRESSO.Text                := 'S';
        DM.SDS_NFECD_CFOP.Text                    := Det.Items[I].prod.cfop;
        dm.SDS_NFEVL_ACRESCIMOS.Text              := '0';
        dm.SDS_NFEVL_AVISTA.Text                  := '0';
        dm.SDS_NFEVL_PRAZO.Text                   := '0';

        qrEmpresa:= TFDQuery.create(nil);
        qrEmpresa.Connection:= DM.Coneccao;
        qrEmpresa.SQL.Add('SELECT * FROM EMPRESA WHERE CNPJ = ' + QuotedStr(Emit.CNPJCPF));
        qrEmpresa.Open;

        if not qrEmpresa.IsEmpty then
        begin
          Application.MessageBox('NF-e não confere com o CNPJ do Proprietário da NF-e. Verifique!','Atenção',MB_ICONWARNING);
          qrClientes.Close;
          qrClientes.Destroy;
          qrEmpresa.Close;
          qrEmpresa.Destroy;
          dm.SDS_NFE.Cancel;
          Abort;
        end;

        qrNFE:= TFDQuery.create(nil);
        qrNFE.Connection:= DM.Coneccao;
        qrNFE.SQL.Add('SELECT * FROM NFE_NOTA WHERE NR_NOTA = ' + IntToStr(Ide.nNF));
        qrNFE.Open;

        if not qrNFE.IsEmpty then
        begin
          Application.MessageBox('Já existe uma NFe cadastrada com este número, para esta Fornecedor!. Verifique!','Atenção',MB_ICONWARNING);
          qrClientes.Close;
          qrClientes.Destroy;
          qrEmpresa.Close;
          qrEmpresa.Destroy;
          qrNFE.Close;
          qrNFE.Destroy;
          dm.SDS_NFE.Cancel;
          Abort;
        end;

        dm.SDS_NFE.Post;
        dm.SDS_NFE.ApplyUpdates(0);

        for I := 0 to Det.Count-1 do
        begin
          with Det.Items[I] do
          begin
//            if DM.IBTransaction.Active then
//              DM.IBTransaction.Commit;
//            DM.IBTransaction.StartTransaction;

            qrProdutos:= TFDQuery.create(nil);
            qrProdutos.Connection:= DM.Coneccao;
            qrProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE DESCRICAO = ' + QuotedStr(Prod.xProd));
            qrProdutos.Open;

            CODIGO := qrProdutos.FieldByName('CODIGO_BARRAS').AsString;

            if qrProdutos.IsEmpty then
            begin
              try
                qrProdutos.Close;
                qrProdutos.SQL.Clear;
                qrProdutos.SQL.Add('SELECT * FROM PRODUTOS');
                qrProdutos.Open;

                qrProdutos.Insert;

                dm.ProxCod.Close;
                dm.ProxCod.SQL.Clear;
                dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
                DM.ProxCod.Open;
                qrProdutos.FieldByName('CODIGO').AsInteger         := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                qrProdutos.FieldByName('CODIGO_BARRAS').AsString   := Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0');
                dm.ProxCod.Close;
                
                qrProdutos.FieldByName('DESCRICAO').AsString       := Prod.xProd;
                qrProdutos.FieldByName('ABREVIADO').value          := null;
                qrProdutos.FieldByName('PRECO_CUSTO').AsFloat      := Prod.vUnCom;
                qrProdutos.FieldByName('MARGEM_LUCRO').AsFloat     := 0;
                qrProdutos.FieldByName('COMISSAO').AsFloat         := 0;
                qrProdutos.FieldByName('UNIDADE').AsInteger        := 1;
                qrProdutos.FieldByName('FRETE').AsFloat            := 0;
                qrProdutos.FieldByName('ICMS').AsFloat             := 0;
                qrProdutos.FieldByName('IPI_IRPJ').AsFloat         := 0;
                qrProdutos.FieldByName('OUTROS_IMPOSTOS').AsFloat  := 0;
                qrProdutos.FieldByName('DESCONTOS').AsFloat        := 0;
                qrProdutos.FieldByName('CLASS_FISCAL').VALUE       := null;
                qrProdutos.FieldByName('SIT_TRIBUTARIA').ASSTRING  := 'NN';
                qrProdutos.FieldByName('CUSTO_MEDIO').ASFLOAT      := 0;
                qrProdutos.FieldByName('PRECO_VENDA').ASFLOAT      := Prod.vUnCom;
                qrProdutos.FieldByName('DESCONTO_MAXIMO').ASFLOAT  := 0;
                qrProdutos.FieldByName('CODIGO_GRUPO').VALUE       := NULL;
                qrProdutos.FieldByName('CODIGO_SUBGRUPO').VALUE    := NULL;
                qrProdutos.FieldByName('CODIGO_MARCA').VALUE       := NULL;
                qrProdutos.FieldByName('NOME_GRUPO').VALUE         := NULL;
                qrProdutos.FieldByName('NOME_SUBGRUPO').VALUE      := NULL;
                qrProdutos.FieldByName('NOME_MARCA').VALUE         := NULL;
                qrProdutos.FieldByName('NOME_FORNECEDOR').VALUE    := NULL;
                qrProdutos.FieldByName('CODIGO_FORNECEDORES').VALUE := NULL;
                qrProdutos.FieldByName('FOTO').VALUE               := NULL;
                qrProdutos.FieldByName('ESTOQUE_ATUAL').AsFloat    := 0;
                qrProdutos.FieldByName('ESTOQUE_VENDIDO').VALUE    := NULL;
                qrProdutos.FieldByName('ESTOQUE').ASFLOAT          := 0;
                qrProdutos.FieldByName('ESTOQUE_MINIMO').ASFLOAT   := 1;
                qrProdutos.FieldByName('ESTOQUE_MAXIMO').ASFLOAT   := 99;
                qrProdutos.FieldByName('DATACAD').AsDateTime           := DATE;
                qrProdutos.FieldByName('USERCAD').ASSTRING         := FORMPRINCIPAL.USERLOGADO;
                qrProdutos.FieldByName('ULTIMACOMPRA').AsDateTime      := DATE;
                qrProdutos.FieldByName('SECCAO').AsInteger           := 1;
                qrProdutos.FieldByName('CATEGORIA').AsInteger        := 1;
                qrProdutos.FieldByName('LOCALIZACAO').VALUE        := NULL;
                qrProdutos.FieldByName('APLICACAO').asstring       := infAdProd;
                qrProdutos.FieldByName('ESP_COD_AUX').VALUE        := NULL;
                qrProdutos.FieldByName('GARANTIA').VALUE           := NULL;
                qrProdutos.FieldByName('BALANCA').VALUE            := NULL;
                qrProdutos.FieldByName('ETIQUETA').VALUE           := NULL;
                qrProdutos.FieldByName('ATIVO').ASSTRING           := 'A';
                qrProdutos.FieldByName('REFERENCIA').VALUE         := NULL;
                qrProdutos.FieldByName('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                qrProdutos.FieldByName('DESC_UNIDADE').ASSTRING    := Prod.UCom;
                qrProdutos.FieldByName('PESOBRUTO').Value          := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoB));
                qrProdutos.FieldByName('PESOLIQUIDO').Value        := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoL));
                qrProdutos.FieldByName('ETIQUETA').VALUE           := NULL;
                qrProdutos.FieldByName('FONETICO').VALUE           := NULL;
                qrProdutos.FieldByName('DATAULTALTERACAO').VALUE   := NULL;
                qrProdutos.FieldByName('CUSTOREPOSICAO').VALUE     := NULL;
                qrProdutos.FieldByName('PRECO_ANT').VALUE          := NULL;
                qrProdutos.FieldByName('PRECO_PROMOCAO').VALUE     := NULL;
                qrProdutos.FieldByName('FLAG_PROMOCAO').VALUE      := NULL;
                qrProdutos.FieldByName('DT_INICIO_PROMO').VALUE    := NULL;
                qrProdutos.FieldByName('DT_FIM_PROMO').VALUE       := NULL;
                qrProdutos.FieldByName('COD_LABORATORIO').VALUE    := NULL;
                qrProdutos.FieldByName('LABORATORIO').VALUE       := NULL;
                qrProdutos.FieldByName('PRINCIPIO_ATIVO').VALUE    := NULL;
                qrProdutos.FieldByName('MED_CONTROLADO').VALUE     := NULL;
                qrProdutos.FieldByName('QTD_FRACIONADA').VALUE     := NULL;
                qrProdutos.FieldByName('QTD_CAIXA').VALUE          := NULL;
                qrProdutos.FieldByName('MED_GENERICO').VALUE       := NULL;
                qrProdutos.FieldByName('LOTE_MED').VALUE           := NULL;
                qrProdutos.FieldByName('VALIDADE').VALUE           := NULL;
                qrProdutos.FieldByName('CHEK_BOX').VALUE           := NULL;
                qrProdutos.FieldByName('PRECO_VENDA2').VALUE       := NULL;
                qrProdutos.FieldByName('MARGEM_LUCRO2').VALUE      := NULL;
                qrProdutos.FieldByName('VALIDADE_PRODUTO').VALUE   := NULL;
                qrProdutos.FieldByName('PROD_SERV').AsString       := 'P';
                qrProdutos.FieldByName('UNIDADE_ENT').VALUE        := NULL;
                qrProdutos.FieldByName('DESC_UNID_ENT').VALUE      := NULL;
                qrProdutos.FieldByName('QUANT_SAIDA').VALUE        := NULL;
                qrProdutos.FieldByName('QUANT_ENTRADA').VALUE      := NULL;
                qrProdutos.FieldByName('ESTOQUE_FRACAO').VALUE     := NULL;
                qrProdutos.FieldByName('DATA_FABRICACAO').VALUE    := NULL;
                qrProdutos.FieldByName('FRACAO').AsInteger         := 1;
                qrProdutos.FieldByName('NCM_SH').AsString          := Prod.NCM;
                qrProdutos.FieldByName('COD_MS').VALUE             := NULL;
                qrProdutos.FieldByName('CONTOLAESTOQUE').VALUE     := NULL;
                qrProdutos.FieldByName('PRODUTOCOMPOSTO').VALUE    := NULL;
                qrProdutos.FieldByName('TIPO_ATIVIDADE').VALUE     := NULL;
                qrProdutos.FieldByName('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                qrProdutos.FieldByName('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                qrProdutos.FieldByName('LISTA_ABC').VALUE          := NULL;
                qrProdutos.FieldByName('GRUPO_TRIBUTACAO').AsInteger      := 1;
                qrProdutos.FieldByName('COMBUSTIVEL').AsString     := 'N';
                qrProdutos.FieldByName('COR').VALUE            := NULL;// StrToInt(Prod.veicProd.cCor);
                qrProdutos.FieldByName('ENABLE_NUMSERIE').AsInteger := 1;
                qrProdutos.FieldByName('ID_PRODUTOS').VALUE        := NULL;
                qrProdutos.FieldByName('COD_ANP').VALUE            := NULL;
                qrProdutos.FieldByName('CESTA').VALUE              := NULL;
                qrProdutos.FieldByName('ML_QUANT_BEB').VALUE       := NULL;
                qrProdutos.FieldByName('UND_TRIB').VALUE           := NULL;
                qrProdutos.FieldByName('COR_DESC').Value           := Prod.veicProd.cCor;
                qrProdutos.FieldByName('CHASSI').AsString          := Prod.veicProd.chassi;
                qrProdutos.FieldByName('COR_DESC').AsString        := Prod.veicProd.xCor;
                qrProdutos.FieldByName('N_MOTOR').AsString         := Prod.veicProd.nMotor;
                qrProdutos.FieldByName('ANO_FAB').AsString         := IntToStr(Prod.veicProd.anoFab);
                qrProdutos.FieldByName('ANO_MOD_FAB').AsString     := IntToStr(Prod.veicProd.anoMod);
                qrProdutos.FieldByName('TIPO_VEIC').AsString       := IntToStr(Prod.veicProd.tpVeic);
                qrProdutos.FieldByName('N_SERIE').AsString         := Prod.veicProd.nSerie;
                qrProdutos.FieldByName('COD_MODELO').AsString      := Prod.veicProd.cMod;
                qrProdutos.FieldByName('ESPECIE_VEICULO').AsString := IntToStr(Prod.veicProd.espVeic);
                qrProdutos.FieldByName('COD_COR_DENATRAN').AsString := Prod.veicProd.cCorDENATRAN;
                qrProdutos.FieldByName('TIPO_COMBUSTIVEL').AsString := Prod.veicProd.tpComb;
                qrProdutos.FieldByName('VEICULO').AsString          := 'N';
                qrProdutos.Post;
              except
                Application.MessageBox('Erro ao tentar incluir Produtos inexistente!'+
                #13+'Contate o Suporte.','Atenção',MB_ICONWARNING);
                qrClientes.Close;
                qrClientes.Destroy;
                qrEmpresa.Close;
                qrEmpresa.Destroy;
                qrNFE.Close;
                qrNFE.Destroy;
                qrProdutos.Close;
                qrProdutos.Destroy;
                dm.SDS_NFE.Cancel;
                Abort;
              end;
            end;

            DM.sds_nfe_itens.Insert;
            DM.sds_nfe_itensNR_SEQUENCIA.Text              := '1';
            DM.sds_nfe_itensITEN.Text                      := IntToStr(prod.nItem);
            DM.sds_nfe_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
            DM.sds_nfe_itensCODIGO_PROD.Text               := qrProdutos.FieldByName('CODIGO').text;
            DM.sds_nfe_itensCOD_PRODUTO.Text               := qrProdutos.FieldByName('CODIGO_BARRAS').text;
            DM.sds_nfe_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
            DM.sds_nfe_itensCOD_NCM.Text                   := Prod.NCM;
            DM.sds_nfe_itensCFOP.Text                      := prod.cfop;

            with Imposto do
            begin
              with ICMS do
              begin
                if (qrEmpresa.FieldByName('REGIME').Text = 'P') or  (qrEmpresa.FieldByName('REGIME').Text = 'R') then
                begin
                  if cst = cst00 then DM.sds_nfe_itensCST.Text := '000';
                  if cst = cst10 then DM.sds_nfe_itensCST.Text := '010';
                  if cst = cst20 then DM.sds_nfe_itensCST.Text := '020';
                  if cst = cst30 then DM.sds_nfe_itensCST.Text := '030';
                  if cst = cst40 then DM.sds_nfe_itensCST.Text := '040';
                  if cst = cst41 then DM.sds_nfe_itensCST.Text := '041';
                  if cst = cst50 then DM.sds_nfe_itensCST.Text := '050';
                  if cst = cst51 then DM.sds_nfe_itensCST.Text := '051';
                  if cst = cst60 then DM.sds_nfe_itensCST.Text := '060';
                  if cst = cst70 then DM.sds_nfe_itensCST.Text := '070';
                  if cst = cst80 then DM.sds_nfe_itensCST.Text := '080';
                  if cst = cst90 then DM.sds_nfe_itensCST.Text := '090';
                end
                else
                if qrEmpresa.FieldByName('REGIME').Text = 'S' then
                begin
                  if CSOSN = csosn101 then DM.sds_nfe_itensCST.Text := '101';
                  if CSOSN = csosn102 then DM.sds_nfe_itensCST.Text := '102';
                  if CSOSN = csosn103 then DM.sds_nfe_itensCST.Text := '103';
                  if CSOSN = csosn201 then DM.sds_nfe_itensCST.Text := '201';
                  if CSOSN = csosn202 then DM.sds_nfe_itensCST.Text := '202';
                  if CSOSN = csosn203 then DM.sds_nfe_itensCST.Text := '203';
                  if CSOSN = csosn300 then DM.sds_nfe_itensCST.Text := '300';
                  if CSOSN = csosn400 then DM.sds_nfe_itensCST.Text := '400';
                  if CSOSN = csosn500 then DM.sds_nfe_itensCST.Text := '500';
                  if CSOSN = csosn900 then DM.sds_nfe_itensCST.Text := '900';
                end;
              end;
            end;

            DM.sds_nfe_itensDESC_UNIDADE.Text       := Prod.uCom;
            DM.sds_nfe_itensQT_PRODUTO.AsCurrency   := Prod.qCom ;
            DM.sds_nfe_itensVL_UNITARIO.AsCurrency  := Prod.vUnCom;
            DM.sds_nfe_itensVL_DESCONTO.AsCurrency  := Prod.vDesc;
            DM.sds_nfe_itensVL_TOTAL.AsCurrency     := Prod.vProd ;
            DM.sds_nfe_itensVL_OUTROS.AsCurrency    := Prod.vOutro ;

            DM.sds_nfe_itensVL_BASE_ICM.AsCurrency     := (Imposto.ICMS.vBC);
            DM.sds_nfe_itensALIQ_ICM.AsCurrency       := (Imposto.ICMS.pICMS);
            DM.sds_nfe_itensVL_ICM.AsCurrency         := (Imposto.ICMS.vICMS);

            DM.sds_nfe_itensVL_BASE_ICM_SUBST.AsCurrency    := (Imposto.ICMS.vBCST);
            DM.sds_nfe_itensALIQ_ICM_SUBST.AsCurrency    := (Imposto.ICMS.pICMSST);
            DM.sds_nfe_itensVL_ICM_SUBST.AsCurrency   := (Imposto.ICMS.vICMSST);

            dm.sds_nfe_itensVL_BASE_IPI.AsCurrency     := (Imposto.IPI.vBC);
            DM.sds_nfe_itensALIQ_IPI.AsCurrency      := (Imposto.IPI.pIPI);
            DM.sds_nfe_itensVL_IPI.AsCurrency      := (Imposto.IPI.vIPI);

            dm.sds_nfe_itensVL_BASE_PIS.AsCurrency   := (Imposto.pis.vBC);
            DM.sds_nfe_itensALIQ_PIS.AsCurrency      := (Imposto.pis.pPIS);
            DM.sds_nfe_itensVL_PIS.AsCurrency        := (Imposto.PIs.vPIS);

            dm.sds_nfe_itensVL_BASE_COFINS.AsCurrency := (Imposto.COFINS.vBC);
            DM.sds_nfe_itensALIQ_COFINS.AsCurrency    := (Imposto.COFINS.pCOFINS);
            DM.sds_nfe_itensVL_COFINS.AsCurrency      := (Imposto.COFINS.vCOFINS);

            DM.sds_nfe_itens.Post;
            DM.sds_nfe_itens.ApplyUpdates(0);
          end;
        end;
      end;
    end;
    
    BtnOkClick(Sender);
    qrClientes.Close;
    qrClientes.Destroy;
    qrEmpresa.Close;
    qrEmpresa.Destroy;
    qrNFE.Close;
    qrNFE.Destroy;
    qrProdutos.Close;
    qrProdutos.Destroy;
  end;
end;

procedure TFrmGerenciamentoNFe.Button3Click(Sender: TObject);
var
sCaminhoArquivo , tempdata: string;
begin
{DM.ACBrNFeDANFEFR1.FastFile := 'C:\Siace\rel\DANFeRetrato.fr3';
DM.ACBrNFeDANFEFR1.FastFileEvento := 'C:\Siace\rel\EVENTOS.fr3'; }
DM.ACBrNFeDANFEFR1.tipoDanfe := tiRetrato;
{DM.ACBrNFeDANFEFR1.ShowDialog := True;
DM.ACBrNFeDANFEFR1.MostrarPreview := TRUE; }

if trim(QConsNfeSTATUS_CANCELADO.AsString) <> 'S' then
  begin
    ShowMessage('NFe não Cancelada impossivel Emitir...');
    exit;
  end;

      tempdata := formatdatetime('yyyy', QConsNfeDT_EMISSAO.AsDateTime)
      + formatdatetime('mm', QConsNfeDT_EMISSAO.AsDateTime);

    { verifica se o arquivo xml da nota existe no caminho especificado }
     sCNPJEmpresa := RemoveChar(DM.SDS_EmpresaCNPJ.Text);

        sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text  + '\' +
        sCNPJEmpresa +'\NFe\'+ tempdata + '\' + trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';

    if not fileexists(sCaminhoArquivo) then
    begin
       sCaminhoArquivo := DM.SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE.Text 
       +  trim(QConsNfeCHAVE_ACESSO_NFE.AsString) + '-nfe.xml';
     end;


    dm.ACBrNFe1.NotasFiscais.Clear;
    DM.ACBrNFe1.NotasFiscais.LoadFromFile(sCaminhoArquivo);

    if not fileexists(sCaminhoArquivo) then
    begin
      ShowMessage('NFe não encontrada');
      exit;
    end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.EventoNFe.Evento.Clear;
    DM.ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    dm.ACBrNFe1.ImprimirEvento;
  end;
end;

procedure TFrmGerenciamentoNFe.Button4Click(Sender: TObject);
var
 i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
  codigo, CHASSI: string;
begin
  dm.SDS_NFE.Active := False;
  dm.SDS_NFE.Active := True;
  dm.sds_nfe_itens.Active := False;
  dm.sds_nfe_itens.Active := True;
  QNfe.Active := False;
  QNfe.Active := True;

  
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione o xml da NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := dm.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin

    dm.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    dm.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(dm.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       dm.ACBrNFe1.NotasFiscais.Clear;
       try
          DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

    IF dm.ACBrNFe1.NotasFiscais.Items[n].NFe.Ide.modelo <> 55 then
    begin
          ShowMessage('XML não pertence a uma NF-e válido');
          exit;
    end;
  //  dm.SDS_NFE.Insert;

    for n:=0 to dm.ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with dm.ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin
         DM.SDS_Clientes.Active := false;
         dm.SDS_Clientes.SQL.Clear;
         dm.sds_clientes.sql.add('select * from clientes');
         DM.SDS_Clientes.Active := True;

      if DM.SDS_NFE.Locate('NR_NOTA', RemoveChar(IntToStr(Ide.nNF)),[] )= True then
      begin

         dm.SDS_NFE.Edit;

         if DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
         begin
           dm.SDS_NFECOD_CLIENTE.Text            := dm.SDS_ClientesCODIGO.Text;
           dm.SDS_NFENOME_CLIENTE_FOR.text       := DM.SDS_CLIENTESNOME_RS.Text;
           dm.SDS_NFEENDERECO_CLI_FORN.Text      := DM.SDS_ClientesENDERECO.Text;
           dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.Text  := dm.SDS_ClientesCPF_CNPJ.text;
           dm.SDS_NFEIE_CLIENTE_FORN.Text        := DM.SDS_ClientesRG_IE.Text;
           dm.SDS_NFECOD_IBGE.Text               := dm.SDS_ClientesCOD_IBGE.Text;
           dm.SDS_NFETELEFONE.Text               := dm.SDS_ClientesTELEFONE.Text;
           dm.SDS_NFEUF_CLIENTE_FORN.Text        := DM.SDS_ClientesUF.Text;
           dm.SDS_NFECIDADE_CLIENTE_FORN.Text    := dm.SDS_ClientesCIDADE.Text;
           dm.SDS_NFETIPO_PESSOA.Text            := DM.SDS_ClientesTIPO.Text;
           dm.SDS_NFECEP_CLIENTE_FORN.Text       := removechar(dm.SDS_ClientesCEP.Text);
           dm.SDS_NFEBAIRRO_CLIENTE_FORN.Text    := DM.SDS_ClientesBAIRRO.Text;
           dm.SDS_NFEEND_NUM_CLIENTE.text        := DM.SDS_CLIENTESNUMERO.Text;
          end else

         if not DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
         begin
          // try
            DM.SDS_Cli.Active := True;
            DM.SDS_Cli.Insert;
            DM.SDS_cliCODIGO.text              := '1';
            DM.SDS_CliUSERCAD.Text             := FormPrincipal.UserLogado;
            DM.SDS_CliDATACAD.Text             := datetostr(now);
            DM.SDS_CliCod_empresa.text         := DM.SDS_EmpresaCODIGO.Text;
            DM.SDS_CliNOME_RS.Text             := dest.xNome;
            DM.SDS_CliENDERECO.Text            := Dest.enderDest.xLgr;
            dm.SDS_CliCPF_CNPJ.text            := tbFmtCPForCNPJ(dest.CNPJCPF);
            DM.SDS_CliRG_IE.Text               := dest.IE;
            dm.SDS_CliCOD_IBGE.AsInteger       := dest.enderDest.cMun;
            dm.SDS_CliCIDADE.text              := dest.enderDest.xMun;
            dm.SDS_CliTELEFONE.Text            := tbFmtfone(dest.enderDest.fone);
            DM.SDS_CliUF.Text                  := dest.enderDest.UF;
            if Length(dest.CNPJCPF) > 12 then
            DM.SDS_CliTIPO.Text                := 'J'
            else
            DM.SDS_CliTIPO.Text                := 'F';
            dm.SDS_CliCEP.Text                 := tbFmtCep(IntToStr(dest.enderDest.CEP));
            DM.SDS_CliBAIRRO.Text              := dest.enderDest.xBairro;
            DM.SDS_CliNUMERO.Text              := RemoveChar(dest.enderDest.nro);
           // DM.SDS_ClientesCOD_EMPRESA.Text         := dm.SDS_EmpresaCODIGO.Text;

            DM.SDS_Cli.Post;
            DM.SDS_Cli.ApplyUpdates(0);

             DM.SDS_Clientes.Active := false;
             dm.SDS_Clientes.SQL.Clear;
             dm.sds_clientes.sql.add('select * from clientes');
             DM.SDS_Clientes.Active := True;

          if DM.SDS_Clientes.Locate('CPF_CNPJ', tbFmtCPForCNPJ(Dest.CNPJCPF),[])=True then
          begin
           dm.SDS_NFECOD_CLIENTE.Text            := dm.SDS_ClientesCODIGO.Text;
           dm.SDS_NFENOME_CLIENTE_FOR.text       := DM.SDS_CLIENTESNOME_RS.Text;
           dm.SDS_NFEENDERECO_CLI_FORN.Text      := DM.SDS_ClientesENDERECO.Text;
           dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.Text  := dm.SDS_ClientesCPF_CNPJ.text;
           dm.SDS_NFEIE_CLIENTE_FORN.Text        := DM.SDS_ClientesRG_IE.Text;
           dm.SDS_NFECOD_IBGE.Text               := dm.SDS_ClientesCOD_IBGE.Text;
           dm.SDS_NFETELEFONE.Text               := dm.SDS_ClientesTELEFONE.Text;
           dm.SDS_NFEUF_CLIENTE_FORN.Text        := DM.SDS_ClientesUF.Text;
           dm.SDS_NFECIDADE_CLIENTE_FORN.Text    := dm.SDS_ClientesCIDADE.Text;
           dm.SDS_NFETIPO_PESSOA.Text            := DM.SDS_ClientesTIPO.Text;
           dm.SDS_NFECEP_CLIENTE_FORN.Text       := removechar(dm.SDS_ClientesCEP.Text);
           dm.SDS_NFEBAIRRO_CLIENTE_FORN.Text    := DM.SDS_ClientesBAIRRO.Text;
           dm.SDS_NFEEND_NUM_CLIENTE.text        := DM.SDS_CLIENTESNUMERO.Text;
          end;

         END;

        dm.SDS_NFE.Edit;
        //DM.SDS_NFEN_SEQUENCIA.Text                := '1';
       // dm.SDS_NFENR_NOTA.Text                    := RemoveChar(IntToStr(Ide.nNF));
        dm.SDS_NFECHAVE_ACESSO_NFE.Text           := RemoveChar(infNFe.ID);//procNFe.chNFe;
        dm.SDS_NFENR_PROTOCOLO_NFE.Text           := procNFe.nProt;
        dm.SDS_NFEMODELO.Text                     := IntToStr(Ide.modelo);
        dm.SDS_NFESERIE_NF.text                   := IntToStr(Ide.serie);
        dm.SDS_NFEDT_EMISSAO.AsDateTime           := Ide.dEmi;
        dm.SDS_NFEDT_LANCAMENTO.AsDateTime        := Ide.dEmi;
        dm.SDS_NFECFOP_DESC.Text                  := ide.natOp;
        dm.SDS_NFEMODELO.Text                     := '55';
        dm.SDS_NFEVL_BASE_ICM.Text                := FloatToStr(Total.ICMSTot.vBC);
        dm.SDS_NFEVL_ICM.Text                     := FloatToStr(Total.ICMSTot.vICMS) ;
        dm.SDS_NFEVL_BASE_ICM_SUBST.Text          := FloatToStr(Total.ICMSTot.vBCST) ;
        dm.SDS_NFEVL_ICM_SUBST.text               := FloatToStr(Total.ICMSTot.vST) ;
        dm.SDS_NFEVL_MERCADORIAS.Text             := FloatToStr(Total.ICMSTot.vProd) ;
        dm.SDS_NFEVL_FRETE.text                   :=FloatToStr(Total.ICMSTot.vFrete) ;
        dm.SDS_NFEVL_SEGURO.Text                  := FloatToStr(Total.ICMSTot.vSeg) ;
        dm.SDS_NFEVL_DESCONTOS.Text               := FloatToStr(Total.ICMSTot.vDesc) ;
        // trvwNFe.Items.AddChild(Node,'vII='        +FloatToStr(Total.ICMSTot.vII)) ;
        dm.SDS_NFEVl_IPI.Text                     := FloatToStr(Total.ICMSTot.vIPI) ;
        dm.SDS_NFEVL_PIS.Text                     := FloatToStr(Total.ICMSTot.vPIS) ;
        dm.SDS_NFEVL_COFINS.Text                  := FloatToStr(Total.ICMSTot.vCOFINS) ;
        dm.SDS_NFEVL_ACRESCIMOS.text              := FloatToStr(Total.ICMSTot.vOutro) ;
        dm.SDS_NFEVL_TOTAL.Text                   := FloatToStr(Total.ICMSTot.vNF) ;
        dm.SDS_NFEPAGAMENTO.Text                  := Cobr.Fat.nFat;
        DM.SDS_NFECD_EMPRESA.Text                 := DM.SDS_EmpresaCODIGO.Text;
        if  procNFe.nProt = ''  then
        DM.SDS_NFESTATUS.Text                     := 'N'
        else
        DM.SDS_NFESTATUS.Text                     := 'S';
        DM.SDS_NFEFL_IMPRESSO.Text                := 'S';
        DM.SDS_NFECD_CFOP.Text                    := Det.Items[I].prod.cfop;
        dm.SDS_NFEVL_ACRESCIMOS.Text              := '0';
        dm.SDS_NFEVL_AVISTA.Text                  := '0';
        dm.SDS_NFEVL_PRAZO.Text                   := '0';

     if not DM.SDS_Empresa.Locate('CNPJ', tbFmtCPForCNPJ(Emit.CNPJCPF),[])=True then
     begin
     ShowMessage('NF-e não confere com o CNPJ do Proprietario da NF-e... Verifique !!!');
     dm.SDS_NFE.Cancel;
     Break;
     end;

       dm.SDS_NFE.Post;
       dm.SDS_NFE.ApplyUpdates(0);

      BEGIN
       with DM.sds_nfe_itens do
      begin
         first;
         while not eof do
            begin
              Delete;
             Next;
             ApplyUpdates(0);
            end;
        end;
        
       for I := 0 to Det.Count-1 do
       begin
          with Det.Items[I] do
           begin

              if DM.IBTransaction.Active then
              DM.IBTransaction.Commit;
              DM.IBTransaction.StartTransaction;


              DM.Sds_produtos.Active := false;
              DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where Codigo_barras like ' + #39 + '%' + prod.cEAN + '%' + #39+'ORDER BY DESCRICAO';
              DM.Sds_produtos.Active := True;


             CODIGO := DM.Sds_produtosCODIGO_BARRAS.AsString;

             If (DM.Sds_produtos.locate('CODIGO', prod.cProd,[])=True) or (DM.Sds_produtos.locate('CODIGO_BARRAS', prod.cEAN,[])=True) or (DM.Sds_produtos.locate('DESCRICAO', Prod.xProd,[])=True) then
             begin
               DM.sds_nfe_itens.Insert;
               DM.sds_nfe_itensNR_SEQUENCIA.Text              := '1';
               DM.sds_nfe_itensITEN.Text                      := IntToStr(prod.nItem);
               DM.sds_nfe_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
               DM.sds_nfe_itensCODIGO_PROD.Text               := dm.SDS_PRODUTOSCODIGO.text;
               DM.sds_nfe_itensCOD_PRODUTO.Text               := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
               DM.sds_nfe_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
               DM.sds_nfe_itensCOD_NCM.Text                   := Prod.NCM;

               DM.sds_nfe_itensCFOP.Text            := prod.cfop;            //QBuscaItensCFOP_EST_COMPRA.Text;

               with Imposto do
               begin
                with ICMS do
                 begin
                 IF (DM.SDS_EmpresaREGIME.Text = 'P') OR  (DM.SDS_EmpresaREGIME.Text = 'R') then
                 begin

                  if cst = cst00 then DM.sds_nfe_itensCST.Text := '000';
                  if cst = cst10 then DM.sds_nfe_itensCST.Text := '010';
                  if cst = cst20 then DM.sds_nfe_itensCST.Text := '020';
                  if cst = cst30 then DM.sds_nfe_itensCST.Text := '030';
                  if cst = cst40 then DM.sds_nfe_itensCST.Text := '040';
                  if cst = cst41 then DM.sds_nfe_itensCST.Text := '041';
                  if cst = cst50 then DM.sds_nfe_itensCST.Text := '050';
                  if cst = cst51 then DM.sds_nfe_itensCST.Text := '051';
                  if cst = cst60 then DM.sds_nfe_itensCST.Text := '060';
                  if cst = cst70 then DM.sds_nfe_itensCST.Text := '070';
                  if cst = cst80 then DM.sds_nfe_itensCST.Text := '080';
                  if cst = cst90 then DM.sds_nfe_itensCST.Text := '090';
                end else
                IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                  if CSOSN = csosn101 then DM.sds_nfe_itensCST.Text := '101';
                  if CSOSN = csosn102 then DM.sds_nfe_itensCST.Text := '102';
                  if CSOSN = csosn103 then DM.sds_nfe_itensCST.Text := '103';
                  if CSOSN = csosn201 then DM.sds_nfe_itensCST.Text := '201';
                  if CSOSN = csosn202 then DM.sds_nfe_itensCST.Text := '202';
                  if CSOSN = csosn203 then DM.sds_nfe_itensCST.Text := '203';
                  if CSOSN = csosn300 then DM.sds_nfe_itensCST.Text := '300';
                  if CSOSN = csosn400 then DM.sds_nfe_itensCST.Text := '400';
                  if CSOSN = csosn500 then DM.sds_nfe_itensCST.Text := '500';
                  if CSOSN = csosn900 then DM.sds_nfe_itensCST.Text := '900';
               end;
               end;
               end;

               DM.sds_nfe_itensDESC_UNIDADE.Text    := Prod.uCom;
               DM.sds_nfe_itensQT_PRODUTO.Text      := FloatToStr(Prod.qCom) ;
               DM.sds_nfe_itensVL_UNITARIO.Text     := FloatToStr(Prod.vUnCom) ;
               DM.sds_nfe_itensVL_DESCONTO.Text     := FloatToStr(Prod.vDesc) ;
               DM.sds_nfe_itensVL_TOTAL.Text        := FloatToStr(Prod.vProd) ;
               DM.sds_nfe_itensVL_OUTROS.Text        := FloatToStr(Prod.vOutro) ;

               DM.sds_nfe_itensVL_BASE_ICM.Text     := FloatToStr(Imposto.ICMS.vBC);
               DM.sds_nfe_itensALIQ_ICM.Text        := FloatToStr(Imposto.ICMS.pICMS);
               DM.sds_nfe_itensVL_ICM.Text          := FloatToStr(Imposto.ICMS.vICMS);

               DM.sds_nfe_itensVL_BASE_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.vBCST);
               DM.sds_nfe_itensALIQ_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.pICMSST);
               DM.sds_nfe_itensVL_ICM_SUBST.Text   := FloatToStr(Imposto.ICMS.vICMSST);

               dm.sds_nfe_itensVL_BASE_IPI.Text     := FloatToStr(Imposto.IPI.vBC);
               DM.sds_nfe_itensALIQ_IPI.Text       := FloatToStr(Imposto.IPI.pIPI);
               DM.sds_nfe_itensVL_IPI.Text      := FloatToStr(Imposto.IPI.vIPI);

               dm.sds_nfe_itensVL_BASE_PIS.Text     := FloatToStr(Imposto.pis.vBC);
               DM.sds_nfe_itensALIQ_PIS.Text       := FloatToStr(Imposto.pis.pPIS);
               DM.sds_nfe_itensVL_PIS.Text      := FloatToStr(Imposto.PIs.vPIS);

               dm.sds_nfe_itensVL_BASE_COFINS.Text     := FloatToStr(Imposto.COFINS.vBC);
               DM.sds_nfe_itensALIQ_COFINS.Text       := FloatToStr(Imposto.COFINS.pCOFINS);
               DM.sds_nfe_itensVL_COFINS.Text      := FloatToStr(Imposto.COFINS.vCOFINS);

               DM.sds_nfe_itens.Post;
               DM.sds_nfe_itens.ApplyUpdates(0);
               end else

              If not (DM.Sds_produtos.locate('CODIGO', prod.cProd,[])=True) or (DM.Sds_produtos.locate('CODIGO_BARRAS', prod.cEAN,[])=True) or (DM.Sds_produtos.locate('DESCRICAO', Prod.xProd,[])=True) then
              begin
              try
              // try
                with dm.IBSQL do
                begin
                close;
                sql.Clear;
                sql.Add('INSERT INTO PRODUTOS ( CODIGO, CODIGO_BARRAS, DESCRICAO, ABREVIADO, PRECO_CUSTO, MARGEM_LUCRO,  COMISSAO,  UNIDADE, FRETE,'+
                        'ICMS,  IPI_IRPJ,  OUTROS_IMPOSTOS,  DESCONTOS,  CLASS_FISCAL,  SIT_TRIBUTARIA,  CUSTO_MEDIO,  PRECO_VENDA, DESCONTO_MAXIMO,'+
                        'CODIGO_GRUPO, CODIGO_SUBGRUPO, CODIGO_MARCA, NOME_GRUPO, NOME_SUBGRUPO, NOME_MARCA, NOME_FORNECEDOR, CODIGO_FORNECEDORES,'+
                        'FOTO, ESTOQUE_ATUAL,  ESTOQUE_VENDIDO, ESTOQUE,  ESTOQUE_MINIMO, ESTOQUE_MAXIMO, DATACAD,  USERCAD, ULTIMACOMPRA, SECCAO,'+
                        'CATEGORIA, LOCALIZACAO, APLICACAO, ESP_COD_AUX, GARANTIA, BALANCA, ETIQUETA, ATIVO, REFERENCIA, COD_EMPRESA, DESC_UNIDADE,'+
                        'PESOBRUTO, PESOLIQUIDO, FONETICO, DATAULTALTERACAO, CUSTOREPOSICAO, PRECO_ANT, PRECO_PROMOCAO, FLAG_PROMOCAO, DT_INICIO_PROMO,'+
                        'DT_FIM_PROMO, COD_LABORATORIO, LABORATORIO, PRINCIPIO_ATIVO, MED_CONTROLADO, QTD_FRACIONADA, QTD_CAIXA, MED_GENERICO, LOTE_MED,'+
                        'VALIDADE, CHEK_BOX, PRECO_VENDA2, MARGEM_LUCRO2, VALIDADE_PRODUTO, PROD_SERV, UNIDADE_ENT, DESC_UNID_ENT, QUANT_SAIDA, QUANT_ENTRADA,'+
                        'ESTOQUE_FRACAO, DATA_FABRICACAO, FRACAO, NCM_SH, COD_MS, CONTOLAESTOQUE, PRODUTOCOMPOSTO, TIPO_ATIVIDADE, COD_PRODUTO_ESTOQUE,'+
                        'CODIGO_LOCAL_ESTOQUE,  LISTA_ABC, GRUPO_TRIBUTACAO, COMBUSTIVEL, COR, ENABLE_NUMSERIE, ID_PRODUTOS, COD_ANP, CESTA, ML_QUANT_BEB,'+
                        'UND_TRIB, CHASSI, COR_DESC, N_MOTOR, ANO_FAB, ANO_MOD_FAB, TIPO_VEIC, N_SERIE, COD_MODELO, ESPECIE_VEICULO,  COD_COR_DENATRAN,'+
                        'TIPO_COMBUSTIVEL, VEICULO)'+
                        ' VALUES (:CODIGO, :CODIGO_BARRAS, :DESCRICAO, :ABREVIADO, :PRECO_CUSTO, :MARGEM_LUCRO, :COMISSAO,:UNIDADE,:FRETE,:ICMS,:IPI_IRPJ,'+
                        ':OUTROS_IMPOSTOS, :DESCONTOS, :CLASS_FISCAL,:SIT_TRIBUTARIA,:CUSTO_MEDIO,:PRECO_VENDA,:DESCONTO_MAXIMO,:CODIGO_GRUPO,:CODIGO_SUBGRUPO,'+
                        ':CODIGO_MARCA,:NOME_GRUPO,:NOME_SUBGRUPO,:NOME_MARCA,:NOME_FORNECEDOR,:CODIGO_FORNECEDORES,:FOTO,:ESTOQUE_ATUAL,:ESTOQUE_VENDIDO,'+
                        ':ESTOQUE,:ESTOQUE_MINIMO, :ESTOQUE_MAXIMO,:DATACAD,:USERCAD,:ULTIMACOMPRA,:SECCAO,:CATEGORIA,:LOCALIZACAO, :APLICACAO,:ESP_COD_AUX,'+
                        ':GARANTIA, :BALANCA, :ETIQUETA, :ATIVO, :REFERENCIA,:COD_EMPRESA,:DESC_UNIDADE,:PESOBRUTO,:PESOLIQUIDO,:FONETICO,:DATAULTALTERACAO,'+
                        ':CUSTOREPOSICAO, :PRECO_ANT,:PRECO_PROMOCAO,:FLAG_PROMOCAO,:DT_INICIO_PROMO,:DT_FIM_PROMO,:COD_LABORATORIO,:LABORATORIO,:PRINCIPIO_ATIVO,'+
                        ':MED_CONTROLADO, :QTD_FRACIONADA, :QTD_CAIXA, :MED_GENERICO,:LOTE_MED,:VALIDADE,:CHEK_BOX,:PRECO_VENDA2, :MARGEM_LUCRO2, :VALIDADE_PRODUTO,'+
                        ':PROD_SERV, :UNIDADE_ENT,:DESC_UNID_ENT, :QUANT_SAIDA,:QUANT_ENTRADA,:ESTOQUE_FRACAO, :DATA_FABRICACAO,:FRACAO, :NCM_SH, :COD_MS,'+
                        ':CONTOLAESTOQUE, :PRODUTOCOMPOSTO, :TIPO_ATIVIDADE, :COD_PRODUTO_ESTOQUE,:CODIGO_LOCAL_ESTOQUE, :LISTA_ABC,:GRUPO_TRIBUTACAO,'+
                        ':COMBUSTIVEL, :COR, :ENABLE_NUMSERIE, :ID_PRODUTOS, :COD_ANP, :CESTA, :ML_QUANT_BEB, :UND_TRIB, :CHASSI, :COR_DESC,:N_MOTOR,'+
                        ':ANO_FAB, :ANO_MOD_FAB, :TIPO_VEIC, :N_SERIE, :COD_MODELO, :ESPECIE_VEICULO, :COD_COR_DENATRAN, :TIPO_COMBUSTIVEL, :VEICULO)');

                        dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTOS');
                        DM.ProxCod.Open;

                        Parambyname('CODIGO').AsInteger         := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                        Parambyname('CODIGO_BARRAS').AsString   := Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0');
                        Parambyname('DESCRICAO').AsString       := Prod.xProd;
                        Parambyname('ABREVIADO').value          := null;
                        Parambyname('PRECO_CUSTO').AsFloat      := Prod.vUnCom;
                        Parambyname('MARGEM_LUCRO').AsFloat     := 0;
                        Parambyname('COMISSAO').AsFloat         := 0;
                        Parambyname('UNIDADE').AsInteger        := 1;
                        Parambyname('FRETE').AsFloat            := 0;
                        Parambyname('ICMS').AsFloat             := 0;
                        Parambyname('IPI_IRPJ').AsFloat         := 0;
                        Parambyname('OUTROS_IMPOSTOS').AsFloat  := 0;
                        Parambyname('DESCONTOS').AsFloat        := 0;
                        Parambyname('CLASS_FISCAL').VALUE       := null;
                        Parambyname('SIT_TRIBUTARIA').ASSTRING  := 'NN';
                        Parambyname('CUSTO_MEDIO').ASFLOAT      := 0;
                        Parambyname('PRECO_VENDA').ASFLOAT      := Prod.vUnCom;
                        Parambyname('DESCONTO_MAXIMO').ASFLOAT  := 0;
                        Parambyname('CODIGO_GRUPO').VALUE       := NULL;
                        Parambyname('CODIGO_SUBGRUPO').VALUE    := NULL;
                        Parambyname('CODIGO_MARCA').VALUE       := NULL;
                        Parambyname('NOME_GRUPO').VALUE         := NULL;
                        Parambyname('NOME_SUBGRUPO').VALUE      := NULL;
                        Parambyname('NOME_MARCA').VALUE         := NULL;
                        Parambyname('NOME_FORNECEDOR').VALUE    := NULL;
                        Parambyname('CODIGO_FORNECEDORES').VALUE := NULL;
                        Parambyname('FOTO').VALUE               := NULL;
                        Parambyname('ESTOQUE_ATUAL').AsFloat    := 0;
                        Parambyname('ESTOQUE_VENDIDO').VALUE    := NULL;
                        Parambyname('ESTOQUE').ASFLOAT          := 0;
                        Parambyname('ESTOQUE_MINIMO').ASFLOAT   := 1;
                        Parambyname('ESTOQUE_MAXIMO').ASFLOAT   := 99;
                        Parambyname('DATACAD').ASDATE           := DATE;
                        Parambyname('USERCAD').ASSTRING         := FORMPRINCIPAL.USERLOGADO;
                        Parambyname('ULTIMACOMPRA').ASDATE      := DATE;
                        Parambyname('SECCAO').AsInteger           := 1;
                        Parambyname('CATEGORIA').AsInteger        := 1;
                        Parambyname('LOCALIZACAO').VALUE        := NULL;
                        Parambyname('APLICACAO').asstring       := infAdProd;
                        Parambyname('ESP_COD_AUX').VALUE        := NULL;
                        Parambyname('GARANTIA').VALUE           := NULL;
                        Parambyname('BALANCA').VALUE            := NULL;
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('ATIVO').ASSTRING           := 'A';
                        Parambyname('REFERENCIA').VALUE         := NULL;
                        Parambyname('COD_EMPRESA').ASinteger    := dm.sds_empresacodigo.asinteger;
                        Parambyname('DESC_UNIDADE').ASSTRING    := Prod.UCom;
                        Parambyname('PESOBRUTO').Value          := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoB));
                        Parambyname('PESOLIQUIDO').Value        := NULL;//StrToFloat(RemoveChar(Prod.veicProd.pesoL));
                        Parambyname('ETIQUETA').VALUE           := NULL;
                        Parambyname('FONETICO').VALUE           := NULL;
                        Parambyname('DATAULTALTERACAO').VALUE   := NULL;
                        Parambyname('CUSTOREPOSICAO').VALUE     := NULL;
                        Parambyname('PRECO_ANT').VALUE          := NULL;
                        Parambyname('PRECO_PROMOCAO').VALUE     := NULL;
                        Parambyname('FLAG_PROMOCAO').VALUE      := NULL;
                        Parambyname('DT_INICIO_PROMO').VALUE    := NULL;
                        Parambyname('DT_FIM_PROMO').VALUE       := NULL;
                        Parambyname('COD_LABORATORIO').VALUE    := NULL;
                        Parambyname('LABORATORIO').VALUE       := NULL;
                        Parambyname('PRINCIPIO_ATIVO').VALUE    := NULL;
                        Parambyname('MED_CONTROLADO').VALUE     := NULL;
                        Parambyname('QTD_FRACIONADA').VALUE     := NULL;
                        Parambyname('QTD_CAIXA').VALUE          := NULL;
                        Parambyname('MED_GENERICO').VALUE       := NULL;
                        Parambyname('LOTE_MED').VALUE           := NULL;
                        Parambyname('VALIDADE').VALUE           := NULL;
                        Parambyname('CHEK_BOX').VALUE           := NULL;
                        Parambyname('PRECO_VENDA2').VALUE       := NULL;
                        Parambyname('MARGEM_LUCRO2').VALUE      := NULL;
                        Parambyname('VALIDADE_PRODUTO').VALUE   := NULL;
                        Parambyname('PROD_SERV').AsString       := 'P';
                        Parambyname('UNIDADE_ENT').VALUE        := NULL;
                        Parambyname('DESC_UNID_ENT').VALUE      := NULL;
                        Parambyname('QUANT_SAIDA').VALUE        := NULL;
                        Parambyname('QUANT_ENTRADA').VALUE      := NULL;
                        Parambyname('ESTOQUE_FRACAO').VALUE     := NULL;
                        Parambyname('DATA_FABRICACAO').VALUE    := NULL;
                        Parambyname('FRACAO').AsInteger         := 1;
                        Parambyname('NCM_SH').AsString          := Prod.NCM;
                        Parambyname('COD_MS').VALUE             := NULL;
                        Parambyname('CONTOLAESTOQUE').VALUE     := NULL;
                        Parambyname('PRODUTOCOMPOSTO').VALUE    := NULL;
                        Parambyname('TIPO_ATIVIDADE').VALUE     := NULL;
                        Parambyname('COD_PRODUTO_ESTOQUE').AsInteger   := 1;
                        Parambyname('CODIGO_LOCAL_ESTOQUE').AsInteger  := 1;
                        Parambyname('LISTA_ABC').VALUE          := NULL;
                        Parambyname('GRUPO_TRIBUTACAO').AsInteger      := 1;
                        Parambyname('COMBUSTIVEL').AsString     := 'N';
                        Parambyname('COR').VALUE            := NULL;// StrToInt(Prod.veicProd.cCor);
                        Parambyname('ENABLE_NUMSERIE').AsInteger := 1;
                        Parambyname('ID_PRODUTOS').VALUE        := NULL;
                        Parambyname('COD_ANP').VALUE            := NULL;
                        Parambyname('CESTA').VALUE              := NULL;
                        Parambyname('ML_QUANT_BEB').VALUE       := NULL;
                        Parambyname('UND_TRIB').VALUE           := NULL;
                        Parambyname('COR_DESC').Value           := Prod.veicProd.cCor;
                        Parambyname('CHASSI').AsString          := Prod.veicProd.chassi;
                        Parambyname('COR_DESC').AsString        := Prod.veicProd.xCor;
                        Parambyname('N_MOTOR').AsString         := Prod.veicProd.nMotor;
                        Parambyname('ANO_FAB').AsString         := IntToStr(Prod.veicProd.anoFab);
                        Parambyname('ANO_MOD_FAB').AsString     := IntToStr(Prod.veicProd.anoMod);
                        Parambyname('TIPO_VEIC').AsString       := IntToStr(Prod.veicProd.tpVeic);
                        Parambyname('N_SERIE').AsString         := Prod.veicProd.nSerie;
                        Parambyname('COD_MODELO').AsString      := Prod.veicProd.cMod;
                        Parambyname('ESPECIE_VEICULO').AsString := IntToStr(Prod.veicProd.espVeic);
                        Parambyname('COD_COR_DENATRAN').AsString := Prod.veicProd.cCorDENATRAN;
                        Parambyname('TIPO_COMBUSTIVEL').AsString := Prod.veicProd.tpComb;
                        Parambyname('VEICULO').AsString          := 'N';
                        ExecQuery;
                      end;

                       DM.IBTransaction.CommitRetaining;

                 { except
                    DM.IBTransaction.Rollback;
                    showmessage('Erro ao Gravar o Item....');
                  end;  }

                         DM.Sds_produtos.Active := false;
                         DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where Codigo_barras like ' + #39 + '%' +  Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0') + '%' + #39+'ORDER BY DESCRICAO';
                         DM.Sds_produtos.Active := True;

                         If (DM.Sds_produtos.locate('CODIGO_BARRAS',  Formatar(inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1),5,False,'0') ,[])=True)then
                         begin
                           DM.sds_nfe_itens.Insert;
                           DM.sds_nfe_itensNR_SEQUENCIA.Text              := '1';
                           DM.sds_nfe_itensITEN.Text                      := IntToStr(prod.nItem);
                           DM.sds_nfe_itensNR_NOTA.Text                   := RemoveChar(IntToStr(Ide.nNF));
                           DM.sds_nfe_itensCODIGO_PROD.Text               := dm.SDS_PRODUTOSCODIGO.text;
                           DM.sds_nfe_itensCOD_PRODUTO.Text               := dm.SDS_PRODUTOSCODIGO_BARRAS.text;
                           DM.sds_nfe_itensDESCRICAO_PRODUTO.Text         := Prod.xProd;
                           DM.sds_nfe_itensCOD_NCM.Text                   := Prod.NCM;
                           DM.sds_nfe_itensCFOP.Text                      := prod.cfop;

                             with Imposto do
                             begin
                              with ICMS do
                               begin
                               IF (DM.SDS_EmpresaREGIME.Text = 'P') OR  (DM.SDS_EmpresaREGIME.Text = 'R') then
                               begin

                                if cst = cst00 then DM.sds_nfe_itensCST.Text := '000';
                                if cst = cst10 then DM.sds_nfe_itensCST.Text := '010';
                                if cst = cst20 then DM.sds_nfe_itensCST.Text := '020';
                                if cst = cst30 then DM.sds_nfe_itensCST.Text := '030';
                                if cst = cst40 then DM.sds_nfe_itensCST.Text := '040';
                                if cst = cst41 then DM.sds_nfe_itensCST.Text := '041';
                                if cst = cst50 then DM.sds_nfe_itensCST.Text := '050';
                                if cst = cst51 then DM.sds_nfe_itensCST.Text := '051';
                                if cst = cst60 then DM.sds_nfe_itensCST.Text := '060';
                                if cst = cst70 then DM.sds_nfe_itensCST.Text := '070';
                                if cst = cst80 then DM.sds_nfe_itensCST.Text := '080';
                                if cst = cst90 then DM.sds_nfe_itensCST.Text := '090';
                              end else
                              IF DM.SDS_EmpresaREGIME.Text = 'S' then
                              begin
                                if CSOSN = csosn101 then DM.sds_nfe_itensCST.Text := '101';
                                if CSOSN = csosn102 then DM.sds_nfe_itensCST.Text := '102';
                                if CSOSN = csosn103 then DM.sds_nfe_itensCST.Text := '103';
                                if CSOSN = csosn201 then DM.sds_nfe_itensCST.Text := '201';
                                if CSOSN = csosn202 then DM.sds_nfe_itensCST.Text := '202';
                                if CSOSN = csosn203 then DM.sds_nfe_itensCST.Text := '203';
                                if CSOSN = csosn300 then DM.sds_nfe_itensCST.Text := '300';
                                if CSOSN = csosn400 then DM.sds_nfe_itensCST.Text := '400';
                                if CSOSN = csosn500 then DM.sds_nfe_itensCST.Text := '500';
                                if CSOSN = csosn900 then DM.sds_nfe_itensCST.Text := '900';
                             end;
                             end;
                             end;

                           DM.sds_nfe_itensDESC_UNIDADE.Text    := Prod.uCom;
                           DM.sds_nfe_itensQT_PRODUTO.Text      := FloatToStr(Prod.qCom) ;
                           DM.sds_nfe_itensVL_UNITARIO.Text       := FloatToStr(Prod.vUnCom) ;
                           DM.sds_nfe_itensVL_DESCONTO.Text      := FloatToStr(Prod.vDesc) ;
                           DM.sds_nfe_itensVL_TOTAL.Text      := FloatToStr(Prod.vProd) ;

                           DM.sds_nfe_itensVL_BASE_ICM.Text       := FloatToStr(Imposto.ICMS.vBC);
                           DM.sds_nfe_itensALIQ_ICM.Text       := FloatToStr(Imposto.ICMS.pICMS);
                           DM.sds_nfe_itensVL_ICM.Text      := FloatToStr(Imposto.ICMS.vICMS);

                           DM.sds_nfe_itensVL_BASE_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.vBCST);
                           DM.sds_nfe_itensALIQ_ICM_SUBST.Text    := FloatToStr(Imposto.ICMS.pICMSST);
                           DM.sds_nfe_itensVL_ICM_SUBST.Text   := FloatToStr(Imposto.ICMS.vICMSST);

                           dm.sds_nfe_itensVL_BASE_IPI.Text     := FloatToStr(Imposto.IPI.vBC);
                           DM.sds_nfe_itensALIQ_IPI.Text       := FloatToStr(Imposto.IPI.pIPI);
                           DM.sds_nfe_itensVL_IPI.Text      := FloatToStr(Imposto.IPI.vIPI);

                           dm.sds_nfe_itensVL_BASE_PIS.Text     := FloatToStr(Imposto.pis.vBC);
                           DM.sds_nfe_itensALIQ_PIS.Text       := FloatToStr(Imposto.pis.pPIS);
                           DM.sds_nfe_itensVL_PIS.Text      := FloatToStr(Imposto.PIs.vPIS);

                           dm.sds_nfe_itensVL_BASE_COFINS.Text     := FloatToStr(Imposto.COFINS.vBC);
                           DM.sds_nfe_itensALIQ_COFINS.Text       := FloatToStr(Imposto.COFINS.pCOFINS);
                           DM.sds_nfe_itensVL_COFINS.Text      := FloatToStr(Imposto.COFINS.vCOFINS);


                           DM.sds_nfe_itens.Post;
                           DM.sds_nfe_itens.ApplyUpdates(0);
                           end;


                finally
                  dm.IBSQL.Close;
                end;

            end;
              Application.ProcessMessages;
              BtnOkClick(Sender);
            end;
         end;
        end;
       end else
       begin
         ShowMessage('Nf-e não Consta na base de dados favor utilizar o botão importar....');
       end;
     end;
    end;
   end;
end;

procedure TFrmGerenciamentoNFe.DBGrid1DblClick(Sender: TObject);
begin
 if not QConsNfeNR_NOTA.IsNull then
    Paginas.ActivePageIndex := 1;
end;

procedure TFrmGerenciamentoNFe.NovaCartaClick(Sender: TObject);
Var
  SEQQ: Integer;

begin
  if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  try
    Application.CreateForm(TfrmCadCartaCorrecao, frmCadCartaCorrecao);
    if not QCartas.IsEmpty then
    begin
      ICartas.close;
      ICartas.sql.Clear;
      ICartas.sql.Text :=
        'select MAX( SEQ ) from NOTA_FISCAL_CCE where COD_NF=:COD_NF';
      ICartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
      ICartas.Open;
      QCartas.Locate('SEQ', ICartas.fieldbyname('MAX').AsInteger, []);
      frmCadCartaCorrecao.Correcao.Lines.Add(' | CORRECOES ANTERIORES : ' +
        QCartasCORRECAO.AsString);
      ICartas.close;
    end;
    frmCadCartaCorrecao.ShowModal;
    if not frmCadCartaCorrecao.Cancelado then
    begin
      if frmCadCartaCorrecao.Correcao.Lines.Text <> '' then
      begin
        ICartas.close;
        ICartas.sql.Clear;
        ICartas.sql.Text :=
          'select MAX( SEQ ) from NOTA_FISCAL_CCE where COD_NF=:COD_NF';
        ICartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        ICartas.Open;
        if ICartas.IsEmpty then
          SEQQ := 1
        else
        begin
          SEQQ := ICartas.fieldbyname('MAX').AsInteger + 1;
          if SEQQ > 1 then
           ShowMessage('Esta nova carta ira substituir a anterior!');
        end;
        ICartas.close;
        ICartas.sql.Clear;
        ICartas.sql.Text := 'Insert into NOTA_FISCAL_CCE(COD_NF,SEQ,CHAVE,' +
          'STATUS_TRANSMITIDA, DATA, CORRECAO) values( :COD_NF,:SEQ,:CHAVE,' +
          ':STATUS_TRANSMITIDA, :DATA, :CORRECAO)';
        ICartas.Parambyname('SEQ').AsInteger := SEQQ;
        ICartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        ICartas.Parambyname('CHAVE').AsString :=
          QConsNfeCHAVE_ACESSO_NFE.AsString;
        ICartas.Parambyname('STATUS_TRANSMITIDA').AsString := 'N';
        ICartas.Parambyname('DATA').AsDate := frmCadCartaCorrecao.Data.Date;
        ICartas.Parambyname('CORRECAO').AsString :=
          frmCadCartaCorrecao.Correcao.Lines.Text;
        ICartas.ExecSQL;
        ICartas.close;
        IBTRNfe.CommitRetaining;
        QCartas.close;
        QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        QCartas.Open;
      end;
    end;
  finally
    FreeAndNil(frmCadCartaCorrecao);
  end;


end;

procedure TFrmGerenciamentoNFe.EditarCartaClick(Sender: TObject);
begin
  if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  if (not QCartasPROTOCOLO.IsNull) and
    ((QCartasSTATUS_TRANSMITIDA.AsString = 'A') or
    (QCartasSTATUS_TRANSMITIDA.AsString = 'C')) then
  begin
    ShowMessage('Carta de correção ja foi envianda não pode ser alterada!');
    exit;
  end;
  if QCartasCOD.IsNull then
  begin
    ShowMessage('Carta não selecionada!');
    exit;
  end;

 if Application.MESSAGEBOX('Confirma a Alteração da CCE?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  try
    Application.CreateForm(TfrmCadCartaCorrecao, frmCadCartaCorrecao);
    frmCadCartaCorrecao.Data.Date := QCartasDATA.AsDateTime;
    frmCadCartaCorrecao.Correcao.Lines.Text := QCartasCORRECAO.AsString;
    frmCadCartaCorrecao.ShowModal;
    if not frmCadCartaCorrecao.Cancelado then
    begin
      if frmCadCartaCorrecao.Correcao.Lines.Text <> '' then
      begin
        ICartas.close;
        ICartas.sql.Clear;
        ICartas.sql.Text :=
          'UPDATE NOTA_FISCAL_CCE SET DATA=:DATA, CORRECAO=:CORRECAO' +
          ' WHERE COD=:COD';
        ICartas.Parambyname('DATA').AsDate := frmCadCartaCorrecao.Data.Date;
        ICartas.Parambyname('CORRECAO').AsString :=
          frmCadCartaCorrecao.Correcao.Lines.Text;
        ICartas.Parambyname('COD').AsInteger := QCartasCOD.AsInteger;
        ICartas.ExecSQL;
        ICartas.close;
        IBTRNfe.CommitRetaining;

        QCartas.close;
        QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        QCartas.Open;
      end;
    end;
  finally
    FreeAndNil(frmCadCartaCorrecao);
  end;
  end;
end;

procedure TFrmGerenciamentoNFe.ExcluirCartaClick(Sender: TObject);
begin
 if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  if (not QCartasPROTOCOLO.IsNull) and
    ((QCartasSTATUS_TRANSMITIDA.AsString = 'A') or
    (QCartasSTATUS_TRANSMITIDA.AsString = 'C')) then
  begin
    ShowMessage('Carta de correção ja foi envianda não pode ser alterada!');
    exit;
  end;
  if QCartasCOD.IsNull then
  begin
    ShowMessage('Carta não selecionada!');
    exit;
  end;
  if Application.MESSAGEBOX('Confirma a Exclusão da CCE?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  ICartas.close;
  ICartas.sql.Clear;
  ICartas.sql.Text := 'DELETE FROM NOTA_FISCAL_CCE WHERE COD=:COD';
  ICartas.Parambyname('COD').AsInteger := QCartasCOD.AsInteger;
  ICartas.ExecSQL;
  ICartas.close;
  IBTRNfe.CommitRetaining;
  QCartas.close;
  QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
  QCartas.Open;
  end;
end;

procedure TFrmGerenciamentoNFe.EnviaCartaClick(Sender: TObject);
var
  CODD: Integer;
begin
  if QConsNfeNR_NOTA.IsNull then
  begin
    ShowMessage('NFe não Selecionada');
    exit;
  end;
  if QConsNfeCHAVE_ACESSO_NFE.AsString = '' then
  begin
    ShowMessage('NFe sem chave de acesso!');
    exit;
  end;
  if (not QCartasPROTOCOLO.IsNull) and
    ((QCartasSTATUS_TRANSMITIDA.AsString = 'A') or
    (QCartasSTATUS_TRANSMITIDA.AsString = 'C')) then
  begin
    ShowMessage('Carta de correção ja foi envianda não pode ser alterada!');
    exit;
  end;
  if QCartasCOD.IsNull then
  begin
    ShowMessage('Carta não selecionada!');
    exit;
  end;
  EnviarrCarta(QCartasCOD.AsInteger, QCartasCOD_NF.AsInteger);
  CODD := QConsNfeNR_NOTA.AsInteger;
  if IBTRNfe.Active then
    IBTRNfe.Commit;
  IBTRNfe.StartTransaction;
  with QConsNfe do
  begin
    close;
    sql.Clear;
    sql.Text := sSql;
    sql.Add(' WHERE N.DT_EMISSAO BETWEEN :DATAINI AND :DATAFIN ' +
      ' AND N.MODELO = ' + #39 + '55' + #39 +
      ' ORDER BY N.DT_EMISSAO, N.NR_NOTA');
    Parambyname('dataini').AsDate := EdtDataIni.Date;
    Parambyname('datafin').AsDate := EdtDataFin.Date;
    Open;
  end;
  QConsNfe.Locate('NR_NOTA', CODD, []);

end;

procedure TFrmGerenciamentoNFe.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if Column.field.FieldName = 'STATUS' then // o nome do campo
  begin
    DBGrid2.Canvas.FillRect(Rect);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'A' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 1);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'S' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 0);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'N' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 3);
    if QCartasSTATUS_TRANSMITIDA.AsString = 'C' then
      Imagens.Draw(DBGrid2.Canvas, Rect.Left + 5, Rect.Top + 1, 4);
  end;
end;

procedure TFrmGerenciamentoNFe.PaginasChange(Sender: TObject);
begin
       if Paginas.ActivePageIndex = 1 then
       BEGIN
        QCartas.close;
        QCartas.Parambyname('COD_NF').AsInteger := QConsNfeNR_NOTA.AsInteger;
        QCartas.Open;
        QCartas.FetchAll;
        end;
end;

end.
