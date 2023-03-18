unit Unit_ECF_Bematech_Fi1;

interface

uses
 Forms, Windows, IniFiles, SysUtils, Classes, IBServices, QDialogs, QControls;

type
 //--- Function Declarations ---
 TIniPortaStr = function(Porta: PChar): integer; stdcall;      //Função da Dll que abre a Porta Serial
 TFormataTX = function(BUFFER: PChar): integer; stdcall;      //Função da Dll Para envio de Comando
 TFechaPorta = function: integer; stdcall;      //Função da Dll Para Fechar a Porta Serial
 TStatus_Mp20FI = function(var Ret: integer; var ACK: integer; var ST1: integer; var ST2: integer): integer; stdcall;
 TLe_Variaveis = function(Retorno_var: string): integer; stdcall; //Função Para Ler o Retorno de Variaveis da Impressora , Nao Incluir o Var na Declaração
 TRetorna_ASCII = function(Flag: integer): integer; stdcall;
 THandle = integer;

function Carrega_DLL_Bematech_Fi1: boolean;
function Descarrega_DLL_Bematech_Fi1: boolean;
function Abre_Porta_Bematech_Fi1: boolean;
function Reducao_Z_Bematech_Fi1: boolean;
function Leitura_X_Bematech_Fi1: boolean;
function Cancela_Cupom_Bematech_Fi1: boolean;
function Abre_Gaveta_Bematech_Fi1: boolean;
function Abre_Cupom_Bematech_Fi1: boolean;
function Vende_Item_Bematech_Fi1(codigo, descricao, tributo, qnt,
 valor, desconto: string; tipo_qnt, tipo_Qnt_Desc: integer): boolean;
function Desconto_Cupom_Bematech_Fi1(valor: string; tipo_desconto: char): boolean;
function Totaliza_Cupom_Bematech_Fi1(Forma_Pgt, Valor: string): boolean;
function Fecha_Cupom_Bematech_Fi1(Nome, Endereco, Referencia, Bairro,
 Vendedor, Msg_P: string): boolean;
function Envia_Bematech_Fi1(sComando: string): boolean;
procedure Error_Dump_Bematech_Fi1;
procedure Analisa_Retorno_Bematech_Fi1;


 //--- Var declarations ---
var
 iResp: integer;                                    //pega retorno da Função
 sComando: string;                                   //monta o Comando a Ser enviado
 Ret: integer;                                      //pega retorno da Função
 ACK: integer;                                      //pega o ACK
 ST1: integer;                                      //pega o ST1
 ST2: integer;                                      //pega o ST2
 Flag: integer;                                      //para chamar a Função Retorna_ASCII
 Retorno_var: string;                                //Guarda o Retorno de Info
 indice: integer;

 dHandle: THandle;             //---------------\
 IniPortaStr: TIniPortaStr;    //               \\
 FormataTX: TFormataTX;        //               \\\
 FechaPorta: TFechaPorta;      //---------------\\\\   Chamada Dinâmica a DLL
 Status_Mp20FI: TStatus_Mp20FI;//               ///
 Le_Variaveis: TLe_Variaveis;  //               //
 Retorna_ASCII: TRetorna_ASCII;//---------------/

 df_Tipo_Qnt: integer = 7;
 df_Tipo_Qnt_Desc: integer = 8;
 df_Tipo_Desconto: char = 'd';

 Log_Str_Bematech_Fi1: TStrings;

implementation

uses UnitFuncoes, Unit_ECF_Global;

//--- Abre Porta Serial ---
//Funçào que abrea porta de Comunicação e verifica
//se deu erro na inicialização ou Não.
//iResp=0 ERRO   -  iResp=1
function Abre_Porta_Bematech_Fi1: boolean;
begin
 iResp := IniPortaStr(PChar('COM' + IntToStr(PortaECF)));

 if iResp = 0 then
  begin
   LogToFile('Abre_Porta_Bematech_Fi1: ERRO: Erro ao tentar Abrir a Porta de Comunicação com o ECF - COM' +
     IntToStr(PortaECF), True);
   application.messagebox(PChar('Erro ao tentar Abrir a Porta de Comunicação com o ECF - COM' +
     IntToStr(PortaECF) + #13 +
     'Verifique:' + #13 +
     '1 - Se a impressora está ligada e pronta.' + #13 +
     '2 - Se a configuração do ECF está correta.'),
     'Erro!', mb_ok + mb_iconerror);
  end;

 Result := iResp <> 0;
end;

//--- Fecha Porta Serial ---
//iResp=0 ERRO
function Fecha_Porta_Bematech_Fi1: boolean;
begin
 iResp := FechaPorta;

 if iResp = 0 then
  begin
   application.messagebox(PChar('Erro ao tentar Fechar a Porta de Comunicação com o ECF - COM' +
     IntToStr(PortaECF) + #13 +
     'Verifique...'),
     'Erro!', mb_ok + mb_iconerror);
   LogToFile('Fecha_Porta_Bematech_Fi1: ERRO: Erro ao tentar Fechar a Porta de Comunicação com o ECF - COM' +
              IntToStr(PortaECF), True);
  end;

 Result := iResp <> 0;
end;


//--- Executa os Comandos a serem Enviados ---
function Envia_Bematech_Fi1(sComando: string): boolean;
begin
 Result := False;
 screen.cursor := crHourGlass;

 if Abre_Porta_Bematech_Fi1 then
  begin
   iResp := FormataTX(PChar(sComando));

   if iResp <> 0 then
    begin
     application.messagebox('Problemas ao tentar Enviar Comando'#13'Verifique o ECF e tente novamente.',
       'Atenção', mb_ok + mb_iconerror);
     LogToFile('Envia_Bematech_Fi1: ERRO: Problemas ao tentar Enviar Comando', True);
    end;

   Analisa_Retorno_Bematech_Fi1;                        //Função Para Pegar o Retorno da Impressora os 3 Bytes

   Result := iResp = 0;
  end;

 Fecha_Porta_Bematech_Fi1;

 screen.cursor := crDefault;
end;

//--- Analisa a Variável Retorno ---
{Funçào que irá Analisar o Retorno da Impressora
Pega os 3 Bytes e Por sua Vez verifica se o Comando
enviado requer a leitura de mais bytes, como o
numero de série e outros comandos que retornam + info.}
procedure Analisa_Retorno_Bematech_Fi1;
begin
 {Ret:=0; ACK:=0; ST1:=0; ST2:=0;
 for ACK:=0 to 3000 do
 Retorno_var:=Retorno_var+' ';
 iResp:=Status_Mp20FI(Ret,ACK,ST1,ST2);    //Chama a Função de Ler Status
 iResp:=Le_Variaveis(Retorno_var);    //Chama a Função de Ler Retorno, se Tiver irá Retornar.
  //Verifica se Foi ACK ou NAK
  //ACK OK , NAK já sai da Função pois é Erro Critico
 if ACK=21 then
  begin
   //SNAK.Checked:=true;
   exit;
  end;
 if ACK=6 then //SACK.Checked:=true;
  //Variavel.text:='ACK='+IntToStr(ACK)+' ST1='+IntToStr(ST1)+' ST2='+IntToStr(ST2)+#13+#10+Retorno_var;

  {//Tratamento do ST1
  if ST1>=128 then begin ST1128.Checked:=true;ST1:=ST1-128;end;
  if ST1>=64  then begin ST164.Checked:=true; ST1:=ST1-64; end;
  if ST1>=32  then begin ST132.Checked:=true; ST1:=ST1-32; end;
  if ST1>=16  then begin ST116.Checked:=true; ST1:=ST1-16; end;
  if ST1>=8   then begin ST18.Checked :=true; ST1:=ST1-8;  end;
  if ST1>=4   then begin ST14.Checked :=true; ST1:=ST1-4;  end;
  if ST1>=2   then begin ST12.Checked :=true; ST1:=ST1-2;  end;
  if ST1>=1   then begin ST11.Checked :=true; ST1:=ST1-1;  end;

  //Tratamento do ST2
  if ST2>=128 then begin ST2128.Checked:=true;ST2:=ST2-128;end;
  if ST2>=64  then begin ST264.Checked:=true; ST2:=ST2-64; end;
  if ST2>=32  then begin ST232.Checked:=true; ST2:=ST2-32; end;
  if ST2>=16  then begin ST216.Checked:=true; ST2:=ST2-16; end;
  if ST2>=8   then begin ST28.Checked :=true; ST2:=ST2-8;  end;
  if ST2>=4   then begin ST24.Checked :=true; ST2:=ST2-4;  end;
  if ST2>=2   then begin ST22.Checked :=true; ST2:=ST2-2;  end;
  if ST2>=1   then begin ST21.Checked :=true; ST2:=ST2-1;  end;}
end;

//--- Abre Gaveta Acoplada ao ECF ---
function Abre_Gaveta_Bematech_Fi1: boolean;
begin
 Result := Envia_Bematech_Fi1(#27 + '|22|' + #64 + '|' + #27);
 if not Result then
  LogToFile('Abre_Gaveta_Bematech_Fi1: ERRO: Abertura de Gaveta', True);
end;

//--- Leitura X ---
function Leitura_X_Bematech_Fi1: boolean;
begin
 Result := Envia_Bematech_Fi1(#27 + '|06|' + #27);
 if not Result then
  LogToFile('Leitura_X_Bematech_Fi1: ERRO: Envio de Leitura X', True);
end;

//--- Reducao Z ---
function Reducao_Z_Bematech_Fi1: boolean;
begin
 Result := False;

 if application.messagebox('Executar Redução Z ?', 'Atenção',
   Mb_YesNo + mb_defbutton2 + mb_iconquestion) = idYes then
   Result := Envia_Bematech_Fi1(#27 + '|05|' + #27);
 if not Result then
  LogToFile('Reducao_Z_Bematech_Fi1: ERRO: Envio de Redução Z', True);
end;

//--- Cancela Cupom Fiscal ---
function Cancela_Cupom_Bematech_Fi1: boolean;
begin
 Result := Envia_Bematech_Fi1(#27 + '|14|' + #27);
 if not Result then
  LogToFile('Cancela_Cupom_Bematech_Fi1: ERRO: Cancelamento de Cumpom', True);
end;

//--- Abre Cupom Fiscal ---
function Abre_Cupom_Bematech_Fi1: boolean;
begin
 Result := Envia_Bematech_Fi1(#27 + '|0|' + #27);
 Log_Str_Bematech_Fi1.Clear;
 Log_Str_Bematech_Fi1.Append('Abertura de Cupom - Bematech Fi1');
 if not Result then
  begin
   Error_Dump_Bematech_Fi1;
   Application.MessageBox('Erro durante Abertura de Cupom Fiscal...'#13 +
                          'Verifique: Não foi possível realizar abertura de cupom fiscal.',
                          'Atenção',
                          mb_ok + mb_iconerror);
  end;
 sleep(100);
end;

//--- Vende Item Cupom Fiscal ---
function Vende_Item_Bematech_Fi1(codigo, descricao, tributo, qnt, valor,
 desconto: string;
 tipo_qnt, tipo_Qnt_Desc: integer): boolean;
begin
 codigo := alfastuff(codigo, 13, False);
 descricao := alfastuff(descricao, 29, True);
 tributo := alfastuff(tributo, 2, True);

 qnt := FormatoNum(qnt + '0', tipo_qnt, True);
 //inteira(4 caracteres) ou fracionaria (7 caracteres)
 valor := FormatoNum(valor, 8, False);
 desconto := FormatoNum(desconto, tipo_Qnt_Desc, True);
 //percentual(4 caracteres) ou valor (8 caracteres)

 Result := Envia_Bematech_Fi1(#27 + '|9|' + codigo + '|' +
   descricao + '|' +
   tributo + '|' +
   qnt + '|' +
   valor + '|' +
   desconto + '|' + #27);

 Log_Str_Bematech_Fi1.Append(Format('Vende Item - Bematech Fi1 - *Código: %s *Descrição: %s *Tributo: %s *Qnt: %s *Valor: %s *Desconto: %s', [codigo, descricao, tributo, qnt, valor, desconto]));

 if not Result then
  begin
   Error_Dump_Bematech_Fi1;
   Application.MessageBox('Erro durante Registro de Venda de Item...'#13 +
                          'Verifique: Ocorreu um erro durante o registro da venda dos itens.',
                          'Atenção',
                          mb_ok + mb_iconerror);
  end;
 sleep(100);
end;

//--- Efetua Desconto Cupom Fiscal ---
//Valores esperados para Tipo_Desconto:
// 'A' = Acrescimo Percentual
// 'D' = Desconto Percentual
// 'a' = Acrescimo por Valor
// 'd' = Desconto por Valor
function Desconto_Cupom_Bematech_Fi1(valor: string; tipo_desconto: char): boolean;
begin
 case tipo_desconto of
   'A', 'D': valor := FormatoNum(valor, 4, False);
   'a', 'd': valor := FormatoNum(valor, 14, False);
  end;
 Result := Envia_Bematech_Fi1(#27 + '|32|' + Tipo_Desconto + '|' +
   Valor + '|' + #27);

 Log_Str_Bematech_Fi1.Append(Format('Desconto Cupom - Bematech Fi1 - *Tipo_Desconto: %s *Valor: %s', [Tipo_Desconto, Valor]));

 if not Result then
  begin
   Error_Dump_Bematech_Fi1;
   Application.MessageBox('Erro durante Desconto de Cupom Fiscal...'#13 +
                          'Verifique: Ocorreu um erro durante o desconto do cupom.',
                          'Atenção',
                          mb_ok + mb_iconerror);
  end;
 sleep(200);
end;

//--- Totaliza Cupom Fiscal ---
function Totaliza_Cupom_Bematech_Fi1(Forma_Pgt, Valor: string): boolean;
begin
 Forma_Pgt := alfastuff(Forma_Pgt, 22, False);
 valor := FormatoNum(valor, 14, False);

 Result := Envia_Bematech_Fi1(#27 + '|33|' + Forma_Pgt + '|' + valor + '|' + #27);

 Log_Str_Bematech_Fi1.Append(Format('Totaliza Cupom - Bematech Fi1 - *Forma_Pgt: %s *Valor: %s', [Forma_Pgt, Valor]));

 if not Result then
  begin
   Error_Dump_Bematech_Fi1;
   Application.MessageBox('Erro durante Totalização de Cupom Fiscal...'#13 +
                          'Verifique: Ocorreu um erro durante a totalização do cupom.',
                          'Atenção',
                          mb_ok + mb_iconerror);
  end;

 sleep(200);
end;

//--- Fecha Cupom Fiscal ---
function Fecha_Cupom_Bematech_Fi1(Nome, Endereco, Referencia, Bairro, Vendedor,
 Msg_P: string): boolean;
begin
 if trim(Nome) <> '' then
   Nome := alfastuff('Nome: ' + Nome, 48, True);
 if trim(Endereco) <> '' then
   Endereco := alfastuff('End.: ' + Endereco, 48, True);
 if trim(Referencia) <> '' then
   Referencia := alfastuff('Ref.: ' + Referencia, 48, True);
 if trim(Bairro) <> '' then
   Bairro := alfastuff('Bairro: ' + Bairro, 48, True);
 if trim(Vendedor) <> '' then
   Vendedor := alfastuff('Vendedor: ' + Vendedor, 48, True);
 if trim(Msg_P) <> '' then
   Msg_P := alfastuff(Msg_P, 48, True);


 Result := Envia_Bematech_Fi1(#27 + '|34|' + Nome +
   Endereco +
   Referencia +
   Bairro +
   Vendedor +
   Msg_P +
   df_Msg +
   '|' + #27);

 Log_Str_Bematech_Fi1.Append(Format('Fecha Cupom - Bematech Fi1 - *Nome: %s *Endereco: %s *Referencia: %s *Bairro: %s *Vendedor: %s *Msg_P: %s *df_Msg: %s',
                       [Nome, Endereco, Referencia, Bairro, Vendedor, Msg_P, df_Msg]));

 if not Result then
  begin
   Error_Dump_Bematech_Fi1;
   Application.MessageBox('Erro durante Fechamento de Cupom Fiscal...'#13 +
                          'Verifique: Ocorreu um erro durante o fechamento do cupom.',
                          'Atenção',
                          mb_ok + mb_iconerror);
  end;
end;

function Carrega_DLL_Bematech_Fi1: boolean;
begin
 Result := False;
 Log_Str_Bematech_Fi1 := TStringList.Create; // Cria StringList de Log de Erros

 //Dynamic Call
 dHandle := LoadLibrary('Mp20Fi32.dll');
 if dHandle <> 0 then
  begin @IniPortaStr := GetProcAddress(dHandle, 'IniPortaStr');
        @FormataTX := GetProcAddress(dHandle, 'FormataTX');
        @FechaPorta := GetProcAddress(dHandle, 'FechaPorta');
        @Status_Mp20FI := GetProcAddress(dHandle, 'Status_Mp20FI');
        @Le_Variaveis := GetProcAddress(dHandle, 'Le_Variaveis');
        @Retorna_ASCII := GetProcAddress(dHandle, 'Retorna_ASCII');
   if (@IniPortaStr = nil) or
      (@FormataTX = nil) or
      (@FechaPorta = nil) or
      (@Status_Mp20FI = nil) or
      (@Le_Variaveis = nil) or
      (@Retorna_ASCII = nil) then
      Application.MessageBox('Erro ao fazer a leitura da Mp20Fi32.dll. Verifique...',
        'Atenção!',
        Mb_ok + MB_ICONERROR)
   else
     Result := True;
  end;
end;

function Descarrega_DLL_Bematech_Fi1: boolean;
begin
 Log_Str_Bematech_Fi1.Free; //Destroi StringList
 Result := FreeLibrary(dHandle);
end;

//Faz o log de todos os valores do cupom fiscal em caso de erro na impressão
procedure Error_Dump_Bematech_Fi1;
var
 x: Integer;
begin
 if Log_Str_Bematech_Fi1.Count > 0 then
  begin
   LogToFile(Format('ERRO NA IMPRESSAO DE CUPOM FISCAL - %d Linhas de Log de Erro', [Log_Str_Bematech_Fi1.Count]), True);
   for x := 0 to Log_Str_Bematech_Fi1.Count - 1 do
    LogToFile(Log_Str_Bematech_Fi1[x], True);
  end;
end;

end.
