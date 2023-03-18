unit Unit_Gerar_Sintegra;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, ComCtrls, DateUtils,
 DBCtrls, Dateutil,
 Unit_Connect_SIntegra32, ExtCtrls, Placemnt, RxGIF, Inifiles;

type
 TSIntegra_ListFrm = class(TForm)
   GroupBox1: TGroupBox;
   ComboBox2: TComboBox;
   ComboBox3: TComboBox;
   Label2: TLabel;
   Label3: TLabel;
   BitBtn1: TBitBtn;
   QrySIntegra: TIBQuery;
   DateTimePicker1: TDateTimePicker;
   Label4: TLabel;
   Edit1: TEdit;
   Label6: TLabel;
   OpenDialog1: TOpenDialog;
   QrySintegra_Info: TIBQuery;
   DtsQrySintegra: TDataSource;
   QrySintegra_D: TIBQuery;
   BitBtn3: TBitBtn;
   RichEdit1: TRichEdit;
   BitBtn6: TBitBtn;
   BitBtn4: TBitBtn;
   BitBtn2: TBitBtn;
   Label7: TLabel;
   SaveDialog1: TSaveDialog;
   Panel9: TPanel;
   Label17: TLabel;
   Label18: TLabel;
   Label16: TLabel;
   Label1: TLabel;
   ProgressBar1: TProgressBar;
   FormStorage1: TFormStorage;
   BitBtn5: TBitBtn;

   procedure Add_Log(Log: string; Cor: TColor = clWindowText; Tamanho: byte = 10);
   function Sintegra_Process: boolean;
   function Trata_SIntegra_Str(TempStr: string): boolean;

   function sRegistro10(var Err_Msg: string): boolean;
   function sRegistro11(var Err_Msg: string): boolean;
   function sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro51(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro53(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro55(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro60(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro70(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
   function sRegistro90: boolean;

   procedure BitBtn1Click(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure FormCreate(Sender: TObject);
   procedure BitBtn3Click(Sender: TObject);
   procedure RichEdit1Change(Sender: TObject);
   procedure Edit1Change(Sender: TObject);
   procedure BitBtn6Click(Sender: TObject);
   procedure BitBtn4Click(Sender: TObject);
   procedure BitBtn2Click(Sender: TObject);
   procedure FormKeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure BitBtn5Click(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SIntegra_ListFrm: TSIntegra_ListFrm;
 DataHora_Inicial, DataHora_Final: TDatetime;
 quit_sintegra: boolean;
 Gera_R75: Boolean;                     //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!

implementation

uses UnitDataM1, UnitFuncoes;

{$R *.dfm}

procedure TSIntegra_ListFrm.Add_Log(Log: string; Cor: TColor; Tamanho: byte);
begin
 RichEdit1.SelAttributes.Color := Cor;
 RichEdit1.SelAttributes.Size := Tamanho;
 RichEdit1.Lines.Add(Log);
 application.ProcessMessages;
end;

function TSIntegra_ListFrm.Sintegra_Process: boolean;
begin
 progressbar1.stepit;

 Result := quit_sintegra;
 if Result then
  begin
   Add_Log('Geração de arquivo interrompida pelo usuário em ' + datetimetostr(now), clred);

   Bitbtn1.Enabled := True;
   Bitbtn4.Enabled := True;
   Bitbtn6.Enabled := True;
   GroupBox1.Enabled := True;
   panel9.Visible := False;
  end;
end;

function TSIntegra_ListFrm.Trata_SIntegra_Str(TempStr: string): boolean;
var
 sFile: TextFile;
begin
 Result := True;

 if TempStr[1] <> '-' then
  begin
   AssignFile(sFile, edit1.Text);

   if not fileexists(edit1.Text) then
    begin
     rewrite(sFile);
     Add_Log('Arquivo de saída criado: ' + edit1.Text, clgreen);
    end;

   Reset(sFile);
   Append(sFile);
   try
     WriteLn(sFile, TempStr);
   finally
     CloseFile(sFile);
    end;
  end
 else
  begin
   Add_Log(Copy(TempStr, 6, Length(TempStr)), clred);
   Result := False
  end;
end;

//Registro10 - Mestre do Estabelecimento - Indentifição do Estabelecimento informante
function TSIntegra_ListFrm.sRegistro10(var Err_Msg: string): boolean;
var
 TempStr, Cod_Convenio: string;
begin
 Cod_Convenio := '3';

 if not QrySintegra_Info.Active then
  begin
   with QrySintegra_Info do
    begin
     Close;
     UnPrepare;
     SQL.Clear;
     SQL.Add('SELECT * FROM sintegra_info');
     Prepare;
     Open;
    end;
  end;

 TempStr := Registro10(QrySintegra_Info.Fields.FieldByName('cgc').AsString,     //CGC
   QrySintegra_Info.Fields.FieldByName('insc_est').AsString,                    //IE
   QrySintegra_Info.Fields.FieldByName('nome_contribuinte').AsString,           //Nome_Contribuinte
   QrySintegra_Info.Fields.FieldByName('municipio').AsString,                   //Municipio
   QrySintegra_Info.Fields.FieldByName('uf').AsString,                          //UF
   QrySintegra_Info.Fields.FieldByName('fax').AsString,                         //Fax
   datetostr(DataHora_Inicial),                                                 //Data Inicial
   datetostr(DataHora_Final),                                                   //Data Final
   Cod_Convenio,                                                                //Convênio 76/03
   IntToStr(combobox2.ItemIndex + 1),                                           //InterEstaduais - com ou sem Subs. Trib.
   IntToStr(combobox3.ItemIndex + 1)                                            //Normal
   );

 Result := Trata_SIntegra_Str(TempStr);

 if not Result then
  begin
   Err_Msg := '    CNPJ: ' + QrySintegra_Info['cgc'] + #13 +
     '    IE: ' + QrySintegra_Info['insc_est'] + #13 +
     '    Nome: ' + QrySintegra_Info['nome_contribuinte'] + #13 +
     '    Municipio: ' + QrySintegra_Info['municipio'] + #13 +
     '    UF: ' + QrySintegra_Info['uf'] + #13 +
     '    Fax: ' + QrySintegra_Info['fax'] + #13 +
     '    Data Inicial: ' + datetostr(DataHora_Inicial) + #13 +
     '    Data Final: ' + datetostr(DataHora_Final) + #13 +
     '    Cod. Convênio: ' + Cod_Convenio + #13 +
     '    Cod. Natureza: ' + IntToStr(combobox2.ItemIndex + 1) + #13 +
     '    Cod. Finalidade: ' + IntToStr(combobox3.ItemIndex + 1);
  end;
end;

//Registro11 - Dados complementares do informante
function TSIntegra_ListFrm.sRegistro11(var Err_Msg: string): boolean;
var
 TempStr: string;
begin
 if not QrySintegra_Info.Active then
  begin
   with QrySintegra_Info do
    begin
     Close;
     UnPrepare;
     SQL.Clear;
     SQL.Add('SELECT * FROM sintegra_info');
     Prepare;
     Open;
    end;
  end;

 TempStr := Registro11(QrySintegra_Info.Fields.FieldByName('logradouro').AsString,    //Logradouro
   QrySintegra_Info.Fields.FieldByName('nro').AsString,                               //Número
   QrySintegra_Info.Fields.FieldByName('complemento').AsString,                       //Complemento
   QrySintegra_Info.Fields.FieldByName('bairro').AsString,                            //Bairro
   QrySintegra_Info.Fields.FieldByName('cep').AsString,                               //Cep
   QrySintegra_Info.Fields.FieldByName('nome_contato').AsString,                      //Nome do Contato
   QrySintegra_Info.Fields.FieldByName('telefone').AsString                           //Telefone
   );

 Result := Trata_SIntegra_Str(TempStr);

 if not Result then
  begin
   Err_Msg := '    Logradouro: ' + QrySintegra_Info.Fields.FieldByName('logradouro').AsString + #13 +
     '    Número: ' + QrySintegra_Info.Fields.FieldByName('nro').AsString + #13 +
     '    Complemento: ' + QrySintegra_Info.Fields.FieldByName('complemento').AsString + #13 +
     '    Bairro: ' + QrySintegra_Info.Fields.FieldByName('bairro').AsString + #13 +
     '    Cep: ' + QrySintegra_Info.Fields.FieldByName('cep').AsString + #13 +
     '    Contato: ' + QrySintegra_Info.Fields.FieldByName('nome_contato').AsString + #13 +
     '    Telefone: ' + QrySintegra_Info.Fields.FieldByName('telefone').AsString;
  end;
end;

//Registro50 - Registro de Total de Nota Fiscal
function TSIntegra_ListFrm.sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
begin
 Result := True;

 //Geração de Registro50 quanto a Saída de Nota Fiscal
 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM pedidos WHERE ');
   SQL.Add('(datahora_emissao BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''22''))');
   SQL.Add('ORDER BY datahora_emissao');

   ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
   ParamByName('datahora_fim').asdatetime := DataHora_Final;
   Prepare;
   Open;
  end;

 QrySintegra_D.DataSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT aliquota_icms, sum(subtotal) subtotal, sum(base_icms) base_icms, sum(valor_icms) valor_icms FROM pedidos_itens WHERE ');
   SQL.Add('cod_pedidos = :cod_pedidos');
   SQL.Add('GROUP BY aliquota_icms');

   Prepare;
   Open;
  end;

 if QrySintegra.RecordCount > 0 then
  begin
   while not QrySintegra.EOF do
    begin
     while not QrySintegra_D.EOF do
      begin
       num_nf := QrySintegra.Fields.FieldByName('num_nf').AsString;
       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF

       TempStr := Registro50(QrySintegra.Fields.FieldByName('cnpj_destinatario').AsString,  //CNPJ
         QrySintegra.Fields.FieldByName('ie_destinatario').AsString,                        //Insc_Est
         datetostr(QrySintegra.Fields.FieldByName('datahora_emissao').AsDateTime),          //Data_Emissao_Recebimento
         QrySintegra.Fields.FieldByName('uf_destinatario').AsString,                        //UF,
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                              //Modelo
         QrySintegra.Fields.FieldByName('serie_nf').AsString,                               //Serie
         num_nf,                                                                            //Nro
         QrySintegra.Fields.FieldByName('cfop').AsString,                                   //CFOP
         QrySintegra.Fields.FieldByName('emitente_nf').AsString,                            //Emitente
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('subtotal').AsFloat),          //Valor_Total
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms').AsFloat),         //Base_ICMS
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_icms').AsFloat),        //Valor_ICMS
         formatcurr('0.00', QrySintegra.FieldByName('valor_isento_icms').AsFloat),        //Isenta
         formatcurr('0.00', QrySintegra.FieldByName('outras_despesas').AsFloat),          //Outras
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat),     //Aliquota
         QrySintegra.Fields.FieldByName('situacao_nf').AsString                             //Situacao
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_Pedidos: ' + QrySintegra.Fields.FieldByName('cod_pedidos').AsString + #13 +
           '    CNPJ: ' + QrySintegra.Fields.FieldByName('cnpj_destinatario').AsString + #13 +
           '    IE: ' + QrySintegra.Fields.FieldByName('ie_destinatario').AsString + #13 +
           '    Emissao: ' + datetostr(QrySintegra.Fields.FieldByName('datahora_emissao').AsDateTime) + #13 +
           '    UF: ' + QrySintegra.Fields.FieldByName('uf_destinatario').AsString + #13 +
           '    Modelo: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie: ' + QrySintegra.Fields.FieldByName('serie_nf').AsString + #13 +
           '    Nro: ' + num_nf + #13 +
           '    CFOP: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
           '    Emitente: ' + QrySintegra.Fields.FieldByName('emitente_nf').AsString + #13 +
           '    Valor_Total: ' + QrySintegra_D.Fields.FieldByName('subtotal').AsString + #13 +
           '    Base ICMS: ' + QrySintegra_D.Fields.FieldByName('base_icms').AsString + #13 +
           '    Valor ICMS: ' + QrySintegra_D.Fields.FieldByName('valor_icms').AsString + #13 +
           '    Isenta: ' + QrySintegra.FieldByName('valor_isento_icms').AsString + #13 +
           '    Outras: ' + QrySintegra.FieldByName('outras_despesas').AsString + #13 +
           '    Aliquota: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
           '    Situacao: ' + QrySintegra.Fields.FieldByName('situacao_nf').AsString;
        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;
 QrySintegra_D.UnPrepare;
 QrySintegra_D.DataSource := nil;

 QrySintegra.Close;
 QrySintegra.UnPrepare;

 //Geração de Registro50 quanto a Entrada de Nota Fiscal
 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM nf_entrada WHERE ');
   SQL.Add('(datahora_recebimento BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''22''))');
   SQL.Add('ORDER BY datahora_recebimento');

   ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
   ParamByName('datahora_fim').asdatetime := DataHora_Final;
   Prepare;
   Open;
  end;

 QrySintegra_D.DataSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT aliquota_icms, sum(subtotal) subtotal, sum(base_icms) base_icms, sum(valor_icms) valor_icms FROM nf_entrada_itens WHERE ');
   SQL.Add('cod_nf_entrada = :cod_nf_entrada');
   SQL.Add('GROUP BY aliquota_icms');

   Prepare;
   Open;
  end;

 if (QrySintegra.RecordCount > 0) then
  begin
   while not QrySintegra.EOF do
    begin
     while not QrySintegra_D.EOF do
      begin
       num_nf := QrySintegra.Fields.FieldByName('num_nf').AsString;
       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
       //utilizan apenas 6 últimos digitos da NF

       TempStr := Registro50(QrySintegra.Fields.FieldByName('cnpj_fornecedor').AsString,    //CNPJ
         QrySintegra.Fields.FieldByName('ie_fornecedor').AsString,                          //Insc_Est
         datetostr(QrySintegra.Fields.FieldByName('datahora_recebimento').AsDateTime),      //Data_Emissao_Recebimento
         QrySintegra.Fields.FieldByName('uf_fornecedor').AsString,                          //UF
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                              //Modelo
         QrySintegra.Fields.FieldByName('serie_nf').AsString,                               //Serie
         num_nf,                                                                //Nro
         QrySintegra.Fields.FieldByName('cfop').AsString,                                   //CFOP
         QrySintegra.Fields.FieldByName('emitente_nf').AsString,                            //Emitente
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('subtotal').AsFloat),       //Valor_Total
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms').AsFloat),           //Base_ICMS
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_icms').AsFloat),          //Valor_ICMS
         formatcurr('0.00', QrySintegra.FieldByName('valor_isento_icms').AsFloat),          //Isenta
         formatcurr('0.00', QrySintegra.FieldByName('outras_despesas').AsFloat),            //Outras
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat),       //Aliquota
         QrySintegra.Fields.FieldByName('situacao_nf').AsString                             //Situacao
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_NF_Entrada: ' + QrySintegra.Fields.FieldByName('cod_nf_entrada').AsString + #13 +
           '    CNPJ: ' + QrySintegra.Fields.FieldByName('cnpj_fornecedor').AsString + #13 +
           '    IE: ' + QrySintegra.Fields.FieldByName('ie_fornecedor').AsString + #13 +
           '    Recebimento: ' + datetostr(QrySintegra.Fields.FieldByName('datahora_recebimento').AsDateTime) + #13 +
           '    UF: ' + QrySintegra.Fields.FieldByName('uf_fornecedor').AsString + #13 +
           '    Modelo: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie: ' + QrySintegra.Fields.FieldByName('serie_nf').AsString + #13 +
           '    Nro: ' + num_nf + #13 +
           '    CFOP: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
           '    Emitente: ' + QrySintegra.Fields.FieldByName('emitente_nf').AsString + #13 +
           '    Valor_Total: ' + QrySintegra_D.Fields.FieldByName('subtotal').AsString + #13 +
           '    Base ICMS: ' + QrySintegra_D.Fields.FieldByName('base_icms').AsString + #13 +
           '    Valor ICMS: ' + QrySintegra_D.Fields.FieldByName('valor_icms').AsString + #13 +
           '    Isenta: ' + QrySintegra.FieldByName('valor_isento_icms').AsString + #13 +
           '    Outras: ' + QrySintegra.FieldByName('outras_despesas').AsString + #13 +
           '    Aliquota: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
           '    Situacao: ' + QrySintegra.Fields.FieldByName('situacao_nf').AsString;
        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;
 QrySintegra_D.UnPrepare;
 QrySintegra_D.DataSource := nil;

 QrySintegra.Close;
 QrySintegra.UnPrepare;
end;

//Registro51 - Registros de Total de Nota Fiscal Quanto ao IPI
function TSIntegra_ListFrm.sRegistro51(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
begin
 Result := True;

 if QrySintegra_info['contribuinte_ipi'] = 1 then
  begin
   //Geração de Registro51 quanto a Saída de Nota Fiscal
   with QrySintegra do
    begin
     Close;
     UnPrepare;
     SQL.Clear;

     SQL.Add('SELECT * FROM pedidos WHERE ');
     SQL.Add('(datahora_emissao BETWEEN :datahora_ini AND :datahora_fim) AND (');
     SQL.Add('(modelo_nf = ''01'') OR');
     SQL.Add('(modelo_nf = ''1A''))');
     SQL.Add('ORDER BY datahora_emissao');

     ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
     ParamByName('datahora_fim').asdatetime := DataHora_Final;
     Prepare;
     Open;

     if RecordCount > 0 then
      begin
       while not EOF do
        begin
         num_nf := Fields.FieldByName('num_nf').AsString;
         num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));      //utilizan apenas 6 últimos digitos da NF

         TempStr := Registro51(Fields.FieldByName('cnpj_destinatario').AsString, //CNPJ
           Fields.FieldByName('ie_destinatario').AsString,                       //Insc_Est
           datetostr(Fields.FieldByName('datahora_emissao').AsDateTime),         //Data_Emissao_Recebimento
           Fields.FieldByName('uf_destinatario').AsString,                       //UF,
           Fields.FieldByName('serie_nf').AsString,                              //Serie
           num_nf,                                                               //Nro
           Fields.FieldByName('cfop').AsString,                                  //CFOP
           formatcurr('0.00', Fields.FieldByName('valor_totalnf').AsFloat),      //Valor_Total
           formatcurr('0.00', Fields.FieldByName('valor_ipi').AsFloat),          //Valor_IPI
           formatcurr('0.00', Fields.FieldByName('valor_isento_ipi').AsFloat),   //Isenta_IPI
           formatcurr('0.00', Fields.FieldByName('outras_despesas').AsFloat),    //Outras_IPI
           Fields.FieldByName('brancos').AsString,                               //Brancos
           Fields.FieldByName('situacao_nf').AsString                            //Situacao
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Pedidos: ' + Fields.FieldByName('cod_pedidos').AsString + #13 +
             '    CNPJ: ' + Fields.FieldByName('cnpj_destinatario').AsString +  #13 +
             '    IE: ' + Fields.FieldByName('ie_destinatario').AsString + #13 +
             '    Emissao: ' + datetostr(Fields.FieldByName('datahora_emissao').AsDateTime) + #13 +
             '    UF: ' + Fields.FieldByName('uf_destinatario').AsString + #13 +
             '    Serie: ' + Fields.FieldByName('serie_nf').AsString + #13 +
             '    Nro: ' + num_nf + #13 +
             '    CFOP: ' + Fields.FieldByName('cfop').AsString + #13 +
             '    Valor Total: ' + Fields.FieldByName('valor_totalnf').AsString + #13 +
             '    Valor IPI: ' + Fields.FieldByName('valor_ipi').AsString + #13 +
             '    Isenta IPI: ' + Fields.FieldByName('valor_isento_ipi').AsString + #13 +
             '    Outras IPI: ' + Fields.FieldByName('outras_despesas').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString + #13 +
             '    Situacao:  ' + Fields.FieldByName('situacao_nf').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;

         if not EOF then
           Next;

         if quit_sintegra then
           exit;
        end;
      end;
    end;

   //Geração de Registro51 quanto a Entrada de Nota Fiscal
   with QrySintegra do
    begin
     Close;
     UnPrepare;
     SQL.Clear;

     SQL.Add('SELECT * FROM nf_entrada WHERE ');
     SQL.Add('(datahora_recebimento BETWEEN :datahora_ini AND :datahora_fim) AND (');
     SQL.Add('(modelo_nf = ''01'') OR');
     SQL.Add('(modelo_nf = ''1A''))');
     SQL.Add('ORDER BY datahora_recebimento');

     ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
     ParamByName('datahora_fim').asdatetime := DataHora_Final;
     Prepare;
     Open;

     if RecordCount > 0 then
      begin
       while not EOF do
        begin
         num_nf := Fields.FieldByName('num_nf').AsString;
         num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
         //utilizan apenas 6 últimos digitos da NF

         TempStr := Registro51(Fields.FieldByName('cnpj_fornecedor').AsString,  //CNPJ
           Fields.FieldByName('ie_fornecedor').AsString,                        //Insc_Est
           datetostr(Fields.FieldByName('datahora_recebimento').AsDateTime),    //Data_Emissao_Recebimento
           Fields.FieldByName('uf_fornecedor').AsString,                        //UF,
           Fields.FieldByName('serie_nf').AsString,                             //Serie
           num_nf,                                                              //Nro
           Fields.FieldByName('cfop').AsString,                                 //CFOP
           formatcurr('0.00', Fields.FieldByName('valor_totalnf').AsFloat),     //Valor_Total
           formatcurr('0.00', Fields.FieldByName('valor_ipi').AsFloat),         //Valor_IPI
           formatcurr('0.00', Fields.FieldByName('valor_isento_ipi').AsFloat),  //Isenta_IPI
           formatcurr('0.00', Fields.FieldByName('outras_despesas').AsFloat),   //Outras_IPI
           Fields.FieldByName('brancos').AsString,                              //Brancos
           Fields.FieldByName('situacao_nf').AsString                           //Situacao
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_NF_Entrada: ' + QrySintegra['cod_nf_entrada'] + #13 +
             '    CNPJ: ' + Fields.FieldByName('cnpj_fornecedor').AsString + 13 +
             '    IE: ' + Fields.FieldByName('ie_fornecedor').AsString + #13 +
             '    Emissao: ' + datetostr(Fields.FieldByName('datahora_recebimento').AsDateTime) + #13 +
             '    UF: ' + Fields.FieldByName('uf_fornecedor').AsString + #13 +
             '    Serie: ' + Fields.FieldByName('serie_nf').AsString + #13 +
             '    Nro: ' + num_nf + #13 +
             '    CFOP: ' + Fields.FieldByName('cfop').AsString + #13 +
             '    Valor Total: ' + Fields.FieldByName('valor_totalnf').AsString + #13 +
             '    Valor IPI: ' + Fields.FieldByName('valor_ipi').AsString + #13 +
             '    Isenta IPI: ' + Fields.FieldByName('valor_isento_ipi').AsString + #13 +
             '    Outras IPI: ' + Fields.FieldByName('outras_despesas').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString + #13 +
             '    Situacao:  ' + Fields.FieldByName('situacao_nf').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;

         if not EOF then
           Next;

         if quit_sintegra then
           exit;
        end;
      end;
    end;
  end;
end;


//Registro53 - Registro de Total de Documento Fical quanto a substituição tributária
function TSIntegra_ListFrm.sRegistro53(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
begin
 Result := True;
 Gera_R75 := True;

 //TODO: r53 é gerado em "operações com mercadorias" pode existir uma operação diferente? (i.e.: Servico)

 //Geração de Registro53 quanto a Saída de Nota Fiscal
 if QrySintegra_info['substituto_tributario'] = 1 then
  begin
   with QrySintegra do
    begin
     Close;
     UnPrepare;
     SQL.Clear;

     SQL.Add('SELECT * FROM pedidos WHERE ');
     SQL.Add('(datahora_emissao BETWEEN :datahora_ini AND :datahora_fim) AND (');
     SQL.Add('(modelo_nf = ''01'') OR');
     SQL.Add('(modelo_nf = ''1A''))');
     SQL.Add('ORDER BY datahora_emissao');

     ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
     ParamByName('datahora_fim').asdatetime := DataHora_Final;
     Prepare;
     Open;

     if RecordCount > 0 then
      begin
       while not EOF do
        begin
         num_nf := Fields.FieldByName('num_nf').AsString;
         num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
         //utilizan apenas 6 últimos digitos da NF

         TempStr := Registro53(Fields.FieldByName('cnpj_destinatario').AsString, //CNPJ
           Fields.FieldByName('ie_destinatario').AsString,                       //Insc_Est
           datetostr(Fields.FieldByName('datahora_emissao').AsDateTime),         //Data_Emissao_Recebimento
           Fields.FieldByName('uf_destinatario').AsString,                       //UF,
           Fields.FieldByName('modelo_nf').AsString,                             //Modelo
           Fields.FieldByName('serie_nf').AsString,                              //Serie
           num_nf,                                                               //Nro
           Fields.FieldByName('cfop').AsString,                                  //CFOP
           Fields.FieldByName('emitente_nf').AsString,                           //Emitente
           formatcurr('0.00', Fields.FieldByName('base_icms_subst').AsFloat),    //Base_ICMS
           formatcurr('0.00', Fields.FieldByName('icms_retido').AsFloat),        //ICMS_Retido
           formatcurr('0.00', Fields.FieldByName('outras_despesas').AsFloat),    //Despesas_Acessorias
           Fields.FieldByName('situacao_nf').AsString,                           //Situacao
           ' ',                                                                  //Antecipacao
           Fields.FieldByName('brancos').AsString                                //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Pedidos: ' + Fields.FieldByName('cod_pedidos').AsString + #13 +
             '    CNPJ: ' + Fields.FieldByName('cnpj_destinatario').AsString +  #13 +
             '    IE: ' + Fields.FieldByName('ie_destinatario').AsString + #13 +
             '    Emissao: ' + datetostr(Fields.FieldByName('datahora_emissao').AsDateTime) + #13 +
             '    UF: ' + Fields.FieldByName('uf_destinatario').AsString + #13 +
             '    Modelo: ' + Fields.FieldByName('modelo_nf').AsString + #13 +
             '    Serie: ' + Fields.FieldByName('serie_nf').AsString + #13 +
             '    Nro: ' + num_nf + #13 +
             '    CFOP: ' + Fields.FieldByName('cfop').AsString + #13 +
             '    Emitente: ' + Fields.FieldByName('emitente_nf').AsString + #13 +
             '    Base ICMS: ' + Fields.FieldByName('base_icms_subst').AsString + #13 +
             '    ICMS Retido: ' + Fields.FieldByName('icms_retido').AsString + #13 +
             '    Despesas: ' + Fields.FieldByName('outras_despesas').AsString + #13 +
             '    Situacao: ' + Fields.FieldByName('situacao_nf').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1; 

         if not EOF then
           Next;

         if quit_sintegra then
           exit;
        end;
      end;
    end;

   //Geração de Registro53 quanto a Entrada de Nota Fiscal
   with QrySintegra do
    begin
     Close;
     UnPrepare;
     SQL.Clear;

     SQL.Add('SELECT * FROM nf_entrada WHERE ');
     SQL.Add('(datahora_recebimento BETWEEN :datahora_ini AND :datahora_fim) AND (');
     SQL.Add('(modelo_nf = ''01'') OR');
     SQL.Add('(modelo_nf = ''1A''))');
     SQL.Add('ORDER BY datahora_recebimento');

     ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
     ParamByName('datahora_fim').asdatetime := DataHora_Final;
     Prepare;
     Open;

     if RecordCount > 0 then
      begin
       while not EOF do
        begin
         num_nf := Fields.FieldByName('num_nf').AsString;
         num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
         //utilizan apenas 6 últimos digitos da NF

         TempStr := Registro53(Fields.FieldByName('cnpj_destinatario').AsString, //CNPJ
           Fields.FieldByName('ie_destinatario').AsString,                       //Insc_Est
           datetostr(Fields.FieldByName('datahora_emissao').AsDateTime),         //Data_Emissao_Recebimento
           Fields.FieldByName('uf_destinatario').AsString,                       //UF,
           Fields.FieldByName('modelo_nf').AsString,                             //Modelo
           Fields.FieldByName('serie_nf').AsString,                              //Serie
           num_nf,                                                               //Nro
           Fields.FieldByName('cfop').AsString,                                  //CFOP
           Fields.FieldByName('emitente_nf').AsString,                           //Emitente
           formatcurr('0.00', Fields.FieldByName('base_icms_subst').AsFloat),    //Base_ICMS
           formatcurr('0.00', Fields.FieldByName('icms_retido').AsFloat),        //ICMS_Retido
           formatcurr('0.00', Fields.FieldByName('outras_despesas').AsFloat),    //Despesas_Acessorias
           Fields.FieldByName('situacao_nf').AsString,                           //Situacao
           '',                                                                   //Antecipacao
           Fields.FieldByName('brancos').AsString                                //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_NF_Entrada: ' +
             Fields.FieldByName('cod_nf_entrada').AsString + #13 +
             '    CNPJ: ' + Fields.FieldByName('cnpj_destinatario').AsString + #13 +
             '    IE: ' + Fields.FieldByName('ie_destinatario').AsString + #13 +
             '    Emissao: ' + datetostr(Fields.FieldByName('datahora_emissao').AsDateTime) + #13 +
             '    UF: ' + Fields.FieldByName('uf_destinatario').AsString + #13 +
             '    Modelo: ' + Fields.FieldByName('modelo_nf').AsString + #13 +
             '    Serie: ' + Fields.FieldByName('serie_nf').AsString + #13 +
             '    Nro: ' + num_nf + #13 +
             '    CFOP: ' + Fields.FieldByName('cfop').AsString + #13 +
             '    Emitente: ' + Fields.FieldByName('emitente_nf').AsString + #13 +
             '    Base ICMS: ' + Fields.FieldByName('base_icms_subst').AsString + #13 +
             '    ICMS Retido: ' + Fields.FieldByName('icms_retido').AsString + #13 +
             '    Despesas: ' + Fields.FieldByName('outras_despesas').AsString + #13 +
             '    Situacao: ' + Fields.FieldByName('situacao_nf').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1; 

         if not EOF then
           Next;

         if quit_sintegra then
           exit;
        end;
      end;
    end;
  end;
end;

//Registro54 - Registro de Produto (Classificação Fiscal)
function TSIntegra_ListFrm.sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
begin
 Result := True;
 Gera_R75 := True;                              //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!

 //Geração de Registro54 quanto a Saída de Nota Fiscal
 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM pedidos WHERE ');
   SQL.Add('(datahora_emissao BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''22''))');
   SQL.Add('ORDER BY datahora_emissao');

   ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
   ParamByName('datahora_fim').asdatetime := DataHora_Final;
   Prepare;
   Open;
  end;

 QrySintegra_D.DataSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM pedidos_itens WHERE ');
   SQL.Add('cod_pedidos = :cod_pedidos');
   SQL.Add('ORDER BY num_item');

   Prepare;
   Open;
  end;

 if QrySintegra.RecordCount > 0 then
  begin
   while not QrySintegra.EOF do
    begin
     while not QrySintegra_D.EOF do
      begin
       num_nf := QrySintegra.Fields.FieldByName('num_nf').AsString;
       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizan apenas 6 últimos digitos da NF

       TempStr := Registro54(QrySintegra.Fields.FieldByName('cnpj_destinatario').AsString, //CNPJ
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                             //Modelo
         QrySintegra.Fields.FieldByName('serie_nf').AsString,                              //Serie
         num_nf,                                                                           //Nro
         QrySintegra.Fields.FieldByName('cfop').AsString,                                  //CFOP
         QrySintegra_D.Fields.FieldByName('s_trib').AsString,                              //Codigo da Situacao Tributaria
         QrySintegra_D.Fields.FieldByName('num_item').AsString,                            //Nº Item
         QrySintegra_D.Fields.FieldByName('ref_produtos').AsString,                        //Codigo Produto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('quantidade').AsFloat),       //Quantidade
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('subtotal').AsFloat),         //Valor Produto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_desconto').AsFloat),   //Valor Desconto
         formatcurr('0.00', QrySintegra.Fields.FieldByName('base_icms').AsFloat),          //Base ICMS
         formatcurr('0.00', QrySintegra.Fields.FieldByName('base_icms_subst').AsFloat),    //Base ICMS S. Trib.
         formatcurr('0.00', QrySintegra.Fields.FieldByName('valor_ipi').AsFloat),          //Valor IPI
         formatcurr('0.00', QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat)       //Aliquota ICMS
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_Pedidos: ' + QrySintegra.Fields.FieldByName('cod_pedidos').AsString + #13 +
           '    Cod_Pedidos_Itens: ' + QrySintegra_D.Fields.FieldByName('cod_pedidos_itens').AsString + #13 +
           '    CNPJ: ' + QrySintegra.Fields.FieldByName('cnpj_destinatario').AsString + #13 +
           '    Modelo: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie: ' + QrySintegra.Fields.FieldByName('serie_nf').AsString + #13 +
           '    Nro: ' + num_nf + #13 +
           '    CFOP: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
           '    CST: ' + QrySintegra_D.Fields.FieldByName('s_trib').AsString + #13 +
           '    Nº Item: ' + QrySintegra_D.Fields.FieldByName('num_item').AsString + #13 +
           '    Codigo Produto: ' + QrySintegra_D.Fields.FieldByName('ref_produtos').AsString + #13 +
           '    Quantidade: ' + QrySintegra_D.Fields.FieldByName('quantidade').AsString + #13 +
           '    Valor Produto: ' + QrySintegra_D.Fields.FieldByName('subtotal').AsString + #13 +
           '    Valor Desconto: ' + QrySintegra_D.Fields.FieldByName('valor_desconto').AsString + #13 +
           '    Base ICMS: ' + QrySintegra.Fields.FieldByName('base_icms').AsString + #13 +
           '    Base ICMS Subst: ' + QrySintegra.Fields.FieldByName('base_icms_subst').AsString + #13 +
           '    Valor IPI: ' + QrySintegra.Fields.FieldByName('valor_ipi').AsString + #13 +
           '    Aliquota ICMS: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100);
        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;
 QrySintegra_D.UnPrepare;
 QrySintegra_D.DataSource := nil;

 QrySintegra.Close;
 QrySintegra.UnPrepare;

 //Geração de Registro54 quanto a Entrada de Nota Fiscal
 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM nf_entrada WHERE ');
   SQL.Add('(datahora_recebimento BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''22''))');
   SQL.Add('ORDER BY datahora_recebimento');

   ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
   ParamByName('datahora_fim').asdatetime := DataHora_Final;
   Prepare;
   Open;
  end;

 QrySintegra_D.DataSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM nf_entrada_itens WHERE ');
   SQL.Add('cod_nf_entrada = :cod_nf_entrada');
   SQL.Add('ORDER BY num_item');

   Prepare;
   Open;
  end;

 if (QrySintegra.RecordCount > 0) then
  begin
   while not QrySintegra.EOF do
    begin
     while not QrySintegra_D.EOF do
      begin
       num_nf := QrySintegra.Fields.FieldByName('num_nf').AsString;
       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utiliza apenas 6 últimos digitos da NF

       TempStr := Registro54(QrySintegra.Fields.FieldByName('cnpj_fornecedor').AsString, //CNPJ
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                           //Modelo
         QrySintegra.Fields.FieldByName('serie_nf').AsString,                            //Serie
         num_nf,                                                                         //Nro
         QrySintegra.Fields.FieldByName('cfop').AsString,                                //CFOP
         QrySintegra_D.Fields.FieldByName('s_trib').AsString,                            //Codigo da Situacao Tributaria
         QrySintegra_D.Fields.FieldByName('num_item').AsString,                          //Nº Item
         QrySintegra_D.Fields.FieldByName('ref_produtos').AsString,                      //Codigo Produto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('quantidade').AsFloat),     //Quantidade
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('subtotal').AsFloat),       //Valor Produto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_desconto').AsFloat), //Valor Desconto
         formatcurr('0.00', QrySintegra.Fields.FieldByName('base_icms').AsFloat),        //Base ICMS
         formatcurr('0.00', QrySintegra.Fields.FieldByName('base_icms_subst').AsFloat),  //Base ICMS S. Trib.
         formatcurr('0.00', QrySintegra.Fields.FieldByName('valor_ipi').AsFloat),        //Valor IPI
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat)   //Aliquota ICMS
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_Pedidos: ' + QrySintegra.Fields.FieldByName('cod_nf_entrada').AsString + #13 +
           '    Cod_Pedidos_Itens: ' + QrySintegra_D.Fields.FieldByName('cod_nf_entrada_itens').AsString + #13 +
           '    CNPJ: ' + QrySintegra.Fields.FieldByName('cnpj_fornecedor').AsString + #13 +
           '    Modelo: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie: ' + QrySintegra.Fields.FieldByName('serie_nf').AsString + #13 +
           '    Nro: ' + num_nf + #13 +
           '    CFOP: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
           '    CST: ' + QrySintegra_D.Fields.FieldByName('s_trib').AsString + #13 +
           '    Nº Item: ' + QrySintegra_D.Fields.FieldByName('num_item').AsString + #13 +
           '    Codigo Produto: ' + QrySintegra_D.Fields.FieldByName('ref_produtos').AsString + #13 +
           '    Quantidade: ' + QrySintegra_D.Fields.FieldByName('quantidade').AsString + #13 +
           '    Valor Produto: ' + QrySintegra_D.Fields.FieldByName('subtotal').AsString + #13 +
           '    Valor Desconto: ' + QrySintegra_D.Fields.FieldByName('valor_desconto').AsString + #13 +
           '    Base ICMS: ' + QrySintegra.Fields.FieldByName('base_icms').AsString + #13 +
           '    Base ICMS Subst: ' + QrySintegra.Fields.FieldByName('base_icms_subst').AsString + #13 +
           '    Valor IPI: ' + QrySintegra.Fields.FieldByName('valor_ipi').AsString + #13 +
           '    Aliquota ICMS: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100);
        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;
 QrySintegra_D.UnPrepare;
 QrySintegra_D.DataSource := nil;

 QrySintegra.Close;
 QrySintegra.UnPrepare;
end;

//Registro55 - Registro de Guia Nacional de Recolhimento de Tributos Estaduais
function TSIntegra_ListFrm.sRegistro55(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
begin
 Result := True;

 if QrySintegra_info['substituto_tributario'] = 1 then
  begin
   with QrySintegra do
    begin
     Close;
     UnPrepare;
     SQL.Clear;

     SQL.Add('SELECT * FROM sintegra_gnre WHERE ');
     SQL.Add('(datahora_gnre BETWEEN :datahora_ini AND :datahora_fim)');
     SQL.Add('ORDER BY datahora_gnre');

     ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
     ParamByName('datahora_fim').asdatetime := DataHora_Final;
     Prepare;
     Open;

     if RecordCount > 0 then
      begin
       while not EOF do
        begin
         TempStr := Registro55(Fields.FieldByName('cnpj_subst').AsString,       //CGC
           Fields.FieldByName('ie_subst').AsString,                             //Insc_Est
           datetostr(QrySintegra.Fields.FieldByName                             ('datahora_gnre').AsDateTime),   //Data_GNRE
           Fields.FieldByName('uf_subst').AsString,                             //UF_Substituto
           Fields.FieldByName('uf_favorecida').AsString,                        //UF_Favorecida
           Fields.FieldByName('banco_gnre').AsString,                           //Banco_GNRE
           Fields.FieldByName('agencia_gnre').AsString,                         //Agencia_GNRE
           Fields.FieldByName('nro_gnre').AsString,                             //Nro_GNRE
           formatcurr('0.00', Fields.FieldByName('valor_gnre').AsFloat),        //Valor_GNRE
           Fields.FieldByName('data_vencimento').AsString,                      //Data_Vencimento_ICMS
           Fields.FieldByName('mes_ano_referencia').AsString,                   //Mes_Ano_Ref
           Fields.FieldByName('nro_convenio').AsString                          //Nro_Convenio
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_GNRE: ' +  Fields.FieldByName('Cod_Sintegra_GNRE').AsString + #13 +
             '    CNPJ: ' + Fields.FieldByName('cnpj_subst').AsString + #13 +
             '    IE: ' + Fields.FieldByName('ie_subst').AsString + #13 +
             '    Data_GNRE: ' + datetostr(QrySintegra.Fields.FieldByName('datahora_gnre').AsDateTime) + #13 +
             '    UF Substituto: ' + Fields.FieldByName('uf_subst').AsString + #13 +
             '    UF Favorecida: ' + Fields.FieldByName('uf_favorecida').AsString + #13 +
             '    Banco: ' + Fields.FieldByName('banco_gnre').AsString + #13 +
             '    Agencia: ' + Fields.FieldByName('agencia_gnre').AsString + #13 +
             '    Nro GNRE: ' + Fields.FieldByName('nro_gnre').AsString + #13 +
             '    Valor GNRE: ' + Fields.FieldByName('valor_gnre').AsString + #13 +
             '    Vencimento: ' + Fields.FieldByName('data_vencimento').AsString + #13 +
             '    Mes/Ano: ' + Fields.FieldByName('mes_ano_referencia').AsString + #13 +
             '    Nº Convenio: ' + Fields.FieldByName('nro_convenio').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;

         if not EOF then
           Next;

         if quit_sintegra then
           exit;
        end;
      end;
    end;
  end;
end;

//Registro60
function TSIntegra_ListFrm.sRegistro60(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
 i: integer;
begin
 Result := True;

 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM sintegra_r60 WHERE');
   SQL.Add('(data_emissao BETWEEN :data_ini AND :data_fim)');
   SQL.Add('ORDER BY data_emissao');

   ParamByName('data_ini').asdatetime := DataHora_Inicial;
   ParamByName('data_fim').asdatetime := DataHora_Final;
   Prepare;
   Open;

   if RecordCount > 0 then
    begin
     while not EOF do
      begin
       //Registro60Mestre - Registro de informação de operações/prestações realizadas
       TempStr := Registro60M(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
         Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_Serie_Eqp
         Fields.FieldByName('nro_ordem_eqp').AsString,                          //Nro_Ordem_Eqp
         Fields.FieldByName('modelo_doc').AsString,                             //Modelo_Doc
         Fields.FieldByName('nro_contador_inicio').AsString,                    //Nro_Contador_Inicio
         Fields.FieldByName('nro_contador_fim').AsString,                       //Nro_Contador_Fim
         Fields.FieldByName('nro_contador_z').AsString,                         //Nro_Contador_Z
         Fields.FieldByName('contador_reinicio').AsString,                      //Contador_Reinicio
         Formatcurr('0.00', Fields.FieldByName('valor_venda_bruta').AsFloat),   //Valor_Venda_Bruta
         formatcurr('0.00', Fields.FieldByName('valor_total_geral').AsFloat),   //Valor_Total_Geral
         Fields.FieldByName('brancos').AsString                                 //Brancos
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_Sintegra_R60M: ' +
           Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
           '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
           '    Nº Serie: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
           '    Nº Ordem: ' + Fields.FieldByName('nro_ordem_eqp').AsString + #13 +
           '    Modelo: ' + Fields.FieldByName('modelo_doc').AsString + #13 +
           '    Nº Contador Inicio: ' + Fields.FieldByName('nro_contador_inicio').AsString + #13 +
           '    Nº Contador Fim: ' + Fields.FieldByName('nro_contador_fim').AsString + #13 +
           '    Nº Contador Z: ' + Fields.FieldByName('nro_contador_z').AsString + #13 +
           '    Contador Reinicio: ' + Fields.FieldByName('contador_reinicio').AsString + #13 +
           '    Venda Bruta: ' + Fields.FieldByName('valor_venda_bruta').AsString + #13 +
           '    Total Geral: ' + Fields.FieldByName('valor_total_geral').AsString + #13 +
           '    Brancos: ' + Fields.FieldByName('brancos').AsString;
        end
       else
        qnt_ok := qnt_ok + 1;

       //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       //Quanto ao Cancelamento
       if Fields.FieldByName('cancelamento').asfloat > 0 then
        begin
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'CANC',                                                                //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('cancelamento').asFloat),        //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota: ' + 'CANC' + #13 +
             '    Total Parcial: ' + Fields.FieldByName('cancelamento').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       //Quanto ao Desconto
       if Fields.FieldByName('desconto').asfloat > 0 then
        begin
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'DESC',                                                                //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('desconto').AsFloat),            //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota: ' + 'DESC' + #13 +
             '    Total Parcial: ' + Fields.FieldByName('desconto').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       //Quanto ao ISS
       if Fields.FieldByName('issqn').asfloat > 0 then
        begin
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'ISS',                                                                 //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('issqn').AsFloat),               //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota: ' + 'ISS' + #13 +
             '    Total Parcial: ' + Fields.FieldByName('issqn').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       //Quanto a Substituição Tributaria
       if Fields.FieldByName('substituicao_tributaria').asfloat > 0 then
        begin
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,          //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                              //Nro_PDV
           'F',                                                                       //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('substituicao_tributaria').AsFloat), //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                     //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota: ' + 'F' + #13 +
             '    Total Parcial: ' + Fields.FieldByName('substituicao_tributaria').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       //Quanto a Isenção
       if Fields.FieldByName('isento').asfloat > 0 then
        begin
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'I',                                                                   //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('isento').AsFloat),              //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota: ' + 'I' + #13 +
             '    Total Parcial: ' + Fields.FieldByName('isento').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       //Quanto a Não Tributação
       if Fields.FieldByName('nao_incidencia').asfloat > 0 then
        begin
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'N',                                                                   //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('nao_incidencia').AsFloat),      //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota: ' + 'N' + #13 +
             '    Total Parcial: ' + Fields.FieldByName('nao_incidencia').AsString + #13 +
             '    Brancos: ' + Fields.FieldByName('brancos').AsString
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       for i := 1 to 5 do
        begin
         if (Fields.FieldByName('aliquota0' + IntToStr(i)).AsFloat > 0) and
            (Fields.FieldByName('valor_tparcial0' + IntToStr(i)).asFloat > 0) then
          begin
           //Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
           //Quanto a Não Tributação
           TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,                //Data_Emissao
             Fields.FieldByName('nro_serie_eqp').AsString,                                    //Nro_PDV
             FormatCurr('0000', Fields.FieldByName('aliquota0' + IntToStr(i)).AsFloat),       //S_Trib_Aliquota
             formatcurr('0.00', Fields.FieldByName('valor_tparcial0' + IntToStr(i)).AsFloat), //Valor_TParcial
             Fields.FieldByName('brancos_60A0' + IntToStr(i)).AsString                        //Brancos
             );

           if not Trata_SIntegra_Str(TempStr) then
            begin
             qnt_erro := qnt_erro + 1;
             Result := False;

             Err_Msg := Err_Msg + #13 +
               '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
               '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
               '    Nº PDV: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
               '    Aliquota: ' + Fields.FieldByName('aliquota0' + IntToStr(i)).AsString + #13 +
               '    Total Parcial: ' + Fields.FieldByName('valor_tparcial0' + IntToStr(i)).AsString + #13 +
               '    Brancos: ' + Fields.FieldByName('brancos_60A0' + IntToStr(i)).AsString
            end
           else
            qnt_ok := qnt_ok + 1;
          end;
        end;

       if not QrySintegra.EOF then
         QrySintegra.Next;

       if quit_sintegra then
         exit;
      end;
    end;
  end;
end;

//Registro70 - Contribuintes do ICMS, tomadores ou prestadores de serviços de transporte
function TSIntegra_ListFrm.sRegistro70(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
begin
 Result := True;

 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT * FROM NF_Entrada WHERE ');
   SQL.Add('(datahora_emissao BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''07'') OR');
   SQL.Add('(modelo_nf = ''08'') OR');
   SQL.Add('(modelo_nf = ''09'') OR');
   SQL.Add('(modelo_nf = ''10'') OR');
   SQL.Add('(modelo_nf = ''11''))');
   SQL.Add('ORDER BY datahora_emissao');

   ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
   ParamByName('datahora_fim').asdatetime := DataHora_Final;
   Prepare;
   Open;

   if RecordCount > 0 then
    begin
     while not EOF do
      begin
       num_nf := QrySintegra.Fields.FieldByName('num_nf').AsString;
       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
       //utilizan apenas 6 últimos digitos da NF

       TempStr := Registro70(Fields.FieldByName('cnpj_fornecedor').AsString,    //CNPJ
         Fields.FieldByName('ie_fornecedor').AsString,                          //Insc_Est
         datetostr(Fields.FieldByName('datahora_emissao').AsDateTime),          //Data_Emissao_Recebimento
         Fields.FieldByName('uf_fornecedor').AsString,                          //UF,
         Fields.FieldByName('modelo_nf').AsString,                              //Modelo
         Fields.FieldByName('serie_nf').AsString,                               //Serie
         Fields.FieldByName('subserie_nf').AsString,                            //SubSerie
         Fields.FieldByName('num_nf').AsString,                                 //Nro
         Fields.FieldByName('cfop').AsString,                                   //CFOP
         formatcurr('0.00', Fields.FieldByName('valor_totalnf').AsFloat),       //Valor_Total
         formatcurr('0.00', Fields.FieldByName('base_icms').AsFloat),           //Base_ICMS
         formatcurr('0.00', Fields.FieldByName('valor_icms').AsFloat),          //Valor_ICMS
         formatcurr('0.00', Fields.FieldByName('valor_isento_icms').AsFloat),   //Isenta
         formatcurr('0.00', Fields.FieldByName('outras_despesas').AsFloat),     //Outras
         Fields.FieldByName('transp_frete_conta').AsString,                     //CIF/FOB
         Fields.FieldByName('situacao_nf').AsString                             //Situacao
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_Nf_Entrada: ' + QrySintegra['cod_nf_entrada'] + #13 +
           '    CNPJ: ' + Fields.FieldByName('cnpj_fornecedor').AsString + #13 +
           '    IE: ' + Fields.FieldByName('ie_fornecedor').AsString + #13 +
           '    Emissao: ' + datetostr(Fields.FieldByName('datahora_emissao').AsDateTime) + #13 +
           '    UF: ' + Fields.FieldByName('uf_fornecedor').AsString + #13 +
           '    Modelo: ' + Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie: ' + Fields.FieldByName('serie_nf').AsString + #13 +
           '    Sub-Serie: ' + Fields.FieldByName('subserie_nf').AsString + #13 +
           '    Nº: ' + Fields.FieldByName('num_nf').AsString + #13 +
           '    CFOP: ' + Fields.FieldByName('cfop').AsString + #13 +
           '    Total: ' + Fields.FieldByName('valor_totalnf').AsString + #13 +
           '    Base ICMS: ' + Fields.FieldByName('base_icms').AsString + #13 +
           '    Valor ICMS: ' + Fields.FieldByName('valor_icms').AsString + #13 +
           '    Isenta: ' + Fields.FieldByName('valor_isento_icms').AsString + #13 +
           '    Outras: ' + Fields.FieldByName('outras_despesas').AsString + #13 +
           '    CIF/FOB: ' + Fields.FieldByName('transp_frete_conta').AsString + #13 +
           '    Situacao: ' + Fields.FieldByName('situacao_nf').AsString;
        end
       else
        qnt_ok := qnt_ok + 1;

       if not EOF then
         Next;

       if quit_sintegra then
         exit;
      end;
    end;
  end;
end;

//Registro75 - Registro de Código de Produto e Serviço
function TSIntegra_ListFrm.sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
begin
 Result := True;

 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;

   SQL.Add('SELECT distinct ref_produtos, cl_fis, produto, apr_und, s_trib,');
   SQL.Add('aliquota_ipi, aliquota_icms, reducao_base_icms, base_icms_subst, datahora');
   SQL.Add('FROM pedidos_itens WHERE');
   SQL.Add('cod_pedidos IN (');
   SQL.Add('SELECT cod_pedidos FROM pedidos WHERE');
   SQL.Add('(datahora_emissao BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''22'')))');

   SQL.Add('union');

   SQL.Add('SELECT distinct ref_produtos, cl_fis, produto, apr_und, s_trib,');
   SQL.Add('aliquota_ipi, aliquota_icms, reducao_base_icms, base_icms_subst, datahora');
   SQL.Add('FROM nf_entrada_itens WHERE');
   SQL.Add('cod_nf_entrada IN (');
   SQL.Add('SELECT cod_nf_entrada FROM nf_entrada WHERE');
   SQL.Add('(datahora_recebimento BETWEEN :datahora_ini AND :datahora_fim) AND (');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''22'')))');

   ParamByName('datahora_ini').asdatetime := DataHora_Inicial;
   ParamByName('datahora_fim').asdatetime := DataHora_Final;

   Prepare;
   Open;

   if QrySintegra.RecordCount > 0 then
    begin
     while not QrySintegra.EOF do
      begin
       TempStr := Registro75(datetostr(DataHora_Inicial),                       //Data Inicial
         DateToStr(Fields.FieldByName('datahora').AsDatetime),                  //Data_Final
         Fields.FieldByName('ref_produtos').AsString,                           //Cod_Produto_Servico
         Fields.FieldByName('cl_fis').AsString,                                 //Cod_NCM
         Fields.FieldByName('produto').AsString,                                //Descricao
         Fields.FieldByName('apr_und').AsString,                                //UND_Medida
         formatcurr('0.00', Fields.FieldByName('aliquota_ipi').AsFloat),        //Aliquota_IPI
         formatcurr('0.00', Fields.FieldByName('aliquota_icms').AsFloat),       //Aliquota_ICMS
         formatcurr('0.00', Fields.FieldByName('reducao_base_icms').AsFloat),   //Reducao_Base_ICMS
         Fields.FieldByName('base_icms_subst').AsString                         //Base_ICMS_Subst
         );

       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Data Inicial: ' + datetostr(DataHora_Inicial) + #13 +
           '    Data Final: ' + DateToStr(Fields.FieldByName('datahora').AsDateTime) + #13 +//datetostr(DataHora_Final) + #13 +
           '    Codigo Produto: ' + Fields.FieldByName('ref_produtos').AsString + #13 +
           '    NCM: ' + Fields.FieldByName('cl_fis').AsString + #13 +
           '    Descricao: ' + Fields.FieldByName('produto').AsString + #13 +
           '    Unidade: ' + Fields.FieldByName('apr_und').AsString + #13 +
           '    CST: ' + Fields.FieldByName('s_trib').AsString + #13 +
           '    Aliquota IPI: ' + floattostr(Fields.FieldByName('aliquota_ipi').AsFloat * 100) + #13 +
           '    Aliquota ICMS: ' + floattostr(Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
           '    Reducao Base ICMS: ' + floattostr(Fields.FieldByName('reducao_base_icms').AsFloat * 100) + #13 +
           '    Base ICMS Subst: ' + Fields.FieldByName('base_icms_subst').AsString;
        end
       else
        qnt_ok := qnt_ok + 1;

       if not EOF then
        Next;

       if quit_sintegra then
         exit;
      end;
    end;
  end;
end;

//Registro90 - Registro de Totalização do Arquivo
function TSIntegra_ListFrm.sRegistro90: boolean;
var
 TempStr: string;
begin
 TempStr := Registro90;

 Result := Trata_SIntegra_Str(TempStr);
end;

procedure TSIntegra_ListFrm.BitBtn1Click(Sender: TObject);
var
 Err_Msg: string;
 Qnt_Ok, Qnt_Erro, Total_Ok, Total_Erro: integer;
begin
 Qnt_Ok     := 0;
 Qnt_Erro   := 0;
 Total_Ok   := 0;
 Total_Erro := 0;

 Gera_R75      := False;
 quit_sintegra := False;

 DataHora_Inicial := StartOfTheMonth(Datetimepicker1.DateTime);
 DataHora_Final   := EndOfTheMonth(Datetimepicker1.DateTime);

 Bitbtn1.Enabled   := False;
 Bitbtn4.Enabled   := False;
 Bitbtn6.Enabled   := False;
 GroupBox1.Enabled := False;
 panel9.Visible    := True;
 application.ProcessMessages;
 progressbar1.Step := 100 div 12;
 richedit1.Lines.Clear;

 Add_Log('Geração de arquivo magnético do SIntegra iniciada em ' + datetimetostr(now),
   clblue);

 if fileexists(edit1.Text) then
  begin
   Add_Log('Arquivo de saída existente excluído: ' + edit1.Text, clred);
   deletefile(edit1.Text);
  end;

 Inicia_Sintegra;

 if sRegistro10(Err_Msg) then
  begin
   Add_Log('1 Registro tipo 10 gerado com sucesso.', clgreen);
   Total_Ok := Total_Ok + 1;
  end
 else
  begin
   Add_Log('Erro durante criação do Registro tipo 10.' + #13 +
     ' Log de Erros: ' + #13 + Err_Msg, clred);
   Total_Erro := Total_Erro + 1;
  end;

 if sintegra_process then
   exit;

 if sRegistro11(Err_Msg) then
  begin
   Add_Log('1 Registro tipo 11 gerado com sucesso.', clgreen);
   Total_Ok := Total_Ok + 1;
  end
 else
  begin
   Add_Log('Erro durante criação do Registro tipo 11.' + #13 +
     ' Log de Erros: ' + #13 + Err_Msg, clred);
   Total_Erro := Total_Erro + 1;
  end;

 if sintegra_process then
   exit;

 if sRegistro50(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 50 gerado(s) com sucesso.', clgreen)
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 50 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 50 não gerado(s) por Erro' + #13 +
     ' Log de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;

 if QrySintegra_info['contribuinte_ipi'] = 1 then                               //se contribuinte do IPI
  begin
   Total_Ok := Total_Ok + Qnt_Ok;
   Total_Erro := Total_Erro + Qnt_Erro;
   Qnt_Ok := 0;
   Qnt_Erro := 0;

   if sRegistro51(Err_Msg, Qnt_Ok, Qnt_Erro) then
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 51 gerado(s) com sucesso.', clgreen);
    end
   else
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 51 gerado(s) com sucesso.', clgreen);

     Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 51 não gerado(s) por Erro' + #13 +
         ' Log de Erros: ' + Err_Msg, clred);
    end;
  end;

 if sintegra_process then
   exit;

 if QrySintegra_info['substituto_tributario'] = 1 then
  begin
   Total_Ok := Total_Ok + Qnt_Ok;
   Total_Erro := Total_Erro + Qnt_Erro;
   Qnt_Ok := 0;
   Qnt_Erro := 0;

   if sRegistro53(Err_Msg, Qnt_Ok, Qnt_Erro) then
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 53 gerado(s) com sucesso.', clgreen);
    end
   else
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 53 gerado(s) com sucesso.', clgreen);

     Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 53 não gerado(s) por Erro' + #13 +
       ' Log de Erros: ' + Err_Msg, clred);
    end;
  end;

 if sintegra_process then
   exit;

 Total_Ok := Total_Ok + Qnt_Ok;
 Total_Erro := Total_Erro + Qnt_Erro;
 Qnt_Ok := 0;
 Qnt_Erro := 0;

 if sRegistro54(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 54 gerado(s) com sucesso.', clgreen);
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 54 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 54 não gerado(s) por Erro' + #13 +
     ' Log de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;

 if QrySintegra_info['substituto_tributario'] = 1 then
  begin
   Total_Ok := Total_Ok + Qnt_Ok;
   Total_Erro := Total_Erro + Qnt_Erro;
   Qnt_Ok := 0;
   Qnt_Erro := 0;

   if sRegistro55(Err_Msg, Qnt_Ok, Qnt_Erro) then
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 55 gerado(s) com sucesso.', clgreen);
    end
   else
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 55 gerado(s) com sucesso.', clgreen);

     Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 55 não gerado(s) por Erro' + #13 +
       ' Log de Erros: ' + Err_Msg, clred);
    end;
  end;

 if sintegra_process then
   exit;

 Total_Ok := Total_Ok + Qnt_Ok;
 Total_Erro := Total_Erro + Qnt_Erro;
 Qnt_Ok := 0;
 Qnt_Erro := 0;

 if sRegistro60(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 60 gerado(s) com sucesso.', clgreen);
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 60 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 60 não gerado(s) por Erro' + #13 +
     ' RLog de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;

 Total_Ok := Total_Ok + Qnt_Ok;
 Total_Erro := Total_Erro + Qnt_Erro;
 Qnt_Ok := 0;
 Qnt_Erro := 0;

 if sRegistro70(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 70 gerado(s) com sucesso.', clgreen);
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 70 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 70 não gerado(s) por Erro' + #13 +
     ' Log de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;

 if Gera_R75 then
  begin
   Total_Ok := Total_Ok + Qnt_Ok;
   Total_Erro := Total_Erro + Qnt_Erro;
   Qnt_Ok := 0;
   Qnt_Erro := 0;

   if sRegistro75(Err_Msg, Qnt_Ok, Qnt_Erro) then
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 75 gerado(s) com sucesso.', clgreen);
    end
   else
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 75 gerado(s) com sucesso.', clgreen);

     Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 75 não gerado(s) por Erro' + #13 +
       ' Log de Erros: ' + Err_Msg, clred);
    end;
  end;

 if sintegra_process then
   exit;

 Total_Ok := Total_Ok + Qnt_Ok;
 Total_Erro := Total_Erro + Qnt_Erro;

 if sRegistro90 then
  begin
   Add_Log('1 Registro(s) tipo 90 gerado(s) com sucesso.', clgreen);
   Total_Ok := Total_Ok + 1;
  end
 else
  begin
   Add_Log('Erro durante criação do Registro tipo 90', clred);
   Total_Erro := Total_Erro + 1;
  end;

 if sintegra_process then
   exit;

 Finaliza_Sintegra;

 if Total_Ok > 0 then
  Add_Log(inttostr(Total_Ok) + ' Registro(s) gerado(s) com sucesso.', clblue);

 if Total_Erro > 0 then
  Add_Log(inttostr(Total_Erro) + ' Registro(s) não gerado(s) por Erro.', clblue);
  
 Add_Log('Geração de arquivo magnético do SIntegra concluída em ' + datetimetostr(now), clblue);

 QrySintegra.Close;
 QrySintegra.UnPrepare;

 Bitbtn1.Enabled := True;
 Bitbtn4.Enabled := True;
 Bitbtn6.Enabled := True;
 GroupBox1.Enabled := True;
 panel9.Visible := False;
end;

procedure TSIntegra_ListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TSIntegra_ListFrm.FormCreate(Sender: TObject);
begin
 panel9.top := 200;
 panel9.left := 80;

 datetimepicker1.Date := FirstDayOfPrevMonth;

 with QrySintegra_Info do
  begin
   SQL.Clear;
   SQL.Add('SELECT * FROM sintegra_info');
   Prepare;
   Open;
  end;
end;

procedure TSIntegra_ListFrm.BitBtn3Click(Sender: TObject);
begin
 if opendialog1.Execute then
   edit1.Text := opendialog1.FileName;
end;

procedure TSIntegra_ListFrm.RichEdit1Change(Sender: TObject);
begin
 bitbtn4.Enabled := (richedit1.Lines.Count > 0) and (not panel9.Visible);
end;

procedure TSIntegra_ListFrm.Edit1Change(Sender: TObject);
begin
 bitbtn6.Enabled := fileexists(edit1.Text);
end;

procedure TSIntegra_ListFrm.BitBtn6Click(Sender: TObject);
begin
 Exec_File(edit1.Text);
end;

procedure TSIntegra_ListFrm.BitBtn4Click(Sender: TObject);
begin
 savedialog1.InitialDir := ExtractFileDir(application.ExeName);

 if savedialog1.Execute then
   richedit1.Lines.SaveToFile(savedialog1.filename);
end;

procedure TSIntegra_ListFrm.BitBtn2Click(Sender: TObject);
var
 ArquivoIni: TIniFile;
 Ini_Path, Validador_Path: string;
begin
 try
   Ini_Path := CreateDefaultINiFile;
   ArquivoIni := TIniFile.Create(Ini_Path);

   //------ Config Validador Sintegra ------
   Validador_Path := ArquivoIni.ReadString('SINTEGRA',
     'ValidadorPath',
     'C:\Arquivos de programas\Validador Sintegra 2004\ValidadorSintegra2004.exe');

   Exec_File(Validador_Path);
 except
  end;

 ArquivoINI.Free;
end;

procedure TSIntegra_ListFrm.FormKeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   quit_sintegra := True;
end;

procedure TSIntegra_ListFrm.BitBtn5Click(Sender: TObject);
begin
 self.Close;
end;

end.

