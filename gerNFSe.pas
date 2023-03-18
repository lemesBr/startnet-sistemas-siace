unit gerNFSe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  SUIEdit, Mask,  RXDBCtrl,
  SUIButton, SUIImagePanel, SUIGroupBox, SUIRadioGroup, Grids,
  XDBGrids, DB, DBClient, SimpleDS, ActiveX, wwdblook, Wwdbdlg, RzEdit,
  RzSpnEdt, ActnList, pcnNFeRTXT, ACBrNFe, IBCustomDataSet, IBDatabase,
  IBQuery,  DBGrids, ACBrBase, ACBrDFe, Data.DBXFirebird, RxToolEdit,
  RxCurrEdit, sLabel;

type
  TFormGeraNFSe = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    myLabel3d2: TsLabelFX;
    suiEdit2: TsuiEdit;
    Label2: TLabel;
    confirmar: TsuiButton;
    Label3: TLabel;
    Inserir: TsuiButton;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    btnCancelar: TsuiButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    suiEdit1: TsuiEdit;
    suiRadioGroup1: TsuiRadioGroup;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    RxDBComboEdit2: TComboEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SDS_NFE1: TSimpleDataSet;
    DTS_NFE1: TDataSource;
    SDS_NFE1NR_NOTA: TIntegerField;
    SDS_NFE1NR_PEDIDO: TIntegerField;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox3: TComboBox;
    SDS_NFE1N_NOTA_ENTRADA: TStringField;
    RxDBComboEdit1: TComboEdit;
    Label15: TLabel;
    ComboBox4: TComboBox;
    Edit7: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit8: TEdit;
    Label18: TLabel;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    OpenDialog1: TOpenDialog;
    suiButton7: TsuiButton;
    ACBrNFe1: TACBrNFe;
    QBuscaItens: TIBQuery;
    DSQBuscaItens: TDataSource;
    IBTRAce: TIBTransaction;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TIBStringField;
    QBuscaItensDESCRICAO_PRODUTO: TIBStringField;
    QBuscaItensPRECO_UNITARIO: TIBBCDField;
    QBuscaItensDESCONTO: TIBBCDField;
    QBuscaItensQUANTIDADE: TIBBCDField;
    QBuscaItensPRECO_TOTAL: TIBBCDField;
    QBuscaItensCOMISSAO: TIBBCDField;
    QBuscaItensDEV: TIBStringField;
    QBuscaItensQNT_DEV: TIBBCDField;
    QBuscaItensVAL_DEV: TIBBCDField;
    QBuscaItensENC_FINANCEIRO: TIBBCDField;
    QBuscaItensUNIDADE: TIBStringField;
    QBuscaItensSIT_TRIBUTARIA: TIBStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TIBStringField;
    QBuscaItensPROD_SERV: TIBStringField;
    QBuscaItensPERC_ISS: TIBBCDField;
    QBuscaItensBASE_ISS: TIBBCDField;
    QBuscaItensVL_ISS: TIBBCDField;
    QBuscaItensPERC_ICM: TIBBCDField;
    QBuscaItensBASE_ICMS: TIBBCDField;
    QBuscaItensVL_ICM: TIBBCDField;
    QBuscaItensPERC_IPI: TIBBCDField;
    QBuscaItensBASE_IPI: TIBBCDField;
    QBuscaItensVL_IPI: TIBBCDField;
    QBuscaItensPERC_COFINS: TIBBCDField;
    QBuscaItensBASE_COFINS: TIBBCDField;
    QBuscaItensVL_COFINS: TIBBCDField;
    QBuscaItensPERC_ICMS_SUBST: TIBBCDField;
    QBuscaItensBASE_ICMS_SUBST: TIBBCDField;
    QBuscaItensVL_ICMS_SUBST: TIBBCDField;
    QBuscaItensPERC_PIS: TIBBCDField;
    QBuscaItensBASE_PIS: TIBBCDField;
    QBuscaItensVL_PIS: TIBBCDField;
    QBuscaItensIMPRIME: TIBStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    Edit1: TRxCalcEdit;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QBuscaItensCFOP_EST_VENDA: TIBStringField;
    QBuscaItensCST_VENDA: TIBStringField;
    QBuscaItensNCM_SH: TIBStringField;
    QBuscaItensNCM_SH1: TIBStringField;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItensCST_IPI_SAIDA: TIBStringField;
    QBuscaItensCFOP_INTER_VENDA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensCOD_ANP: TIBStringField;
    QBuscaItensCOMBUSTIVEL: TIBStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TIBStringField;
    QBuscaItensML_QUANT_BEB: TIBBCDField;
    QBuscaItensPERC_TRIBU: TIBBCDField;
    QBuscaItensFONTE: TIBStringField;
    QBuscaItensALIC_NAC: TIBBCDField;
    QBuscaItensALIC_IMP: TIBBCDField;
    QBuscaItensVEICULO: TIBStringField;
    QBuscaItensCHASSI: TIBStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TIBStringField;
    QBuscaItensN_MOTOR: TIBStringField;
    QBuscaItensANO_FAB: TIBStringField;
    QBuscaItensANO_MOD_FAB: TIBStringField;
    QBuscaItensTIPO_VEIC: TIBStringField;
    QBuscaItensN_SERIE: TIBStringField;
    QBuscaItensCOD_MODELO: TIBStringField;
    QBuscaItensESPECIE_VEICULO: TIBStringField;
    QBuscaItensCOD_COR_DENATRAN: TIBStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TIBStringField;
    QBuscaItensPESOBRUTO: TIBBCDField;
    QBuscaItensPESOLIQUIDO: TIBBCDField;
    QBuscaItensAPLICACAO: TIBStringField;
    SDS_NFE1NR_PROTOCOLO_NFE: TStringField;
    SDS_NFE1NR_RECIBO_NFE: TStringField;
    SDS_NFE1STATUS_CANCELADO: TStringField;
    procedure InserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure confirmarClick(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
   X, Y, Z, BX, By, BZ, B_ICM, B_ISS, B_IPI, ICM, IPI, ISS, B_PIS, B_COFINS, PIS, COFINS : Real;
  public
    { Public declarations }
    NItem, NValor:Integer;
  end;

var
  FormGeraNFSe: TFormGeraNFSe;
      E, N, Contador: Integer;
        NOTA : string;

implementation

uses Principal, Ubibli1, ModulodeDados, Vendas, Nfe, xloc_cfop;

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

function RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
var x: integer;
begin
  Result:= -1;

  for x:= DBGrid.Columns.Count-1 downto 0 do
     begin
        if DBGrid.Columns.Items[x].Visible then
           begin
              Result:= x;
              Break;
           end;
     end;
end;


 function NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
begin
   {Não deixa inserir registros no DBGrid caso:
    1- estiver em modo de edição: E
    1.1- se clicar na tecla "Insert"; OU
    1.2- se clicar na tecla "Seta para baixo" E estiver no último registro; OU
    1.2- se clicar na tecla "Tab" E estiver no último registro E estiver na
         última coluna visível. }
   Result:= Key;

   if dgEditing in DBGrid.Options then
      begin
         if (Key = VK_INSERT) or ((Key = VK_DOWN) and (DataSet.RecNo = DataSet.RecordCount)) then
            Result := 0
         else
            if (Key = VK_TAB) and (DataSet.RecNo = DataSet.RecordCount) then
               begin
                  if (DBGrid.SelectedIndex = RetIdxUltimaColVisivel(DBGrid)) then
                     Result := 0
               end;
      end;
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

procedure TFormGeraNFSe.InserirClick(Sender: TObject);
var
 tam, I, CONT: Integer;
 SOMA, SOMA1, SOMA2, SOMA3, SOMA4, SOMA5, SOMA6 : Real;
begin
NItem:=1;
SDS_NFE1.Active := False;
SDS_NFE1.Active := True;

DM.SDS_NFSE.Active := False;
DM.SDS_NFSE.Active := True;
DM.SDS_NFSE_itens.Active := False;
DM.SDS_NFSE_itens.Active := True;


if FormGeraNFSe.combobox2.itemIndex = 0 then        // saida tela de vendas
begin

 if SDS_NFE1.Locate('NR_PEDIDO',formVendas.n_VENDA.Text, [loCaseInsensitive]) = True then
 BEGIN
  if SDS_NFE1NR_PROTOCOLO_NFE.Text >'' then
  begin
   Application.MESSAGEBOX('NFC-E Já Validada Troque o Nº de Sequencia para Gerar uma Nova NFC-e !, Deseja substitui-la?', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
  end else
   begin
   if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
   begin
    sds_nfe1.delete;
    sds_nfe1.ApplyUpdates(0);
    DM.SDS_NFSE.Active := False;
    DM.SDS_NFSE.Active := True;
    DM.SDS_NFSE_itens.Active := False;
    DM.SDS_NFSE_itens.Active := True;
   end;
   //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
   RxDBComboEdit2.SetFocus;
  end;
  end else

if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
if RxDBComboEdit2.Text ='' then
begin
ShowMessage('Favor Preencha o CFOP esta em branco');
RxDBComboEdit2.SetFocus;
Exit;
Abort;
end else
if  dm.SDS_EmpresaNUMERO.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e Corrija o Numero da Rua que esta em branco');
Exit;
Abort;
end else
 if  formVendas.Sds_pedidosNUMERO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCOD_IBGE.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_EmpresaCOD_CID_IBGE.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCEP.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosENDERECO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCIDADE.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosBAIRRO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCPF_CNPJ.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosUF.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija a UF que esta em branco');
Exit;
Abort;
end else

begin
DM.SDS_NFSE.Insert;
DM.SDS_NFSE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);
if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
DM.SDS_NFSENr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
DM.SDS_NFSENr_nota.Text                :=  edit1.text;
end;
DM.SDS_NFSEDt_emissao.AsDateTime       :=  formvendas.Sds_PedidosDATA_PEDIDO.AsDateTime;
DM.SDS_NFSEDt_lancamento.AsDateTime    :=  formvendas.Sds_PedidosDATA_PEDIDO.AsDateTime;
DM.SDS_NFSEvl_mercadorias.Text         :=  formvendas.Sds_PedidosVALOR_ITENS.Text;
DM.SDS_NFSEVl_descontos.Text           :=  formvendas.Sds_PedidosVALOR_DESCONTO.Text;
DM.SDS_NFSEVl_total.Text               :=  formvendas.Sds_PedidosVALOR_TOTAL.Text;
DM.SDS_NFSEcod_cliente.Text            :=  formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
DM.SDS_NFSEVl_acrescimos.text          :=  formvendas.Sds_PedidosENC_FINANCEIRO.Text;
DM.SDS_NFSECOD_PGTO.Text               :=  formvendas.Sds_PedidosCOD_PAGTO.Text;
DM.SDS_NFSECD_FUNCIONARIO.Text         :=  formvendas.Sds_PedidosCOD_VENDEDOR.text;
DM.SDS_NFSESERIE_NF.Text               :=  '1';
DM.SDS_NFSENR_PEDIDO.Text              :=  formvendas.N_venda.Text;
DM.SDS_NFSEVL_AVISTA.Text              :=  formvendas.Sds_PedidosValor_avista.text;
DM.SDS_NFSEVL_PRAZO.Text               :=  formvendas.Sds_PedidosValor_prazo.text;
DM.SDS_NFSECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
//DM.SDS_NFSEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFSECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFSECFOP_DESC.Text              :=  suiEdit2.Text;
//DM.SDS_NFSEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
DM.SDS_NFSECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFSEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFSEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFSEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFSEMarca_volumes.Text          := 'UN';
DM.SDS_NFSENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFSEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFSEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFSETP.TEXT                     :=  formVendas.Sds_pedidosTP.TEXT;
DM.SDS_NFSENOME_CLIENTE_FOR.Text       :=  formVendas.Sds_pedidosNOME_CLIENTE.Text;
DM.SDS_NFSEBAIRRO_CLIENTE_FORN.Text    :=  formVendas.Sds_pedidosBAIRRO.Text;
DM.SDS_NFSEEND_NUM_CLIENTE.Text        :=  formVendas.Sds_pedidosNUMERO.Text;
DM.SDS_NFSECEP_CLIENTE_FORN.Text       :=  formVendas.Sds_pedidosCEP.Text;
DM.SDS_NFSETELEFONE.Text               :=  formVendas.Sds_pedidosFONE.Text;
DM.SDS_NFSECPF_CNPJ_CLIENTE_FORN.text  :=  formVendas.Sds_pedidosCPF_CNPJ.Text;
DM.SDS_NFSETIPO_PESSOA.text            :=  formVendas.Sds_pedidosTIPO.Text;
DM.SDS_NFSECOD_IBGE.Text               :=  formVendas.Sds_pedidosCOD_IBGE.Text;
DM.SDS_NFSEPRODUTOR_RURAL.Text         :=  formVendas.Sds_pedidosPROD_RURAL.Text;
DM.SDS_NFSEIE_CLIENTE_FORN.Text        :=  formVendas.Sds_pedidosRG_IE.Text;
DM.SDS_NFSEIE_PRODUTOR.Text            :=  formVendas.Sds_pedidosIE_PRODUTOR.Text;
DM.SDS_NFSECIDADE_CLIENTE_FORN.text    :=  formVendas.Sds_pedidosCIDADE.Text;
DM.SDS_NFSEUF_CLIENTE_FORN.Text        :=  formVendas.Sds_pedidosUF.Text;
DM.SDS_NFSEENDERECO_CLI_FORN.Text      :=  formVendas.Sds_pedidosENDERECO.text;
DM.SDS_NFSEPAGAMENTO.text              :=  formVendas.Sds_pedidosPAGAMENTO.text;
DM.SDS_NFSESTATUS.Text                 :=  'N';

Application.ProcessMessages;
end;

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFSECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFSEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFSENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFSEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFSECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFSEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFSE.Post;


formvendas.Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
 begin
DM.SDS_NFSE_itens.Insert;
DM.SDS_NFSE_itens.Edit;
 NValor:=1;
 tam := length(RemoveChar(formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text));

 NItem:=NItem+NValor;
DM.SDS_NFSE_itensITEN.AsInteger               := NItem;
DM.SDS_NFSE_itensNR_SEQUENCIA.Text            := '1';
DM.SDS_NFSE_itensNR_NOTA.Text                 := edit1.text;;
if tam = 13 then
    begin
DM.SDS_NFSE_itensCOD_PRODUTO.Text             := formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text;
    end else
    begin
DM.SDS_NFSE_itensCOD_PRODUTO.Text             := '';
end;

   if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('cod_ven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
         Last;
      end;
   IBTRAce.CommitRetaining;

DM.SDS_NFSE_itensCD_ATUALIZACAO.AsInteger     := strtoint(formvendas.N_venda.Text);
DM.SDS_NFSE_itensCODIGO_PROD.Text             := formvendas.Sds_Pedidos_itensCODIGO_PROD.Text;
DM.SDS_NFSE_itensDESCRICAO_PRODUTO.Text       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.Text;
DM.SDS_NFSE_itensVL_DESCONTO.Text             := formvendas.Sds_Pedidos_itensDESCONTO.TEXT;
DM.SDS_NFSE_itensQT_PRODUTO.AsFloat           := formvendas.Sds_Pedidos_itensQUANTIDADE.asfloat;
DM.SDS_NFSE_itensVL_UNITARIO.Asfloat          := formvendas.Sds_Pedidos_itensPRECO_UNITARIO.AsFloat;
DM.SDS_NFSE_itensVL_TOTAL.Text                := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Text;
DM.SDS_NFSE_itensDESC_UNIDADE.Text            := formvendas.Sds_Pedidos_itensUNIDADE.Text;
DM.SDS_NFSE_itensVL_OUTROS.Text               := formvendas.Sds_Pedidos_itensENC_FINANCEIRO.TEXT;
//DM.SDS_NFSE_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
if CheckBox3.Checked = True then
begin
if CheckBox1.Checked = True then
DM.SDS_NFSE_itensCFOP.Text                    := '5929'
ELSE
DM.SDS_NFSE_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
DM.SDS_NFSE_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
DM.SDS_NFSE_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
DM.SDS_NFSE_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
DM.SDS_NFSE_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end else
if CheckBox4.Checked = True then
begin
if CheckBox1.Checked = True then
DM.SDS_NFSE_itensCFOP.Text                    := '6929'
ELSE
DM.SDS_NFSE_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
DM.SDS_NFSE_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
DM.SDS_NFSE_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
DM.SDS_NFSE_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
DM.SDS_NFSE_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end;

IF QBuscaItensNCM_SH.Text > '' THEN
BEGIN
DM.SDS_NFSE_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
end else
IF QBuscaItensNCM_SH1.Text > '' THEN
begin
DM.SDS_NFSE_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
end;

DM.SDS_NFSE_itensALIQ_ICM.AsFloat               := formvendas.sds_pedidos_itensPERC_ICM.AsFloat ;
DM.SDS_NFSE_itensVL_ICM.AsFloat                 := formvendas.sds_pedidos_itensVL_ICM.AsFloat;
DM.SDS_NFSE_itensVL_BASE_ICM.AsFloat            := formvendas.sds_pedidos_itensBASE_ICMS.AsFloat;


DM.SDS_NFSE_itensALIQ_IPI.AsFloat               := formvendas.sds_pedidos_itensPERC_IPI.AsFloat ;
DM.SDS_NFSE_itensVL_IPI.AsFloat                 := formvendas.sds_pedidos_itensVL_IPI.AsFloat;
DM.SDS_NFSE_itensVL_BASE_IPI.AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;



DM.SDS_NFSE_itensALIQ_ISS.AsFloat               := formvendas.sds_pedidos_itensPERC_ISS.AsFloat ;
DM.SDS_NFSE_itensVL_ISS.AsFloat                 := formvendas.sds_pedidos_itensVL_ISS.AsFloat;
DM.SDS_NFSE_itensVL_BASE_ISS.AsFloat            := formvendas.sds_pedidos_itensBASE_ISS.AsFloat ;



{CALCULO DO PIS E COFINS}
DM.SDS_NFSE_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
DM.SDS_NFSE_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
DM.SDS_NFSE_itensALIQ_PIS.AsFloat               := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
DM.SDS_NFSE_itensALIQ_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPERC_COFINS.AsFloat;
DM.SDS_NFSE_itensVL_PIS.AsFloat                 := formvendas.sds_pedidos_itensVL_PIS.AsFloat ;
DM.SDS_NFSE_itensVL_COFINS.AsFloat              := formvendas.sds_pedidos_itensVL_COFINS.AsFloat ;

DM.SDS_NFSE_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
DM.SDS_NFSE_itensALIQ_ICM_SUBST.AsFloat         := formvendas.sds_pedidos_itensPERC_ICMS_SUBST.AsFloat;
DM.SDS_NFSE_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;


DM.SDS_NFSE_itens.Post;
formvendas.Sds_Pedidos_itens.next;
Application.ProcessMessages;

end;


NOTA := EDIT1.TEXT;
DM.SDS_NFSE.Filtered := False;
DM.SDS_NFSE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFSE.Filtered := True;

BEGIN
DM.SDS_NFSE_itens.First;
X:= X + DM.SDS_NFSE_itensVl_ICM.AsFloat;
Y:= Y + DM.SDS_NFSE_itensVl_IPI.AsFloat;
Z:= Z + DM.SDS_NFSE_itensVl_ISS.AsFloat;
BX := BX + DM.SDS_NFSE_itensVL_BASE_ICM.AsFloat;
BY := BY + DM.SDS_NFSE_itensVL_BASE_IPI.AsFloat;
BZ := BZ + DM.SDS_NFSE_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  DM.SDS_NFSE_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + DM.SDS_NFSE_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + DM.SDS_NFSE_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + DM.SDS_NFSE_itensVL_COFINS.AsFloat;
DM.SDS_NFSE_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;

While not DM.SDS_NFSE_itens.Eof do
begin
X:= X + DM.SDS_NFSE_itensVl_ICM.AsFloat;
Y:= Y + DM.SDS_NFSE_itensVl_IPI.AsFloat;
Z:= Z + DM.SDS_NFSE_itensVl_ISS.AsFloat;
BX := BX + DM.SDS_NFSE_itensVL_BASE_ICM.AsFloat;
BY := BY + DM.SDS_NFSE_itensVL_BASE_IPI.AsFloat;
BZ := BZ + DM.SDS_NFSE_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  DM.SDS_NFSE_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + DM.SDS_NFSE_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + DM.SDS_NFSE_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + DM.SDS_NFSE_itensVL_COFINS.AsFloat;
DM.SDS_NFSE_itens.Next;

ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
end;
DM.SDS_NFSE_itens.First;

DM.SDS_NFSE.Edit;
DM.SDS_NFSEVL_ICM.aSfloat := ICM;
DM.SDS_NFSEVL_IPI.aSfloat := IPI;
DM.SDS_NFSEVL_ISS.aSfloat := ISS;
DM.SDS_NFSEVL_BASE_ICM.aSfloat := B_ICM;
DM.SDS_NFSEVL_BASE_IPI.aSfloat := B_IPI;
DM.SDS_NFSEVL_BASE_ISS.aSfloat := B_ISS;

DM.SDS_NFSEVL_BASE_PIS.aSfloat := B_PIS;
DM.SDS_NFSEVL_BASE_COFINS.aSfloat := B_COFINS;
DM.SDS_NFSEVL_PIS.aSfloat := PIS;
DM.SDS_NFSEVL_COFINS.aSfloat := COFINS;

DM.SDS_NFSE.Post;
//DM.SDS_NFSE_itens.Post;

confirmar.Enabled := True;
Application.ProcessMessages;
end;
END else

if FormGeraNFSe.combobox2.itemIndex = 1 then  ///nfe entrada
begin
  Application.ProcessMessages;

{if SDS_NFE1.Locate('N_NOTA_ENTRADA',FORMNOTASFISCAIS.SUIDBEDIT3.Text, [loCaseInsensitive]) = True then
 BEGIN
  if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFSE.Active := False;
  DM.SDS_NFSE.Active := True;
  DM.SDS_NFSE_itens.Active := False;
  DM.SDS_NFSE_itens.Active := True;
 end;
 //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
 RxDBComboEdit2.SetFocus;
  end;
if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
begin
if RxDBComboEdit2.Text ='' then
begin
ShowMessage('Favor Preencha o CFOP esta em branco');
RxDBComboEdit2.SetFocus;
Exit;
Abort;
end else
if  dm.SDS_EmpresaNUMERO.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e Corrija o Numero da Rua que esta em branco');
Exit;
Abort;
end else
if  dm.Sds_notasfiscaisEND_NUM_CLIENTE.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if dm.SDS_NotasFiscaisCOD_IBGE.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_EmpresaCOD_CID_IBGE.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisCEP_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisENDERECO_CLI_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisCIDADE_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisBAIRRO_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisCNPJ.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisUF_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija a UF que esta em branco');
Exit;
Abort;
end else     }

DM.SDS_NFSE.Insert;
DM.SDS_NFSE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);
if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
DM.SDS_NFSENr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
DM.SDS_NFSENr_nota.Text                :=  edit1.text;
end;
DM.SDS_NFSEDt_emissao.AsDateTime       :=  date;
DM.SDS_NFSEDt_lancamento.AsDateTime    :=  Date;
DM.SDS_NFSEvl_mercadorias.Text         :=  dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
DM.SDS_NFSEVl_descontos.Text           :=  dm.SDS_NotasFiscaisVALOR_DESCONTO.Text;
DM.SDS_NFSEVl_total.Text               :=  dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
DM.SDS_NFSEcod_cliente.Text            :=  DM.sds_notasfiscaisCOD_Fornecedor.Text;
DM.SDS_NFSEVl_acrescimos.text          :=  DM.sds_notasfiscaisvalor_outras_despesas.Text;
//DM.SDS_NFSECOD_PGTO.Text               :=  //formvendas.Sds_PedidosCOD_PAGTO.Text;
DM.SDS_NFSECD_FUNCIONARIO.Text         :=  dm.SDS_UsuariosCodigo.text;
DM.SDS_NFSESERIE_NF.Text               :=  '1';
DM.SDS_NFSENR_PEDIDO.Text              :=  '';
DM.SDS_NFSEVL_AVISTA.Text              := dm.SDS_NotasFiscaisValor_avista.text;
DM.SDS_NFSEVL_PRAZO.Text               := dm.SDS_NotasFiscaisValor_prazo.text;
DM.SDS_NFSECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
//DM.SDS_NFSEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFSECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFSECFOP_DESC.Text              :=  suiEdit2.Text;
//DM.SDS_NFSEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
DM.SDS_NFSECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFSEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFSEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFSEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFSEMarca_volumes.Text          := 'UN';
DM.SDS_NFSENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFSEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFSEN_NOTA_ENTRADA.Text         :=  dm.SDS_NotasFiscaisNUM_NOTA.Text;
DM.SDS_NFSETP.TEXT                     :=  dm.SDS_NotasFiscaisTP.TEXT;
DM.SDS_NFSENOME_CLIENTE_FOR.Text       :=  dm.SDS_NotasFiscaisFORNECEDOR.Text;
DM.SDS_NFSEBAIRRO_CLIENTE_FORN.Text    :=  dm.SDS_NotasFiscaisBAIRRO_CLIENTE_FORN.Text;
DM.SDS_NFSEEND_NUM_CLIENTE.Text        :=  dm.SDS_NotasFiscaisEND_NUM_CLIENTE.Text;
DM.SDS_NFSECEP_CLIENTE_FORN.Text       :=  dm.SDS_NotasFiscaisCEP_CLIENTE_FORN.Text;
DM.SDS_NFSETELEFONE.Text               :=  dm.SDS_NotasFiscaisTELEFONE.Text;
DM.SDS_NFSECPF_CNPJ_CLIENTE_FORN.text  :=  dm.SDS_NotasFiscaisCNPJ.Text;
DM.SDS_NFSETIPO_PESSOA.text            :=  dm.SDS_NotasFiscaisTIPO_PESSOA.Text;
DM.SDS_NFSECOD_IBGE.Text               :=  dm.SDS_NotasFiscaisCOD_IBGE.Text;
DM.SDS_NFSEPRODUTOR_RURAL.Text         :=  'N';//dm.SDS_NotasFiscaisPROD_RURAL.Text;
DM.SDS_NFSEIE_CLIENTE_FORN.Text        :=  dm.SDS_NotasFiscaisIE.Text;
DM.SDS_NFSEIE_PRODUTOR.Text            :=  ''; //dm.SDS_NotasFiscaisIE_PRODUTOR.Text;
DM.SDS_NFSECIDADE_CLIENTE_FORN.text    :=  dm.SDS_NotasFiscaisCIDADE_CLIENTE_FORN.Text;
DM.SDS_NFSEUF_CLIENTE_FORN.Text        :=  dm.SDS_NotasFiscaisUF_CLIENTE_FORN.Text;
DM.SDS_NFSEENDERECO_CLI_FORN.Text      :=  DM.SDS_NotasFiscaisENDERECO_CLI_FORN.Text;
DM.SDS_NFSEPAGAMENTO.text              :=  dm.SDS_NotasFiscaisPagamento.text;
DM.SDS_NFSESTATUS.Text                 :=  'N';

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFSECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFSEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFSENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFSEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFSECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFSEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFSE.Post;
Application.ProcessMessages;

dm.SDS_NotasFiscaisItens.First;
Contador := dm.SDS_NotasFiscaisItens.RecordCount;
For E:=1 to Contador do
 begin
DM.SDS_NFSE_itens.Insert;
DM.SDS_NFSE_itens.Edit;
  tam := length(dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text);
 NValor:=1;
 NItem:=NItem+NValor;
DM.SDS_NFSE_itensITEN.AsInteger               := NItem;
DM.SDS_NFSE_itensNR_SEQUENCIA.Text            := '1';
DM.SDS_NFSE_itensNR_NOTA.Text                 := edit1.text;
if tam = 13 then
    begin
DM.SDS_NFSE_itensCOD_PRODUTO.Text             := dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
    end else
    begin
DM.SDS_NFSE_itensCOD_PRODUTO.Text             := '';
end;
//DM.SDS_NFSE_itensCOD_PRODUTO.Text             := formatar(dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text,13,False,'0');
DM.SDS_NFSE_itensCODIGO_PROD.Text             := dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
DM.SDS_NFSE_itensDESCRICAO_PRODUTO.Text       := dm.SDS_NotasFiscaisItensDESCRICAO.Text;
DM.SDS_NFSE_itensVL_DESCONTO.Text             := dm.SDS_NotasFiscaisItensVALOR_DESC.TEXT;
DM.SDS_NFSE_itensQT_PRODUTO.Text              := dm.SDS_NotasFiscaisItensQUANTIDADE.Text;
DM.SDS_NFSE_itensVL_UNITARIO.Text             := dm.SDS_NotasFiscaisItensvALOR_UNI.Text;
DM.SDS_NFSE_itensVL_TOTAL.Text                := dm.SDS_NotasFiscaisItensTOTAL_ITEM.Text;
DM.SDS_NFSE_itensDESC_UNIDADE.Text            := dm.SDS_NotasFiscaisItensDESC_UNIDADE.Text;
DM.SDS_NFSE_itensVL_OUTROS.Text               := '0';//dm.SDS_NotasFiscaisItensENC_FINANCEIRO.TEXT;
//DM.SDS_NFSE_itensCD_CLIENTE.Text              :=  dm.SDS_NotasFiscaisCOD_FORNECEDOR.Text;
DM.SDS_NFSE_itensCFOP.Text                    :=  RxDBComboEdit2.Text;
DM.SDS_NFSE_itensCOD_NCM.Text                 := dm.SDS_NotasFiscaisItensNCM_SH.Text;
DM.SDS_NFSE_itensCST.text                     := DM.SDS_NotasFiscaisItensCST.TEXT;
DM.SDS_NFSE_itens.Post;
dm.SDS_NotasFiscaisItens.next;
Application.ProcessMessages;

end;



NOTA := EDIT1.TEXT;
DM.SDS_NFSE.Filtered := False;
DM.SDS_NFSE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFSE.Filtered := True;
confirmar.Enabled := True;
end else


if FormGeraNFSe.combobox2.itemIndex = 2 then  // saida tela de consultas vendas
begin
Application.ProcessMessages;

 if SDS_NFE1.Locate('NR_PEDIDO',DM.sds_vendasCODIGO.Text, [loCaseInsensitive]) = True then
 BEGIN
  if (SDS_NFE1NR_PROTOCOLO_NFE.Text > '') AND (SDS_NFE1STATUS_CANCELADO.TEXT = '') then
  begin
   Application.MESSAGEBOX('NF-E Já Validada para esta venda, favor cancelar a Nfe para Gerar uma Nova NF-e !', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
   Abort;
   Exit;
  end;
  if SDS_NFE1NR_PROTOCOLO_NFE.Text = '' then
  begin
  if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda, mas nao Validada!, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFSE.Active := False;
  DM.SDS_NFSE.Active := True;
  DM.SDS_NFSE_itens.Active := False;
  DM.SDS_NFSE_itens.Active := True;
  RxDBComboEdit2.SetFocus;
 end;
 end;
 end else

if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
 if  DM.sds_vendasNUMERO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCOD_IBGE.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCEP.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasENDERECO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else

if  DM.sds_vendasCIDADE.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasBAIRRO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCPF_CNPJ.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasUF.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija a UF que esta em branco');
Exit;
Abort;
end else
begin
DM.SDS_NFSE.Insert;
DM.SDS_NFSE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);

if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
DM.SDS_NFSENr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
DM.SDS_NFSENr_nota.Text                :=  edit1.text;
end;

DM.SDS_VENDAS.FIRST;
Cont := DM.SDS_VENDAS.RecordCount;
For I:=1 to Cont do
begin
DM.SDS_NFSE.Edit;
SOMA := SOMA +  DM.sds_vendasVALOR_ITENS.ASFLOAT;
SOMA1 := SOMA1 +  DM.sds_vendasVALOR_DESCONTO.ASFLOAT;
SOMA2 := SOMA2 +  DM.sds_vendasVALOR_TOTAL.ASFLOAT;
SOMA3 := SOMA3 +   DM.sds_vendasENC_FINANCEIRO.ASFLOAT;
SOMA4 := SOMA4 +  DM.sds_vendasValor_avista.ASFLOAT;
SOMA5 := SOMA5 +  DM.sds_vendasValor_prazo.ASFLOAT;

DM.SDS_NFSEDt_emissao.AsDateTime       :=  DATE; //DM.sds_vendasDATA_PEDIDO.AsDateTime;
DM.SDS_NFSEDt_lancamento.AsDateTime    :=  DATE; //DM.sds_vendasDATA_PEDIDO.AsDateTime;
DM.SDS_NFSEvl_mercadorias.AsFloat      :=  SOMA;
DM.SDS_NFSEVl_descontos.AsFloat        :=  SOMA1;
DM.SDS_NFSEVl_total.AsFloat            :=  SOMA2;
DM.SDS_NFSEcod_cliente.Text            :=  DM.sds_vendasCODIGO_CLIENTE.Text;
DM.SDS_NFSEVl_acrescimos.AsFloat       :=  SOMA3;
DM.SDS_NFSECOD_PGTO.Text               :=  DM.sds_vendasCOD_PAGTO.Text;
DM.SDS_NFSECD_FUNCIONARIO.Text         :=  DM.sds_vendasCOD_VENDEDOR.text;
DM.SDS_NFSESERIE_NF.Text               :=  '1';
DM.SDS_NFSENR_PEDIDO.Text              :=  DM.sds_vendasCODIGO.Text;
DM.SDS_NFSEVL_AVISTA.AsFloat           :=  SOMA4;
DM.SDS_NFSEVL_PRAZO.AsFloat            :=  SOMA5;
DM.SDS_NFSECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
//DM.SDS_NFSEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFSECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFSECFOP_DESC.Text              :=  suiEdit2.Text;
//DM.SDS_NFSEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
DM.SDS_NFSECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFSEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFSEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFSEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFSEMarca_volumes.Text          := 'UN';
DM.SDS_NFSENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFSEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFSEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFSETP.TEXT                     :=  DM.sds_vendasTP.TEXT;
DM.SDS_NFSENOME_CLIENTE_FOR.Text       :=  DM.sds_vendasNOME_CLIENTE.Text;
DM.SDS_NFSEBAIRRO_CLIENTE_FORN.Text    :=  DM.sds_vendasBAIRRO.Text;
DM.SDS_NFSEEND_NUM_CLIENTE.Text        :=  DM.sds_vendasNUMERO.Text;
DM.SDS_NFSECEP_CLIENTE_FORN.Text       :=  DM.sds_vendasCEP.Text;
DM.SDS_NFSETELEFONE.Text               :=  DM.sds_vendasFONE.Text;
DM.SDS_NFSECPF_CNPJ_CLIENTE_FORN.text  :=  DM.sds_vendasCPF_CNPJ.Text;
DM.SDS_NFSETIPO_PESSOA.text            :=  DM.sds_vendasTIPO.Text;
DM.SDS_NFSECOD_IBGE.Text               :=  DM.sds_vendasCOD_IBGE.Text;
DM.SDS_NFSEPRODUTOR_RURAL.Text         :=  DM.sds_vendasPROD_RURAL.Text;
DM.SDS_NFSEIE_CLIENTE_FORN.Text        :=  DM.sds_vendasRG_IE.Text;
DM.SDS_NFSEIE_PRODUTOR.Text            :=  DM.sds_vendasIE_PRODUTOR.Text;
DM.SDS_NFSECIDADE_CLIENTE_FORN.text    :=  DM.sds_vendasCIDADE.Text;
DM.SDS_NFSEUF_CLIENTE_FORN.Text        :=  DM.sds_vendasUF.Text;
DM.SDS_NFSEENDERECO_CLI_FORN.Text      :=  DM.sds_vendasENDERECO.text;
DM.SDS_NFSEPAGAMENTO.text              :=  DM.sds_vendasPAGAMENTO.text;
DM.SDS_NFSESTATUS.Text                 :=  'N';
if CheckBox1.Checked = True then
begin
Edit8.Text := DM.sds_vendasN_CUPOM.Text;
end;

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFSECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFSEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFSENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFSEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFSECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFSEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFSE.Post;
Application.ProcessMessages;


DM.sds_vendas_itens.First;
Contador := DM.sds_vendas_itens.RecordCount;
For E:=1 to Contador do
 begin
DM.SDS_NFSE_itens.Insert;
DM.SDS_NFSE_itens.Edit;
 tam := Length(RemoveChar(DM.sds_vendas_itensCODIGO_PRODUTO.Text));
 NValor:=1;
 NItem:=NItem+NValor;
DM.SDS_NFSE_itensITEN.AsInteger               := NItem;
DM.SDS_NFSE_itensNR_SEQUENCIA.Text            := '1';
DM.SDS_NFSE_itensNR_NOTA.Text                 := edit1.text;
if tam = 13 then
    begin
DM.SDS_NFSE_itensCOD_PRODUTO.Text             := DM.sds_vendas_itensCODIGO_PRODUTO.Text;
    end else
    begin
DM.SDS_NFSE_itensCOD_PRODUTO.Text             := '';
end;

 if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('cod_ven').AsInteger:= strtoint(DM.sds_vendasCODIGO.Text);
         Parambyname('codpro').AsInteger:= strtoint(DM.Sds_Vendas_itensCODIGO_PROD.Text);
         open;
         Last;
      end;
   IBTRAce.CommitRetaining;

DM.SDS_NFSE_itensCD_ATUALIZACAO.AsInteger     := strtoint(DM.sds_vendasCODIGO.Text);
DM.SDS_NFSE_itensCODIGO_PROD.Text             := DM.sds_vendas_itensCODIGO_PROD.Text;
DM.SDS_NFSE_itensDESCRICAO_PRODUTO.Text       := DM.sds_vendas_itensDESCRICAO_PRODUTO.Text;
DM.SDS_NFSE_itensVL_DESCONTO.Text             := DM.sds_vendas_itensDESCONTO.TEXT;
DM.SDS_NFSE_itensQT_PRODUTO.AsFloat           := DM.sds_vendas_itensQUANTIDADE.AsFloat;
DM.SDS_NFSE_itensVL_UNITARIO.ASFLOAT             := DM.sds_vendas_itensPRECO_UNITARIO.AsFloat;
DM.SDS_NFSE_itensVL_TOTAL.Text                := DM.sds_vendas_itensPRECO_TOTAL.Text;
DM.SDS_NFSE_itensDESC_UNIDADE.Text            := DM.sds_vendas_itensUNIDADE.Text;
DM.SDS_NFSE_itensVL_OUTROS.Text               := DM.sds_vendas_itensENC_FINANCEIRO.TEXT;
//DM.SDS_NFSE_itensCD_CLIENTE.Text              := DM.sds_vendasCODIGO_CLIENTE.Text;

if CheckBox3.Checked = True then
begin
if CheckBox1.Checked = True then
DM.SDS_NFSE_itensCFOP.Text                    := '5929'
ELSE
DM.SDS_NFSE_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
DM.SDS_NFSE_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
DM.SDS_NFSE_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
DM.SDS_NFSE_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
DM.SDS_NFSE_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end else
if CheckBox4.Checked = True then
begin
if CheckBox1.Checked = True then
DM.SDS_NFSE_itensCFOP.Text                    := '6929'
ELSE
DM.SDS_NFSE_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
DM.SDS_NFSE_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
DM.SDS_NFSE_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
DM.SDS_NFSE_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
DM.SDS_NFSE_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end;

IF QBuscaItensNCM_SH.Text > '' THEN
BEGIN
DM.SDS_NFSE_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
end else
IF QBuscaItensNCM_SH1.Text > '' THEN
begin
DM.SDS_NFSE_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
end;

DM.SDS_NFSE_itensALIQ_ICM.AsFloat               := DM.Sds_Vendas_itensPERC_ICM.AsFloat;
DM.SDS_NFSE_itensVL_ICM.AsFloat                 := DM.Sds_Vendas_itensVL_ICM.AsFloat ;
DM.SDS_NFSE_itensVL_BASE_ICM.AsFloat            := DM.Sds_Vendas_itensBASE_ICMS.ASFLOAT;

DM.SDS_NFSE_itensALIQ_IPI.AsFloat               := DM.Sds_Vendas_itensPERC_IPI.AsFloat;
DM.SDS_NFSE_itensVL_IPI.AsFloat                 := DM.Sds_Vendas_itensVL_IPI.AsFloat ;
DM.SDS_NFSE_itensVL_BASE_IPI.AsFloat            := DM.Sds_Vendas_itensBASE_IPI.AsFloat;


DM.SDS_NFSE_itensALIQ_ISS.AsFloat               := DM.Sds_Vendas_itensPERC_ISS.AsFloat;
DM.SDS_NFSE_itensVL_ISS.AsFloat                 := DM.Sds_Vendas_itensVL_ISS.AsFloat;
DM.SDS_NFSE_itensVL_BASE_ISS.AsFloat            := DM.Sds_Vendas_itensBASE_ISS.AsFloat;

DM.SDS_NFSE_itensVL_BASE_PIS.AsFloat            := DM.Sds_Vendas_itensBASE_PIS.AsFloat;
DM.SDS_NFSE_itensVL_BASE_COFINS.AsFloat         := DM.Sds_Vendas_itensBASE_COFINS.AsFloat;
DM.SDS_NFSE_itensALIQ_PIS.AsFloat               := DM.Sds_Vendas_itensPERC_PIS.AsFloat;
DM.SDS_NFSE_itensALIQ_COFINS.AsFloat            := DM.Sds_Vendas_itensPERC_COFINS.AsFloat;
DM.SDS_NFSE_itensVL_PIS.AsFloat                 := DM.Sds_Vendas_itensVL_PIS.AsFloat ;
DM.SDS_NFSE_itensVL_COFINS.AsFloat              := DM.Sds_Vendas_itensVL_COFINS.AsFloat ;

DM.SDS_NFSE_itensVL_BASE_ICM_SUBST.AsFloat      := DM.Sds_Vendas_itensBASE_ICMS_SUBST.AsFloat ;
DM.SDS_NFSE_itensALIQ_ICM_SUBST.AsFloat         := DM.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
DM.SDS_NFSE_itensVL_ICM_SUBST.AsFloat           := DM.Sds_Vendas_itensVL_ICMS_SUBST.AsFloat  ;

DM.SDS_NFSE_itens.Post;
DM.sds_vendas_itens.next;
Application.ProcessMessages;
end;

NOTA := EDIT1.TEXT;
DM.SDS_NFSE.Filtered := False;
DM.SDS_NFSE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFSE.Filtered := True;
BEGIN
DM.SDS_NFSE_itens.First;
X:= X + DM.SDS_NFSE_itensVl_ICM.AsFloat;
Y:= Y + DM.SDS_NFSE_itensVl_IPI.AsFloat;
Z:= Z + DM.SDS_NFSE_itensVl_ISS.AsFloat;
BX := BX + DM.SDS_NFSE_itensVL_BASE_ICM.AsFloat;
BY := BY + DM.SDS_NFSE_itensVL_BASE_IPI.AsFloat;
BZ := BZ + DM.SDS_NFSE_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  DM.SDS_NFSE_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + DM.SDS_NFSE_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + DM.SDS_NFSE_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + DM.SDS_NFSE_itensVL_COFINS.AsFloat;

DM.SDS_NFSE_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;

While not DM.SDS_NFSE_itens.Eof do
begin
X:= X + DM.SDS_NFSE_itensVl_ICM.AsFloat;
Y:= Y + DM.SDS_NFSE_itensVl_IPI.AsFloat;
Z:= Z + DM.SDS_NFSE_itensVl_ISS.AsFloat;
BX := BX + DM.SDS_NFSE_itensVL_BASE_ICM.AsFloat;
BY := BY + DM.SDS_NFSE_itensVL_BASE_IPI.AsFloat;
BZ := BZ + DM.SDS_NFSE_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  DM.SDS_NFSE_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + DM.SDS_NFSE_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + DM.SDS_NFSE_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + DM.SDS_NFSE_itensVL_COFINS.AsFloat;

DM.SDS_NFSE_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
end;
DM.SDS_NFSE_itens.First;

DM.SDS_NFSE.Edit;
DM.SDS_NFSEVL_ICM.aSfloat := ICM;
DM.SDS_NFSEVL_IPI.aSfloat := IPI;
DM.SDS_NFSEVL_ISS.aSfloat := ISS;
DM.SDS_NFSEVL_BASE_ICM.aSfloat := B_ICM;
DM.SDS_NFSEVL_BASE_IPI.aSfloat := B_IPI;
DM.SDS_NFSEVL_BASE_ISS.aSfloat := B_ISS;

DM.SDS_NFSEVL_BASE_PIS.aSfloat := B_PIS;
DM.SDS_NFSEVL_BASE_COFINS.aSfloat := B_COFINS;
DM.SDS_NFSEVL_PIS.aSfloat := PIS;
DM.SDS_NFSEVL_COFINS.aSfloat := COFINS;

DM.SDS_VENDAS.NEXT;
end;
DM.SDS_NFSE.Post;
//DM.SDS_NFSE_itens.Post;
end;
confirmar.Enabled := True;
end;
end;
end;


procedure TFormGeraNFSe.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFormGeraNFSe.confirmarClick(Sender: TObject);

begin
 Try
{ IF CheckBox2.Checked = true then
 if Edit7.Text = '' Then
 begin
    ShowMessage('Chave da NFe deve ser informada para NFe complementar');
 end ELSE
 IF CheckBox1.Checked = true then
 if Edit8.Text = '' Then
 begin
    ShowMessage('Nº do cupom deve ser Informado');
 end ELSE  }

{if DM.SDS_NFSE_itens.Locate('COD_NCM','',[])=True then
begin
  ShowMessage('Codigo do NCM tem que ser Preenchido.. Favor Corrigir');
end else  }

  begin
   DM.SDS_Crediario.Active := False;
   DM.SDS_Crediario.Active := True;

    begin
     CoInitialize(nil);
     //Application.CreateForm(TFormNFE, FormNFE);
     Application.ProcessMessages;
     //FrmNFSe:=TFrmNFSe.Create(self);
     // FrmNFSe.btnCriarEnviar.Enabled := false;
     // FrmNFSe.btnImprimir.Enabled := false;
     // FrmNFSe.btnStatusServ.Enabled := false;
      valida_nfc := false;
     // FrmNFSe.Tag := 2;
     // FrmNFSe.showmodal;
       CoUninitialize;
      IF PODEFECHAR = True then
      BEGIN
      CLOSE;
      end;

      end;
      end;
     except
     on E: EDatabaseError do
                ShowMessage(E.Message);
end;
end;


procedure TFormGeraNFSe.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
{Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      SUIEdit2.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit2.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      CheckBox3.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end; }
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    SUIEdit2.Text := DM.qrcfopNATUREZA.Text;
    RxDBComboEdit2.Text :=  DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormGeraNFSe.FormShow(Sender: TObject);
var
  CST : string;
begin
DM.SDS_NFSE_itens.Active := False;
DM.SDS_NFSE_itens.Active := True;
//DM.SDS_NFSE.Active := False;

PODEFECHAR := False;

//DM.SDS_NFSE.Active := True;
//DM.SDS_NFSE.Active := False;
//DM.SDS_NFSE.Active := True;
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
{IF DM.SDS_EmpresaREGIME.Text = 'S' then
begin
CST := 'B';
DM.SDS_CST.Active := False;
DM.SDS_CST.DataSet.CommandText:='SELECT * FROM CST WHERE CST_CSOSN ='+ QuotedStr(CST) +' ORDER BY CODIGO_CST ASC';
DM.SDS_CST.Active := True;
ComboEdit1.Text := '500';
if DM.SDS_CST.Locate('CODIGO_CST', ComboEdit1.Text,[])=True then
 begin
   SUIEdit3.Text := DM.SDS_CSTDESCRICAO_CST.Text;
 end;
end else

IF DM.SDS_EmpresaREGIME.Text = 'P' then
begin
CST := 'A';
DM.SDS_CST.Active := False;
DM.SDS_CST.DataSet.CommandText:='SELECT * FROM CST WHERE CST_CSOSN ='+QuotedStr(CST)+ 'ORDER BY CODIGO_CST ASC';
DM.SDS_CST.Active := True;
ComboEdit1.Text := '090';
if DM.SDS_CST.Locate('CODIGO_CST', ComboEdit1.Text,[])=True then
 begin
   SUIEdit3.Text := DM.SDS_CSTDESCRICAO_CST.Text;
 end;
end else

IF DM.SDS_EmpresaREGIME.Text = 'R' then
begin
CST := 'A';
DM.SDS_CST.Active := False;
DM.SDS_CST.DataSet.CommandText:='SELECT * FROM CST WHERE CST_CSOSN ='+QuotedStr(CST)+ 'ORDER BY CODIGO_CST ASC';
DM.SDS_CST.Active := True;
ComboEdit1.Text := '090';
if DM.SDS_CST.Locate('CODIGO_CST', ComboEdit1.Text,[])=True then
 begin
   SUIEdit3.Text := DM.SDS_CSTDESCRICAO_CST.Text;
 end;
end;}

//dm.Sds_Transportador.Active := False;
//dm.Sds_Transportador.Active := True;

{NOTA := EDIT1.TEXT;
DM.SDS_NFSE.Filtered := False;
DM.SDS_NFSE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFSE.Filtered := True;}

//DM.SDS_NFSE.Active := False;

Edit6.text := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;

RxDBComboEdit2.SetFocus;

valida_nfc :=False;
end;

procedure TFormGeraNFSe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormGeraNFSe := nil;
if valida_nfc = False then
begin
                        //  DM.SDS_NFSE_itens.Delete;
                        //  DM.SDS_NFSE_itens.ApplyUpdates(0);
                          DM.SDS_NFSE.Delete;
                          DM.SDS_NFSE.ApplyUpdates(0);

end;
end;

procedure TFormGeraNFSe.RxDBComboEdit2Exit(Sender: TObject);
begin
if RxDBComboEdit2.Text > '' then
begin
if DM.qrCFOP.Locate('CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   SUIEdit2.Text := DM.qrCFOPnatureza.Text;
 end else
 if not dm.qrCFOP.Locate('CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RxDBComboEdit2.SetFocus;
 end;
 if RxDBComboEdit2.Text = '5929' then
 begin
  CheckBox1.Enabled := True;
  CheckBox1.Checked := True;
  CheckBox1Click(sender);
  edit8.SetFocus;
 end;

 if (RxDBComboEdit2.Text > '5000') and (RxDBComboEdit2.Text < '6000') then
 begin
  CheckBox3.Enabled := True;
  CheckBox3.Checked := True;
  CheckBox4.Enabled := False;
  CheckBox4.Checked := False;
 end;
 if (RxDBComboEdit2.Text > '6000') and (RxDBComboEdit2.Text < '8000') then
 begin
  CheckBox4.Enabled := True;
  CheckBox4.Checked := True;
  CheckBox3.Enabled := False;
  CheckBox3.Checked := False;
 end;
 end;
end;

procedure TFormGeraNFSe.ComboEdit1Exit(Sender: TObject);
begin
//suiEdit3.Text := dm.SDS_CSTDESCRICAO_CST.text;
end;

procedure TFormGeraNFSe.RxDBComboEdit1Exit(Sender: TObject);
begin

if RxDBComboEdit1.Text > '' then
begin
 if DM.Sds_Transportador.Locate('CD_TRANSPORTADOR', RxDBComboEdit1.Text,[])=True then
 begin
 suiEdit1.text := dm.Sds_TransportadorNOME_TRANSP.text;
 Edit5.SetFocus;
 end else
 if not DM.Sds_Transportador.Locate('CD_TRANSPORTADOR', RxDBComboEdit1.Text,[])=True then
 begin
   ShowMessage('Transportador não localizado');
   RxDBComboEdit1.SetFocus;
 end;
end;
end;

procedure TFormGeraNFSe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key=VK_F3) then
      begin
      IF  Inserir.Enabled = TRUE THEN
      BEGIN
      InserirClick(Sender);
      end;
      end;

      if (Key=VK_F10) then
      begin
      IF  confirmar.Enabled = TRUE THEN
      BEGIN
      confirmarClick(Sender);
      end;
      end;

      if (Key=VK_F5) then
      begin
      IF  btncancelar.Enabled = TRUE THEN
      BEGIN
      btnCancelarClick(Sender);
      end;
      end;
end;

procedure TFormGeraNFSe.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TRxDBComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;



procedure TFormGeraNFSe.RxDBComboEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormGeraNFSe.ComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormGeraNFSe.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;




procedure TFormGeraNFSe.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = false then
begin
  edit7.enabled      := false;
  suiButton7.Enabled := FALSE;
  //CheckBox1.Checked  := True;
end else
if CheckBox2.Checked = True then
begin
  edit7.enabled      := True;
  suiButton7.Enabled := True;
 // CheckBox2.Checked  := false;
end;
end;

procedure TFormGeraNFSe.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = false then
begin
  edit8.enabled := false;
  edit9.enabled := false;
end else
if CheckBox1.Checked = True then
begin
  edit8.enabled := True;
  edit9.enabled := True;
end;
end;

procedure TFormGeraNFSe.suiButton7Click(Sender: TObject);
var
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       ACBrNFe1.NotasFiscais.Clear;
       try
          ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

    //trvwNFe.Items.Clear;

    for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin
      // trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);

      edit7.Text := procNFe.chNFe;
     end;
    end;
end;
end;

procedure TFormGeraNFSe.ComboBox4Change(Sender: TObject);
begin
 IF ComboBox4.ItemIndex = 0 then
 begin
  CheckBox2.Enabled := False;
 // CheckBox1.Enabled := True;
 end else

 IF ComboBox4.ItemIndex = 1 then
 begin
 CheckBox2.Enabled := true;
 //CheckBox1.Enabled := true;
 end else
 IF ComboBox4.ItemIndex = 2 then
 begin
 CheckBox2.Enabled := true;
 //CheckBox1.Enabled := true;

 end;

end;

procedure TFormGeraNFSe.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
{IF KEY = #13 then
BEGIN
if length(trim(Edit9.Text)) > 3 then
ShowMessage('Nº do ecf nao pode ter mais que 3 casas');
Edit9.SetFocus;}
end;


procedure TFormGeraNFSe.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
       Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

if Key = vk_down then
begin
 if DBGrid1.SelectedField = DM.SDS_NFSE_itensCOD_NCM then
begin
  if Length(DM.SDS_NFSE_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
end;
end;

if key = vk_return then
begin
 if DBGrid1.SelectedField = DM.SDS_NFSE_itensCOD_NCM then
begin
  if Length(DM.SDS_NFSE_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
  end;
end;
end;

procedure TFormGeraNFSe.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
     Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);
end;

procedure TFormGeraNFSe.DBGrid1ColExit(Sender: TObject);
begin
{if DBGrid1.SelectedField = DM.SDS_NFSE_itensCOD_NCM then
begin
  if Length(DM.SDS_NFSE_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
  end;  }

end;

procedure TFormGeraNFSe.CheckBox3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CheckBox4.Checked := False;
end;

procedure TFormGeraNFSe.CheckBox4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CheckBox3.Checked := False;
end;

procedure TFormGeraNFSe.FormCreate(Sender: TObject);
begin
SetForegroundWindow(handle);
end;

end.
