unit uGeraSP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, DateUtils, ACBrEPCBlocos, ACBrUtil,
  ACBrTXTClass, ACBrSpedPisCofins, ACBrBase, DBGridEh, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrSpedFiscal;

type
  TFrmSpedSP = class(TForm)
    Panel2: TPanel;
    memoError: TMemo;
    ACBrSPEDContribuicoes: TACBrSPEDPisCofins;
    btnExecute: TSpeedButton;
    btnSair: TSpeedButton;
    dsContador: TDataSource;
    dsEmpresa: TDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    cbEmpresa: TDBLookupComboboxEh;
    cbContador: TDBLookupComboboxEh;
    Label2: TLabel;
    Label3: TLabel;
    dtIni: TDateTimePicker;
    Label4: TLabel;
    dtFim: TDateTimePicker;
    ckSemMovimento: TCheckBox;
    Edit1: TEdit;
    CbTipo: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edArq: TEdit;
    procedure btnExecuteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dtFimExit(Sender: TObject);
    procedure dtIniExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbEmpresaExit(Sender: TObject);
    procedure cbContadorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AbreTabelas;
    procedure Importa;
    procedure LimpaSped;
    { Private declarations }
  public
    procedure GeraBloco0;
    procedure GeraBlocoC;
    procedure GeraSped;
    procedure NomeCaminho;
    { Public declarations }
  end;

var
  FrmSpedSP: TFrmSpedSP;

implementation

{$R *.dfm}

uses udadosSped, ModuleDados1, ModulodeDados;

procedure TFrmSpedSP.NomeCaminho;
begin
  DecodeDate(dtIni.Date, ano, mes, dia);
  edArq.Text := tirapontos(Dm.SDS_EmpresaCNPJ.text) + '_SPC_' + inttostr(mes)
    + inttostr(ano) + '.txt';
  ACBrSPEDContribuicoes.Path := ExtractFilePath(Application.ExeName) + '\Sped';
  ACBrSPEDContribuicoes.Arquivo := edArq.Text;
end;

procedure TFrmSpedSP.Importa;
begin
  // importa dados dos participantes
  DadosSped.ImportaParticipante(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa unidades dos produtos
  DadosSped.ImportaUNidade(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa produtos
  DadosSped.ImportaProduto(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue, 'P');
  Application.ProcessMessages;

  // importa registros c100 - compra
  DadosSped.ImportaEntradaCompra(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros c100 - nfe
  DadosSped.ImportaEntradaNFe(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros saida nfce
  DadosSped.ImportaSaidaNCFe(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

  // importa registros saida nfe
  DadosSped.ImportaSaidaNFe(dtIni.Date, dtFim.Date, cbEmpresa.KeyValue);
  Application.ProcessMessages;

end;

procedure TFrmSpedSP.AbreTabelas;
begin
  ACBrSPEDContribuicoes.DT_INI := dtIni.Date;
  ACBrSPEDContribuicoes.DT_FIN := dtFim.Date;

  // Abre tabela Sped - cabeçalho do Sped

  dm1.qrySped.Close;
  dm1.qrySped.Params[0].Value := cbEmpresa.KeyValue;
  dm1.qrySped.Params[1].AsDate := dtIni.Date;
  dm1.qrySped.Params[2].AsDate := dtFim.Date;
  dm1.qrySped.Open;

  // Abre Tabela Participantes

  dm1.qrySped_Participante.Close;
  dm1.qrySped_Participante.Params[0].AsInteger := dm1.qrySpedCODIGO.Value;
  dm1.qrySped_Participante.Open;

  // Abre Tabela Unidadades

  dm1.qrySped_Unidade.Close;
  dm1.qrySped_Unidade.Params[0].AsInteger := dm1.qrySpedCODIGO.Value;
  dm1.qrySped_Unidade.Open;

  // Abre Tabela Produtos

  dm1.qrySped_Produto.Close;
  dm1.qrySped_Produto.Params[0].AsInteger := dm1.qrySpedCODIGO.Value;
  dm1.qrySped_Produto.Open;

  // Abre Tabela C100 - Notas Ficais de Compra e Venda

  dm1.qrySped_C100.Close;
  dm1.qrySped_C100.Params[0].AsInteger := dm1.qrySpedCODIGO.Value;
  dm1.qrySped_C100.Open;

  // Abre Tabela Sped Config

  DadosSped.qryConfig_Sped.Close;
  DadosSped.qryConfig_Sped.Params[0].Value := cbEmpresa.KeyValue;
  DadosSped.qryConfig_Sped.Open;

  iCodUsu := dm.SDS_UsuariosCODIGO.value;

end;

procedure TFrmSpedSP.LimpaSped;
begin

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_PARTICIPANTES';
  dm1.qryExecute.ExecSQL;


  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_H010';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_H005';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_UNIDADE';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_PRODUTOS';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_C190';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_C170';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED_C100';
  dm1.qryExecute.ExecSQL;

  dm1.qryExecute.Close;
  dm1.qryExecute.SQL.Text := 'DELETE FROM SPED';
  dm1.qryExecute.ExecSQL;

  dm.Coneccao.CommitRetaining;
end;

procedure TFrmSpedSP.GeraSped;
begin
  // *** verifica se sped já existe na base de dados
  LimpaSped;
  FormatSettings.DecimalSeparator := '.';
  AbreTabelas;

  if dm1.qrySped.IsEmpty then
  begin
    dm1.qrySped.Insert;
    dm1.qrySpeddata_ini.Value := dtIni.Date;
    dm1.qrySpeddata_fim.Value := dtFim.Date;
    dm1.qrySpedFK_EMPRESA.Value := cbEmpresa.KeyValue;
    dm1.qrySpedFK_CONTADOR.Value := cbContador.KeyValue;
    dm1.qrySpedFK_USUARIO.Value := iCodUsu;
    dm1.qrySpedremessa.Value := 'O';
    if CbTipo.Text = 'SUBSTITUTO' then
    begin
      dm1.qrySpedremessa.Value := 'S';
      dm1.qrySpedrecibo.Value := Edit1.Text;
    end;
    dm1.qrySpedsemmovimento.Value := 'F';
    if ckSemMovimento.Checked then
      dm1.qrySpedsemmovimento.Value := 'T';
    dm1.qrySpeddtemissao.Value := Date;
    dm1.qrySpedCODIGO.AsFloat := dm.Numerador('SPED', 'CODIGO',
      'N', '', '');
    DadosSped.CodSped := dm1.qrySpedCODIGO.Value;
    dm1.qrySped.Post;
    dm.Coneccao.CommitRetaining;
  end
  else
  begin
    if MessageBox(0, 'O SPED CONTRIBUIÇÕES deste mês já foi gerado!' + #13 +
      'Deseja gerar o SPED CONTRIBUIÇÕES novamante?', 'Sped Fiscal',
      +mb_YesNo) = 6 then
    begin
      dm1.qrySped.Edit;
      dm1.qrySpedFK_CONTADOR.Value := cbContador.KeyValue;

      dm1.qrySpeddtemissao.Value := Date;
      dm1.qrySpedremessa.Value := 'O';
      if CbTipo.Text = 'SUBSTITUTO' then
        dm1.qrySpedremessa.Value := 'S';

      dm1.qrySpedsemmovimento.Value := 'T';
      if ckSemMovimento.Checked then
        dm1.qrySpedsemmovimento.Value := 'F';
      dm1.qrySped.Post;

      DadosSped.CodSped := dm1.qrySpedCODIGO.Value;

      dm.Coneccao.CommitRetaining;

      DadosSped.ApagaRegistro;

    end
    else
      exit;
  end;
  // **** fim sped já existe

  // Inicio da importação do sped da base de dados
  if ckSemMovimento.Checked = false then
  begin
    Importa;
  end;

  GeraBloco0;
  GeraBlocoC;
  ACBrSPEDContribuicoes.SaveFileTXT;
end;

procedure TFrmSpedSP.GeraBloco0;
begin

  { gera o bloco zero do sped
    * Cadastro de Participantes
    * Cadastro de Produtos
    * Cadastro de Unidades
    * Contadores
    * Empresa emitente
    * Versão do Sped
    * Tipo de Sped: Original|Substituto
  }

  with ACBrSPEDContribuicoes do
  begin
    DT_INI := dtIni.Date;
    DT_FIN := dtFim.Date;
    IniciaGeracao;
  end;

  with ACBrSPEDContribuicoes.Bloco_0 do
  begin
    with Registro0000New do
    begin
      if (dtIni.Date <= strtodate('28/02/2011')) then
        COD_VER := vlVersao101;
      if (dtIni.Date <= strtodate('30/06/2012')) then
        COD_VER := vlVersao200;
      if (dtIni.Date >= strtodate('01/07/2012')) then
        COD_VER := vlVersao201;
      if (dtIni.Date >= strtodate('01/07/2018')) then
        COD_VER := vlVersao202;
      if (dtIni.Date >= strtodate('01/07/2019')) then
        COD_VER := vlVersao310;
      if (dtIni.Date >= strtodate('01/07/2020')) then
        COD_VER := vlVersao320;

      if CbTipo.Text = 'ORIGINAL' then
        TIPO_ESCRIT := tpEscrOriginal
      else
      begin
        TIPO_ESCRIT := tpEscrRetificadora;
        NUM_REC_ANTERIOR := Edit1.Text;
      end;

      DT_INI := dtIni.Date;
      DT_FIN := dtFim.Date;
      NOME := dm.SDS_EmpresaRAZAO_SOCIAL.Value;
      CNPJ := tirapontos(dm.Sds_Empresacnpj.Value);
      UF := dm.SDS_EmpresaUF.Value;
      COD_MUN := dm.SDS_EmpresaCOD_CID_IBGE.asinteger;
      SUFRAMA := '';

      IND_NAT_PJ := indNatPJSocEmpresariaGeral;

      if DadosSped.qryConfig_SpedIND_ATIV.Value = 'O' then
        IND_ATIV := indAtivoOutros;
      if DadosSped.qryConfig_SpedIND_ATIV.Value = 'I' then
        IND_ATIV := indAtivIndustrial;
      if DadosSped.qryConfig_SpedIND_ATIV.Value = 'C' then
        IND_ATIV := indAtivComercio;
      if DadosSped.qryConfig_SpedIND_ATIV.Value = 'P' then
        IND_ATIV := indAtivPrestadorServico;
    end;

    with Registro0001New do
    begin

      if ckSemMovimento.Checked = false then
        IND_MOV := imComDados
      else
      begin
        IND_MOV := imSemDados;
        exit;
      end;

      DadosSped.qryContador.Locate('codigo', cbContador.KeyValue, []);

      // Dados do contador
      with Registro0100New do
      begin
        NOME := DadosSped.qryContadorNOME_CONTADOR.Value;
        CPF := DadosSped.qryContadorCPF_CONTADOR.Value;
        CRC := DadosSped.qryContadorCRC_CONTADOR.Value;
        if length(tirapontos(DadosSped.qryContadorCNPJ_CONTADOR.Value)) = 11 then
          CPF := tirapontos(DadosSped.qryContadorCNPJ_CONTADOR.Value);
        if length(tirapontos(DadosSped.qryContadorCNPJ_CONTADOR.Value)) = 14 then
          CNPJ := tirapontos(DadosSped.qryContadorCNPJ_CONTADOR.Value);
        CEP := DadosSped.qryContadorCEP_CONTADOR.Value;
        ENDERECO := DadosSped.qryContadorENDERECO_CONTADOR.Value;
        NUM := DadosSped.qryContadorNUM_CONTADOR.text;
        COMPL := DadosSped.qryContadorCOMPL_CONTADOR.Value;
        BAIRRO := DadosSped.qryContadorBAIRRO_CONTADOR.Value;
        FONE := tirapontos(DadosSped.qryContadorFONE_CONTADOR.Value);
        FAX := tirapontos(DadosSped.qryContadorFAX_CONTADOR.Value);
        EMAIL := DadosSped.qryContadorEMAIL_CONTADOR.Value;
        COD_MUN := DadosSped.qryContadorCOD_IBGE_CONTADOR.AsInteger;
      end;
      with Registro0110New do
      begin

        if DadosSped.qryConfig_SpedCOD_INC_TRIB.Value = '1' then
          COD_INC_TRIB := codEscrOpIncNaoCumulativo;
        if DadosSped.qryConfig_SpedCOD_INC_TRIB.Value = '2' then
          COD_INC_TRIB := codEscrOpIncCumulativo;
        if DadosSped.qryConfig_SpedCOD_INC_TRIB.Value = '3' then
          COD_INC_TRIB := codEscrOpIncAmbos;

        if DadosSped.qryConfig_SpedIND_APRO_CRED.Value = '1' then
          IND_APRO_CRED := indMetodoApropriacaoDireta;
        if DadosSped.qryConfig_SpedIND_APRO_CRED.Value = '2' then
          IND_APRO_CRED := indMetodoDeRateioProporcional;

        if DadosSped.qryConfig_SpedCOD_TIPO_CONT.Value = '1' then
          COD_TIPO_CONT := codIndTipoConExclAliqBasica;
        if DadosSped.qryConfig_SpedCOD_TIPO_CONT.Value = '2' then
          COD_TIPO_CONT := codIndTipoAliqEspecificas;

        if DadosSped.qryConfig_SpedIND_REG_CUM.Value = '1' then
          IND_REG_CUM := codRegimeCaixa;
        if DadosSped.qryConfig_SpedIND_REG_CUM.Value = '2' then
          IND_REG_CUM := codRegimeCompetEscritConsolidada;
        if DadosSped.qryConfig_SpedIND_REG_CUM.Value = '9' then
          IND_REG_CUM := codRegimeCompetEscritDetalhada;

      end;

      // dados estabelecimento comercial
      with Registro0140New do
      begin
        COD_EST := dm.SDS_EmpresaCODIGO.AsString;
        NOME := dm.SDS_EmpresaRAZAO_SOCIAL.Value;
        CNPJ := tirapontos(dm.SDS_EmpresaCNPJ.Value);
        UF := dm.SDS_EmpresaUF.Value;
        IE := tirapontos(dm.SDS_EmpresaIE.Value);
        COD_MUN := dm.SDS_EmpresaCOD_CID_IBGE.AsInteger;
        IM := dm.SDS_EmpresaIM.Value;
        SUFRAMA := '';
      end;

      // dados dos participantes

      dm1.qrySped_Participante.First;
      while not dm1.qrySped_Participante.Eof do
      begin
        with Registro0150New do
        begin
          COD_PART := dm1.qrySped_Participantecod_part.AsString;
          NOME := dm1.qrySped_Participantenome.Value;

          CNPJ := tirapontos(dm1.qrySped_ParticipanteCNPJ_CPF.Value);
          CPF := tirapontos(dm1.qrySped_Participantecpf.Value);
          COD_PAIS := '1058';
          IE := tirapontos(dm1.qrySped_Participanteie.Value);
          COD_MUN := dm1.qrySped_ParticipanteCOD_MUNICIPIO.AsInteger;
          SUFRAMA := '';
          ENDERECO := dm1.qrySped_ParticipanteLOGRADOURO.Value;
          NUM := dm1.qrySped_Participantenumero.AsString;
          COMPL := dm1.qrySped_Participantecomplemento.Value;
          BAIRRO := dm1.qrySped_Participantebairro.Value;
        end;
        dm1.qrySped_Participante.Next;
      end; // fim participantes

      // unidades de medidas
      dm1.qrySped_Unidade.First;
      while not dm1.qrySped_Unidade.Eof do
      begin
        with Registro0190New do
        begin
          UNID := dm1.qrySped_Unidadeunidade.Value;
          DESCR := dm1.qrySped_Unidadedescricao.Value;
        end;
        dm1.qrySped_Unidade.Next;
      end;

      // Produtos
      dm1.qrySped_Produto.First;
      while not dm1.qrySped_Produto.Eof do
      begin
        with Registro0200New do
        begin
          COD_ITEM := dm1.qrySped_Produtofk_produto.AsString;
          DESCR_ITEM := dm1.qrySped_Produtodescricao.AsString;
          COD_BARRA := dm1.qrySped_Produtocod_barras.AsString;

          if dm1.qrySped_Unidade.Locate('codigo',
            dm1.qrySped_ProdutoUNIDADE.Value, []) then
            UNID_INV := dm1.qrySped_Unidadeunidade.Value;

          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '00' then
            TIPO_ITEM := tiMercadoriaRevenda;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '01' then
            TIPO_ITEM := tiMateriaPrima;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '02' then
            TIPO_ITEM := tiEmbalagem;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '03' then
            TIPO_ITEM := tiProdutoProcesso;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '04' then
            TIPO_ITEM := tiProdutoAcabado;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '05' then
            TIPO_ITEM := tiSubproduto;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '06' then
            TIPO_ITEM := tiProdutoIntermediario;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '07' then
            TIPO_ITEM := tiMaterialConsumo;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '08' then
            TIPO_ITEM := tiAtivoImobilizado;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '09' then
            TIPO_ITEM := tiServicos;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '10' then
            TIPO_ITEM := tiOutrosInsumos;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '11' then
            TIPO_ITEM := tiOutras;
          if dm1.qrySped_ProdutoTIPO_ATIVIDADE.Value = '' then
            TIPO_ITEM := tiOutras;
          COD_NCM := dm1.qrySped_Produtocod_ncm.Value;
        end;
        dm1.qrySped_Produto.Next;
      end; // fim produtos

      with Registro0500New do
      begin
        DT_ALT := dtIni.Date;
        COD_NAT_CC := ncgAtivo;
        IND_CTA := indCTASintetica;
        NIVEL := '0';
        COD_CTA := '01';
        NOME_CTA := dm.SDS_EmpresaRAZAO_SOCIAL.Value;
        COD_CTA_REF := '0';
        CNPJ_EST := tirapontos(dm.SDS_Empresacnpj.Value);
      end;

    end;
  end;
end;

procedure TFrmSpedSP.GeraBlocoC;
var
  codigo: Integer;
begin
  // Notas de compra e vendas

  with ACBrSPEDContribuicoes.Bloco_C do
  begin
    with RegistroC001New do
    begin
      if ckSemMovimento.Checked = false then
        IND_MOV := imComDados;

      if ckSemMovimento.Checked = true then
      begin
        IND_MOV := imSemDados;
        exit;
      end;

      with RegistroC010New do
      begin
        CNPJ := tirapontos(dm.SDS_Empresacnpj.Value);
        IND_ESCRI := IndEscriIndividualizado;
        //IND_ESCRI := IndEscriConsolidado;

        dm1.qrySped_C100.First;
         while not dm1.qrySped_C100.Eof do
         begin
          if (dm1.qrySped_C100COD_MOD.text = '55') or (dm1.qrySped_C100COD_MOD.text = '65') then
          begin
            with RegistroC100New do
            begin
              if dm1.qrySped_C100ind_oper.Value = '0' then
              IND_OPER := tpEntradaAquisicao;
              if dm1.qrySped_C100ind_oper.Value = '1' then
                IND_OPER := tpSaidaPrestacao;

              if dm1.qrySped_C100ind_emit.Value = '0' then
              IND_EMIT := edEmissaoPropria;
              if dm1.qrySped_C100ind_emit.Value = '1' then
              IND_EMIT := edTerceiros;

              if (dm1.qrySped_C100COD_MOD.Value = '55') then
                // só para nota fiscal eletronica
                COD_PART := dm1.qrySped_C100FK_PARTICIPANTES.AsString;

              if (dm1.qrySped_C100cod_sit.Value = '02') or (dm1.qrySped_C100cod_sit.Value = '04') or (dm1.qrySped_C100cod_sit.Value = '05') then
                COD_PART := '';
              // Baseado no registro 0150
              COD_MOD := dm1.qrySped_C100COD_MOD.AsString;

              if (dm1.qrySped_C100cod_sit.Value = '00') or (dm1.qrySped_C100cod_sit.Value = '') then
                COD_SIT := sdRegular;
              if dm1.qrySped_C100cod_sit.Value = '01' then
                COD_SIT := sdExtempRegular;
              if dm1.qrySped_C100cod_sit.Value = '02' then
                COD_SIT := sdCancelado;
              if dm1.qrySped_C100cod_sit.Value = '03' then
                COD_SIT := sdCanceladoExtemp;
              if dm1.qrySped_C100cod_sit.Value = '04' then
                COD_SIT := sdDoctoDenegado;
              if dm1.qrySped_C100cod_sit.Value = '05' then
                COD_SIT := sdDoctoNumInutilizada;
              if dm1.qrySped_C100cod_sit.Value = '06' then
                COD_SIT := sdFiscalCompl;
              if dm1.qrySped_C100cod_sit.Value = '07' then
                COD_SIT := sdExtempCompl;
              if dm1.qrySped_C100cod_sit.Value = '08' then
                COD_SIT := sdRegimeEspecNEsp;
              SER := dm1.qrySped_C100ser.Value;
              NUM_DOC := FormatFloat('00000000', dm1.qrySped_C100num_doc.Value);
              CHV_NFE := dm1.qrySped_C100chv_nfe.Value;
              DT_DOC  := dm1.qrySped_C100dt_doc.Value;
              DT_E_S  := dm1.qrySped_C100dt_e_s.Value;

              if (dm1.qrySped_C100cod_sit.Value <> '02') or (dm1.qrySped_C100cod_sit.Value <> '04') or (dm1.qrySped_C100cod_sit.Value <> '04') then
              begin
                VL_DOC := dm1.qrySped_C100vl_doc.AsCurrency;
                IND_PGTO := TACBrIndPgto(2);
                VL_DESC := dm1.qrySped_C100vl_desc.AsCurrency;
                VL_ABAT_NT := dm1.qrySped_C100vl_abat_nt.AsCurrency;
                VL_MERC := dm1.qrySped_C100vl_merc.AsCurrency + dm1.qrySped_C100vl_desc.AsCurrency;
                IND_FRT := TACBrIndFrt(9);
                VL_SEG := dm1.qrySped_C100vl_seguro.AsCurrency;
                VL_FRT := dm1.qrySped_C100vl_frete.AsCurrency;
                VL_OUT_DA := dm1.qrySped_C100vl_out_da.AsCurrency;
                VL_BC_ICMS := dm1.qrySped_C100vl_bc_icms.AsCurrency;
                VL_ICMS := dm1.qrySped_C100vl_icms.AsCurrency;
                VL_BC_ICMS_ST := dm1.qrySped_C100vl_bc_icms_st.AsCurrency;
                VL_ICMS_ST := dm1.qrySped_C100vl_icms_st.AsCurrency;
                VL_IPI := dm1.qrySped_C100vl_ipi.AsCurrency;
                VL_PIS := dm1.qrySped_C100vl_pis.AsCurrency;
                VL_COFINS := dm1.qrySped_C100vl_cofins.AsCurrency;
                VL_PIS_ST := dm1.qrySped_C100vl_pis_st.AsCurrency;
                VL_COFINS_ST := dm1.qrySped_C100VL_COFINS_ST.AsCurrency;
              end;
              // regitros c170 é filho de c100. A cada c100 no minimo um c170

              FormatSettings.DecimalSeparator := '.';

              dm1.qrySped_C170.Close;
              dm1.qrySped_C170.Params[0].Value := dm1.qrySped_C100CODIGO.Value;
              dm1.qrySped_C170.Open;

              FormatSettings.DecimalSeparator := ',';
              codigo := 1;
            //  if (dm1.qrySped_C100ind_oper.Value = '0') or (dm1.qrySped_C100ind_oper.Value = '1') then
              begin // só gera c170 de NFe Emitida por Terceiros
                while not dm1.qrySped_C170.Eof do
                begin
                  with RegistroC170New do // Inicio Adicionar os Itens:
                  begin
                    NUM_ITEM    := inttostr(codigo);
                    COD_ITEM    := dm1.qrySped_C170fk_produto.AsString;
                    DESCR_COMPL := dm1.qrySped_C170DESCRICAO.AsString;
                    QTD         := dm1.qrySped_C170qtd.AsFloat;
                    dm1.qrySped_Unidade.Locate('CODIGO', dm1.qrySped_C170fk_unidade.Value, []);
                    UNID        := dm1.qrySped_Unidadeunidade.Value;
                    VL_ITEM     := dm1.qrySped_C170vl_item.AsCurrency;
                    VL_DESC     := dm1.qrySped_C170vl_desc.AsCurrency;
                    IND_MOV     := mfNao;

                    if dm1.qrySped_C170cst_icms.Value = '000' then
                      CST_ICMS := csticms000;
                    if dm1.qrySped_C170cst_icms.Value = '010' then
                      CST_ICMS := csticms010;
                    if dm1.qrySped_C170cst_icms.Value = '020' then
                      CST_ICMS := csticms020;
                    if dm1.qrySped_C170cst_icms.Value = '030' then
                      CST_ICMS := csticms030;
                    if dm1.qrySped_C170cst_icms.Value = '040' then
                      CST_ICMS := csticms040;
                    if dm1.qrySped_C170cst_icms.Value = '041' then
                      CST_ICMS := csticms041;
                    if dm1.qrySped_C170cst_icms.Value = '050' then
                      CST_ICMS := csticms050;
                    if dm1.qrySped_C170cst_icms.Value = '051' then
                      CST_ICMS := csticms051;
                    if dm1.qrySped_C170cst_icms.Value = '060' then
                      CST_ICMS := csticms060;
                    if dm1.qrySped_C170cst_icms.Value = '070' then
                      CST_ICMS := csticms070;
                    if dm1.qrySped_C170cst_icms.Value = '090' then
                      CST_ICMS := csticms090;
                    if dm1.qrySped_C170cst_icms.Value = '100' then
                      CST_ICMS := csticms100;
                    if dm1.qrySped_C170cst_icms.Value = '110' then
                      CST_ICMS := csticms110;
                    if dm1.qrySped_C170cst_icms.Value = '120' then
                      CST_ICMS := csticms120;
                    if dm1.qrySped_C170cst_icms.Value = '130' then
                      CST_ICMS := csticms130;
                    if dm1.qrySped_C170cst_icms.Value = '140' then
                      CST_ICMS := csticms140;
                    if dm1.qrySped_C170cst_icms.Value = '141' then
                      CST_ICMS := csticms141;
                    if dm1.qrySped_C170cst_icms.Value = '150' then
                      CST_ICMS := csticms150;
                    if dm1.qrySped_C170cst_icms.Value = '151' then
                      CST_ICMS := csticms151;
                    if dm1.qrySped_C170cst_icms.Value = '160' then
                      CST_ICMS := csticms160;
                    if dm1.qrySped_C170cst_icms.Value = '170' then
                      CST_ICMS := csticms170;
                    if dm1.qrySped_C170cst_icms.Value = '190' then
                      CST_ICMS := csticms190;
                    if dm1.qrySped_C170cst_icms.Value = '200' then
                      CST_ICMS := csticms200;
                    if dm1.qrySped_C170cst_icms.Value = '210' then
                      CST_ICMS := csticms210;
                    if dm1.qrySped_C170cst_icms.Value = '220' then
                      CST_ICMS := csticms220;
                    if dm1.qrySped_C170cst_icms.Value = '230' then
                      CST_ICMS := csticms230;
                    if dm1.qrySped_C170cst_icms.Value = '240' then
                      CST_ICMS := csticms240;
                    if dm1.qrySped_C170cst_icms.Value = '241' then
                      CST_ICMS := csticms241;
                    if dm1.qrySped_C170cst_icms.Value = '250' then
                      CST_ICMS := csticms250;
                    if dm1.qrySped_C170cst_icms.Value = '251' then
                      CST_ICMS := csticms251;
                    if dm1.qrySped_C170cst_icms.Value = '260' then
                      CST_ICMS := csticms260;
                    if dm1.qrySped_C170cst_icms.Value = '270' then
                      CST_ICMS := csticms270;
                    if dm1.qrySped_C170cst_icms.Value = '290' then
                      CST_ICMS := csticms290;
                    if dm1.qrySped_C170cst_icms.Value = '300' then
                      CST_ICMS := csticms300;
                    if dm1.qrySped_C170cst_icms.Value = '310' then
                      CST_ICMS := csticms310;
                    if dm1.qrySped_C170cst_icms.Value = '320' then
                      CST_ICMS := csticms320;
                    if dm1.qrySped_C170cst_icms.Value = '330' then
                      CST_ICMS := csticms330;
                    if dm1.qrySped_C170cst_icms.Value = '340' then
                      CST_ICMS := csticms340;
                    if dm1.qrySped_C170cst_icms.Value = '341' then
                      CST_ICMS := csticms341;
                    if dm1.qrySped_C170cst_icms.Value = '350' then
                      CST_ICMS := csticms350;
                    if dm1.qrySped_C170cst_icms.Value = '351' then
                      CST_ICMS := csticms351;
                    if dm1.qrySped_C170cst_icms.Value = '360' then
                      CST_ICMS := csticms360;
                    if dm1.qrySped_C170cst_icms.Value = '370' then
                      CST_ICMS := csticms370;
                    if dm1.qrySped_C170cst_icms.Value = '390' then
                      CST_ICMS := csticms390;
                    if dm1.qrySped_C170cst_icms.Value = '400' then
                      CST_ICMS := csticms400;
                    if dm1.qrySped_C170cst_icms.Value = '410' then
                      CST_ICMS := csticms410;
                    if dm1.qrySped_C170cst_icms.Value = '420' then
                      CST_ICMS := csticms420;
                    if dm1.qrySped_C170cst_icms.Value = '430' then
                      CST_ICMS := csticms430;
                    if dm1.qrySped_C170cst_icms.Value = '440' then
                      CST_ICMS := csticms440;
                    if dm1.qrySped_C170cst_icms.Value = '441' then
                      CST_ICMS := csticms441;
                    if dm1.qrySped_C170cst_icms.Value = '450' then
                      CST_ICMS := csticms450;
                    if dm1.qrySped_C170cst_icms.Value = '451' then
                      CST_ICMS := csticms451;
                    if dm1.qrySped_C170cst_icms.Value = '460' then
                      CST_ICMS := csticms460;
                    if dm1.qrySped_C170cst_icms.Value = '470' then
                      CST_ICMS := csticms470;
                    if dm1.qrySped_C170cst_icms.Value = '490' then
                      CST_ICMS := csticms490;
                    if dm1.qrySped_C170cst_icms.Value = '500' then
                      CST_ICMS := csticms500;
                    if dm1.qrySped_C170cst_icms.Value = '510' then
                      CST_ICMS := csticms510;
                    if dm1.qrySped_C170cst_icms.Value = '520' then
                      CST_ICMS := csticms520;
                    if dm1.qrySped_C170cst_icms.Value = '530' then
                      CST_ICMS := csticms530;
                    if dm1.qrySped_C170cst_icms.Value = '540' then
                      CST_ICMS := csticms540;
                    if dm1.qrySped_C170cst_icms.Value = '541' then
                      CST_ICMS := csticms541;
                    if dm1.qrySped_C170cst_icms.Value = '550' then
                      CST_ICMS := csticms550;
                    if dm1.qrySped_C170cst_icms.Value = '551' then
                      CST_ICMS := csticms551;
                    if dm1.qrySped_C170cst_icms.Value = '560' then
                      CST_ICMS := csticms560;
                    if dm1.qrySped_C170cst_icms.Value = '570' then
                      CST_ICMS := csticms570;
                    if dm1.qrySped_C170cst_icms.Value = '590' then
                      CST_ICMS := csticms590;
                    if dm1.qrySped_C170cst_icms.Value = '600' then
                      CST_ICMS := csticms600;
                    if dm1.qrySped_C170cst_icms.Value = '610' then
                      CST_ICMS := csticms610;
                    if dm1.qrySped_C170cst_icms.Value = '620' then
                      CST_ICMS := csticms620;
                    if dm1.qrySped_C170cst_icms.Value = '630' then
                      CST_ICMS := csticms630;
                    if dm1.qrySped_C170cst_icms.Value = '640' then
                      CST_ICMS := csticms640;
                    if dm1.qrySped_C170cst_icms.Value = '641' then
                      CST_ICMS := csticms641;
                    if dm1.qrySped_C170cst_icms.Value = '650' then
                      CST_ICMS := csticms650;
                    if dm1.qrySped_C170cst_icms.Value = '651' then
                      CST_ICMS := csticms651;
                    if dm1.qrySped_C170cst_icms.Value = '660' then
                      CST_ICMS := csticms660;
                    if dm1.qrySped_C170cst_icms.Value = '670' then
                      CST_ICMS := csticms670;
                    if dm1.qrySped_C170cst_icms.Value = '690' then
                      CST_ICMS := csticms690;
                    if dm1.qrySped_C170cst_icms.Value = '700' then
                      CST_ICMS := csticms700;
                    if dm1.qrySped_C170cst_icms.Value = '710' then
                      CST_ICMS := csticms710;
                    if dm1.qrySped_C170cst_icms.Value = '720' then
                      CST_ICMS := csticms720;
                    if dm1.qrySped_C170cst_icms.Value = '730' then
                      CST_ICMS := csticms730;
                    if dm1.qrySped_C170cst_icms.Value = '740' then
                      CST_ICMS := csticms740;
                    if dm1.qrySped_C170cst_icms.Value = '741' then
                      CST_ICMS := csticms741;
                    if dm1.qrySped_C170cst_icms.Value = '750' then
                      CST_ICMS := csticms750;
                    if dm1.qrySped_C170cst_icms.Value = '751' then
                      CST_ICMS := csticms751;
                    if dm1.qrySped_C170cst_icms.Value = '760' then
                      CST_ICMS := csticms760;
                    if dm1.qrySped_C170cst_icms.Value = '770' then
                      CST_ICMS := csticms770;
                    if dm1.qrySped_C170cst_icms.Value = '790' then
                      CST_ICMS := csticms790;
                    if dm1.qrySped_C170cst_icms.Value = '800' then
                      CST_ICMS := csticms800;
                    if dm1.qrySped_C170cst_icms.Value = '810' then
                      CST_ICMS := csticms810;
                    if dm1.qrySped_C170cst_icms.Value = '820' then
                      CST_ICMS := csticms820;
                    if dm1.qrySped_C170cst_icms.Value = '830' then
                      CST_ICMS := csticms830;
                    if dm1.qrySped_C170cst_icms.Value = '840' then
                      CST_ICMS := csticms840;
                    if dm1.qrySped_C170cst_icms.Value = '841' then
                      CST_ICMS := csticms841;
                    if dm1.qrySped_C170cst_icms.Value = '850' then
                      CST_ICMS := csticms850;
                    if dm1.qrySped_C170cst_icms.Value = '851' then
                      CST_ICMS := csticms851;
                    if dm1.qrySped_C170cst_icms.Value = '860' then
                      CST_ICMS := csticms860;
                    if dm1.qrySped_C170cst_icms.Value = '870' then
                      CST_ICMS := csticms870;
                    if dm1.qrySped_C170cst_icms.Value = '890' then
                      CST_ICMS := csticms890;

                    CFOP := dm1.qrySped_C170cfop.AsString;
                    VL_BC_ICMS := dm1.qrySped_C170vl_bc_icms.AsCurrency;
                    ALIQ_ICMS := dm1.qrySped_C170aliq_icm.AsCurrency;
                    VL_ICMS := dm1.qrySped_C170vl_icms.AsCurrency;
                    VL_BC_ICMS_ST := dm1.qrySped_C170vl_bc_icms_st.AsCurrency;
                    ALIQ_ST := dm1.qrySped_C170aliq_st.AsCurrency;
                    VL_ICMS_ST := dm1.qrySped_C170vl_icms_st.AsCurrency;
                    IND_APUR := iaVazio;

                    if trim(dm1.qrySped_C170CST_IPI.AsString) = '' then
                      CST_IPI := cstipiVazio;
                    if dm1.qrySped_C170CST_IPI.AsString = '00' then
                      CST_IPI := cstipi00;
                    if dm1.qrySped_C170CST_IPI.AsString = '01' then
                      CST_IPI := cstipi01;
                    if dm1.qrySped_C170CST_IPI.AsString = '02' then
                      CST_IPI := cstipi02;
                    if dm1.qrySped_C170CST_IPI.AsString = '03' then
                      CST_IPI := cstipi03;
                    if dm1.qrySped_C170CST_IPI.AsString = '04' then
                      CST_IPI := cstipi04;
                    if dm1.qrySped_C170CST_IPI.AsString = '05' then
                      CST_IPI := cstipi05;
                    if dm1.qrySped_C170CST_IPI.AsString = '49' then
                      CST_IPI := cstipi49;
                    if dm1.qrySped_C170CST_IPI.AsString = '50' then
                      CST_IPI := cstipi50;
                    if dm1.qrySped_C170CST_IPI.AsString = '51' then
                      CST_IPI := cstipi51;
                    if dm1.qrySped_C170CST_IPI.AsString = '52' then
                      CST_IPI := cstipi52;
                    if dm1.qrySped_C170CST_IPI.AsString = '53' then
                      CST_IPI := cstipi53;
                    if dm1.qrySped_C170CST_IPI.AsString = '54' then
                      CST_IPI := cstipi54;
                    if dm1.qrySped_C170CST_IPI.AsString = '55' then
                      CST_IPI := cstipi55;
                    if dm1.qrySped_C170CST_IPI.AsString = '99' then
                      CST_IPI := cstipi99;

                    VL_BC_IPI := dm1.qrySped_C170vl_bc_ipi.AsCurrency;
                    ALIQ_IPI := dm1.qrySped_C170aliq_ipi.AsCurrency;
                    VL_IPI := dm1.qrySped_C170vl_ipi.AsCurrency;

                    if dm1.qrySped_C170CST_PIS.AsString = '01' then
                      CST_PIS := cstpis01;
                    if dm1.qrySped_C170CST_PIS.AsString = '02' then
                      CST_PIS := cstpis02;
                    if dm1.qrySped_C170CST_PIS.AsString = '03' then
                      CST_PIS := cstpis03;
                    if dm1.qrySped_C170CST_PIS.AsString = '04' then
                      CST_PIS := cstpis04;
                    if dm1.qrySped_C170CST_PIS.AsString = '05' then
                      CST_PIS := cstpis05;
                    if dm1.qrySped_C170CST_PIS.AsString = '06' then
                      CST_PIS := cstpis06;
                    if dm1.qrySped_C170CST_PIS.AsString = '07' then
                      CST_PIS := cstpis07;
                    if dm1.qrySped_C170CST_PIS.AsString = '08' then
                      CST_PIS := cstpis08;
                    if dm1.qrySped_C170CST_PIS.AsString = '09' then
                      CST_PIS := cstpis09;
                    if dm1.qrySped_C170CST_PIS.AsString = '49' then
                      CST_PIS := cstpis49;
                    if dm1.qrySped_C170CST_PIS.AsString = '50' then
                      CST_PIS := cstpis50;
                    if dm1.qrySped_C170CST_PIS.AsString = '51' then
                      CST_PIS := cstpis51;
                    if dm1.qrySped_C170CST_PIS.AsString = '52' then
                      CST_PIS := cstpis52;
                    if dm1.qrySped_C170CST_PIS.AsString = '53' then
                      CST_PIS := cstpis53;
                    if dm1.qrySped_C170CST_PIS.AsString = '54' then
                      CST_PIS := cstpis54;
                    if dm1.qrySped_C170CST_PIS.AsString = '55' then
                      CST_PIS := cstpis55;
                    if dm1.qrySped_C170CST_PIS.AsString = '56' then
                      CST_PIS := cstpis56;
                    if dm1.qrySped_C170CST_PIS.AsString = '60' then
                      CST_PIS := cstpis60;
                    if dm1.qrySped_C170CST_PIS.AsString = '61' then
                      CST_PIS := cstpis61;
                    if dm1.qrySped_C170CST_PIS.AsString = '62' then
                      CST_PIS := cstpis62;
                    if dm1.qrySped_C170CST_PIS.AsString = '63' then
                      CST_PIS := cstpis63;
                    if dm1.qrySped_C170CST_PIS.AsString = '64' then
                      CST_PIS := cstpis64;
                    if dm1.qrySped_C170CST_PIS.AsString = '65' then
                      CST_PIS := cstpis65;
                    if dm1.qrySped_C170CST_PIS.AsString = '66' then
                      CST_PIS := cstpis66;
                    if dm1.qrySped_C170CST_PIS.AsString = '67' then
                      CST_PIS := cstpis67;
                    if dm1.qrySped_C170CST_PIS.AsString = '70' then
                      CST_PIS := cstpis70;
                    if dm1.qrySped_C170CST_PIS.AsString = '71' then
                      CST_PIS := cstpis71;
                    if dm1.qrySped_C170CST_PIS.AsString = '72' then
                      CST_PIS := cstpis72;
                    if dm1.qrySped_C170CST_PIS.AsString = '73' then
                      CST_PIS := cstpis73;
                    if dm1.qrySped_C170CST_PIS.AsString = '74' then
                      CST_PIS := cstpis74;
                    if dm1.qrySped_C170CST_PIS.AsString = '75' then
                      CST_PIS := cstpis75;
                    if dm1.qrySped_C170CST_PIS.AsString = '98' then
                      CST_PIS := cstpis98;
                    if dm1.qrySped_C170CST_PIS.AsString = '99' then
                      CST_PIS := cstpis99;

                    VL_BC_PIS := dm1.qrySped_C170VL_BC_PIS.AsCurrency;
                    ALIQ_PIS_PERC := dm1.qrySped_C170ALIQ_PIS_PERC.AsCurrency;
                    VL_PIS := dm1.qrySped_C170vl_pis.AsCurrency;

                    if dm1.qrySped_C170ALIQ_PIS_PERC.AsCurrency <= 0 then
                    begin
                      ALIQ_PIS_PERC := 0.00;
                      VL_BC_PIS := 0.00;
                      VL_PIS := 0.00;
                    end;

                    if dm1.qrySped_C170CST_COFINS.AsString = '01' then
                      CST_COFINS := cstcofins01;
                    if dm1.qrySped_C170CST_COFINS.AsString = '02' then
                      CST_COFINS := cstcofins02;
                    if dm1.qrySped_C170CST_COFINS.AsString = '03' then
                      CST_COFINS := cstcofins03;
                    if dm1.qrySped_C170CST_COFINS.AsString = '04' then
                      CST_COFINS := cstcofins04;
                    if dm1.qrySped_C170CST_COFINS.AsString = '05' then
                      CST_COFINS := cstcofins05;
                    if dm1.qrySped_C170CST_COFINS.AsString = '06' then
                      CST_COFINS := cstcofins06;
                    if dm1.qrySped_C170CST_COFINS.AsString = '07' then
                      CST_COFINS := cstcofins07;
                    if dm1.qrySped_C170CST_COFINS.AsString = '08' then
                      CST_COFINS := cstcofins08;
                    if dm1.qrySped_C170CST_COFINS.AsString = '09' then
                      CST_COFINS := cstcofins09;
                    if dm1.qrySped_C170CST_COFINS.AsString = '49' then
                      CST_COFINS := cstcofins49;
                    if dm1.qrySped_C170CST_COFINS.AsString = '50' then
                      CST_COFINS := cstcofins50;
                    if dm1.qrySped_C170CST_COFINS.AsString = '51' then
                      CST_COFINS := cstcofins51;
                    if dm1.qrySped_C170CST_COFINS.AsString = '52' then
                      CST_COFINS := cstcofins52;
                    if dm1.qrySped_C170CST_COFINS.AsString = '53' then
                      CST_COFINS := cstcofins53;
                    if dm1.qrySped_C170CST_COFINS.AsString = '54' then
                      CST_COFINS := cstcofins54;
                    if dm1.qrySped_C170CST_COFINS.AsString = '55' then
                      CST_COFINS := cstcofins55;
                    if dm1.qrySped_C170CST_COFINS.AsString = '56' then
                      CST_COFINS := cstcofins56;
                    if dm1.qrySped_C170CST_COFINS.AsString = '60' then
                      CST_COFINS := cstcofins60;
                    if dm1.qrySped_C170CST_COFINS.AsString = '61' then
                      CST_COFINS := cstcofins61;
                    if dm1.qrySped_C170CST_COFINS.AsString = '62' then
                      CST_COFINS := cstcofins62;
                    if dm1.qrySped_C170CST_COFINS.AsString = '63' then
                      CST_COFINS := cstcofins63;
                    if dm1.qrySped_C170CST_COFINS.AsString = '64' then
                      CST_COFINS := cstcofins64;
                    if dm1.qrySped_C170CST_COFINS.AsString = '65' then
                      CST_COFINS := cstcofins65;
                    if dm1.qrySped_C170CST_COFINS.AsString = '66' then
                      CST_COFINS := cstcofins66;
                    if dm1.qrySped_C170CST_COFINS.AsString = '67' then
                      CST_COFINS := cstcofins67;
                    if dm1.qrySped_C170CST_COFINS.AsString = '70' then
                      CST_COFINS := cstcofins70;
                    if dm1.qrySped_C170CST_COFINS.AsString = '71' then
                      CST_COFINS := cstcofins71;
                    if dm1.qrySped_C170CST_COFINS.AsString = '72' then
                      CST_COFINS := cstcofins72;
                    if dm1.qrySped_C170CST_COFINS.AsString = '73' then
                      CST_COFINS := cstcofins73;
                    if dm1.qrySped_C170CST_COFINS.AsString = '74' then
                      CST_COFINS := cstcofins74;
                    if dm1.qrySped_C170CST_COFINS.AsString = '75' then
                      CST_COFINS := cstcofins75;
                    if dm1.qrySped_C170CST_COFINS.AsString = '98' then
                      CST_COFINS := cstcofins98;
                    if dm1.qrySped_C170CST_COFINS.AsString = '99' then
                      CST_COFINS := cstcofins99;

                    VL_BC_COFINS := dm1.qrySped_C170vl_bc_cofins.AsCurrency;
                    ALIQ_COFINS_PERC :=
                      dm1.qrySped_C170aliq_cofins_perc.AsCurrency;
                    VL_COFINS := dm1.qrySped_C170VL_COFINS.AsCurrency;

                    if dm1.qrySped_C170aliq_cofins_perc.AsCurrency <= 0 then
                    begin
                      ALIQ_COFINS_PERC := 0.00;
                      VL_BC_COFINS := 0.00;
                      VL_COFINS := 0.00;
                    end;
                    COD_CTA := '01';
                  end; // fim bloco c170

                  dm1.qrySped_C170.Next;
                  codigo := codigo + 1;
                end; // fim do while c170
               end;
            end;
            // registro c190 REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04, 55 e 65)
          end; // fim do boco c100
          dm1.qrySped_C100.Next;
        end; // fim modelo 57
      end; // fim do while c100
    end;
  end;
end;

procedure TFrmSpedSP.btnExecuteClick(Sender: TObject);
begin
  try
    btnExecute.Enabled := false;
    memoError.Lines.Clear;
    if CbTipo.ItemIndex = 1 then
    begin
      if trim(Edit1.Text) = '' then
      begin
        ShowMessage
          ('Digite o número do recibo do sped declarado anteriomente!');
        Edit1.SetFocus;
        exit;
      end;
    end;
    GeraSped;
    if trim(memoError.Text) <> '' then
    begin
      if MessageBox(0, 'Sped está com erro!' + #13 + 'Deseja visualizar erro?',
        'Sped Contribuições', +mb_YesNo) = 6 then
      begin
        ShowMessage(memoError.Text);
      end;
    end
    else
      ShowMessage('Sped Contribuições Gerado com sucesso');
  finally
    btnExecute.Enabled := true;
  end;
end;

procedure TFrmSpedSP.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSpedSP.cbContadorExit(Sender: TObject);
begin
  NomeCaminho;
end;

procedure TFrmSpedSP.cbEmpresaExit(Sender: TObject);
begin
  NomeCaminho;
end;

procedure TFrmSpedSP.dtFimExit(Sender: TObject);
begin
  dtIni.Date := StartOfTheMonth(dtFim.Date);
  NomeCaminho;
end;

procedure TFrmSpedSP.dtIniExit(Sender: TObject);
begin
  dtFim.Date := EndOfTheMonth(dtIni.Date);
  NomeCaminho;
end;

procedure TFrmSpedSP.FormActivate(Sender: TObject);
begin
 // dm1.vForm := nil;
 // dm1.vForm := self;
 // dm1.GetComponentes;
end;

procedure TFrmSpedSP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 FrmSpedSP := nil;
end;

procedure TFrmSpedSP.FormCreate(Sender: TObject);
begin
  dtIni.Date := StartOfTheMonth(now);
  dtFim.Date := EndOfTheMonth(now);

  DadosSped.qryContador.Close;
  DadosSped.qryContador.Open;

  DadosSped.qryEmpresa.Close;
  DadosSped.qryEmpresa.Open;

  cbEmpresa.KeyValue := dm.SDS_EmpresaCODIGO.Value;
  cbContador.KeyValue := 1;

  NomeCaminho;
end;

procedure TFrmSpedSP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnExecute.Click;

  if Key = VK_ESCAPE then
    btnSair.Click;
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFrmSpedSP.FormShow(Sender: TObject);
begin
//  dm1.CriaPastas;
end;

end.
