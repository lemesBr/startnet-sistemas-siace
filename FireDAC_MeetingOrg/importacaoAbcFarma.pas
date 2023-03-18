unit importacaoAbcFarma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIProgressBar, SUIButton, ExtCtrls, SUITitleBar,
  FMTBcd, DB, DBClient, Provider, SqlExpr, SUIDlg, SimpleDS, jpeg, Mylabel,
  sGauge, sCheckBox, Buttons, sBitBtn, sEdit, sLabel, TaskDialog;

type
  TFormAbcFarma = class(TForm)
    Panel1: TPanel;
    edtArq: TsEdit;
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    qryProdutos: TSQLQuery;
    Label2: TsLabel;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosCODIGO_BARRAS: TStringField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosABREVIADO: TStringField;
    qryProdutosPRECO_CUSTO: TFMTBCDField;
    qryProdutosMARGEM_LUCRO: TFMTBCDField;
    qryProdutosCOMISSAO: TFMTBCDField;
    qryProdutosUNIDADE: TIntegerField;
    qryProdutosFRETE: TFMTBCDField;
    qryProdutosICMS: TFMTBCDField;
    qryProdutosIPI_IRPJ: TFMTBCDField;
    qryProdutosOUTROS_IMPOSTOS: TFMTBCDField;
    qryProdutosDESCONTOS: TFMTBCDField;
    qryProdutosCLASS_FISCAL: TStringField;
    qryProdutosSIT_TRIBUTARIA: TStringField;
    qryProdutosCUSTO_MEDIO: TFMTBCDField;
    qryProdutosPRECO_VENDA: TFMTBCDField;
    qryProdutosDESCONTO_MAXIMO: TFMTBCDField;
    qryProdutosCODIGO_GRUPO: TIntegerField;
    qryProdutosCODIGO_SUBGRUPO: TIntegerField;
    qryProdutosCODIGO_MARCA: TIntegerField;
    qryProdutosNOME_GRUPO: TStringField;
    qryProdutosNOME_SUBGRUPO: TStringField;
    qryProdutosNOME_MARCA: TStringField;
    qryProdutosNOME_FORNECEDOR: TStringField;
    qryProdutosCODIGO_FORNECEDORES: TIntegerField;
    qryProdutosFOTO: TBlobField;
    qryProdutosESTOQUE_ATUAL: TFMTBCDField;
    qryProdutosESTOQUE_VENDIDO: TFMTBCDField;
    qryProdutosESTOQUE: TFMTBCDField;
    qryProdutosVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    qryProdutosVALOR_ESTOQUE: TFMTBCDField;
    qryProdutosESTOQUE_MINIMO: TIntegerField;
    qryProdutosESTOQUE_MAXIMO: TIntegerField;
    qryProdutosDATACAD: TDateField;
    qryProdutosUSERCAD: TStringField;
    qryProdutosVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qryProdutosULTIMACOMPRA: TDateField;
    qryProdutosVALOR_EST_CUSTO: TFMTBCDField;
    qryProdutosSECCAO: TIntegerField;
    qryProdutosCATEGORIA: TIntegerField;
    qryProdutosLOCALIZACAO: TStringField;
    qryProdutosAPLICACAO: TStringField;
    qryProdutosESP_COD_AUX: TStringField;
    qryProdutosGARANTIA: TIntegerField;
    qryProdutosBALANCA: TStringField;
    qryProdutosETIQUETA: TStringField;
    qryProdutosATIVO: TStringField;
    qryProdutosREFERENCIA: TStringField;
    qryProdutosCOD_EMPRESA: TIntegerField;
    qryProdutosDESC_UNIDADE: TStringField;
    qryProdutosPESOBRUTO: TFMTBCDField;
    qryProdutosPESOLIQUIDO: TFMTBCDField;
    qryProdutosFONETICO: TStringField;
    qryProdutosDATAULTALTERACAO: TDateField;
    qryProdutosCUSTOREPOSICAO: TFMTBCDField;
    qryProdutosPRECO_ANT: TFMTBCDField;
    qryProdutosPRECO_PROMOCAO: TFMTBCDField;
    qryProdutosFLAG_PROMOCAO: TStringField;
    qryProdutosDT_INICIO_PROMO: TDateField;
    qryProdutosDT_FIM_PROMO: TDateField;
    BtnSair: TsBitBtn;
    qryProdutosCOD_LABORATORIO: TIntegerField;
    qryProdutosLABORATORIO: TStringField;
    qryProdutosPRINCIPIO_ATIVO: TStringField;
    qryProdutosMED_CONTROLADO: TStringField;
    qryProdutosQTD_FRACIONADA: TFMTBCDField;
    qryProdutosQTD_CAIXA: TFMTBCDField;
    qryProdutosMED_GENERICO: TStringField;
    qryProdutosLOTE_MED: TStringField;
    OpenDialog1: TOpenDialog;
    DTS_PRODUTOS: TDataSource;
    SDSPRODUTOS: TSimpleDataSet;
    SDSPRODUTOSCODIGO: TIntegerField;
    SDSPRODUTOSCODIGO_BARRAS: TStringField;
    SDSPRODUTOSDESCRICAO: TStringField;
    SDSPRODUTOSABREVIADO: TStringField;
    SDSPRODUTOSPRECO_CUSTO: TFMTBCDField;
    SDSPRODUTOSMARGEM_LUCRO: TFMTBCDField;
    SDSPRODUTOSCOMISSAO: TFMTBCDField;
    SDSPRODUTOSUNIDADE: TIntegerField;
    SDSPRODUTOSFRETE: TFMTBCDField;
    SDSPRODUTOSICMS: TFMTBCDField;
    SDSPRODUTOSIPI_IRPJ: TFMTBCDField;
    SDSPRODUTOSOUTROS_IMPOSTOS: TFMTBCDField;
    SDSPRODUTOSDESCONTOS: TFMTBCDField;
    SDSPRODUTOSCLASS_FISCAL: TStringField;
    SDSPRODUTOSSIT_TRIBUTARIA: TStringField;
    SDSPRODUTOSCUSTO_MEDIO: TFMTBCDField;
    SDSPRODUTOSPRECO_VENDA: TFMTBCDField;
    SDSPRODUTOSDESCONTO_MAXIMO: TFMTBCDField;
    SDSPRODUTOSCODIGO_GRUPO: TIntegerField;
    SDSPRODUTOSCODIGO_SUBGRUPO: TIntegerField;
    SDSPRODUTOSCODIGO_MARCA: TIntegerField;
    SDSPRODUTOSNOME_GRUPO: TStringField;
    SDSPRODUTOSNOME_SUBGRUPO: TStringField;
    SDSPRODUTOSNOME_MARCA: TStringField;
    SDSPRODUTOSNOME_FORNECEDOR: TStringField;
    SDSPRODUTOSCODIGO_FORNECEDORES: TIntegerField;
    SDSPRODUTOSFOTO: TBlobField;
    SDSPRODUTOSESTOQUE_ATUAL: TFMTBCDField;
    SDSPRODUTOSESTOQUE_VENDIDO: TFMTBCDField;
    SDSPRODUTOSESTOQUE: TFMTBCDField;
    SDSPRODUTOSVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    SDSPRODUTOSVALOR_ESTOQUE: TFMTBCDField;
    SDSPRODUTOSESTOQUE_MINIMO: TIntegerField;
    SDSPRODUTOSESTOQUE_MAXIMO: TIntegerField;
    SDSPRODUTOSDATACAD: TDateField;
    SDSPRODUTOSUSERCAD: TStringField;
    SDSPRODUTOSVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    SDSPRODUTOSULTIMACOMPRA: TDateField;
    SDSPRODUTOSVALOR_EST_CUSTO: TFMTBCDField;
    SDSPRODUTOSSECCAO: TIntegerField;
    SDSPRODUTOSCATEGORIA: TIntegerField;
    SDSPRODUTOSLOCALIZACAO: TStringField;
    SDSPRODUTOSAPLICACAO: TStringField;
    SDSPRODUTOSESP_COD_AUX: TStringField;
    SDSPRODUTOSGARANTIA: TIntegerField;
    SDSPRODUTOSBALANCA: TStringField;
    SDSPRODUTOSETIQUETA: TStringField;
    SDSPRODUTOSATIVO: TStringField;
    SDSPRODUTOSREFERENCIA: TStringField;
    SDSPRODUTOSCOD_EMPRESA: TIntegerField;
    SDSPRODUTOSDESC_UNIDADE: TStringField;
    SDSPRODUTOSPESOBRUTO: TFMTBCDField;
    SDSPRODUTOSPESOLIQUIDO: TFMTBCDField;
    SDSPRODUTOSFONETICO: TStringField;
    SDSPRODUTOSDATAULTALTERACAO: TDateField;
    SDSPRODUTOSCUSTOREPOSICAO: TFMTBCDField;
    SDSPRODUTOSPRECO_ANT: TFMTBCDField;
    SDSPRODUTOSPRECO_PROMOCAO: TFMTBCDField;
    SDSPRODUTOSFLAG_PROMOCAO: TStringField;
    SDSPRODUTOSDT_INICIO_PROMO: TDateField;
    SDSPRODUTOSDT_FIM_PROMO: TDateField;
    SDSPRODUTOSCOD_LABORATORIO: TIntegerField;
    SDSPRODUTOSLABORATORIO: TStringField;
    SDSPRODUTOSPRINCIPIO_ATIVO: TStringField;
    SDSPRODUTOSMED_CONTROLADO: TStringField;
    SDSPRODUTOSQTD_FRACIONADA: TFMTBCDField;
    SDSPRODUTOSQTD_CAIXA: TFMTBCDField;
    SDSPRODUTOSMED_GENERICO: TStringField;
    SDSPRODUTOSLOTE_MED: TStringField;
    SDSPRODUTOSVALIDADE: TDateField;
    qryProdutosVALIDADE: TDateField;
    suiButton3: TsBitBtn;
    SDSPRODUTOSCHEK_BOX: TStringField;
    SDSPRODUTOSPRECO_VENDA2: TFMTBCDField;
    SDSPRODUTOSMARGEM_LUCRO2: TFMTBCDField;
    SDSPRODUTOSVALIDADE_PRODUTO: TStringField;
    SDSPRODUTOSPROD_SERV: TStringField;
    SDSPRODUTOSUNIDADE_ENT: TIntegerField;
    SDSPRODUTOSDESC_UNID_ENT: TStringField;
    SDSPRODUTOSQUANT_SAIDA: TFMTBCDField;
    SDSPRODUTOSQUANT_ENTRADA: TFMTBCDField;
    SDSPRODUTOSESTOQUE_FRACAO: TFMTBCDField;
    SDSPRODUTOSDATA_FABRICACAO: TDateField;
    SDSPRODUTOSFRACAO: TIntegerField;
    SDSPRODUTOSNCM_SH: TStringField;
    CheckBox1: TsCheckBox;
    Label3: TsLabel;
    SDSPRODUTOSCOD_MS: TStringField;
    Image1: TImage;
    CheckBoxms: TsCheckBox;
    CheckBoxsms: TsCheckBox;
    SDSPRODUTOSTIPO_ATIVIDADE: TStringField;
    SDSPRODUTOSCONTOLAESTOQUE: TStringField;
    SDSPRODUTOSCOD_PRODUTO_ESTOQUE: TIntegerField;
    SDSPRODUTOSCODIGO_LOCAL_ESTOQUE: TIntegerField;
    SDSPRODUTOSPRODUTOCOMPOSTO: TStringField;
    CheckBox2: TsCheckBox;
    CheckBox3: TsCheckBox;
    Label1: TsLabel;
    SDSPRODUTOSLISTA_ABC: TStringField;
    CheckBox4: TsCheckBox;
    SDSPRODUTOSGRUPO_TRIBUTACAO: TIntegerField;
    qryProdutosCHEK_BOX: TStringField;
    qryProdutosPRECO_VENDA2: TFMTBCDField;
    qryProdutosMARGEM_LUCRO2: TFMTBCDField;
    qryProdutosVALIDADE_PRODUTO: TStringField;
    qryProdutosPROD_SERV: TStringField;
    qryProdutosUNIDADE_ENT: TIntegerField;
    qryProdutosDESC_UNID_ENT: TStringField;
    qryProdutosQUANT_SAIDA: TFMTBCDField;
    qryProdutosQUANT_ENTRADA: TFMTBCDField;
    qryProdutosESTOQUE_FRACAO: TFMTBCDField;
    qryProdutosDATA_FABRICACAO: TDateField;
    qryProdutosFRACAO: TIntegerField;
    qryProdutosNCM_SH: TStringField;
    qryProdutosCOD_MS: TStringField;
    qryProdutosCONTOLAESTOQUE: TStringField;
    qryProdutosPRODUTOCOMPOSTO: TStringField;
    qryProdutosTIPO_ATIVIDADE: TStringField;
    qryProdutosCOD_PRODUTO_ESTOQUE: TIntegerField;
    qryProdutosCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qryProdutosLISTA_ABC: TStringField;
    qryProdutosGRUPO_TRIBUTACAO: TIntegerField;
    myLabel3d2: TsLabelFX;
    SDSPRODUTOSCOMBUSTIVEL: TStringField;
    SDSPRODUTOSCOR: TIntegerField;
    SDSPRODUTOSENABLE_NUMSERIE: TIntegerField;
    SDSPRODUTOSID_PRODUTOS: TIntegerField;
    SDSPRODUTOSCOD_ANP: TStringField;
    SDSPRODUTOSCESTA: TStringField;
    SDSPRODUTOSML_QUANT_BEB: TFMTBCDField;
    SDSPRODUTOSUND_TRIB: TStringField;
    SDSPRODUTOSCHASSI: TStringField;
    SDSPRODUTOSCOR_DESC: TStringField;
    SDSPRODUTOSN_MOTOR: TStringField;
    SDSPRODUTOSANO_FAB: TStringField;
    SDSPRODUTOSANO_MOD_FAB: TStringField;
    SDSPRODUTOSTIPO_VEIC: TStringField;
    SDSPRODUTOSN_SERIE: TStringField;
    SDSPRODUTOSCOD_MODELO: TStringField;
    SDSPRODUTOSESPECIE_VEICULO: TStringField;
    SDSPRODUTOSCOD_COR_DENATRAN: TStringField;
    SDSPRODUTOSTIPO_COMBUSTIVEL: TStringField;
    SDSPRODUTOSVEICULO: TStringField;
    pb: TsGauge;
    SDSPRODUTOSMULTIP_FRACAO: TIntegerField;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxmsClick(Sender: TObject);
    procedure CheckBoxsmsClick(Sender: TObject);
  private
    wPath          :String;
    wLengthPath    :integer;
    wPathTemp      :String;
    function  DirSize(Dir:string):integer;
  public
    { Public declarations }
  end;

var
  FormAbcFarma: TFormAbcFarma;

implementation

uses ModulodeDados, Principal, U_Principal;

{$R *.dfm}


function TFormAbcFarma.DirSize(Dir:string):integer;
{Retorna o tamanho de um diretório}
var
  SearchRec : TSearchRec;
  Separator : string;
  DirBytes : integer;
begin
  if Copy(Dir,Length(Dir),1)='\' then
     begin
       Separator := '';
     end
  else
     begin
       Separator := '\';
     end;

  if FindFirst(Dir+Separator+'*.*',faAnyFile,SearchRec) = 0 then
     begin
       if FileExists(Dir+Separator+SearchRec.Name) then
          begin
            DirBytes := DirBytes + SearchRec.Size;
          end
       else
         if DirectoryExists(Dir+Separator+SearchRec.Name) then
            begin
              if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
                  begin
                    DirSize(Dir+Separator+SearchRec.Name);
                  end;
            end;

  while FindNext(SearchRec) = 0 do
        begin
          if FileExists(Dir+Separator+SearchRec.Name) then
             begin
               DirBytes := DirBytes + SearchRec.Size;
             end
          else if DirectoryExists(Dir+Separator+SearchRec.Name) then
               begin
                 if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
                    begin
                      DirSize(Dir+Separator+SearchRec.Name);
                    end;
               end;
        end;
  end;

  FindClose(SearchRec);
end;


procedure TFormAbcFarma.suiButton1Click(Sender: TObject);
var
  fArq: TextFile;  //Variável do Tipo Arquivo de Texto
  Caminho: string; //Variável que armazenará o caminho
  Linha: string;   //Variavel que vai armazinar cada linha
  mTexto: TStringList; //Utilizada para contar as linhas a importar
  i: integer;          //variavel utilizada no contador de linhas Importadas
  wTemp           :String;
  wValor          :Double;
  wValorcusto     :Extended;
  wValorVenda     :Extended;
  wValorVenda2    :Extended;
  wValorFracao    :Extended;
  fracao          :Integer;
begin
IF CheckBoxms.Checked = True then
begin
//Msg_cd.Content:= 'Confirma a Importação da Tabela de Produtos Com MS, utilize  Esta Rotina, Somente quando o banco de Dados Estiver Zerado?';
if Application.MESSAGEBOX('Confirma a Importação da Tabela de Produtos Com MS, utilize  Esta Rotina, Somente quando o banco de Dados Estiver Zerado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
  Caminho := edtArq.Text; //Varivel vai receber os dados do edit
  AssignFile(fArq, Caminho);
  ReSet(fArq);
  mTexto := TStringList.Create;
  try
    mTexto.LoadFromFile(Caminho);
    pb.MaxValue := mTexto.Count - 1;
    i := 0;
  finally
    mTexto.Free;
  end;
  while not Eof(fArq) do //Enquanto não chegar ao fim do arquivo
  begin
   Application.ProcessMessages;
    Readln(farq, linha); //Lê a linha e posiciona o cursor na próxima
    FormAbcFarma.Caption := 'Lendo Linha: ' + IntToStr(i) + ' de: ' + IntToStr(pb.MaxValue);

  //Buscando pelo Parâmetro codigo, para verificar se já existe na tabela
   Qryprodutos.Close;
   qryProdutos.Params[0].asString := Trim(Copy(Linha, 187, 13));
   qryProdutos.Open;  //Abre o CDS
   SDSProdutos.Open ;
 // if SDSprodutos.IsEmpty then //Se Não existir o registro
   SDSprodutos.Append; //Insira os dados da linha atual
 // else //Senão, se o registro já existir
   SDSprodutos.edit; //Coloca em modo de edição para atualizar os campos
 //Aqui os campos recebem as linhas lidas

 // if SDSPRODUTOSREFERENCIA.IsNull then
    SDSPRODUTOSCODIGO.AsString      := Trim(Copy(Linha, 1, 9));
    SDSPRODUTOSREFERENCIA.AsString  := Trim(Copy(Linha, 1, 9));
    SDSprodutosMED_CONTROLADO.text  := Trim(Copy(Linha, 10, 1));
    SDSprodutosCOD_LABORATORIO.text := Trim(Copy(Linha, 11, 6));
    SDSprodutosLABORATORIO.text     := Trim(Copy(Linha, 17, 30));
    SDSprodutosDESCRICAO.text       := Trim(Copy(Linha, 47, 45)) + ' ' + Trim(Copy(Linha, 92, 45));
    //SDSprodutosAPR_MEDICAMENTO.Text := Trim(Copy(Linha, 92, 45));

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 148, 11));
    wValor         := StrToFloat(wTemp) / 100;
    wValorVenda := wValor;
    SDSprodutosPRECO_VENDA.asFloat := wValorVenda;

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 159, 11));
    wValor         := StrToFloat(wTemp) / 100;
    wValorVenda2 := wValor;

    if wValorVenda2  > 0 then
    begin
    SDSprodutosPRECO_VENDA2.asFloat := wValorVenda2;
    end else
    if wValorVenda2 = 0 then
    begin
    SDSprodutosPRECO_VENDA2.asFloat := wValorVenda;
    end;

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 137, 11));
    wValor         := StrToFloat(wTemp) / 100;
    wValorCusto := wValor;
    SDSprodutosPRECO_CUSTO.AsFloat := wValorCusto;
    SDSprodutosCUSTO_MEDIO.AsFloat := wValorCusto;

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 170, 3));
    wValor         := StrToFloat(wTemp);
    wValorFracao := wValor;
    SDSprodutosQTD_FRACIONADA.asfloat := wValorFracao;

    wTemp          := '';
    wTemp         := Trim(Copy(Linha, 170, 3));
    fracao        :=  StrToInt(wTemp);
    if fracao > 0 then
    begin
    SDSPRODUTOSFRACAO.AsInteger        := fracao;
    end else
    if fracao = 0 then
    begin
    SDSPRODUTOSFRACAO.AsInteger             := 1;
    end;

    SDSprodutosQTD_CAIXA.text          := Trim(Copy(Linha, 170, 3));
    SDSPRODUTOSQUANT_ENTRADA.text      := Trim(Copy(Linha, 170, 3));
    SDSPRODUTOSQUANT_SAIDA.text        := '1';
    SDSPRODUTOSCOD_MS.text             := Trim(Copy(Linha, 367, 13));

    SDSprodutosIPI_IRPJ.text := '0'; //Trim(Copy(Linha, 239, 6));
    SDSprodutosCODIGO_BARRAS.text := Trim(Copy(Linha, 187, 13));
    SDSprodutosMED_GENERICO.text := Trim(Copy(Linha, 200, 3));
    SDSprodutosPRINCIPIO_ATIVO.text := Trim(Copy(Linha, 204, 130));
    SDSprodutosATIVO.text := 'A';
    SDSPRODUTOSPROD_SERV.text := 'P';
    SDSprodutosCOD_EMPRESA.text := '1';
    SDSprodutosMARGEM_LUCRO.text := '0';
    SDSprodutosMARGEM_LUCRO2.text := '0';
    SDSprodutosCOMISSAO.text := '0';
    SDSprodutosCATEGORIA.text := '1';
    SDSprodutosSECCAO.text := '1';
    SDSPRODUTOSUNIDADE_ENT.text := '2';
    SDSprodutosUNIDADE.text := '2';
    SDSprodutosDESC_UNIDADE.text := 'UN';
    SDSPRODUTOSDESC_UNID_ENT.text := 'CX';
    SDSprodutosICMS.text := '0';
    SDSprodutosOUTROS_IMPOSTOS.text := '0';
    SDSprodutosDESCONTOS.text := '0';
    SDSPRODUTOSFRETE.text := '0';
    SDSprodutosDESCONTO_MAXIMO.text := '0';
    SDSprodutosESTOQUE_MINIMO.Text := '1';
    SDSprodutosESTOQUE_MAXIMO.text := '99';
    SDSprodutosSIT_TRIBUTARIA.text := 'NN';
    SDSPRODUTOSESTOQUE.text := '0';
    SDSPRODUTOSESTOQUE_ATUAL.text := '0';
    SDSPRODUTOSESTOQUE_FRACAO.text := '0';
    SDSPRODUTOSTIPO_ATIVIDADE.Text := '00';
    SDSPRODUTOSGRUPO_TRIBUTACAO.Text := '1';
    SDSPRODUTOSCODIGO_LOCAL_ESTOQUE.Text := '1';
    SDSPRODUTOSENABLE_NUMSERIE.TEXT :='0';

    SDSprodutos.Post; //Salve o registro em memória
    SDSprodutos.ApplyUpdates(0);  //Aplica as atualizações em memória no banco
    SDSprodutos.Close;  //Fecha o CDS
    Inc(i);
    pb.Progress := pb.Progress + 1;
    Next;
    Application.ProcessMessages;
  end;
  DM.SDS_PRODUTOS.Active := False;
  DM.SDS_PRODUTOS.Active := True;
  MessageBeep(65);
  ShowMessage('Processo De Importação Concluído Com êxito!!!');
  //Close;

end;
end else

IF CheckBoxsms.Checked = True then
begin
if Application.MESSAGEBOX('Confirma a Importação da Tabela de Produtos, utilize  Esta Rotina, Somente quando o banco de Dados Estiver Zerado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
  Caminho := edtArq.Text; //Varivel vai receber os dados do edit
  AssignFile(fArq, Caminho);
  ReSet(fArq);
  mTexto := TStringList.Create;
  try
    mTexto.LoadFromFile(Caminho);
    pb.MaxValue := mTexto.Count - 1;
    i := 0;
  finally
    mTexto.Free;
  end;
  while not Eof(fArq) do //Enquanto não chegar ao fim do arquivo
  begin
 // Application.ProcessMessages;
    Readln(farq, linha); //Lê a linha e posiciona o cursor na próxima
    FormAbcFarma.Caption := 'Lendo Linha: ' + IntToStr(i) + ' de: ' + IntToStr(pb.MaxValue);

  //Buscando pelo Parâmetro codigo, para verificar se já existe na tabela
   Qryprodutos.Close;
   qryProdutos.Params[0].asString := Trim(Copy(Linha, 253, 13));
   qryProdutos.Open;  //Abre o CDS
   SDSProdutos.Open ;
 // if SDSprodutos.IsEmpty then //Se Não existir o registro
   SDSprodutos.Append; //Insira os dados da linha atual
 // else //Senão, se o registro já existir
   SDSprodutos.edit; //Coloca em modo de edição para atualizar os campos
 //Aqui os campos recebem as linhas lidas

 // if SDSPRODUTOSREFERENCIA.IsNull then
    SDSPRODUTOSCODIGO.AsString      := Trim(Copy(Linha, 1, 9));
    SDSPRODUTOSREFERENCIA.AsString  := Trim(Copy(Linha, 1, 9));
    SDSprodutosMED_CONTROLADO.text  := Trim(Copy(Linha, 10, 1));
    SDSprodutosCOD_LABORATORIO.text := Trim(Copy(Linha, 11, 6));
    SDSprodutosLABORATORIO.text     := Trim(Copy(Linha, 17, 30));
    SDSprodutosDESCRICAO.text       := Trim(Copy(Linha, 47, 45)) + ' ' + Trim(Copy(Linha, 92, 45));
    //SDSprodutosAPR_MEDICAMENTO.Text := Trim(Copy(Linha, 92, 45));

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 148, 11));
    wValor         := StrToFloat(wTemp) / 100;
    wValorVenda := wValor;
    SDSprodutosPRECO_VENDA.asFloat := wValorVenda;

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 159, 11));
    wValor         := StrToFloat(wTemp) / 100;
    wValorVenda2 := wValor;

    if wValor  > 0 then
    begin
    SDSprodutosPRECO_VENDA2.asFloat := wValorVenda2;
    end else
    if wValor = 0 then
    begin
    SDSprodutosPRECO_VENDA2.asFloat := wValorVenda;
    end;

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 137, 11));
    wValor         := StrToFloat(wTemp) / 100;
    wValorCusto := wValor;
    SDSprodutosPRECO_CUSTO.AsFloat := wValorCusto;
    SDSprodutosCUSTO_MEDIO.AsFloat := wValorCusto;

    wTemp          := '';
    wTemp          := Trim(Copy(Linha, 170, 3));
    wValor         := StrToFloat(wTemp) / 100;
    wValorFracao := wValor;
    SDSprodutosQTD_FRACIONADA.asfloat := wValorFracao;

    wTemp          := '';
    wTemp         := Trim(Copy(Linha, 170, 3));
    fracao        :=  StrToInt(wTemp);
    if fracao > 0 then
    begin
    SDSPRODUTOSFRACAO.AsInteger        := fracao;
    end else
    if fracao = 0 then
    begin
    SDSPRODUTOSFRACAO.AsInteger             := 1;
    end;

    SDSprodutosQTD_CAIXA.text          := Trim(Copy(Linha, 170, 3));
    SDSPRODUTOSQUANT_ENTRADA.text      := Trim(Copy(Linha, 170, 3));
    SDSPRODUTOSQUANT_SAIDA.text        := '1';
  //  SDSPRODUTOSCOD_MS.text             := Trim(Copy(Linha, 499, 13));

    SDSprodutosIPI_IRPJ.text := '0'; //Trim(Copy(Linha, 239, 6));
    SDSprodutosCODIGO_BARRAS.text := Trim(Copy(Linha, 187, 13));
    SDSprodutosMED_GENERICO.text := Trim(Copy(Linha, 200, 3));
    SDSprodutosPRINCIPIO_ATIVO.text := Trim(Copy(Linha, 209, 130));
    SDSprodutosATIVO.text := 'A';
    SDSPRODUTOSPROD_SERV.text := 'P';
    SDSprodutosCOD_EMPRESA.text := '1';
    SDSprodutosMARGEM_LUCRO.text := '0';
    SDSprodutosMARGEM_LUCRO2.text := '0';
    SDSprodutosCOMISSAO.text := '0';
    SDSprodutosCATEGORIA.text := '1';
    SDSprodutosSECCAO.text := '1';
    SDSPRODUTOSUNIDADE_ENT.text := '2';
    SDSprodutosUNIDADE.text := '2';
    SDSprodutosDESC_UNIDADE.text := 'CX';
    SDSPRODUTOSDESC_UNID_ENT.text := 'CX';
    SDSprodutosICMS.text := '0';
    SDSprodutosOUTROS_IMPOSTOS.text := '0';
    SDSprodutosDESCONTOS.text := '0';
    SDSPRODUTOSFRETE.text := '0';
    SDSprodutosDESCONTO_MAXIMO.text := '0';
    SDSprodutosESTOQUE_MINIMO.Text := '1';
    SDSprodutosESTOQUE_MAXIMO.text := '99';
    SDSprodutosSIT_TRIBUTARIA.text := '0,01';
    SDSPRODUTOSESTOQUE.text := '0';
    SDSPRODUTOSESTOQUE_ATUAL.text := '0';
    SDSPRODUTOSESTOQUE_FRACAO.text := '0';


    SDSprodutos.Post; //Salve o registro em memória
    SDSprodutos.ApplyUpdates(0);  //Aplica as atualizações em memória no banco
    SDSprodutos.Close;  //Fecha o CDS
    Inc(i);
    pb.Progress := pb.Progress + 1;
    Next;
  end;
  DM.SDS_PRODUTOS.Active := False;
  DM.SDS_PRODUTOS.Active := True;
  MessageBeep(65);
  ShowMessage('Processo De Importação Concluído Com êxito!!!');
  //Close;

end;
end;
end;

procedure TFormAbcFarma.suiButton2Click(Sender: TObject);
begin
  OpenDialog1.Execute;

  If OpenDialog1.FileName = '' then
     begin
       BtnSair.Enabled := True;
       exit;
     end;

  wPath                := OpenDialog1.FileName;

  DirSize(wPath);

  wLengthPath          := (Length(wPath)+ 1-12);
  wPathTemp            := Copy(wPath,1,wLengthPath-1) ;
  { Atualiza a Lista de Arquivos no Box de Arquivos Mostrados }
 // FileListBox1.ApplyFilePath(wPathTemp + '\*.TXT');

  edtArq.Text       := wPath;
end;

procedure TFormAbcFarma.BtnSairClick(Sender: TObject);
begin
Close;
end;

procedure TFormAbcFarma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormAbcFarma:= nil;
end;

procedure TFormAbcFarma.suiButton3Click(Sender: TObject);
var
  fArq: TextFile;  //Variável do Tipo Arquivo de Texto
  Caminho: string; //Variável que armazenará o caminho
  Linha: string;   //Variavel que vai armazinar cada linha
  mTexto: TStringList; //Utilizada para contar as linhas a importar
  i: integer;          //variavel utilizada no contador de linhas Importadas
  wTemp           :String;
  wValor          :Double;
  wValorcusto     :Extended;
  wValorVenda     :Extended;
  wValorVenda2    :Extended;
  wValorFracao    :Extended;
  codigo_bar      :string;
  fracao          :Integer;
begin
IF CheckBoxms.Checked = True then
begin
if Application.MESSAGEBOX('Confirma a Atualização da Nova Lista de Preços?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
  Caminho := edtArq.Text; //Varivel vai receber os dados do edit
  AssignFile(fArq, Caminho);
  ReSet(fArq);
  mTexto := TStringList.Create;
  try
    mTexto.LoadFromFile(Caminho);
    pb.MaxValue := mTexto.Count - 1;
    i := 0;
  finally
    mTexto.Free;
  end;
  while not Eof(fArq) do //Enquanto não chegar ao fim do arquivo
  begin
    Application.ProcessMessages;
    Readln(farq, linha); //Lê a linha e posiciona o cursor na próxima
    FormAbcFarma.Caption := 'Lendo Linha: ' + IntToStr(i) + ' de: ' + IntToStr(pb.MaxValue);

//Application.ProcessMessages;

 // If (nAno <= 0) and (nMes <= 0) and (nCodAssociado <= 0) then
 //    exit;

  {---> Atualiza o dados da tabela<---}
  codigo_bar := Copy(Linha, 187, 13);
  Qryprodutos.Close;
  Qryprodutos.ParamByName('CODIGO_BARRAS').AsString := codigo_bar;
  Qryprodutos.Open;

  If not Qryprodutos.Eof then
     begin
       SDSprodutos.Open;
       SDSprodutos.Edit;
       SDSprodutosMED_CONTROLADO.text := Trim(Copy(Linha, 10, 1));
       SDSprodutosCOD_LABORATORIO.text := Trim(Copy(Linha, 11, 6));
       SDSprodutosLABORATORIO.text := Trim(Copy(Linha, 17, 30));

       if CheckBox1.Checked = True then
       begin
       SDSprodutosDESCRICAO.text := Trim(Copy(Linha, 47, 45)) + ' ' + Trim(Copy(Linha, 92, 45));
       end;
      // SDSprodutosAPR_MEDICAMENTO.Text := Trim(Copy(Linha, 92, 45));

       if CheckBox3.Checked = True then
       begin
       wTemp          := '';
       wTemp          := Trim(Copy(Linha, 148, 11));
       wValor         := StrToFloat(wTemp) / 100;
       wValorVenda    := wValor;
       if wValorVenda > 0 then
       begin
       if SDSPRODUTOSMULTIP_FRACAO.asFloat > 1 then
       SDSprodutosPRECO_VENDA.asFloat := wValorVenda / SDSPRODUTOSMULTIP_FRACAO.asFloat
       else
       SDSprodutosPRECO_VENDA.asFloat := wValorVenda;
       end;

       wTemp          := '';
       wTemp          := Trim(Copy(Linha, 170, 3));
      // wValor         := StrToFloat(wTemp) / 100;
       wValorFracao := wValor;
       if wValorFracao > 0 then
       BEGIN
       SDSprodutosQTD_FRACIONADA.asfloat := wValorFracao;
       end;

        wTemp          := '';
        wTemp          := Trim(Copy(Linha, 159, 11));
        wValor         := StrToFloat(wTemp) / 100;
        wValorVenda2 := wValor;
        if wValorVenda2 > 0 then
        begin
        SDSprodutosPRECO_VENDA2.asFloat := wValorVenda2;
        end else
        if wValorVenda2 = 0 then
        begin
        SDSprodutosPRECO_VENDA2.asFloat := wValorVenda;
        end;
       end;

       if CheckBox2.Checked = True then
       begin
       wTemp          := '';
       wTemp          := Trim(Copy(Linha, 137, 11));
       wValor         := StrToFloat(wTemp) / 100;
       wValorCusto := wValor;
       SDSprodutosPRECO_CUSTO.AsFloat := wValorCusto;
       SDSprodutosCUSTO_MEDIO.AsFloat := wValorCusto;
       end;

       if CheckBox4.Checked = True then
       begin
       wTemp          := '';
       wTemp         := Trim(Copy(Linha, 170, 3));
       fracao        :=  StrToInt(wTemp);
       if fracao > 0 then
       begin
       SDSPRODUTOSFRACAO.AsInteger        := fracao;
       SDSPRODUTOSMULTIP_FRACAO.AsInteger        := fracao;
       end else
       if fracao = 0 then
       begin
       SDSPRODUTOSFRACAO.AsInteger             := 1;
       end;
       end;

       SDSprodutosQTD_CAIXA.text       := Trim(Copy(Linha, 170, 3));
       SDSPRODUTOSQUANT_ENTRADA.text   := Trim(Copy(Linha, 170, 3));
       SDSPRODUTOSREFERENCIA.AsString  := Trim(Copy(Linha, 1, 9));
      // SDSprodutosCODIGO_BARRAS.text := Trim(Copy(Linha, 253, 13));
       SDSprodutosMED_GENERICO.text := Trim(Copy(Linha, 200, 3));
       SDSprodutosPRINCIPIO_ATIVO.text := Trim(Copy(Linha, 204, 130));
       SDSPRODUTOSCOD_MS.text          := Trim(Copy(Linha, 367, 13));
       SDSPRODUTOSLISTA_ABC.text       := Trim(Copy(Linha, 203, 1));

       SDSprodutos.Post;
       SDSprodutos.ApplyUpdates(0);
       SDSprodutos.Close;

  end;
       Inc(i);
       pb.Progress := pb.Progress + 1;
       Next;
       Application.ProcessMessages;
end;
end;
  DM.SDS_PRODUTOS.Active := False;
  DM.SDS_PRODUTOS.Active := True;
 MessageBeep(65);
 //ShowMessage('Processo de Atualização de Preços Concluído Com êxito!!!');
 FormPrincipal.MsgAtencao.Execute;
end else

IF CheckBoxsms.Checked = True then
begin
if Application.MESSAGEBOX('Confirma a Atualização da Nova Lista de Preços?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
  Caminho := edtArq.Text; //Varivel vai receber os dados do edit
  AssignFile(fArq, Caminho);
  ReSet(fArq);
  mTexto := TStringList.Create;
  try
    mTexto.LoadFromFile(Caminho);
    pb.MaxValue := mTexto.Count - 1;
    i := 0;
  finally
    mTexto.Free;
  end;
  while not Eof(fArq) do //Enquanto não chegar ao fim do arquivo
  begin
   // Application.ProcessMessages;
    Readln(farq, linha); //Lê a linha e posiciona o cursor na próxima
    FormAbcFarma.Caption := 'Lendo Linha: ' + IntToStr(i) + ' de: ' + IntToStr(pb.MaxValue);

//Application.ProcessMessages;

 // If (nAno <= 0) and (nMes <= 0) and (nCodAssociado <= 0) then
 //    exit;

  {---> Atualiza o dados da tabela<---}
  codigo_bar := Copy(Linha, 187, 13);
  Qryprodutos.Close;
  Qryprodutos.ParamByName('CODIGO_BARRAS').AsString := codigo_bar;
  Qryprodutos.Open;

  If not Qryprodutos.Eof then
     begin
       SDSprodutos.Open;
       SDSprodutos.Edit;
       SDSprodutosMED_CONTROLADO.text := Trim(Copy(Linha, 10, 1));
       SDSprodutosCOD_LABORATORIO.text := Trim(Copy(Linha, 11, 6));
       SDSprodutosLABORATORIO.text := Trim(Copy(Linha, 17, 30));

       if CheckBox1.Checked = True then
       begin
       SDSprodutosDESCRICAO.text := Trim(Copy(Linha, 47, 45)) + ' ' + Trim(Copy(Linha, 92, 45));
       end;
      // SDSprodutosAPR_MEDICAMENTO.Text := Trim(Copy(Linha, 92, 45));

       if CheckBox3.Checked = True then
       begin
       wTemp          := '';
       wTemp          := Trim(Copy(Linha, 148, 11));
       wValor         := StrToFloat(wTemp) / 100;
       wValorVenda    := wValor;
       SDSprodutosPRECO_VENDA.asFloat := wValorVenda;

        wTemp          := '';
        wTemp          := Trim(Copy(Linha, 159, 11));
        wValor         := StrToFloat(wTemp) / 100;
        wValorVenda2 := wValor;
        if wValor  > 0 then
        begin
        SDSprodutosPRECO_VENDA2.asFloat := wValorVenda2;
        end else
        if wValor = 0 then
        begin
        SDSprodutosPRECO_VENDA2.asFloat := wValorVenda;
        end;
       end;

       if CheckBox2.Checked = True then
       begin
       wTemp          := '';
       wTemp          := Trim(Copy(Linha, 137, 11));
       wValor         := StrToFloat(wTemp) / 100;
       wValorCusto := wValor;
       SDSprodutosPRECO_CUSTO.AsFloat := wValorCusto;
       SDSprodutosCUSTO_MEDIO.AsFloat := wValorCusto;
       end;

       wTemp          := '';
       wTemp          := Trim(Copy(Linha, 170, 11));
       wValor         := StrToFloat(wTemp) / 100;
       wValorFracao := wValor;
       SDSprodutosQTD_FRACIONADA.asfloat := wValorFracao;

       if CheckBox4.Checked = True then
       begin
        wTemp          := '';
        wTemp         := Trim(Copy(Linha, 170, 3));
        fracao        :=  StrToInt(wTemp);
        if fracao > 0 then
        begin
        SDSPRODUTOSFRACAO.AsInteger        := fracao;
        end else
        if fracao = 0 then
        begin
        SDSPRODUTOSFRACAO.AsInteger             := 1;
       end;
       end;

       SDSprodutosQTD_CAIXA.text := Trim(Copy(Linha, 170, 3));
       SDSPRODUTOSQUANT_ENTRADA.text := Trim(Copy(Linha, 170, 3));
       SDSPRODUTOSREFERENCIA.AsString  := Trim(Copy(Linha, 1, 9));
      // SDSprodutosCODIGO_BARRAS.text := Trim(Copy(Linha, 253, 13));
       SDSprodutosMED_GENERICO.text := Trim(Copy(Linha, 200, 3));
       SDSprodutosPRINCIPIO_ATIVO.text := Trim(Copy(Linha, 209, 130));
       //SDSPRODUTOSCOD_MS.text             := Trim(Copy(Linha, 499, 13));

       SDSprodutos.Post;
       SDSprodutos.ApplyUpdates(0);
       SDSprodutos.Close;

  end;
       Inc(i);
       pb.Progress := pb.Progress + 1;
       Next;
end;
end;
  DM.SDS_PRODUTOS.Active := False;
  DM.SDS_PRODUTOS.Active := True;
 MessageBeep(65);
 ShowMessage('Processo de Atualização de Preços Concluído Com êxito!!!');

end;
end;


procedure TFormAbcFarma.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAbcFarma.CheckBoxmsClick(Sender: TObject);
begin
CheckBoxsms.Checked := False;
end;

procedure TFormAbcFarma.CheckBoxsmsClick(Sender: TObject);
begin
CheckBoxms.Checked := False;


end;

end.
