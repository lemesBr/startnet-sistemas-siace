unit FrmCadastroSNRHOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  InvokeRegistry, Rio, SOAPHTTPClient,XSBuiltIns, DB;

type
  TFCadastroSNRHOS = class(TForm)
    pgcSNRHOS: TPageControl;
    tbGrid: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbGerarBoletosSiace: TSpeedButton;
    Grid: TDBGrid;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edtPesquisa: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tbInsert: TTabSheet;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    Label5: TLabel;
    Bevel3: TBevel;
    Label6: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label7: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label8: TLabel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label9: TLabel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label10: TLabel;
    Bevel12: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel13: TBevel;
    Label14: TLabel;
    Bevel16: TBevel;
    mmResponse: TMemo;
    edtNacionalidade: TLabeledEdit;
    edtDataNasc: TDateTimePicker;
    edtCPF: TLabeledEdit;
    cbxTipoDoc: TComboBox;
    edtNDoc: TLabeledEdit;
    edtOrgaoExpedidor: TLabeledEdit;
    edtNomeCompleto: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtProfissao: TLabeledEdit;
    cbxGenero: TComboBox;
    edtTelefoneDDI: TLabeledEdit;
    edtTelefoneDDD: TLabeledEdit;
    edtTelefone: TLabeledEdit;
    edtCelularDDI: TLabeledEdit;
    edtCelularDDD: TLabeledEdit;
    edtCelular: TLabeledEdit;
    edtEndereco: TLabeledEdit;
    edtHospedePais: TLabeledEdit;
    edtHospedeEstado: TLabeledEdit;
    edtHospedeCidade: TLabeledEdit;
    edtProcedenciaPais: TLabeledEdit;
    edtProcedenciaEstado: TLabeledEdit;
    edtProcedenciaCidade: TLabeledEdit;
    edtDestinoPais: TLabeledEdit;
    edtDestinoEstado: TLabeledEdit;
    edtDestinoCidade: TLabeledEdit;
    cbxMotivoViagem: TComboBox;
    cbxMeioTransporte: TComboBox;
    edtNumeroHospedes: TLabeledEdit;
    edtUHN: TLabeledEdit;
    edtDataPrevEntrada: TDateTimePicker;
    edtDataPrevSaida: TDateTimePicker;
    edtObs: TLabeledEdit;
    HTTPRIO: THTTPRIO;
    edtChaveAcesso: TLabeledEdit;
    Bevel14: TBevel;
    SpeedButton4: TSpeedButton;
    edtHospede: TEdit;
    Label13: TLabel;
    spbCancelar: TSpeedButton;
    btnEnviar: TSpeedButton;
    dsUp: TDataSource;
    tbCheckin: TTabSheet;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Bevel15: TBevel;
    edtDataCheckinOUout: TDateTimePicker;
    lblCheckinOUout: TLabel;
    procedure btnEnviarClick(Sender: TObject);
    procedure HTTPRIOAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbIncluirClick(Sender: TObject);
    procedure spbGerarBoletosSiaceClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetValidTextFromTo(str, strIni, strFin: string): string;
    procedure LimpaCampos;
  end;

var
  FCadastroSNRHOS: TFCadastroSNRHOS;

implementation

uses UntHotelUp, ConsClientes, ModulodeDados, uDMMovimentacao;

{$R *.dfm}

procedure TFCadastroSNRHOS.btnEnviarClick(Sender: TObject);
var
  wsDados: fnrhRequest;
begin
  wsDados:= fnrhRequest.Create;
  wsDados.snnumcpf:= edtCPF.Text;
  wsDados.sntipdoc:= cbxTipoDoc.Text;
  wsDados.snnumdoc:= edtNDoc.Text;
  wsDados.snorgexp:= edtOrgaoExpedidor.Text;
  wsDados.snnomecompleto:= edtNomeCompleto.Text;
  wsDados.snemail:= edtEmail.Text;
  wsDados.snocupacao:= edtProfissao.Text;
  wsDados.snnacionalidade:= edtNacionalidade.Text;
  wsDados.sndtnascimento:= TXSDateTime(DateTimeToXSDateTime(edtDataNasc.Date,false));
  wsDados.snsexo:= cbxGenero.Text;
  wsDados.sncelularddd:= edtCelularDDD.Text;
  wsDados.sncelularddi:= edtCelularDDI.Text;
  wsDados.sncelularnum:= edtCelular.Text;
  wsDados.sntelefoneddd:= edtTelefoneDDD.Text;
  wsDados.sntelefoneddi:= edtTelefoneDDI.Text;
  wsDados.sntelefonenum:= edtTelefone.Text;
  wsDados.snresidencia:= edtEndereco.Text;
  wsDados.snpaisres:= edtHospedePais.Text;
  wsDados.snestadores:= edtHospedeEstado.Text;
  wsDados.sncidaderes:= edtHospedeCidade.Text;
  wsDados.bgstdscpais:= edtProcedenciaPais.Text;
  wsDados.bgstdscpaisdest:= edtDestinoPais.Text;
  wsDados.bgstdscestado:= edtProcedenciaEstado.Text;
  wsDados.bgstdscestadodest:= edtDestinoEstado.Text;
  wsDados.bgstdsccidade:= edtProcedenciaCidade.Text;
  wsDados.bgstdsccidadedest:= edtDestinoCidade.Text;
  wsDados.snmotvia:= '0' + IntToStr(cbxMotivoViagem.ItemIndex);
  wsDados.sntiptran:= '0' + IntToStr(cbxMeioTransporte.ItemIndex);
  wsDados.snprevent:= TXSDateTime(DateTimeToXSDateTime(edtDataPrevEntrada.Date,false));
  wsDados.snprevsai:= TXSDateTime(DateTimeToXSDateTime(edtDataPrevSaida.Date,false));
  wsDados.snobs:= edtObs.Text;
  wsDados.snnumhosp:= edtNumeroHospedes.Text;
  wsDados.snuhnum:= edtUHN.Text;

  if edtChaveAcesso.EditLabel.Caption = 'Número da FNRH *' then
    GetFnrhWs(False,EmptyStr,HTTPRIO).fnrhAtualizar(edtChaveAcesso.Hint,edtChaveAcesso.Text,wsDados)
  else
  if edtChaveAcesso.EditLabel.Caption = 'Chave de Acesso *'then
    GetFnrhWs(False,EmptyStr,HTTPRIO).fnrhInserir(edtChaveAcesso.Text,wsDados);
end;

function TFCadastroSNRHOS.GetValidTextFromTo(str, strIni,
  strFin: string): string;
var
  i, nIni, nFin: Integer;
  cChar: PChar;
begin
  Result := '';
  nIni := Pos(strIni, str);
  nFin := Pos(strFin, str);
  if (nFin > 0) then
  begin
    { Apontando para o endereço do primeiro
      caracter da sub-string}
    cChar := Addr(str[nIni + Length(strIni)]);
    for i := nIni + Length(strIni) to nFin - 1 do
    begin
      { Verificando se o char do endereço não
        trata-se de um caracter indesejável }
      if (not (cChar^ in [#0, #13, #9, #10])) then
        Result := Result + cChar^;
      Inc(cChar);
    end;
    { Retira espaços indesejáveis }
    Result := Trim(Result);
    if Result = EmptyStr then
      Result:= 'Não Preencido';
  end;
end;

procedure TFCadastroSNRHOS.HTTPRIOAfterExecute(const MethodName: String;
  SOAPResponse: TStream);
begin
  SOAPResponse.Position := 0;
  mmResponse.Lines.LoadFromStream(SOAPResponse);
  mmResponse.Text:= GetValidTextFromTo(mmResponse.Text,'<return>','</return>');
  if Pos('SNRHos-MS0001',mmResponse.Text) > 0 then
  begin
    dsUp.DataSet.Insert;
    dsUp.DataSet.FieldByName('ID_CLIENTE').AsInteger:= edtHospede.Tag;
    dsUp.DataSet.FieldByName('NACIONALIDADE').AsString:= edtNacionalidade.Text;
    dsUp.DataSet.FieldByName('DATA_NASC').AsDateTime:= edtDataNasc.Date;
    dsUp.DataSet.FieldByName('CPF').AsString:= edtCPF.Text;
    dsUp.DataSet.FieldByName('TIPO_DOCUMENTO').AsString:= cbxTipoDoc.Text;
    dsUp.DataSet.FieldByName('N_DOCUMENTO').AsString:= edtNDoc.Text;
    dsUp.DataSet.FieldByName('ORGAO_EXPEDIDOR').AsString:= edtOrgaoExpedidor.Text;
    dsUp.DataSet.FieldByName('NOME_COMPLETO').AsString:= edtNomeCompleto.Text;
    dsUp.DataSet.FieldByName('EMAIL').AsString:= edtEmail.Text;
    dsUp.DataSet.FieldByName('PROFISSAO').AsString:= edtProfissao.Text;
    dsUp.DataSet.FieldByName('GENERO').AsString:= cbxGenero.Text;
    dsUp.DataSet.FieldByName('DDI_TELEFONE').AsString:= edtTelefoneDDI.Text;
    dsUp.DataSet.FieldByName('DDD_TELEFONE').AsString:= edtTelefoneDDD.Text;
    dsUp.DataSet.FieldByName('TELEFONE').AsString:= edtTelefone.Text;
    dsUp.DataSet.FieldByName('DDI_CELULAR').AsString:= edtCelularDDI.Text;
    dsUp.DataSet.FieldByName('DDD_CELULAR').AsString:= edtCelularDDD.Text;
    dsUp.DataSet.FieldByName('CELULAR').AsString:= edtCelular.Text;
    dsUp.DataSet.FieldByName('ENDERECO').AsString:= edtEndereco.Text;
    dsUp.DataSet.FieldByName('PAIS_HOSPEDE').AsString:= edtHospedePais.Text;
    dsUp.DataSet.FieldByName('ESTADO_HOSPEDE').AsString:= edtHospedeEstado.Text;
    dsUp.DataSet.FieldByName('CIDADE_HOSPEDE').AsString:= edtHospedeCidade.Text;
    dsUp.DataSet.FieldByName('PAIS_PROCEDENCIA').AsString:= edtProcedenciaPais.Text;
    dsUp.DataSet.FieldByName('ESTADO_PROCEDENCIA').AsString:= edtProcedenciaEstado.Text;
    dsUp.DataSet.FieldByName('CIDADE_PROCEDENCIA').AsString:= edtProcedenciaCidade.Text;
    dsUp.DataSet.FieldByName('MOTIVO_VIAGEM').AsInteger:= cbxMotivoViagem.ItemIndex;
    dsUp.DataSet.FieldByName('MEIO_TRANSPORTE').AsInteger:= cbxMeioTransporte.ItemIndex;
    dsUp.DataSet.FieldByName('N_HOSPEDES').AsInteger:= StrToInt(edtNumeroHospedes.text);
    dsUp.DataSet.FieldByName('UH_N').AsInteger:= StrToInt(edtUHN.text);
    dsUp.DataSet.FieldByName('PREVISAO_ENTRADA').AsDateTime:= edtDataPrevEntrada.DateTime;
    dsUp.DataSet.FieldByName('PREVISAO_SAIDA').AsDateTime:= edtDataPrevSaida.DateTime;
    dsUp.DataSet.FieldByName('OBS').AsString:= edtObs.Text;
    dsUp.DataSet.FieldByName('CHAVE_ACESSO').AsString:= edtChaveAcesso.Text;
    dsUp.DataSet.FieldByName('N_FNRH').AsString:= GetValidTextFromTo(mmResponse.Text,'(',')');
    dsUp.DataSet.Post;
    Application.MessageBox('Registro inserido.','Sucesso',MB_ICONINFORMATION);
    pgcSNRHOS.ActivePage:= tbGrid;
  end
  else
  if Pos('SNRHos-MS0002',mmResponse.Text) > 0 then
  begin
    dsUp.DataSet.Edit;
    dsUp.DataSet.FieldByName('ID_CLIENTE').AsInteger:= edtHospede.Tag;
    dsUp.DataSet.FieldByName('NACIONALIDADE').AsString:= edtNacionalidade.Text;
    dsUp.DataSet.FieldByName('DATA_NASC').AsDateTime:= edtDataNasc.Date;
    dsUp.DataSet.FieldByName('CPF').AsString:= edtCPF.Text;
    dsUp.DataSet.FieldByName('TIPO_DOCUMENTO').AsString:= cbxTipoDoc.Text;
    dsUp.DataSet.FieldByName('N_DOCUMENTO').AsString:= edtNDoc.Text;
    dsUp.DataSet.FieldByName('ORGAO_EXPEDIDOR').AsString:= edtOrgaoExpedidor.Text;
    dsUp.DataSet.FieldByName('NOME_COMPLETO').AsString:= edtNomeCompleto.Text;
    dsUp.DataSet.FieldByName('EMAIL').AsString:= edtEmail.Text;
    dsUp.DataSet.FieldByName('PROFISSAO').AsString:= edtProfissao.Text;
    dsUp.DataSet.FieldByName('GENERO').AsString:= cbxGenero.Text;
    dsUp.DataSet.FieldByName('DDI_TELEFONE').AsString:= edtTelefoneDDI.Text;
    dsUp.DataSet.FieldByName('DDD_TELEFONE').AsString:= edtTelefoneDDD.Text;
    dsUp.DataSet.FieldByName('TELEFONE').AsString:= edtTelefone.Text;
    dsUp.DataSet.FieldByName('DDI_CELULAR').AsString:= edtCelularDDI.Text;
    dsUp.DataSet.FieldByName('DDD_CELULAR').AsString:= edtCelularDDD.Text;
    dsUp.DataSet.FieldByName('CELULAR').AsString:= edtCelular.Text;
    dsUp.DataSet.FieldByName('ENDERECO').AsString:= edtEndereco.Text;
    dsUp.DataSet.FieldByName('PAIS_HOSPEDE').AsString:= edtHospedePais.Text;
    dsUp.DataSet.FieldByName('ESTADO_HOSPEDE').AsString:= edtHospedeEstado.Text;
    dsUp.DataSet.FieldByName('CIDADE_HOSPEDE').AsString:= edtHospedeCidade.Text;
    dsUp.DataSet.FieldByName('PAIS_PROCEDENCIA').AsString:= edtProcedenciaPais.Text;
    dsUp.DataSet.FieldByName('ESTADO_PROCEDENCIA').AsString:= edtProcedenciaEstado.Text;
    dsUp.DataSet.FieldByName('CIDADE_PROCEDENCIA').AsString:= edtProcedenciaCidade.Text;
    dsUp.DataSet.FieldByName('MOTIVO_VIAGEM').AsInteger:= cbxMotivoViagem.ItemIndex;
    dsUp.DataSet.FieldByName('MEIO_TRANSPORTE').AsInteger:= cbxMeioTransporte.ItemIndex;
    dsUp.DataSet.FieldByName('N_HOSPEDES').AsInteger:= StrToInt(edtNumeroHospedes.text);
    dsUp.DataSet.FieldByName('UH_N').AsInteger:= StrToInt(edtUHN.text);
    dsUp.DataSet.FieldByName('PREVISAO_ENTRADA').AsDateTime:= edtDataPrevEntrada.DateTime;
    dsUp.DataSet.FieldByName('PREVISAO_SAIDA').AsDateTime:= edtDataPrevSaida.DateTime;
    dsUp.DataSet.FieldByName('OBS').AsString:= edtObs.Text;
    dsUp.DataSet.Post;
    Application.MessageBox('Registro Atualizado.','Sucesso',MB_ICONINFORMATION);
    pgcSNRHOS.ActivePage:= tbGrid;
  end
  else
  if Pos('SNRHos-MS0003',mmResponse.Text) > 0 then
  begin
    Application.MessageBox('Checkin realizado.','Sucesso',MB_ICONINFORMATION);
    pgcSNRHOS.ActivePage:= tbGrid;
  end
  else
  if Pos('SNRHos-MS0004',mmResponse.Text) > 0 then
  begin
    Application.MessageBox('Checkout realizado.','Sucesso',MB_ICONINFORMATION);
    pgcSNRHOS.ActivePage:= tbGrid;
  end;

  if Pos('SNRHos-ME0001',mmResponse.Text) > 0 then
    Application.MessageBox('Tipo de dado inválido.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0002',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador de domínio não localizado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0003',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador de território não localizado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0004',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador de meio de hospedagem não localizado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0005',mmResponse.Text) > 0 then
    Application.MessageBox('Chave de acesso não localizado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0006',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador de FNRH não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0007',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador número da FNRH não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0008',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador número da FNRH status não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0009',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador status não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0010',mmResponse.Text) > 0 then
    Application.MessageBox('Documento do hóspede inexistente.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0011',mmResponse.Text) > 0 then
    Application.MessageBox('Atributo obrigatório não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0012',mmResponse.Text) > 0 then
    Application.MessageBox('País não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0013',mmResponse.Text) > 0 then
    Application.MessageBox('UF não encontrada.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0014',mmResponse.Text) > 0 then
    Application.MessageBox('UF inválida.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0015',mmResponse.Text) > 0 then
    Application.MessageBox('Cidade não encontrada.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0016',mmResponse.Text) > 0 then
    Application.MessageBox('Cidade inválida.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0017',mmResponse.Text) > 0 then
    Application.MessageBox('Motivo de viagem não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0018',mmResponse.Text) > 0 then
    Application.MessageBox('Tipo de transporte não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0019',mmResponse.Text) > 0 then
    Application.MessageBox('Chave de acesso inativa.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0020',mmResponse.Text) > 0 then
    Application.MessageBox('FNRH pertencente a outro meio de hospedagem.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0021',mmResponse.Text) > 0 then
    Application.MessageBox('Identificador motivo de reserva não encontrado.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0022',mmResponse.Text) > 0 then
    Application.MessageBox('Data de checkin inválida.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0023',mmResponse.Text) > 0 then
    Application.MessageBox('Data de checkout inválida.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0024',mmResponse.Text) > 0 then
    Application.MessageBox('Checkin não permitido.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0025',mmResponse.Text) > 0 then
    Application.MessageBox('Checkout não permitido.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0026',mmResponse.Text) > 0 then
    Application.MessageBox('CPF inválido.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0027',mmResponse.Text) > 0 then
    Application.MessageBox('CPF ausente.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0028',mmResponse.Text) > 0 then
    Application.MessageBox('Certidão de nascimento ausente.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0029',mmResponse.Text) > 0 then
    Application.MessageBox('Hóspede pertencente ao MERCOSUL com passaporte ausente.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0030',mmResponse.Text) > 0 then
    Application.MessageBox('Hóspede pertencente ao MERCOSUL com carteira de identidade estrangeira ausente.','Sucesso',MB_ICONWARNING)
  else
  if Pos('SNRHos-ME0031',mmResponse.Text) > 0 then
    Application.MessageBox('Atualização de registro da FNRH não permitido.','Sucesso',MB_ICONWARNING);

  SOAPResponse.Position := 0;
end;

procedure TFCadastroSNRHOS.SpeedButton4Click(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    edtHospede.Text:= DM.DTS_Clientes.DataSet.fieldbyname('NOME_RS').AsString;
    edtHospede.Tag:=  DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFCadastroSNRHOS.FormCreate(Sender: TObject);
begin
  dsUp.DataSet.Open;
  pgcSNRHOS.ActivePage:= tbGrid;
end;

procedure TFCadastroSNRHOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsUp.DataSet.Close;
end;

procedure TFCadastroSNRHOS.spbCancelarClick(Sender: TObject);
begin
  pgcSNRHOS.ActivePage:= tbGrid;
end;

procedure TFCadastroSNRHOS.spbIncluirClick(Sender: TObject);
begin
  LimpaCampos;
  edtChaveAcesso.EditLabel.Caption:= 'Chave de Acesso *';
  pgcSNRHOS.ActivePage:= tbInsert;
end;

procedure TFCadastroSNRHOS.spbGerarBoletosSiaceClick(Sender: TObject);
begin
  if not dsUp.DataSet.IsEmpty then
  begin
    LimpaCampos;
    edtHospede.Text:= dsUp.DataSet.FieldByName('NOME_COMPLETO').AsString;
    edtHospede.Tag:= dsUp.DataSet.FieldByName('ID_CLIENTE').AsInteger;
    edtNacionalidade.Text:= dsUp.DataSet.FieldByName('NACIONALIDADE').AsString;
    edtDataNasc.Date:= dsUp.DataSet.FieldByName('DATA_NASC').AsDateTime;
    edtCPF.Text:= dsUp.DataSet.FieldByName('CPF').AsString;
    cbxTipoDoc.ItemIndex:= 0;
    edtNDoc.Text:= dsUp.DataSet.FieldByName('N_DOCUMENTO').AsString;
    edtOrgaoExpedidor.Text:= dsUp.DataSet.FieldByName('ORGAO_EXPEDIDOR').AsString;
    edtNomeCompleto.Text:= dsUp.DataSet.FieldByName('NOME_COMPLETO').AsString;
    edtEmail.Text:= dsUp.DataSet.FieldByName('EMAIL').AsString;
    edtProfissao.Text:= dsUp.DataSet.FieldByName('PROFISSAO').AsString;
    cbxGenero.ItemIndex:= 0;
    edtTelefoneDDI.Text:= dsUp.DataSet.FieldByName('DDI_TELEFONE').AsString;
    edtTelefoneDDD.Text:= dsUp.DataSet.FieldByName('DDD_TELEFONE').AsString;
    edtTelefone.Text:= dsUp.DataSet.FieldByName('TELEFONE').AsString;
    edtCelularDDI.Text:= dsUp.DataSet.FieldByName('DDI_CELULAR').AsString;
    edtCelularDDD.Text:= dsUp.DataSet.FieldByName('DDD_CELULAR').AsString;
    edtCelular.Text:= dsUp.DataSet.FieldByName('CELULAR').AsString;
    edtEndereco.Text:= dsUp.DataSet.FieldByName('ENDERECO').AsString;
    edtHospedePais.Text:= dsUp.DataSet.FieldByName('PAIS_HOSPEDE').AsString;
    edtHospedeEstado.Text:= dsUp.DataSet.FieldByName('ESTADO_HOSPEDE').AsString;
    edtHospedeCidade.Text:= dsUp.DataSet.FieldByName('CIDADE_HOSPEDE').AsString;
    edtProcedenciaPais.Text:= dsUp.DataSet.FieldByName('PAIS_PROCEDENCIA').AsString;
    edtProcedenciaEstado.Text:= dsUp.DataSet.FieldByName('ESTADO_PROCEDENCIA').AsString;
    edtProcedenciaCidade.Text:= dsUp.DataSet.FieldByName('CIDADE_PROCEDENCIA').AsString;
    cbxMotivoViagem.ItemIndex:= dsUp.DataSet.FieldByName('MOTIVO_VIAGEM').AsInteger;
    cbxMeioTransporte.ItemIndex:= dsUp.DataSet.FieldByName('MEIO_TRANSPORTE').AsInteger;
    edtNumeroHospedes.text:= IntToStr(dsUp.DataSet.FieldByName('N_HOSPEDES').AsInteger);
    edtUHN.text:= IntToStr(dsUp.DataSet.FieldByName('UH_N').AsInteger);
    edtDataPrevEntrada.DateTime:= dsUp.DataSet.FieldByName('PREVISAO_ENTRADA').AsDateTime;
    edtDataPrevSaida.DateTime:= dsUp.DataSet.FieldByName('PREVISAO_SAIDA').AsDateTime;
    edtObs.Text:= dsUp.DataSet.FieldByName('OBS').AsString;
    edtChaveAcesso.Text:= dsUp.DataSet.FieldByName('N_FNRH').AsString;
    edtChaveAcesso.Hint:= dsUp.DataSet.FieldByName('CHAVE_ACESSO').AsString;
    edtChaveAcesso.EditLabel.Caption:= 'Número da FNRH *';
    pgcSNRHOS.ActivePage:= tbInsert;
  end;
end;

procedure TFCadastroSNRHOS.LimpaCampos;
begin
  edtHospede.Tag:= 0;
  edtNacionalidade.Text:= '';
  edtDataNasc.Date:= Now;
  edtCPF.Text:= '';
  cbxTipoDoc.ItemIndex:= 0;
  edtNDoc.Text:= '';
  edtOrgaoExpedidor.Text:= '';
  edtNomeCompleto.Text:= '';
  edtEmail.Text:= '';
  edtProfissao.Text:= '';
  cbxGenero.ItemIndex:= 0;
  edtTelefoneDDI.Text:= '';
  edtTelefoneDDD.Text:= '';
  edtTelefone.Text:= '';
  edtCelularDDI.Text:= '';
  edtCelularDDD.Text:= '';
  edtCelular.Text:= '';
  edtEndereco.Text:= '';
  edtHospedePais.Text:= '';
  edtHospedeEstado.Text:= '';
  edtHospedeCidade.Text:= '';
  edtProcedenciaPais.Text:= '';
  edtProcedenciaEstado.Text:= '';
  edtProcedenciaCidade.Text:= '';
  cbxMotivoViagem.ItemIndex:= 0;
  cbxMeioTransporte.ItemIndex:= 0;
  edtNumeroHospedes.text:= '';
  edtUHN.text:= '';
  edtDataPrevEntrada.DateTime:= Now;
  edtDataPrevSaida.DateTime:= Now;
  edtObs.Text:= '';
  edtChaveAcesso.Text:= '';
end;

procedure TFCadastroSNRHOS.SpeedButton1Click(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    dsUp.DataSet.Filter:= 'ID_CLIENTE = ' + IntToStr(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
    dsUp.DataSet.Filtered:= True;
    if not dsUp.DataSet.IsEmpty then
      edtPesquisa.Text:= DM.DTS_Clientes.DataSet.fieldbyname('NOME_RS').AsString
    else
      dsUp.DataSet.Filtered:= False;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFCadastroSNRHOS.SpeedButton5Click(Sender: TObject);
begin
  if lblCheckinOUout.Caption = 'Data de Checkin' then
  begin
    GetFnrhWs(False,EmptyStr,HTTPRIO).fnrhCheckin(dsUp.DataSet.fieldbyname('CHAVE_ACESSO').AsString,
    dsUp.DataSet.fieldbyname('N_FNRH').AsString,TXSDateTime(DateTimeToXSDateTime(edtDataCheckinOUout.Date,false)));
  end
  else
  begin
    GetFnrhWs(False,EmptyStr,HTTPRIO).fnrhCheckout(dsUp.DataSet.fieldbyname('CHAVE_ACESSO').AsString,
    dsUp.DataSet.fieldbyname('N_FNRH').AsString,TXSDateTime(DateTimeToXSDateTime(edtDataCheckinOUout.Date,false)));
  end;
end;

procedure TFCadastroSNRHOS.SpeedButton2Click(Sender: TObject);
begin
  if not dsUp.DataSet.IsEmpty then
  begin
    pgcSNRHOS.ActivePage:= tbCheckin;
    lblCheckinOUout.Caption:= 'Data de Checkin';
  end;
end;

procedure TFCadastroSNRHOS.SpeedButton3Click(Sender: TObject);
begin
  if not dsUp.DataSet.IsEmpty then
  begin
    pgcSNRHOS.ActivePage:= tbCheckin;
    lblCheckinOUout.Caption:= 'Data de CheckinOut';
  end;
end;

end.
