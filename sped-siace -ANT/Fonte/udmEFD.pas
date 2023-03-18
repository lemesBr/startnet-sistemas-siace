unit udmEFD;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, IdFTP,
  FireDAC.VCLUI.Wait, ACBrSpedFiscal, Data.DB, FireDAC.Comp.UI, Vcl.Forms,
  FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrUtil,
  ACBrEFDBlocos, System.StrUtils, System.Math, System.DateUtils, Vcl.Dialogs,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Phys.IBDef, ACBrBase,
  FireDAC.VCLUI.Error, FireDAC.VCLUI.Login, FireDAC.VCLUI.Async;

type
  TdmEFD = class(TDataModule)
    Conexao: TFDConnection;
    FD0000: TFDQuery;
    FD0000NOME: TStringField;
    FD0000CNPJ: TStringField;
    FD0000UF: TStringField;
    FD0000IE: TStringField;
    FD0000COD_MUN: TStringField;
    FD0000IM: TStringField;
    FD0000SUFRAMA: TStringField;
    FD0000IND_ATIV: TStringField;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FD0005: TFDQuery;
    FD0005FANTASIA: TStringField;
    FD0005CEP: TStringField;
    FD0005ENDERECO: TStringField;
    FD0005NUM: TIntegerField;
    FD0005COMPL: TStringField;
    FD0005BAIRRO: TStringField;
    FD0005FONE: TStringField;
    FD0005FAX: TStringField;
    FD0005EMAIL: TStringField;
    FD0100: TFDQuery;
    FD0100NOME: TStringField;
    FD0100CPF: TStringField;
    FD0100CRC: TStringField;
    FD0100CNPJ: TStringField;
    FD0100CEP: TStringField;
    FD0100ENDERECO: TStringField;
    FD0100NUM: TIntegerField;
    FD0100COMPL: TStringField;
    FD0100BAIRRO: TStringField;
    FD0100FONE: TStringField;
    FD0100FAX: TStringField;
    FD0100EMAIL: TStringField;
    FD0100COD_MUN: TStringField;
    FD0150: TFDQuery;
    FD0150COD_PART: TStringField;
    FD0150NOME: TStringField;
    FD0150COD_PAIS: TStringField;
    FD0150CPF: TStringField;
    FD0150CNPJ: TStringField;
    FD0150IE: TStringField;
    FD0150COD_MUN: TStringField;
    FD0150SUFRAMA: TStringField;
    FD0150ENDERECO: TStringField;
    FD0150NUM: TStringField;
    FD0150COMPL: TStringField;
    FD0150BAIRRO: TStringField;
    FD0150MES: TStringField;
    FD0150ANO: TStringField;
    FD0190: TFDQuery;
    FD0200: TFDQuery;
    FDC100: TFDQuery;
    FDC100NOTA_ID: TStringField;
    FDC100IND_OPER: TStringField;
    FDC100IND_EMIT: TStringField;
    FDC100COD_PART: TStringField;
    FDC100COD_MOD: TStringField;
    FDC100COD_SIT: TStringField;
    FDC100SER: TStringField;
    FDC100NUM_DOC: TStringField;
    FDC100CHV_NFE: TStringField;
    FDC100DT_DOC: TDateField;
    FDC100DT_E_S: TDateField;
    FDC100IND_PGTO: TStringField;
    FDC100MES: TStringField;
    FDC100ANO: TStringField;
    FDC170: TFDQuery;
    FDC190: TFDQuery;
    EFD: TACBrSPEDFiscal;
    FDSEFD: TFDStoredProc;
    FDH010: TFDQuery;
    FD0500: TFDQuery;
    FD0500DT_ALT: TDateField;
    FD0500COD_NAT_CC: TStringField;
    FD0500IND_CTA: TStringField;
    FD0500NIVEL: TStringField;
    FD0500COD_CTA: TStringField;
    FD0500NOME_CTA: TStringField;
    FDEXISTS: TFDQuery;
    FDCREATETABLEEFD: TFDQuery;
    FDQuery: TFDQuery;
    FDCREATEORALTERPROCEDUREEFDIU: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0000: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0005: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0100: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0150: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0190: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0200: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPED0500: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPEDC100: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPEDC170: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPEDC190: TFDQuery;
    FDCREATEORALTERVIEWVIEWSPEDH010: TFDQuery;
    FD0190UNID: TStringField;
    FD0190DESCR: TStringField;
    FD0190MES: TStringField;
    FD0190ANO: TStringField;
    FD0200COD_ITEM: TIntegerField;
    FD0200DESCR_ITEM: TStringField;
    FD0200COD_BARRA: TStringField;
    FD0200COD_ANT_ITEM: TStringField;
    FD0200TIPO_ITEM: TStringField;
    FD0200UNID_INV: TStringField;
    FD0200COD_NCM: TStringField;
    FD0200EX_IPI: TStringField;
    FD0200COD_GEN: TStringField;
    FD0200COD_LST: TStringField;
    FD0200MES: TStringField;
    FD0200ANO: TStringField;
    FDC170NOTA_ID: TStringField;
    FDC170NUM_ITEM: TIntegerField;
    FDC170COD_ITEM: TIntegerField;
    FDC170DESCR_COMPL: TStringField;
    FDC170QTD: TBCDField;
    FDC170UNID: TStringField;
    FDC170IND_MOV: TStringField;
    FDC170CST_ICMS: TStringField;
    FDC170CFOP: TStringField;
    FDC170COD_NAT: TStringField;
    FDC190NOTA_ID: TStringField;
    FDC190CST_ICMS: TStringField;
    FDC190CFOP: TStringField;
    FDH010COD_ITEM: TIntegerField;
    FDH010UNID: TStringField;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDC100VL_DOC: TFMTBCDField;
    FD0200ALIQ_ICMS: TFMTBCDField;
    FDC100VL_DESC: TFMTBCDField;
    FDC100VL_ABAT_NT: TFMTBCDField;
    FDC100VL_MERC: TFMTBCDField;
    FDC100IND_FRT: TStringField;
    FDC100VL_FRT: TFMTBCDField;
    FDC100VL_SEG: TFMTBCDField;
    FDC100VL_OUT_DA: TFMTBCDField;
    FDC100VL_BC_ICMS: TFMTBCDField;
    FDC100VL_ICMS: TFMTBCDField;
    FDC100VL_BC_ICMS_ST: TFMTBCDField;
    FDC100VL_ICMS_ST: TFMTBCDField;
    FDC100VL_IPI: TFMTBCDField;
    FDC100VL_PIS: TFMTBCDField;
    FDC100VL_COFINS: TFMTBCDField;
    FDC100VL_PIS_ST: TFMTBCDField;
    FDC100VL_COFINS_ST: TFMTBCDField;
    FDC170VL_ITEM: TFMTBCDField;
    FDC170VL_DESC: TFMTBCDField;
    FDC170VL_BC_ICMS: TFMTBCDField;
    FDC170ALIQ_ICMS: TFMTBCDField;
    FDC170VL_ICMS: TFMTBCDField;
    FDC170VL_BC_ICMS_ST: TFMTBCDField;
    FDC170ALIQ_ST: TFMTBCDField;
    FDC170VL_ICMS_ST: TFMTBCDField;
    FDC170IND_APUR: TStringField;
    FDC170CST_IPI: TStringField;
    FDC170COD_ENQ: TStringField;
    FDC170VL_BC_IPI: TFMTBCDField;
    FDC170ALIQ_IPI: TFMTBCDField;
    FDC170VL_IPI: TFMTBCDField;
    FDC170CST_PIS: TStringField;
    FDC170VL_BC_PIS: TFMTBCDField;
    FDC170ALIQ_PIS_PERC: TFMTBCDField;
    FDC170QUANT_BC_PIS: TFMTBCDField;
    FDC170ALIQ_PIS_R: TFMTBCDField;
    FDC170VL_PIS: TFMTBCDField;
    FDC170CST_COFINS: TStringField;
    FDC170VL_BC_COFINS: TFMTBCDField;
    FDC170ALIQ_COFINS_PERC: TFMTBCDField;
    FDC170QUANT_BC_COFINS: TFMTBCDField;
    FDC170ALIQ_COFINS_R: TFMTBCDField;
    FDC170VL_COFINS: TFMTBCDField;
    FDC170COD_CTA: TStringField;
    FDC190ALIQ_ICMS: TFMTBCDField;
    FDC190VL_OPR: TFMTBCDField;
    FDC190VL_BC_ICMS: TFMTBCDField;
    FDC190VL_ICMS: TFMTBCDField;
    FDC190VL_BC_ICMS_ST: TFMTBCDField;
    FDC190VL_ICMS_ST: TFMTBCDField;
    FDC190VL_RED_BC: TFMTBCDField;
    FDC190VL_IPI: TFMTBCDField;
    FDH010QTD: TFMTBCDField;
    FDH010VL_UNIT: TFMTBCDField;
    FDH010VL_ITEM: TBCDField;
    FDH010IND_PROP: TStringField;
    FDEXISTSQTDE: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function updateDatabase(): Boolean;
  public
    { Public declarations }
    function geraefd(): Boolean;
  end;

var
  dmEFD: TdmEFD;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TdmEFD }

function TdmEFD.geraefd(): Boolean;
function DevolveInteiro(Const Texto:String):String;
var
  I: integer;
  S: string;
begin
  S:= EmptyStr;
  for I:= 1 To Length(Texto) Do
    if CharInSet((Texto[I]),['0'..'9']) then
      S:= S + Copy(Texto, I, 1);
  Result:= S;
end;
var
  FDIRETORIO,
  Perfil: string;
  Periodoinicial,
  Periodofinal: TDateTime;
  Versaoleiaute,
  Finalidadearquivo: Integer;
  SOMA_ICMS: Currency;
  Inventario: Currency;
  Item: Integer;
  pathBase: string;
  FTP: TIdftp;
  Local,
  Arquivo,
  vMes,
  vAno: string;
begin
  Application.ProcessMessages;
  Result:= True;
  try
    try
      SOMA_ICMS:= 0;
      {pathBase:= PathWithDelim(ExtractFileDir(Application.ExeName))+ 'STARTNET.FDB';
      Conexao.Connected:= False;
      Conexao.Params.Values['DriverID']:= 'FB';
      Conexao.Params.Values['Database']:= pathBase;
      Conexao.Connected:= True; }

    { with Conexao.Params do begin
     Clear;
      Add('DriverID=FB');
      Add('Server=localhost');
      Add('Database=C:\StartNet_Sistemas\STARTNET.FDB');
      Add('User_Name=sysdba');
      Add('Password=masterkey');
     end;  }
     Conexao.Connected := True;

      if not updateDatabase() then Exit(False);

      FDIRETORIO:= PathWithDelim(ExtractFileDir(Application.ExeName))+ 'SPED\';
      if not DirectoryExists(FDIRETORIO) then
        ForceDirectories(FDIRETORIO);

      Periodoinicial:= StartOfTheMonth(IncMonth(Now, -1));
      Periodofinal:= EndOfTheMonth(IncMonth(Now, -1));
      Versaoleiaute:= 10;
      Finalidadearquivo:= 0;
      Perfil:= 'A';

      vMes:= FormatDateTime('mm',Periodoinicial);
      vAno:= FormatDateTime('yyyy',Periodoinicial);

      FD0000.Active:= False;
      FD0000.Active:= True;
      FDIRETORIO:= FDIRETORIO + 'SPED-' +
        UpperCase(FormatDateTime('yyyymm',Periodoinicial) + '-' +
          StringReplace(FD0000NOME.AsString,' ','',[rfReplaceAll]) + '.TXT');

      EFD.Arquivo:= FDIRETORIO;
      EFD.DT_INI:= Periodoinicial;
      EFD.DT_FIN:= Periodofinal;
      EFD.LinhasBuffer:= 2000;
      EFD.IniciaGeracao;

      with EFD.Bloco_0 do
      begin
        //-- REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
        with Registro0000New do
        begin
          COD_VER   := TACBrCodVer(Versaoleiaute);
          COD_FIN   := TACBrCodFinalidade(Finalidadearquivo);
          DT_INI    := Periodoinicial;
          DT_FIN    := Periodofinal;
          IND_PERFIL:= TACBrPerfil(StrToIntDef(Perfil,0));
          NOME      := Trim(FD0000NOME.AsString);
          CNPJ      := DevolveInteiro(FD0000CNPJ.AsString);
          CPF       := '';
          UF        := FD0000UF.AsString;
          IE        := DevolveInteiro(FD0000IE.AsString);
          COD_MUN   := StrToIntDef(FD0000COD_MUN.AsString,0);
          IM        := DevolveInteiro(FD0000IM.AsString);
          SUFRAMA   := FD0000SUFRAMA.AsString;
          IND_ATIV  := TACBrIndAtiv(FD0000IND_ATIV.AsString.ToInteger());
        end;

        //-- REGISTRO 0001: ABERTURA DO BLOCO 0
        with Registro0001New do
        begin
          IND_MOV:= imComDados;

          //-- REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
          FD0005.Active:= False;
          FD0005.Active:= True;
          with Registro0005New do
          begin
            FANTASIA  := Trim(FD0005FANTASIA.AsString);
            CEP       := DevolveInteiro(FD0005CEP.AsString);
            ENDERECO  := Trim(FD0005ENDERECO.AsString);
            NUM       := FD0005NUM.AsInteger.ToString();
            COMPL     := Trim(FD0005COMPL.AsString);
            BAIRRO    := Trim(FD0005BAIRRO.AsString);
            FONE      := DevolveInteiro(FD0005FONE.AsString);
            FAX       := DevolveInteiro(FD0005FAX.AsString);
            EMAIL     := Trim(FD0005EMAIL.AsString);
          end;

          //-- REGISTRO 0100: DADOS DO CONTABILISTA
          FD0100.Active:= False;
          FD0100.Active:= True;
          with Registro0100New do
          begin
            NOME    := Trim(FD0100NOME.AsString);
            CPF     := DevolveInteiro(FD0100CPF.AsString);
            CRC     := FD0100CRC.AsString;
            CNPJ    := DevolveInteiro(FD0100CNPJ.AsString);
            CEP     := DevolveInteiro(FD0100CEP.AsString);
            ENDERECO:= Trim(FD0100ENDERECO.AsString);
            NUM     := FD0100NUM.AsInteger.ToString();
            COMPL   := Trim(FD0100COMPL.AsString);
            BAIRRO  := Trim(FD0100BAIRRO.AsString);
            FONE    := DevolveInteiro(FD0100FONE.AsString);
            FAX     := DevolveInteiro(FD0100FAX.AsString);
            EMAIL   := Trim(FD0100EMAIL.AsString);
            COD_MUN := StrToIntDef(FD0100COD_MUN.AsString,0);
          end;

          //-- REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
          FD0150.Active:= False;
          FD0150.Params.ParamByName('MES').AsString:= vMes;
          FD0150.Params.ParamByName('ANO').AsString:= vAno;
          FD0150.Active:= True;
          while not FD0150.Eof do
          begin
            with Registro0150New do
            begin
              COD_PART  := FD0150COD_PART.AsString;
              NOME      := Trim(FD0150NOME.AsString);
              COD_PAIS  := FD0150COD_PAIS.AsString;
              CPF       := IfThen(Length(DevolveInteiro(FD0150CNPJ.AsString)) = 11, DevolveInteiro(FD0150CNPJ.AsString), EmptyStr);
              CNPJ      := IfThen(Length(DevolveInteiro(FD0150CNPJ.AsString)) = 14, DevolveInteiro(FD0150CNPJ.AsString), EmptyStr);
              IE        := IfThen(Length(DevolveInteiro(FD0150CNPJ.AsString)) = 14, DevolveInteiro(FD0150IE.AsString), EmptyStr);
              COD_MUN   := StrToIntDef(FD0150COD_MUN.AsString,0);
              SUFRAMA   := FD0150SUFRAMA.AsString;
              ENDERECO  := Trim(FD0150ENDERECO.AsString);
              NUM       := FD0150NUM.AsString;
              COMPL     := Trim(FD0150COMPL.AsString);
              BAIRRO    := Trim(FD0150BAIRRO.AsString);
            end;
            FD0150.Next;
          end;

          //-- REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
          FD0190.Active:= False;
          FD0190.Params.ParamByName('MES').AsString:=  vMes;
          FD0190.Params.ParamByName('ANO').AsString:=  vAno;
          FD0190.Active:= True;
          while not FD0190.Eof do
          begin
            with Registro0190New do
            begin
              UNID  := Trim(FD0190UNID.AsString);
              DESCR := Trim(FD0190DESCR.AsString);
            end;
            FD0190.Next;
          end;

          //-- REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
          FD0200.Active:= False;
          FD0200.Params.ParamByName('MES').AsString:= vMes;
          FD0200.Params.ParamByName('ANO').AsString:= vAno;
          FD0200.Active:= True;
          while not FD0200.Eof do
          begin
            with Registro0200New do
            begin
              COD_ITEM    := FD0200COD_ITEM.AsInteger.ToString();
              DESCR_ITEM  := Trim(ReplaceStr(FD0200DESCR_ITEM.AsString, '|', '-'));
              COD_BARRA   := Trim(FD0200COD_BARRA.AsString);
              COD_ANT_ITEM:= FD0200COD_ANT_ITEM.AsString;
              UNID_INV    := Trim(FD0200UNID_INV.AsString);
              TIPO_ITEM   := StrToTipoItem(FD0200TIPO_ITEM.AsString);
              COD_NCM     := FD0200COD_NCM.AsString;
              EX_IPI      := FD0200EX_IPI.AsString;
              COD_GEN     := FD0200COD_GEN.AsString;
              COD_LST     := FD0200COD_LST.AsString;
              ALIQ_ICMS   := FD0200ALIQ_ICMS.AsFloat;
            end;
            FD0200.Next;
          end;

          FD0500.Active:= False;
          FD0500.Active:= True;
          while not FD0500.Eof do
          begin
            with Registro0500New do
            begin
              DT_ALT      := FD0500DT_ALT.AsDateTime;
              COD_NAT_CC  := FD0500COD_NAT_CC.AsString;
              IND_CTA     := FD0500IND_CTA.AsString;
              NIVEL       := FD0500NIVEL.AsString;
              COD_CTA     := FD0500COD_CTA.AsString;
              NOME_CTA    := FD0500NOME_CTA.AsString;
            end;
            FD0500.Next;
          end;
        end;
      end;

      with EFD.Bloco_C do
      begin
        //-- REGISTRO C001: ABERTURA DO BLOCO C
        with RegistroC001New do IND_MOV:= imComDados;

        //-- REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65)
        FDC100.Active:= False;
        FDC100.Params.ParamByName('MES').AsString:= vMes;
        FDC100.Params.ParamByName('ANO').AsString:= vAno;
        FDC100.Active:= True;
        while not FDC100.Eof do
        begin
          with RegistroC100New do
          begin
            case StrToCodSit(FDC100COD_SIT.AsString)  of
              sdRegular: begin
                IND_OPER      := StrToIndOper(FDC100IND_OPER.AsString);
                IND_EMIT      := StrToIndEmit(FDC100IND_EMIT.AsString);
                COD_PART      := FDC100COD_PART.AsString;
                COD_MOD       := FDC100COD_MOD.AsString;
                COD_SIT       := sdRegular;
                SER           := FDC100SER.AsString;
                NUM_DOC       := FDC100NUM_DOC.AsString;
                CHV_NFE       := FDC100CHV_NFE.AsString;
                DT_DOC        := FDC100DT_DOC.AsDateTime;
                DT_E_S        := FDC100DT_E_S.AsDateTime;
                VL_DOC        := FDC100VL_DOC.AsExtended;
                IND_PGTO      := StrToIndPgto(FDC100IND_PGTO.AsString);
                VL_DESC       := FDC100VL_DESC.AsExtended;
                VL_ABAT_NT    := FDC100VL_ABAT_NT.AsExtended;
                VL_MERC       := FDC100VL_MERC.AsExtended;
                IND_FRT       := StrToIndFrt(FDC100IND_FRT.AsString);
                VL_FRT        := FDC100VL_FRT.AsExtended;
                VL_SEG        := FDC100VL_SEG.AsExtended;
                VL_OUT_DA     := FDC100VL_OUT_DA.AsExtended;
                VL_BC_ICMS    := FDC100VL_BC_ICMS.AsExtended;
                VL_ICMS       := FDC100VL_ICMS.AsExtended;
                VL_BC_ICMS_ST := FDC100VL_BC_ICMS_ST.AsExtended;
                VL_ICMS_ST    := FDC100VL_ICMS_ST.AsExtended;
                VL_IPI        := FDC100VL_IPI.AsExtended;
                VL_PIS        := FDC100VL_PIS.AsExtended;
                VL_COFINS     := FDC100VL_COFINS.AsExtended;
                VL_PIS_ST     := FDC100VL_PIS_ST.AsExtended;
                VL_COFINS_ST  := FDC100VL_COFINS_ST.AsExtended;
              end;

              sdCancelado: begin
                IND_OPER      := StrToIndOper(FDC100IND_OPER.AsString);
                IND_EMIT      := StrToIndEmit(FDC100IND_EMIT.AsString);
                COD_MOD       := FDC100COD_MOD.AsString;
                COD_SIT       := sdCancelado;
                SER           := FDC100SER.AsString;
                NUM_DOC       := FDC100NUM_DOC.AsString;
                CHV_NFE       := FDC100CHV_NFE.AsString;
              end;

              sdDoctoNumInutilizada: begin
                IND_OPER      := StrToIndOper(FDC100IND_OPER.AsString);
                IND_EMIT      := StrToIndEmit(FDC100IND_EMIT.AsString);
                COD_MOD       := FDC100COD_MOD.AsString;
                COD_SIT       := sdCancelado;
                SER           := FDC100SER.AsString;
                NUM_DOC       := FDC100NUM_DOC.AsString;
              end;
            end;
          end;

          //-- REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
          if ((FDC100COD_MOD.AsString = '01') OR (FDC100COD_MOD.AsString = '1B') OR ((FDC100COD_MOD.AsString = '55') AND (FDC100IND_OPER.AsString = '0'))) then
          begin
            FDC170.Active:= False;
            FDC170.Params.ParamByName('NOTA_ID').AsString:= FDC100NOTA_ID.AsString;
            FDC170.Active:= True;
            Item:= 0;
            while not FDC170.Eof do
            begin
              Inc(Item);
              with RegistroC170New do
              begin
                NUM_ITEM        := Item.ToString();
                COD_ITEM        := FDC170COD_ITEM.AsInteger.ToString();
                DESCR_COMPL     := Trim(FDC170DESCR_COMPL.AsString);
                QTD             := FDC170QTD.AsExtended;
                UNID            := Trim(FDC170UNID.AsString);
                VL_ITEM         := Abs(FDC170VL_ITEM.AsExtended);
                VL_DESC         := FDC170VL_DESC.AsExtended;
                IND_MOV         := StrToIndMovFisica(FDC170IND_MOV.AsString);
                CST_ICMS        := FDC170CST_ICMS.AsString;
                CFOP            := FDC170CFOP.AsString;
                COD_NAT         := FDC170COD_NAT.AsString;
                VL_BC_ICMS      := FDC170VL_BC_ICMS.AsExtended;
                ALIQ_ICMS       := FDC170ALIQ_ICMS.AsExtended;
                VL_ICMS         := FDC170VL_ICMS.AsExtended;
                VL_BC_ICMS_ST   := FDC170VL_BC_ICMS_ST.AsExtended;
                ALIQ_ST         := FDC170ALIQ_ST.AsExtended;
                VL_ICMS_ST      := FDC170VL_ICMS_ST.AsExtended;
                IND_APUR        := TACBrApuracaoIPI(FDC170IND_APUR.AsString.ToInteger());
                CST_IPI         := FDC170CST_IPI.AsString;
                COD_ENQ         := FDC170COD_ENQ.AsString;
                VL_BC_IPI       := FDC170VL_BC_IPI.AsExtended;
                ALIQ_IPI        := FDC170ALIQ_IPI.AsExtended;
                VL_IPI          := FDC170VL_IPI.AsExtended;
                CST_PIS         := FDC170CST_PIS.AsString;
                VL_BC_PIS       := FDC170VL_BC_PIS.AsExtended;
                ALIQ_PIS_PERC   := FDC170ALIQ_PIS_PERC.AsExtended;
                QUANT_BC_PIS    := FDC170QUANT_BC_PIS.AsExtended;
                ALIQ_PIS_R      := FDC170ALIQ_PIS_R.AsExtended;
                VL_PIS          := FDC170VL_PIS.AsExtended;
                CST_COFINS      := FDC170CST_COFINS.AsString;
                VL_BC_COFINS    := FDC170VL_BC_COFINS.AsExtended;
                ALIQ_COFINS_PERC:= FDC170ALIQ_COFINS_PERC.AsExtended;
                QUANT_BC_COFINS := FDC170QUANT_BC_COFINS.AsExtended;
                ALIQ_COFINS_R   := FDC170ALIQ_COFINS_R.AsExtended;
                VL_COFINS       := FDC170VL_COFINS.AsExtended;
                COD_CTA         := FDC170COD_CTA.AsString;
              end;
              FDC170.Next;
            end;
          end;

          //-- REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 ,55 e 65).
          if (FDC100COD_SIT.AsString = '00') then
          begin
            FDC190.Active:= False;
            FDC190.Params.ParamByName('NOTA_ID').AsString:= FDC100NOTA_ID.AsString;
            FDC190.Active:= True;
            while not FDC190.Eof do
            begin
              with RegistroC190New do
              begin
                CST_ICMS      := FDC190CST_ICMS.AsString;
                CFOP          := FDC190CFOP.AsString;
                ALIQ_ICMS     := FDC190ALIQ_ICMS.AsExtended;
                VL_OPR        := FDC190VL_OPR.AsExtended;
                VL_BC_ICMS    := FDC190VL_BC_ICMS.AsExtended;
                VL_ICMS       := FDC190VL_ICMS.AsExtended;
                VL_BC_ICMS_ST := FDC190VL_BC_ICMS_ST.AsExtended;
                VL_ICMS_ST    := FDC190VL_ICMS_ST.AsExtended;
                VL_RED_BC     := FDC190VL_RED_BC.AsExtended;
                VL_IPI        := FDC190VL_IPI.AsExtended;
                COD_OBS       := '';
              end;

              if (FDC100IND_OPER.AsString = '0') then
                SOMA_ICMS:= SOMA_ICMS + FDC190VL_ICMS.AsCurrency;

              FDC190.Next;
            end;
          end;
          FDC100.Next;
        end;
      end;

      with EFD.Bloco_E do
      begin
        //-- REGISTRO E001: ABERTURA DO BLOCO E
        with RegistroE001New do
        begin
          IND_MOV:= imComDados;

          //-- REGISTRO E100: PERÍODO DA APURAÇÃO DO ICMS.
          with RegistroE100New do
          begin
            DT_INI:= Periodoinicial;
            DT_FIN:= Periodofinal;
          end;
        end;

        //-- REGISTRO E110: APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.
        with RegistroE110New do
        begin
          VL_TOT_DEBITOS            := 0;
          VL_AJ_DEBITOS             := 0;
          VL_TOT_AJ_DEBITOS         := 0;
          VL_ESTORNOS_CRED          := 0;
          VL_TOT_CREDITOS           := SOMA_ICMS;
          VL_AJ_CREDITOS            := 0;
          VL_TOT_AJ_CREDITOS        := 0;
          VL_ESTORNOS_DEB           := 0;
          VL_SLD_CREDOR_ANT         := 0;
          VL_SLD_APURADO            := 0;
          VL_TOT_DED                := 0;
          VL_ICMS_RECOLHER          := 0;
          VL_SLD_CREDOR_TRANSPORTAR := SOMA_ICMS;
          DEB_ESP                   := 0;
        end;
      end;

      FDH010.Active:= False;
      FDH010.Active:= True;
      if (FDH010.RecordCount > 0) then
      begin
        Inventario:= 0;
        with EFD.Bloco_H do
        begin
          with RegistroH001New do
          begin
            IND_MOV:= imComDados;

            with RegistroH005New do
            begin
              DT_INV:= EndOfTheYear(IncYear(Now, -1));

              while not FDH010.Eof do
              begin
                with RegistroH010New do
                begin
                  COD_ITEM:= FDH010COD_ITEM.AsInteger.ToString();
                  UNID:= Trim(FDH010UNID.AsString);
                  QTD:= FDH010QTD.AsFloat;
                  VL_UNIT:= FDH010VL_UNIT.AsFloat;
                  VL_ITEM:= FDH010VL_ITEM.AsCurrency;
                  IND_PROP:= StrToIndProp(FDH010IND_PROP.AsString);
                  COD_CTA:= '1.1.4.01';
                end;
                Inventario:= Inventario + FDH010VL_ITEM.AsCurrency;
                FDH010.Next;
              end;

              VL_INV:= Inventario;
              MOT_INV:= miFinalPeriodo;
            end;
          end;
        end;
      end;

      with EFD.Bloco_1 do
      begin
        //-- REGISTRO 1001: ABERTURA DO BLOCO 1
        with Registro1001New do
        begin
          IND_MOV:= imComDados;

          //-- REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1
          with Registro1010New do
          begin
            IND_EXP   := 'N'; //1100
            IND_CCRF  := 'N'; //1200
            IND_COMB  := 'N'; //1300
            IND_USINA := 'N'; //1390
            IND_VA    := 'N'; //1400
            IND_EE    := 'N'; //1500
            IND_CART  := 'N'; //IfThen(FSPED1600LST.Count > 0,'S','N'); //1600
            IND_FORM  := 'N'; //1700
            IND_AER   := 'N'; //1800
          end;

          //-- REGISTRO 1600: TOTAL DAS OPERAÇÕES COM CARTÃO DE CRÉDITO E/OU DÉBITO
          {for I := 0 to Pred(FSPED1600LST.Count) do
          begin
            with Registro1600New do
            begin
              COD_PART    := FSPED1600LST.Items[I].Codparticipante.ToString();
              TOT_CREDITO := FSPED1600LST.Items[I].Credito;
              TOT_DEBITO  := FSPED1600LST.Items[I].Debito;
            end;
          end;}
        end;
      end;

      EFD.SaveFileTXT;

      try
        Local       := FDIRETORIO;
        Arquivo     := ExtractFileName(FDIRETORIO);

        FTP         := TIdftp.Create(nil);
        FTP.Host    := 'ftp.itecsoftware.com.br';
        FTP.Username:= 'itecsoftware';
        FTP.Password:= 'metalgear3';
        FTP.Passive := True;
        FTP.Connect;
        FTP.ChangeDir('/www/siace/efd');
        FTP.put(Local, Arquivo);
        FTP.Disconnect;
      except
         raise Exception.Create('O SPED foi gerado com sucesso, porem houve um erro ao enviar o arquivo para o ftp.');
      end;

      FDSEFD.Active:= False;
      FDSEFD.Prepare;
      FDSEFD.Params.ParamByName('REFERENCIA').AsString:= FormatDateTime('yyyymm',Periodoinicial);
      FDSEFD.ExecProc;
    except on e: Exception do
      begin
        Result:= False;
        if Assigned(FTP) then FTP.Disconnect;
        ShowMessage(e.Message);
      end;
    end;
  finally
    if Assigned(FTP) then FreeAndNil(FTP);
  end;
end;

function TdmEFD.updateDatabase: Boolean;
begin
  Result:= True;
  try
    try
      FDEXISTS.Active:= False;
      FDEXISTS.Params.ParamByName('TABLE_NAME').AsString:= 'EFD';
      FDEXISTS.Active:= True;

      if (FDEXISTSQTDE.AsInteger = 0) then
      begin
        FDCREATETABLEEFD.ExecSQL;

        FDQuery.Active:= False;
        FDQuery.SQL.CommaText:= 'ALTER TABLE EFD ADD CONSTRAINT PK_EFD PRIMARY KEY (REFERENCIA)';
        FDQuery.ExecSQL;
      end;

      FDCREATEORALTERPROCEDUREEFDIU.ExecSQL;

      FDCREATEORALTERVIEWVIEWSPED0000.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPED0005.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPED0100.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPED0150.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPEDH010.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPED0190.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPED0200.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPED0500.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPEDC100.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPEDC170.ExecSQL;
      FDCREATEORALTERVIEWVIEWSPEDC190.ExecSQL;
    except on e: Exception do
      begin
        Result:= False;
        ShowMessage(e.Message);
      end;
    end;
  finally
     FDEXISTS.Active:= False;
  end;
end;

end.
