unit Unit_ECF_General_GP2000;

interface

uses
 Forms, Windows, IniFiles, SysUtils, Classes, IBServices, QDialogs, QControls;

 //------ Function Declarations ------> General GP2000 <------
function OpenFujitsu(porta: Pointer): integer; stdcall; external 'general32.dll';
function TxFujitsu(buffer: Pointer): integer; stdcall; external 'general32.dll';
function RxFujitsu(buffer: Pointer; Status1: Pointer; Status2: Pointer; Tout: integer): integer; stdcall; external 'general32.dll';
procedure CloseFujitsu; stdcall; external 'general32.dll';

procedure AnalisaByte(buffer: Pointer; ret: Pointer); stdcall; external 'general32.dll';

function Analisa_Retorno_General_GP2000(Index: integer; Info: integer = 0): string;
function Cancela_Cupom_General_GP2000: boolean;
function Abre_Porta_General_GP2000: boolean;
function Envia_General_GP2000(sComando: PChar): integer;
function Leitura_X_General_GP2000: boolean;
function Reducao_Z_General_GP2000: boolean;
function Carrega_DLL_General_GP2000: boolean;
function Descarrega_DLL_General_GP2000: boolean;
procedure Error_Dump_General_GP2000;

var
 iResp, PortaECF: integer;
 EnviaComando: integer;

 Log_Str_General_GP2000: TStrings;

implementation

uses Unit_ECF_Global, UnitFuncoes;

function Carrega_DLL_General_GP2000: boolean;
begin
 Result := True;
 Log_Str_General_GP2000 := TStringList.Create; // Cria StringList de Log de Erros
end;

function Descarrega_DLL_General_GP2000: boolean;
begin
 Result := True;
 Log_Str_General_GP2000.Free; //Destroi StringList
end;

//Faz o log de todos os valores do cupom fiscal em caso de erro na impressão
procedure Error_Dump_General_GP2000;
var
 x: Integer;
begin
 if Log_Str_General_GP2000.Count > 0 then
  begin
   LogToFile(Format('ERRO NA IMPRESSAO DE CUPOM FISCAL - %d Linhas de Log de Erro', [Log_Str_General_GP2000.Count]), True);
   for x := 0 to Log_Str_General_GP2000.Count - 1 do
    LogToFile(Log_Str_General_GP2000[x], True);
  end;
end;

//------ Analisa a Variável Retorno ------> General GP2000 <------
function Analisa_Retorno_General_GP2000(Index: integer; Info: integer = 0): string;
var
 ret: array[0..256] of char;
 status1: array[0..1] of char;
 Status2: array[0..1] of char;
 retBit: array[0..9] of char;
 iRet, ErroBit: integer;
 OK: string;
begin
 iRet := RxFujitsu(@ret, @status1, @status2, 30);
 if iRet > 0 then OK := '+'
 else
   OK := '-';
 AnalisaByte(@status1, @retBit);
 ErroBit := Ord(status2[0]);

 if info = 0 then                                                               //--- Nenhum tratamento de informação requisitado... variáveis retornadas "as-is" ---
  begin
   case index of
     1: Result := OK;
     2: Result := RetBit;
     3: Result := IntToStr(ErroBit); -1: Result := OK + RetBit + IntToStr(Ord(status2[0]));
    end;
  end
 else if info = 1 then                                                          //--- Tratamento de informação requisitado...  ---
  begin
   case Index of                                                                //Testa qual bit deseja-se informação e retorna, -1 para todos os bits
     1:
        begin
         if iRet > 0 then
           Result := Result + #13 + ' - Último Comando executado com sucesso'
         else
          begin
           Result := Result + #13 + ' - Último Comando não executado';
           if iRet = 0 then
             Result := Result + #13 + ' - Dados incorretos no pacote de dados'
           else if iRet < 0 then
             Result := Result + #13 + ' - Resposta não entendida';
          end
        end;

     2:
        begin
        end;
     3:
        begin
         case Ord(status2[0]) of
           33: Result := Result + #13 + ' - Dados do comando enviado maior que 256 bytes';
           34: Result := Result + #13 + ' - Comando enviado maior que 73';
           35: Result := Result + #13 + ' - Tamanho do comando invalido';
           36: Result := Result + #13 + ' - Comando invalido';
           41: Result := Result + #13 + ' - Estouro do contador de intervenções';
           42: Result := Result + #13 + ' - O comando deve ser executado após zeramento de toda memória';
           43: Result := Result + #13 + ' - Não é após redução "Z"';
           44: Result := Result + #13 + ' - Erro de cupom aberto';
           45: Result := Result + #13 + ' - Dados numéricos inválido';
           46: Result := Result + #13 + ' - Data e hora inválida';
           47: Result := Result + #13 + ' - Comando já executado ou proibido';
           48: Result := Result + #13 + ' - Erro de Texto inválido';
           49: Result := Result + #13 + ' - Erro de seqüência de operação';
           50: Result := Result + #13 + ' - Erro de parâmetro inválido';
           51: Result := Result + #13 + ' - Erro de flags de operação';
           52: Result := Result + #13 + ' - Necessita programação prévia';
           53: Result := Result + #13 + ' - Estouro da capacidade do acumulador';
           54: Result := Result + #13 + ' - Desconto maior que o permitido';
           55: Result := Result + #13 + ' - Estouro do contador';
           56: Result := Result + #13 + ' - Cupom de relatório aberto';
           57: Result := Result + #13 + ' - Contra vale com valor zero';
           58: Result := Result + #13 + ' - Abertura do dia já realizado';
           59: Result := Result + #13 + ' - Contador Z posterior menor que Z anterior no relatório da MF por Z';
           60: Result := Result + #13 + ' - Data inválida';
           61: Result := Result + #13 + ' - Data posterior menor que data anterior no relatório da MF por data';
           62: Result := Result + #13 + ' - Relatório X ou Z não está aberto para relatório gerencial';
           63: Result := Result + #13 + ' - Não permite este tipo de operação com ISSQN';
           64: Result := Result + #13 + ' - Não permite operação com transferencia eletrônica de fundos ( TEF ) ';
           82: Result := Result + #13 + ' - Cupom de Relatório X ou Z aberto';
           83: Result := Result + #13 + ' - Relatório Gerencial não e permitido';
           93: Result := Result + #13 + ' - Abertura do dia não realizada';
           94: Result := Result + #13 + ' - Erro de calculo desconto/acréscimo';
           96: Result := Result + #13 + ' - O jumper de intervenção na posição errado';
           97: Result := Result + #13 + ' - Redução Z não realizada';
           99: Result := Result + #13 + ' - Redução Z do dia já realizado';
           100: Result := Result + #13 + ' - Data inválida';
           113: Result := Result + #13 + ' - Erro da impressora - para sair deste estado desligue e ligue o ECF';
           120: Result := Result + #13 + ' - Falta de papel';
           121: Result := Result + #13 + ' - Erro referente a memória fiscal';
           122: Result := Result + #13 + ' - Erro de memória fiscal não estar apagado';
           123: Result := Result + #13 + ' - Erro de Escrita ou leitura da memória fiscal';
           124: Result := Result + #13 + ' - Erro de dados da memória fiscal não coincide com os dados da RAM';
           125: Result := Result + #13 + ' - Erro de queda de energia';
           128: Result := Result + #13 + ' - Relógio parado';
           130: Result := Result + #13 + ' - Erro de Timeout (Desconectado ou Desligado)';
           131: Result := Result + #13 + ' - Erro de Timeout (Execução do comando)';
           160: Result := Result + #13 + ' - Outros erros não relatados anteriormente';
           else
             Result := Result + #13 + ' - Erro desconhecido retornado pelo ECF.';
          end;
        end;
    end;
  end;
end;

//------ Cancela Cupom Fiscal ------
function Cancela_Cupom_General_GP2000: boolean;
var
 retorno: integer;
begin
 Result := False;

 retorno := Envia_General_GP2000('2A');
 if Analisa_Retorno_General_GP2000(1,0) = '-' then
   Application.messagebox(PChar('Erro ao tentar Cancelar Último Cupom Fiscal:' +
     Analisa_Retorno_General_GP2000(-1, 1) + #13#13 +
     'Verifique o ECF e tente novamente.'),
     'ERRO :: Estado da Impressora',
     mb_OK + mb_iconinformation)
 else
   Result := True;
end;

function Abre_Porta_General_GP2000: boolean;
begin
 Result := False;

 iResp := OpenFujitsu(PChar('COM' + IntToStr(PortaECF)));
 if iResp = 0 then
   application.messagebox(PChar('Erro ao tentar Abrir a Porta de Comunicação com o ECF - COM' +
     IntToStr(PortaECF) + #13 +
     'Verifique:' + #13 +
     '1 - Se a impressora está ligada e pronta.' + #13 +
     '2 - Se a configuração do ECF está correta.'), 'Erro!',
     mb_ok + mb_iconerror)
 else
   Result := True;
end;

//------ Executa os Comandos a serem Enviados ------
function Envia_General_GP2000(sComando: PChar): integer;
begin
 Result := TXFujitsu(sComando);
end;

function Leitura_X_General_GP2000: boolean;
var
 retorno: integer;
begin
 Result := False;

 retorno := Envia_General_GP2000('510');
 if Analisa_Retorno_General_GP2000(1, 0) = '-' then
   Application.messagebox(PChar('Erro ao tentar executar Leitura X:' +
     Analisa_Retorno_General_GP2000(-1, 1) + #13#13 +
     'Verifique o ECF e tente novamente.'),
     'ERRO :: Estado da Impressora',
     mb_OK + mb_iconinformation)
 else
   Result := True;
end;

function Reducao_Z_General_GP2000: boolean;
var
 retorno: integer;
begin
 Result := False;

 retorno := Envia_General_GP2000('520');
 if Analisa_Retorno_General_GP2000(1,0) = '-' then
   Application.messagebox(PChar('Erro ao tentar executar Redução Z:' +
     Analisa_Retorno_General_GP2000(-1, 1) + #13#13 +
     'Verifique o ECF e tente novamente.'),
     'ERRO :: Estado da Impressora',
     mb_OK + mb_iconinformation)
 else
   Result := True;
end;


function Horario_Verao_General_GP2000: boolean;
var
 retorno: integer;
begin
 Result := False;
 retorno := Envia_General_GP2000('71');
 if Analisa_Retorno_General_GP2000(1,0) = '-' then
   Application.messagebox(PChar('Erro ao tentar executar Horário de Verão:' +
     Analisa_Retorno_General_GP2000(-1, 1) + #13#13 +
     'Verifique o ECF e tente novamente.'),
     'ERRO :: Estado da Impressora',
     mb_OK + mb_iconinformation)
 else
   Result := True;
end;

end.
