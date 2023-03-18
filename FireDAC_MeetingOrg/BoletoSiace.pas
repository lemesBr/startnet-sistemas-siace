unit BoletoSiace;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmBoletoSiace = class(TForm)
    Bevel1: TBevel;
    cbxCidade: TComboBox;
    Label1: TLabel;
    cbxMes: TComboBox;
    cbxAno: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    spbGerarBoleto: TSpeedButton;
    Bevel2: TBevel;
    spbGerarBoletosSiace: TSpeedButton;
    spbCancelar: TSpeedButton;
    procedure spbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spbGerarBoletoClick(Sender: TObject);
    procedure spbGerarBoletosSiaceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBoletoSiace: TFrmBoletoSiace;

implementation

uses ModulodeDados, Principal, TitulosBancarios, Udmcob, Titulos, OnGuard, OgUtil,
  ModulodeDadosConsultas, ModuleDados1;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FA, $6F, $8D, $AB, $FC, $DF, $B4);

{$R *.dfm}

procedure TFrmBoletoSiace.spbCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBoletoSiace.FormShow(Sender: TObject);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT distinct CIDADE FROM CLIENTES');
  qr.Open;

  cbxCidade.Items.Clear;
  cbxCidade.Items.Add('TODOS');
  while not qr.Eof do
  begin
    cbxCidade.Items.Add(qr.fieldbyname('CIDADE').AsString);
    qr.Next;
  end;
  cbxCidade.ItemIndex:= 0;
  qr.Destroy;
end;

procedure TFrmBoletoSiace.spbGerarBoletoClick(Sender: TObject);
var
  qr,qrCrediario: TFDQuery;
  Mes,Relatorio: string;
  Gerados: Integer;
begin
  Gerados:= 0;
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT distinct '+
                'CT.ID AS ID,'+
                'CL.CIDADE AS CIDADE, '+
                'PL.ID_CLIENTE AS CLIENTE, '+
                'PL.VALOR AS VALOR,'+
                'PL.NUMERO AS NUMERO,'+
                'CL.NOME_RS AS NOME_SACADO,'+
                'PL.ID AS ID_PARCELA '+
             'FROM MV_CONTRATO CT '+
                'JOIN MV_CT_PARCELA PL ON (PL.ID_CONTRATO = CT.ID) '+
                'JOIN CLIENTES CL ON (CL.CODIGO = PL.ID_CLIENTE) '+
                'WHERE CT.SITUACAO = ''A'' AND CT.CONTRATO = ''SIACE SISTEMAS''');
  if cbxCidade.Text <> 'TODOS' then
    qr.SQL.Add(' AND CL.CIDADE = ' + QuotedStr(cbxCidade.Text));

  qr.Open;
  if not qr.IsEmpty then
  begin
    if cbxMes.Text='Janeiro' then     Mes:='01';
    if cbxMes.Text='Fevereiro' then   Mes:='02';
    if cbxMes.Text='Março' then       Mes:='03';
    if cbxMes.Text='Abril' then       Mes:='04';
    if cbxMes.Text='Maio' then        Mes:='05';
    if cbxMes.Text='Junho' then       Mes:='06';
    if cbxMes.Text='Julho' then       Mes:='07';
    if cbxMes.Text='Agosto' then      Mes:='08';
    if cbxMes.Text='Setembro' then    Mes:='09';
    if cbxMes.Text='Outubro' then     Mes:='10';
    if cbxMes.Text='Novembro' then    Mes:='11';
    if cbxMes.Text='Dezembro' then    Mes:='12';

    while not qr.eof do
    begin
      qrCrediario:= TFDQuery.Create(nil);
      qrCrediario.Connection:= DM.Coneccao;
      qrCrediario.SQL.Add('DELETE FROM CREDIARIO WHERE ID_CONTRATO = ' +
                  IntToStr(qr.fieldbyname('ID').AsInteger));
      qrCrediario.ExecSQL;
      qrCrediario.SQL.Clear;
      qrCrediario.SQL.Add('SELECT * FROM CREDIARIO');
      qrCrediario.Open;
      qrCrediario.FieldByName('CODIGO').Required:= False;
      qrCrediario.Insert;
      qrCrediario.FieldByName('CODIGO_COMPRA').Value:= null;
      qrCrediario.FieldByName('CODIGO_CLIENTE').Value:=
      qr.FieldByName('CLIENTE').AsInteger;
      qrCrediario.FieldByName('DATA_COMPRA').AsDateTime:= now;
      qrCrediario.FieldByName('DATA_VENCIMENTO').AsDateTime:= StrToDate(FormatDateTime('dd',now) +'/'+ Mes +'/' + cbxAno.text);
      qrCrediario.FieldByName('HISTORICO').AsString:=
      'Contrato Nº'+' '+IntToStr(qr.FieldByName('ID').asInteger);
      qrCrediario.FieldByName('HISTORICO').AsString:= FormPrincipal.UserLogado;
      qrCrediario.FieldByName('SITUACAO').AsString:= 'A';
      qrCrediario.FieldByName('VALOR_COMPRA').AsFloat:=
      qr.FieldByName('VALOR').AsFloat;
      qrCrediario.FieldByName('VALOR_JUROS').Value:= 0;
      qrCrediario.FieldByName('VALOR_ACRESCIMO').Value:= 0;
      qrCrediario.FieldByName('VALOR_DESCONTO').Value:= 0;
      qrCrediario.FieldByName('VALOR_PAGO').Value:= 0;
      qrCrediario.FieldByName('PARCELA').AsInteger:=
      qr.FieldByName('NUMERO').AsInteger;
      qrCrediario.FieldByName('COD_EMPRESA').AsInteger:=
      DM.SDS_EmpresaCODIGO.Value;
      qrCrediario.FieldByName('TIPO').Value:= 'BOL';
      qrCrediario.FieldByName('NOME_SACADO').value:=
      qr.FieldByName('NOME_SACADO').Value;
      qrCrediario.FieldByName('MES').Value:= FormatDateTime('yyyy',now);
      qrCrediario.FieldByName('ANO').Value:= FormatDateTime('mm',now);
      qrCrediario.FieldByName('ID_CONTRATO').Value:=
      qr.FieldByName('ID').asInteger;
      qrCrediario.FieldByName('ID_CT_PARCELA').Value:=
      qr.FieldByName('ID_PARCELA').Value;
      qrCrediario.FieldByName('VLR_GRAFICA').Value:= null;
      qrCrediario.FieldByName('N_OS').Value:= null;
      qrCrediario.Post;

      Gerados:= Gerados + 1;
      qr.Next;
    end;
    qrCrediario.Destroy;
    qr.Destroy;
    Relatorio:= '||=======================||'+#13+
                '|| RETATÓRIO DE GERAÇÃO  '+#13+
                '||                       '+#13+
                '|| Gerados    : '+IntToStr(Gerados)+'     '+#13+
                '|| Vencimento : '+FormatDateTime('dd',now) +'/'+ Mes +'/' + cbxAno.text+'     '+#13+
                '|| Lancamento : '+DateToStr(now)+'     '+#13+
                '||=======================||';
   // Application.MessageBox(PAnsiChar(Relatorio),'Operação Concluida.',MB_ICONINFORMATION);
    MessageDlg((Relatorio), mtInformation,[mbOk], 0);
  end
  else
    Application.MessageBox('Nenhum contrato encontrato!','Atenção',MB_ICONWARNING);
end;

procedure TFrmBoletoSiace.spbGerarBoletosSiaceClick(Sender: TObject);
var
  qrCrediario: TFDQuery;
  Data: TDateTime;
  Chave: string;
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
  Credito: Currency;
begin
  qrCrediario:= TFDQuery.Create(nil);
  qrCrediario.Connection:= DM.Coneccao;
  qrCrediario.SQL.Add('SELECT CT.contrato AS CONTRATO,CR.CODIGO AS ID, '+
                      'CR.data_vencimento AS VENCIMENTO, '+
                      'CL.cpf_cnpj AS CPF_CNPJ, '+
                      'CL.CODIGO AS ID_CLIENTE '+
                      'FROM CREDIARIO CR '+
                      'INNER JOIN MV_CONTRATO CT ON (CT.ID = CR.id_contrato) '+
                      'INNER JOIN CLIENTES CL ON (CL.CODIGO = CR.codigo_cliente) '+
                      'WHERE CT.CONTRATO = ''SIACE SISTEMAS'' AND CR.situacao = ''A''');
  if cbxCidade.Text <> 'TODOS' then
    qrCrediario.SQL.Add(' AND CL.CIDADE = ' + QuotedStr(cbxCidade.Text));
  qrCrediario.Open;

  if not qrCrediario.IsEmpty then
  begin
    while not qrCrediario.Eof do
    begin
      try
        FrmTitulosBancarios:= TFrmTitulosBancarios.Create(nil);
        FrmTitulosBancarios.Tag:= 1;

        //Gera chave no boleto
        Data := StrToDate(FormatDateTime('dd',qrCrediario.fieldbyname('VENCIMENTO').AsDateTime)
         +'/'+ FormatDateTime('MM',qrCrediario.fieldbyname('VENCIMENTO').AsDateTime) +'/' +
        FormatDateTime('YYYY',qrCrediario.fieldbyname('VENCIMENTO').AsDateTime))+ 32;

        Key := EncryptionKey;
        Modifier := StringHashELF(qrCrediario.fieldbyname('CPF_CNPJ').asstring);
        ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
        InitRegCode(Key, '', Data, Code);
        Chave := BufferToHex(Code, SizeOf(Code));

        if DM.SDS_CONFIGURACOESCHS.TEXT = 'Y' then
        BEGIN
          DMC.SQLD_LIMITE.Active := False;
          DMC.CDS_LIMITE.Active := False;
          DMC.SQLD_LIMITE.Params[0].AsInteger := qrCrediario.fieldbyname('ID_CLIENTE').asinteger;
          DMC.SQLD_LIMITE.Active := True;
          DMC.CDS_LIMITE.Active := True;
          // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
          Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);

          if Credito > 0 THEN
          begin
            FrmTitulosBancarios.CHAVE :='Entre em contato com a Central fone 66-3555-1453..';
          end else
          begin
            FrmTitulosBancarios.CHAVE := CHAVE;
          end;
        end;

        FrmTitulosBancarios.ID_CREDIARIO:= qrCrediario.fieldbyname('ID').AsInteger;
        FrmTitulosBancarios.ShowModal;
      finally
        FreeAndNil(FrmTitulosBancarios);
      end;
      qrCrediario.Next;
    end;
  end
  else
    Application.MessageBox('Nenhum boleto foi gerada!','Atenção',MB_ICONWARNING);

  qrCrediario.Destroy;
end;

end.
