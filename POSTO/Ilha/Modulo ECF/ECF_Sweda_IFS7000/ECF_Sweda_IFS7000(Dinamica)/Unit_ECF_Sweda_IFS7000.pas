unit Unit_ECF_Sweda_IFS7000;

interface

uses
 Forms, Windows, IniFiles, SysUtils, Classes, IBServices, QDialogs, QControls;

type
 TAbrePorta    = Function(Numero,Timeout:Integer):Boolean; Far;
 TEnviaComando = Function(Texto1:PChar):ShortString;       Far;
 TFechaPorta   = Function(Numero:Integer):Boolean;         Far;
 THandle       = Integer;

 Function Carrega_DLL_Sweda_IFS7000  : Boolean;
 Function Descarrega_DLL_Sweda_IFS7000: Boolean;
 Function Abre_Gaveta_Sweda_IFS7000(Teste_Gaveta_Aberta: Boolean): boolean;
 Function Cancela_Cupom_Sweda_IFS7000    : Boolean;
 Function Gaveta_Aberta_Sweda_IFS7000    : Boolean;
 Function Leitura_X_Sweda_IFS7000        : Boolean;
 Function Reducao_Z_Sweda_IFS7000        : Boolean;
 Function Horario_Verao_Sweda_IFS7000    : Boolean;
 Function Status_Transacao_Sweda_IFS7000 : Boolean;
 Function Abre_Cupom_Sweda_IFS7000(CGC_CPF: String): Boolean;
 Function Vende_Item_Sweda_IFS7000(Codigo, Qnt, Valor_Und, Sub_Total, Descricao, Aliquota: String): Boolean;
 Function Desconto_Cupom_SWEDA_IFS7000(valor: String): Boolean;
 function Totaliza_Cupom_SWEDA_IFS7000(Forma_Pgt_Idx, valor: String): Boolean;
 function Fechar_Cupom_SWEDA_IFS7000(Nome, Endereco, Referencia,
                                     Bairro, Vendedor, Msg_P: String): Boolean;

 Function Estado_ECF_Sweda_IFS7000: Boolean;
 Function Analisa_Status_Sweda_IFS7000 (Resp: String; index: integer; Info: integer = 0): string;
 Function Analisa_Transacao_Sweda_IFS7000 (Resp: String; Index: Integer; Info: integer = 0): string;
 Function AbrePorta_Sweda_IFS7000: boolean;
 Function FechaPorta_Sweda_IFS7000: boolean;

var
 Comando: array[0..512] of Char;
 Resposta:String;

 AbrePorta    : TAbrePorta;
 EnviaComando : TEnviaComando;
 FechaPorta   : TFechaPorta;
 Handle_Sweda : THandle;

implementation

uses Unit_ECF_Global, UnitFuncoes;

//------ Analisa String de Resposta de Transação do ECF ------ Sweda
Function Analisa_Transacao_Sweda_IFS7000 (Resp: String; Index: Integer; Info: integer = 0): string;
var
 ITEM, STATUS, TRANSACAO, ESCAPE, REDUCAO, LIQ, BRUTO, ERRO, DATA,
 HORA, VERAO, MENSERRO, ECF, PAPEL, ABREV, FALTA, REC, FAZX, ABRIR, PROG, VINC: string;
begin
//------ Leitura dos Valores retornados nas Variáveis ------
 ITEM:= copy(Resp,7,3);
 STATUS:= copy(Resp,10,1);
 TRANSACAO:= copy(Resp,11,8);
 ESCAPE:= copy(Resp,19,2);
 REDUCAO:= copy(Resp,21,1);
 LIQ:= copy(Resp,22,12);
 BRUTO:= copy(Resp,34,12);
 ERRO:= copy(Resp,46,1);
 DATA:= copy(Resp,47,6);
 HORA:= copy(Resp,53,4);
 VERAO:= copy(Resp,57,1);
 MENSERRO:= copy(Resp,58,35);
 ECF:= copy(Resp,93,3);
 PAPEL:= copy(Resp,96,1);
 ABREV:= copy(Resp,97,1);
 FALTA:= copy(Resp,98,12);
 REC:= copy(Resp,109,12);
 FAZX:= copy(Resp,122,1);
 ABRIR:= copy(Resp,123,1);
 PROG:= copy(Resp,124,1);
 VINC:= copy(Resp,125,1);
 Result:='';

//------ Simulador Sweda tem erro na string retornada para este comando! ------
//--- Utilizar as linhas abaixo para corrigir, desabilitando as respectivas acima! ---
{ VERAO:= copy(Resp,55,1);
 MENSERRO:= copy(Resp,55,35);
 ECF:= copy(Resp,91,3);
 PAPEL:= copy(Resp,94,1);
 ABREV:= copy(Resp,95,1);
 FALTA:= copy(Resp,96,12);
 REC:= copy(Resp,107,12);
 FAZX:= copy(Resp,120,1);
 ABRIR:= copy(Resp,121,1);
 PROG:= copy(Resp,122,1);
 VINC:= copy(Resp,123,1);}

//--- Nenhum tratamento de informação requisitado... variáveis retornadas "as-is" ---
 if info = 0 then
  begin
   Case index of
    0: Result := ITEM;
    1: Result := STATUS;
    2: Result := TRANSACAO;
    3: Result := ESCAPE;
    4: Result := REDUCAO;
    5: Result := LIQ;
    6: Result := BRUTO;
    7: Result := ERRO;
    8: Result := DATA;
    9: Result := HORA;
    10: Result := VERAO;
    11: Result := MENSERRO;
    12: Result := ECF;
    13: Result := PAPEL;
    14: Result := ABREV;
    15: Result := FALTA;
    16: Result := REC;
    17: Result := FAZX;
    18: Result := ABRIR;
    19: Result := PROG;
    20: Result := VINC;
    -1: Result := Resp;
   end;
  end
 else if info = 1 then                                                           //Tratamento de informações requisitados
  begin
   Case index of                                                                 //Testa qual bit deseja-se informação e retorna, -1 para todos os bits
    0: Result := Result + #13 + '- Quantidade de Itens lançados com sucesso: ' + ITEM;
    1:
    begin
     if STATUS = 'C' then
      Result:=Result + #13 + '- Transação Concluída'
     else if STATUS = 'P' then
      Result:=Result + #13 + '- Transação Pendente'
     else if STATUS = 'E' then
      Result:=Result + #13 + '- Erro no Comando Informado pela aplicação'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "STATUS" do ECF';
    end;
    2:
    begin
     if TRANSACAO = ' VENDAS ' then
      Result:=Result + #13 + '- Modo de Operação: "Vendas"'
     else if TRANSACAO = 'CANCELOU' then
      Result:=Result + #13 + '- Modo de Operação: "Venda Cancelada com Sucesso"'
     else if TRANSACAO = 'LEIT. X ' then
      Result:=Result + #13 + '- Modo de Operação: "Leitura X"'
     else if TRANSACAO = 'LEIT. MF' then
      Result:=Result + #13 + '- Modo de Operação: "Leitura da Memória Fiscal"'
     else if TRANSACAO = 'REDUCAO ' then
      Result:=Result + #13 + '- Modo de Operação: "Redução Fiscal"'
     else if TRANSACAO = 'N.FISCAL' then
      Result:=Result + #13 + '- Modo de Operação: "Comprovante"'
     else if TRANSACAO = 'TECNICO ' then
      Result:=Result + #13 + '- Modo de Operação: "Intervenção Técnica"'
     else if TRANSACAO = '        ' then
      Result:=Result + #13 + '- Modo de Operação: "Transação Concluída"'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "TRANSACAO" do ECF';
    end;
    3: Result := Result + #13 + '- Último comando executado pelo ECF: ' + ESCAPE;
    4:
    begin
     If REDUCAO = 'N' then
      Result:=Result + #13 + '- REDUÇÃO Z SERÁ ACEITA pois existe movimento ou data sem movimento'
     else If REDUCAO = 'S' then
      Result:=Result + #13 + '- Foi FEITA UMA REDUÇÃO Z HOJE, uma nova redução poderá acarretar: '
                       +#13+ '  * Comando recusado com mensagem "Já fez redução hoje" ou "Dia encerrado"'
                       +#13+ '  * Emissão da Redução Z, não sendo mais possível realizar vendas no dia de hoje'
     else If REDUCAO = 'F' then
      Result:=Result + #13 + '- EFETUAR A REDUÇÃO Z'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "REDUCAO" do ECF';
    end;
    5:
    begin
     insert(',',LIQ,Length(LIQ)-1);
     Result:=Result + #13 + '- Total Líquido das vendas: ' + FormatFloat('0.00', strtofloat(LIQ));
    end;
    6:
    begin
     insert(',',BRUTO,Length(BRUTO)-1);
     Result:=Result + #13 + '- Total Líquido mais descontos: ' + FormatFloat('0.00', strtofloat(BRUTO));
    end;
    7:
    begin
     if ERRO = '!' then
      Result:=Result + #13 + '- Não há Erro'
     else if ERRO = '@' then
      Result:=Result + #13 + '- Há Erro, Mensagem de Erro: ' + MENSERRO
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "MENSERRO" do ECF';
    end;
    8:
    begin
     insert('/',Data,3);
     insert('/',Data,6);
     Result:=Result + #13 + '- Data atual do ECF: ' + DATA;
    end;
    9:
    begin
     insert(':',Hora,3);
     Result:=Result + #13 + '- Hora atual do ECF: ' + HORA;
    end;
    10:
    begin
     if VERAO = 'S' then
      Result:=Result + #13 + '- Horário de Verão ATIVADO'
     else if VERAO = 'N' then
      Result:=Result + #13 + '- Horário de Verão DESATIVADO'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "VERAO" do ECF';
    end;
    11: Result := Result + #13 + '- Mensagem de Erro do ECF: ' + MENSERRO;
    12: Result := Result + #13 + '- Nº do ECF: ' + ECF;
    13:
    begin
     if PAPEL = 'S' then
      Result:=Result + #13 + '- ECF aguarda confirmação após a troca de papel'
     else if PAPEL = 'N' then
      Result:=Result + #13 + '- ECF não aguarda confirmação após a troca de papel'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "PAPEL" do ECF';
    end;
    14:
    begin
     if ABREV = 'S' then
      Result:=Result + #13 + '- Mensagens de Erro retornadas sobre a forma abreviada'
     else if ABREV = 'N' then
      Result:=Result + #13 + '- Mensagens de Erro retornadas sobre a forma não abreviada'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "ABREV" do ECF';
    end;
    15:
    begin
     insert(',',FALTA,Length(FALTA)-1);
     Result := Result + #13 + '- Total a receber até o momento (Valor do Cupom - Valor já recebido): ' + FormatFloat('0.00', strtofloat(FALTA));
    end;
    16:
    begin
     insert(',',REC,Length(REC)-1);
     Result:=Result + #13 + '- Soma registrada em recebimentos: ' + FormatFloat('0.00', strtofloat(REC));
    end;
    17:
    begin
     If FAZX = 'S'then
      Result:=Result + #13 + '- Leitura X Efetuada'
     else If FAZX = 'N'then
      Result:=Result + #13 + '- Leitura X Não Efetuada'
     else If FAZX = 'F'then
      Result:=Result + #13 + '- Papel está acabando ou início de dia (Emitir Leitura X)'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "FAZX" do ECF';
    end;
    18:
    begin
     If ABRIR = 'N' then
      Result:=Result + #13 + '- Dia não encerrado ou início do dia (Venda Permitida)'
     else If ABRIR = 'S' then
      Result:=Result + #13 + '- Dia Encerrado'
     else If ABRIR = 'F' then
      Result:=Result + #13 + '- Encerrar o Dia (Efetuar Redução Z)'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "ABRIR" do ECF';
    end;
    19:
    begin
     if PROG = 'S' then
      Result:=Result + #13 + '- Modo de Intervenção Ativado'
     else if PROG = 'N' then
      Result:=Result + #13 + '- Modo Fiscal Ativado'
     else
      Result:=Result + #13 + '- Erro ao Ler variável de "PROG" do ECF';
    end;
    20:
    begin
     Result := VINC;
    end;
    -1:                                                                          //Retorna informações sobre todos os bits
     begin
      Result:='Retorno do ECF: ' +#13+ Resp + #13#13 + 'Status de Transação do ECF: ';
      Result := Result + #13 + '- Quantidade de Itens lançados com sucesso: ' + ITEM;
      Result := Result + #13 + '- Nº do ECF: ' + ECF;
      Result := Result + #13 + '- Último comando executado pelo ECF: ' + ESCAPE;
      if STATUS = 'C' then
       Result:=Result + #13 + '- Transação Concluída'
      else if STATUS = 'P' then
       Result:=Result + #13 + '- Transação Pendente'
      else if STATUS = 'E' then
       Result:=Result + #13 + '- Erro no Comando Informado pela aplicação'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "STATUS" do ECF';

      if TRANSACAO = ' VENDAS ' then
       Result:=Result + #13 + '- Modo de Operação: "Vendas"'
      else if TRANSACAO = 'CANCELOU' then
        Result:=Result + #13 + '- Modo de Operação: "Venda Cancelada com Sucesso"'
      else if TRANSACAO = 'LEIT. X ' then
       Result:=Result + #13 + '- Modo de Operação: "Leitura X"'
      else if TRANSACAO = 'LEIT. MF' then
       Result:=Result + #13 + '- Modo de Operação: "Leitura da Memória Fiscal"'
      else if TRANSACAO = 'REDUCAO ' then
       Result:=Result + #13 + '- Modo de Operação: "Redução Fiscal"'
      else if TRANSACAO = 'N.FISCAL' then
       Result:=Result + #13 + '- Modo de Operação: "Comprovante"'
      else if TRANSACAO = 'TECNICO ' then
       Result:=Result + #13 + '- Modo de Operação: "Intervenção Técnica"'
      else if TRANSACAO = '        ' then
       Result:=Result + #13 + '- Modo de Operação: "Transação Concluída"'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "TRANSACAO" do ECF';

      If REDUCAO = 'N' then
       Result:=Result + #13 + '- REDUÇÃO SERÁ ACEITA pois existe movimento ou data sem movimento'
      else If REDUCAO = 'S' then
       Result:=Result + #13 + '- Foi FEITA UMA REDUÇÃO HOJE'
      else If REDUCAO = 'F' then
       Result:=Result + #13 + '- EFETUAR A REDUÇÃO'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "REDUCAO" do ECF';

      If ABRIR = 'N' then
       Result:=Result + #13 + '- Dia não encerrado ou início do dia (Venda Permitida)'
      else If ABRIR = 'S' then
       Result:=Result + #13 + '- Dia Encerrado'
      else If ABRIR = 'F' then
       Result:=Result + #13 + '- Encerrar o Dia (Efetuar Redução Z)'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "ABRIR" do ECF';

      insert('/',Data,3);
      insert('/',Data,6);
      Result:=Result + #13 + '- Data atual do ECF: ' + DATA;

      insert(':',Hora,3);
      Result:=Result + #13 + '- Hora atual do ECF: ' + HORA;

      insert(',',LIQ,Length(LIQ)-1);
      Result:=Result + #13 + '- Total Líquido das vendas: ' + FormatFloat('0.00', strtofloat(LIQ));

      insert(',',BRUTO,Length(BRUTO)-1);
      Result:=Result + #13 + '- Total Líquido mais descontos: ' + FormatFloat('0.00', strtofloat(BRUTO));

      insert(',',REC,Length(REC)-1);
      Result:=Result + #13 + '- Soma registrada em recebimentos: ' + FormatFloat('0.00', strtofloat(REC));

      insert(',',FALTA,Length(FALTA)-1);
      Result := Result + #13 + '- Total a receber até o momento (Valor do Cupom - Valor já recebido): ' + FormatFloat('0.00', strtofloat(FALTA));

      if ERRO = '!' then
       Result:=Result + #13 + '- Não há Erro'
      else if ERRO = '@' then
       Result:=Result + #13 + '- Há Erro, Mensagem de Erro: ' + MENSERRO
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "MENSERRO" do ECF';

      if ABREV = 'S' then
       Result:=Result + #13 + '- Mensagens de Erro retornadas sobre a forma abreviada'
      else if ABREV = 'N' then
       Result:=Result + #13 + '- Mensagens de Erro retornadas sobre a forma não abreviada'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "ABREV" do ECF';

      if PAPEL = 'S' then
       Result:=Result + #13 + '- ECF aguarda confirmação após a troca de papel'
      else if PAPEL = 'N' then
       Result:=Result + #13 + '- ECF não aguarda confirmação após a troca de papel'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "PAPEL" do ECF';

      if VERAO = 'S' then
       Result:=Result + #13 + '- Horário de Verão ATIVADO'
      else if VERAO = 'N' then
       Result:=Result + #13 + '- Horário de Verão DESATIVADO'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "VERAO" do ECF';

      If FAZX = 'S'then
       Result:=Result + #13 + '- Leitura X Efetuada'
      else If FAZX = 'N'then
       Result:=Result + #13 + '- Leitura X Não Efetuada'
      else If FAZX = 'F'then
       Result:=Result + #13 + '- Papel está acabando ou início de dia (Emitir Leitura X)'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "FAZX" do ECF';

      if PROG = 'S' then
       Result:=Result + #13 + '- Modo de Intervenção Ativado'
      else if PROG = 'N' then
       Result:=Result + #13 + '- Modo Fiscal Ativado'
      else
       Result:=Result + #13 + '- Erro ao Ler variável de "PROG" do ECF';
     end;
   end;
  end;
 end;


//------ Analisa String de Resposta do Status do ECF ------ Sweda
Function Analisa_Status_Sweda_IFS7000 (Resp: String; index: integer; Info: integer = 0): string;
var
 AUT, SLIP, STATUS: integer;
 OK, ERRO: string;
begin
//------ Leitura dos Valores retornados nas Variáveis ------
 OK:= copy(Resp,2,1);
 AUT:=-1;
 SLIP:=-1;
 STATUS:=-1;
 if copy(Resp,3,1) = 'P' then
  begin
   AUT:= strtoint(copy(Resp,4,1));
   SLIP:= strtoint(copy(Resp,5,1));
   STATUS:= strtoint(copy(Resp,6,1));
   ERRO:= copy(Resp,13,Length(Resp)-14);
  end
 else
  ERRO:= copy(Resp,7,Length(Resp)-7);
 Result:='';

 if info = 0 then                                                               //--- Nenhum tratamento de informação requisitado... variáveis retornadas "as-is" ---
  begin
   case index of
    1: Result:= OK;
    2: Result:= inttostr(AUT);
    3: Result:= inttostr(SLIP);
    4: Result:= inttostr(STATUS);
    5: Result:= ERRO;
    -1: Result := Resp;
   end;
  end
 else if info = 1 then                                                          //--- Tratamento de informação requisitado...  ---
  begin
   Case Index of                                                                //Testa qual bit deseja-se informação e retorna, -1 para todos os bits
    1:
    begin
     if OK = '+' then
      Result:=Result + #13 + ' - Último Comando executado com sucesso'
     else if OK = '-' then
      Result:=Result + #13 + ' - Último Comando não executado'
     else
      Result:=Result + #13 + ' - Erro ao Ler variável de "OK" do ECF';
    end;
    2:
    begin
     {Case AUT of
      0: result:=result + #13 + ' - Há documento para Autenticar';
      1: result:=result + #13 + ' - Impressora Off-Line';
      2: result:=result + #13 + ' - Time-Out de Impressão';
      5: result:=result + #13 + ' - Sem documento para Autenticar';
      6: result:=result + #13 + ' - Time-Out de recepção do Impressor do ECF';
      -1: result:=result + #13 + ' - Variável "AUT" não retornada pelo ECF';
      else
       Result:=Result + #13 + ' - Erro ao Ler variável de "AUT" do ECF';
     end;  }
    end;
    3:
    begin
{     Case SLIP of
      0: result:=result + #13 + ' - Há folha solta presente';
      1: result:=result + #13 + ' - Impressora Off-Line';
      2: result:=result + #13 + ' - Time-Out de Transmissão';
      5: result:=result + #13 + ' - Sem folha solta presente';
      6: result:=result + #13 + ' - Time-Out de recepção do Impressor do ECF';
      -1: result:=result + #13 + ' - Variável "SLIP" não retornada pelo ECF';
      else
       Result:=Result + #13 + ' - Erro ao Ler variável de "SLIP" do ECF';
     end;  }
    end;
    4:
    begin
     Case STATUS of
      0: result:=result + #13 + ' - Impressora tem papel';
      1: result:=result + #13 + ' - Impressora Off-Line';
      2: result:=result + #13 + ' - Time-Out de Transmissão';
      5: result:=result + #13 + ' - Sem papel / Papel acabando';
      6: result:=result + #13 + ' - Time-Out de recepção do Impressor do ECF';
      -1: result:=result + #13 + ' - Variável "STATUS" não retornada pelo ECF';
      else
       Result:=Result + #13 + ' - Erro ao Ler variável de "STATUS" do ECF';
     end;
    end;
    5:
    begin
     if ERRO = '' then
      Result:=Result + #13 + ' - Nenhuma mensagem de erro específica retornada pelo ECF'
     else
      Result:=Result + #13 + ' - Mensagem de erro: ' + ERRO;
    end;
    -1:
    begin
     Result:='Retorno do ECF: ' +#13+ Resp + #13#13 + 'Status do ECF: ';

     if OK = '+' then
      Result:=Result + #13 + ' - Último Comando executado com sucesso'
     else if OK = '-' then
      Result:=Result + #13 + ' - Último Comando não executado'
     else
      Result:=Result + #13 + ' - Erro ao Ler variável de "OK" do ECF';

{     Case AUT of
      0: result:=result + #13 + ' - Há documento para Autenticar';
      1: result:=result + #13 + ' - Impressora Off-Line';
      2: result:=result + #13 + ' - Time-Out de Impressão';
      5: result:=result + #13 + ' - Sem documento para Autenticar';
      6: result:=result + #13 + ' - Time-Out de recepção do Impressor do ECF';
      -1: Result:= Result;
      else
       Result:=Result + #13 + ' - Erro ao Ler variável de "AUT" do ECF';
     end;   }
{     Case SLIP of
      0: result:=result + #13 + ' - Há folha solta presente';
      1: result:=result + #13 + ' - Impressora Off-Line';
      2: result:=result + #13 + ' - Time-Out de Transmissão';
      5: result:=result + #13 + ' - Sem folha solta presente';
      6: result:=result + #13 + ' - Time-Out de recepção do Impressor do ECF';
      -1: Result:= Result;
      else
       Result:=Result + #13 + ' - Erro ao Ler variável de "SLIP" do ECF';
     end;      }
     Case STATUS of
      0: result:=result + #13 + ' - Impressora tem papel';
      1: result:=result + #13 + ' - Impressora Off-Line';
      2: result:=result + #13 + ' - Time-Out de Transmissão';
      5: result:=result + #13 + ' - Sem papel / Papel acabando';
      6: result:=result + #13 + ' - Time-Out de recepção do Impressor do ECF';
      -1: Result:= Result;
      else
       Result:=Result + #13 + ' - Erro ao Ler variável de "STATUS" do ECF';
     end;

     if ERRO = '' then
      Result:=Result + #13 + ' - Nenhuma mensagem de erro específica retornada pelo ECF'
     else
      Result:=Result + #13 + ' - Mensagem de erro: ' + ERRO;
    end;
   end;
  end;
end;


//------ Testa se Gaveta Acoplada ao ECF está Aberta ------
function Gaveta_Aberta_Sweda_IFS7000: boolean;
begin
 Result:=False;

 StrPCopy(Comando,#27+'.22}');
 Resposta:=EnviaComando(Comando);
 if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                       //Comando não Executado
  Application.messagebox(PChar('Erro ao tentar verificar estado atual da Gaveta do ECF:' +#13+
                         Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                         'Verifique o ECF e tente novamente.'),
                         'ERRO :: Status do ECF',mb_OK + mb_iconinformation)
 else if copy(Resposta, Length(Resposta) - 1, 1) = '0' then                                     //Gaveta Aberta
  Result:=true;
end;

//------ Abre Gaveta Acoplada ao ECF ------
Function Abre_Gaveta_Sweda_IFS7000(Teste_Gaveta_Aberta: Boolean): boolean;
begin
 Result:=false;

 if not Gaveta_Aberta_Sweda_IFS7000 then
  begin
   StrPCopy(Comando,#27+'.21}');
   Resposta:=EnviaCOmando(Comando);
   if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                        //Comando não Executado
    Application.messagebox(PChar('Erro ao tentar Abrir Gaveta acoplada ao ECF:' +#13+
                           Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                           'Verifique o ECF e tente novamente.'),
                           'ERRO :: Status do ECF',mb_OK + mb_iconinformation)
   else if copy(Resposta, 5, 1) = '0' then                                      //Gaveta Aberta
    Result:=true;
  end;
 if Teste_Gaveta_Aberta then
  while Gaveta_Aberta_Sweda_IFS7000 do
   application.MessageBox('Feche a Gaveta e clique OK para continuar...',
                          'Gaveta Aberta', mb_ok + mb_iconexclamation);

end;

//------ Cancela Cupom Fiscal ------
Function Cancela_Cupom_Sweda_IFS7000: boolean;
begin
 Result := False;

 StrPCopy(Comando,#27+'.05}');
 Resposta := EnviaCOmando(Comando);
 if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                        //Comando não Executado
  begin
   Application.messagebox(PChar('Erro ao tentar Cancelar Último Cupom Fiscal:' +#13+
                          Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Status do ECF', mb_OK + mb_iconinformation);
   exit;
  end;

 Result := True;
end;

//--- Leitura X ---
Function Leitura_X_Sweda_IFS7000: Boolean;
begin
 Result := False;

 StrPCopy(Comando,#27+'.13N}');
 Resposta:=EnviaCOmando(Comando);
 if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                                      //Comando não Executado
  begin
   Application.messagebox(PChar('Erro ao tentar executar Leitura X:' +
                          Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Estado da Impressora',mb_OK + mb_iconinformation);
   exit;
  end;

 Result := True;
end;

//--- Redução Z ---
Function Reducao_Z_Sweda_IFS7000: Boolean;
begin
 Result := False;

 StrPCopy(Comando,#27+'.28}{');
 Resposta:=EnviaComando(Comando);
 if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '+' then                                      //Comando Leitura de Status da Redução Executado
  begin
   If Application.messagebox(PChar('Executar Redução Z ?' +#13#13+ 'Status de Transação do ECF:' + Analisa_Transacao_Sweda_IFS7000(Resposta, 4, 1) + Analisa_Transacao_Sweda_IFS7000(Resposta, 18, 1)),'Atenção',Mb_YesNo+mb_defbutton2+mb_iconquestion) = idyes then
    begin
     StrPCopy(Comando, #27 + '.14N' + RemoveInvalid('/',datetostr(now)) + '}{');
     Resposta:=EnviaComando(Comando);
     if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                                  //Comando Redução Z não Executado
      begin
       Application.messagebox(PChar('Erro ao tentar executar Redução Z:' +#13+
                              Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                              'Verifique o ECF e tente novamente.'),
                              'ERRO :: Status do ECF',mb_OK + mb_iconinformation);
       exit;
      end
    end;
  end
 else                                                                          //Comando Leitura de Status da Redução não Executado
  begin
   Application.messagebox(PChar('Erro ao tentar retornar informações sobre estado da Redução Z do ECF:' +
                          Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Estado da Impressora',mb_OK + mb_iconinformation);
   exit;
  end;

 Result := True;
end;

//--- Estado do ECF ---
Function Estado_ECF_Sweda_IFS7000: Boolean;
begin
 StrPCopy(Comando,#27+'.23}');
 Resposta := EnviaCOmando(Comando);
 Application.messagebox(PChar(Analisa_Status_Sweda_IFS7000(Resposta, -1,1)),
                        'Status do ECF',mb_OK + mb_iconinformation);
Result := True;                        
end;

//--- Programa Horário de Verão ---
Function Horario_Verao_Sweda_IFS7000: Boolean;
begin
 Result := False;

 StrPCopy(Comando,#27+'.28}');
 Resposta:=EnviaCOmando(Comando);
 if Analisa_Transacao_Sweda_IFS7000(Resposta, 10) = 'N' then                                  //Ativado
  begin
   if application.MessageBox('Horário de Verão DESATIVADO, Ativar Horário de Verão no ECF?',
                             'Atenção', mb_YesNo+mb_IconQuestion+mb_defbutton2) = idyes then
    begin
     StrPCopy(Comando,#27+'.36S}');
     Resposta := EnviaCOmando(Comando);

     if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                                  //Comando Desativar HV não Executado
      begin
       Application.messagebox(PChar('Erro ao tentar Ativar Horário de Verão do ECF:' +#13+
                              Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                              'Verifique o ECF e tente novamente.'),
                              'ERRO :: Status do ECF',mb_OK + mb_iconinformation);
       exit;
      end;
    end;
  end                                                                          //Desativado
 else if Analisa_Transacao_Sweda_IFS7000(Resposta, 10) = 'S' then
  begin
   if application.MessageBox('Horário de Verão ATIVADO, Desativar Horário de Verão no ECF?', 'Atenção', mb_YesNo+mb_IconQuestion+mb_defbutton2) = idyes then
    begin
     StrPCopy(Comando,#27+'.36N}');
     Resposta:=EnviaCOmando(Comando);

     if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                                  //Comando Ativar HV não Executado
      begin
       Application.messagebox(PChar('Erro ao tentar Desativar Horário de Verão do ECF:' +#13+
                              Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                              'Verifique o ECF e tente novamente.'),
                              'ERRO :: Status do ECF',mb_OK + mb_iconinformation);
       exit;
      end;
    end;
  end
 else
  if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then                                    //Comando Retorno do estado do HV não Executado
   begin
    Application.messagebox(PChar('Erro ao tentar retornar informações sobre estado do Horário de Verão do ECF:' +#13+
                           Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                           'Verifique o ECF e tente novamente.'),
                           'ERRO :: Status do ECF',mb_OK + mb_iconinformation);
    exit;
   end;

 Result := True;
end;

//--- Status da Transação do ECF ---
Function Status_Transacao_Sweda_IFS7000: Boolean;
begin
 Result := False;

 StrPCopy(Comando,#27+'.28}');
 Resposta:=EnviaCOmando(Comando);
 if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '+' then                        //Comando Executado
  Application.messagebox(PChar(Analisa_Transacao_Sweda_IFS7000(Resposta,-1, 1)),
                         'Status de Transação do ECF', mb_OK + mb_iconinformation)
 else
  begin
   Application.messagebox(PChar('Erro ao tentar retornar informações sobre Status de Transação do ECF:' +
                          Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Estado da Impressora',mb_OK + mb_iconinformation);
   exit;
  end;

 Result := True;
end;

//------ Abre Cupom Fiscal ------
Function Abre_Cupom_Sweda_IFS7000(CGC_CPF: String): Boolean;
var
 Retry: Boolean;
begin
 Result := False;
 Retry  := True;

 CGC_CPF := alfastuff(CGC_CPF, 20, False);
 StrPCopy(Comando, #27 + '.17'+ CGC_CPF + '}');

 While Retry do
  begin
   Resposta := EnviaCOmando(Comando);
   if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then
    begin
     if Application.messagebox(PChar('Erro ao tentar Abrir Cupom Fiscal:' + #13 +
                               Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                               'Verifique o ECF.' + #13 +
                               'Deseja tentar imprimir Cupom Fiscal novamente?'),
                               'ERRO :: Status do ECF',mb_YesNo + mb_iconinformation) = idno then
      exit;
    end
   else
    Retry  := False;
  end;

 Result := True;
end;

//--- Vende Item ---
Function Vende_Item_Sweda_IFS7000(Codigo, Qnt, Valor_Und, Sub_Total, Descricao,
                                  Aliquota: String): Boolean;
begin
 Result := False;

 Codigo    := AlfaStuff (Codigo,    13, True);
 Qnt       := FormatoNum(Qnt + '0',  7, True);
 Valor_Und := FormatoNum(Valor_Und,  9, True);
 Sub_Total := FormatoNum(Sub_Total, 12, True);
 Descricao := AlfaStuff (Descricao, 24, True);
 Aliquota  := AlfaStuff (Aliquota,   3, True);

 StrPCopy(Comando, #27 + '.01' + Codigo    +
                                 Qnt       +
                                 Valor_Und +
                                 Sub_Total +
                                Descricao +
                                 Aliquota  + '}');
 Resposta := EnviaComando(Comando);                                             //Lançar Item no Cupom Fiscal

 //--- Testa Resposta do ECF ---
 if Analisa_Status_Sweda_IFS7000(Resposta, 1) = '-' then
  begin

   Application.messagebox(PChar('Erro ao tentar Enviar Item para Cupom Fiscal:' +#13+
                          Analisa_Status_Sweda_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente'),
                          'ERRO :: Status do ECF',mb_Ok + mb_iconinformation);
   Cancela_Cupom_Sweda_IFS7000;
   exit;
  end;

 Result := True;
end;

//--- Efetua Desconto sobre Cupom ---
Function Desconto_Cupom_SWEDA_IFS7000(valor: String): Boolean;
begin
 Result := False;

 valor := FormatoNum(valor, 12, True);
 StrPCopy(Comando, #27 + '.03          ' + valor + 'N}');

 Resposta := EnviaComando(Comando);
 if Analisa_Status_SWEDA_IFS7000(Resposta, 1) = '-' then
  begin
   Application.messagebox(PChar('Erro ao tentar efetuar Desconto sobre Cupom Fiscal:' +#13+
                          Analisa_Status_SWEDA_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Status do ECF',mb_OK + mb_iconinformation);
   Cancela_Cupom_SWEDA_IFS7000;
   exit;
  end;

 Result := True;
end;

//--- Totaliza Cupom com forma de pagamento ---
function Totaliza_Cupom_SWEDA_IFS7000(Forma_Pgt_Idx, Valor: String): Boolean;
begin
 Result:= False;

 Forma_Pgt_Idx := FormatoNum(Forma_Pgt_Idx,  2, True);
 Valor         := FormatoNum(Valor,         12, True);

 StrPCopy(Comando, #27 + '.10' + Forma_Pgt_Idx + Valor + '}');
 Resposta:=EnviaCOmando(Comando);
 if Analisa_Status_SWEDA_IFS7000(Resposta, 1) = '-' then
  begin
   Application.messagebox(PChar('Erro ao tentar Totalizar Cupom Fiscal:' +#13+
                          Analisa_Status_SWEDA_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Status do ECF',mb_ok + mb_iconinformation);
   Cancela_Cupom_SWEDA_IFS7000;
   exit;
  end;

 Result := True;
end;

//--- Fechar Cupom Fiscal com MSG Promocional ---
function Fechar_Cupom_SWEDA_IFS7000(Nome, Endereco, Referencia,
                                    Bairro, Vendedor, Msg_P: String): Boolean;
begin
 Result:= False;

 if trim(Nome) <> '' then
  Nome       := '0' + alfastuff('Nome: '     + Nome,       40, True);
 if trim(Endereco) <> '' then
  Endereco   := '0' + alfastuff('End.: '     + Endereco,   40, True);
 if trim(Referencia) <> '' then
  Referencia := '0' + alfastuff('Ref.: '     + Referencia, 40, True);
 if trim(Bairro) <> '' then
  Bairro     := '0' + alfastuff('Bairro: '   + Bairro,     40, True);
 if trim(Vendedor) <> '' then
  Vendedor   := '0' + alfastuff('Vendedor: ' + Vendedor,   40, True);
 if trim(Msg_P) <> '' then
  Msg_P      := '0' + alfastuff(Msg_P,                     40, True);

 StrPCopy(Comando,#27 + '.12NN' + Nome + Endereco + Referencia + Bairro + Vendedor + Msg_P + '0' + df_Msg + '}');
 Resposta:=EnviaCOmando(Comando);
 if Analisa_Status_SWEDA_IFS7000(Resposta, 1) = '-' then
  begin
   Application.messagebox(PChar('Erro ao tentar Fechar Cupom Fiscal:' + #13 +
                          Analisa_Status_SWEDA_IFS7000(Resposta, -1, 1) + #13#13 +
                          'Verifique o ECF e tente novamente.'),
                          'ERRO :: Status do ECF',mb_ok + mb_iconinformation);
   Cancela_Cupom_SWEDA_IFS7000;
   exit;
  end;

 Result := True;
end;

Function AbrePorta_Sweda_IFS7000: boolean;
begin
 Result := AbrePorta(PortaECF, 5);
 if not Result then
  application.messagebox(PChar('Erro ao Abrir a Porta Serial de comunicação com o ECF - COM' + inttostr(PortaECF) + #13 +
                               'Verifique o ECF e suas Configurações e tente Abrir o programa novamente!' + #13#13 +
                               'Para verificar as configurações clique:' + #13 +
                               'Programa >Sistema >Configurações'), 'Atenção', mb_ok + mb_iconerror);
end;

Function FechaPorta_Sweda_IFS7000: boolean;
begin
 Result := FechaPorta(PortaECF);
 if not Result then
  application.messagebox(PChar('Erro ao Fechar a Porta Serial de comunicação com o ECF - COM' + inttostr(PortaECF)), 'Atenção!', mb_ok + mb_iconerror);
end;


Function Carrega_DLL_Sweda_IFS7000: Boolean;
begin
Result := False;
 //Dynamic Call
 Handle_Sweda := LoadLibrary('Sersweda.dll');
 if Handle_Sweda <> 0 then
  begin
   @AbrePorta         := GetProcAddress(Handle_Sweda, 'AbrePorta');
   @EnviaComando      := GetProcAddress(Handle_Sweda, 'EnviaComando');
   @FechaPorta        := GetProcAddress(Handle_Sweda, 'FechaPorta');
   if (@AbrePorta      = nil) or
      (@EnviaComando   = nil) or
      (@FechaPorta     = nil) then
     Application.MessageBox('Erro na DLL Sersweda.dll', 'Atenção!', Mb_ok + MB_ICONERROR)
   else
    Result := True;
  end;
end;

Function Descarrega_DLL_Sweda_IFS7000: Boolean;
begin
 Result := FreeLibrary(Handle_Sweda);

 if not Result then
  Application.MessageBox('Erro ao descarregar a DLL Sersweda.dll! Reinicie o computador.', 'Atenção!', Mb_ok + MB_ICONERROR)
end;

end.

