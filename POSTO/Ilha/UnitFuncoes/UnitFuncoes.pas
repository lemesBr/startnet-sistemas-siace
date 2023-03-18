unit UnitFuncoes;

interface

uses SysUtils, Forms, Inifiles, Windows, Controls, Dialogs, TypInfo,
 variants, ShlObj, ShellApi;

function AlfaStuff(Str: ShortString; Tamanho: byte; Stuff: boolean): ShortString;
function NumStuff(Str: ShortString; Tamanho: byte; Stuff: boolean): ShortString;
function FormatoNum(Str: ShortString; Tamanho: byte; Stuff: boolean): ShortString;
procedure LogToFile(Text: string; AddDateTime: boolean);
function CreateDefaultIniFile: string;
function GetSysDir: string;
procedure AdjustResolution(oForm: TForm);
procedure ExecHelpFile;
function Exec_File(file_path: string): integer;
procedure EnableAll(AWinControl: TWinControl);
procedure DisableAll(AWinControl: TWinControl);
function RemoveInvalid(what, where: string): string;
function RemoveInvalid2(NotToRemoveStr: string; FromStr: string): string;
function EnDecrypt(s: string): string;
procedure UserLogin(Sender: TForm);
procedure ExecuteRoutine(Instance: TObject; Name: string);
function RoutineExists(Instance: TObject; Name: string): boolean;
function VerificaCNPJ(const CGC: ShortString): boolean;
function VerificaCPF(const CPF: ShortString): boolean;
function VerificaInscEst(Inscricao, UF: string): Boolean;
function VerificaCEP(cCep:ShortString ; cEstado:ShortString): Boolean;
function GetFileVersion(const FileName: String; var Major, Minor, Release, Build: Integer;
                        var PreRelease, Debug: Boolean; var Description: String ) : Boolean;

type
 TExecute = procedure of object;

implementation

uses UnitDataM1, UnitFrmPrincipal;

//------ Preenche ShortString com caracter de Enchimento até o tamanho indicado ------
//Caracter de enchimento alfanumérico de acordo com manual do SIntegra = ' '
//Passar tamanho 0 para não apenas garantir o tamanho máximo e não fazer stuff
function AlfaStuff(Str: ShortString; Tamanho: byte; Stuff: boolean): ShortString;
const
 AlfaStuffChar: ShortString = ' ';
begin
 Result := '';
 Str := copy(Str, 0, Tamanho);

 if Stuff then
   while length(Str) < Tamanho do
     Str := Str + AlfaStuffChar;

 Result := Str;
end;

//------ Preenche ShortString com caracter de Enchimento até o tamanho indicado ------
//Caracter de enchimento numérico de acordo com manual do SIntegra = '0'
//Passar tamanho 0 para não apenas garantir o tamanho máximo e não fazer stuff
function NumStuff(Str: ShortString; Tamanho: byte; Stuff: boolean): ShortString;
const
 NumStuffChar: ShortString = '0';
begin
 Result := '';
 Str := copy(Str, 0, Tamanho);

 if Stuff then
   while length(Str) < Tamanho do
     Str := NumStuffChar + Str;

 Result := Str;
end;

//------ Tratamento de ShortString (Retira caracteres invalidos, trunca e preenche espaços) ------
//NumArray = quais os caracteres válidos como numéricos
//Passar tamanho 0 para não apenas garantir o tamanho máximo e não fazer stuff
function FormatoNum(Str: ShortString; Tamanho: byte; Stuff: boolean): ShortString;
const
 NumArray: PChar = '0123456789';
begin
 Str := RemoveInvalid2(NumArray, Str);
 Result := NumStuff(Str, Tamanho, Stuff);
end;

//------ Verifica Integridade de CPF ------
//String deve ser passada sem formatação
function VerificaCPF(const CPF: ShortString): boolean;
const
 _len_max = 11;
var
 Digitos: array[1.._len_max] of byte;
 i, DV1, DV2: Short;
 Calculo: integer;
 tmp: string[_len_max];
begin
 Result := True;
 try
   if CPF = '' then Exit;

   tmp := CPF;
   tmp := RemoveInvalid('.', tmp);
   tmp := RemoveInvalid('-', tmp);
   tmp := RemoveInvalid('/', tmp);

   while Length(tmp) < _len_max do tmp := tmp + '0';
   for i := 1 to _len_max do
     Digitos[i] := StrToInt(tmp[i]);

   // obtém o primeiro dígito verificador
   Calculo := (10 * Digitos[1]) + (9 * Digitos[2]) + (8 * Digitos[3]) +
     (7 * Digitos[4]) + (6 * Digitos[5]) + (5 * Digitos[6]) +
     (4 * Digitos[7]) + (3 * Digitos[8]) + (2 * Digitos[9]);
   DV1 := 11 - (Calculo mod 11);
   if (DV1 >= 10) then DV1 := 0;

   // obtém o segundo dígito verificador
   Calculo := (11 * Digitos[1]) + (10 * Digitos[2]) + (9 * Digitos[3]) +
     (8 * Digitos[4]) + (7 * Digitos[5]) + (6 * Digitos[6]) +
     (5 * Digitos[7]) + (4 * Digitos[8]) + (3 * Digitos[9]) + (2 * DV1);
   DV2 := 11 - (Calculo mod 11);
   if (DV2 >= 10) then DV2 := 0;

   // compara os dígitos
   Result := (Digitos[10] = DV1) and (Digitos[11] = DV2);
 except
   Result := False;
  end
end;

//------ Verifica Integridade de CNPJ ------
//String deve ser passada sem formatação
function VerificaCNPJ(const CGC: ShortString): boolean;
var
 Digitos: array[1..14] of byte;
 i, Resto, DV1, DV2: shortint;
 Calculo: integer;
 tmp: string[14];
begin
 Result := True;
 try
   if CGC = '' then Exit;

   tmp := CGC;

   while Length(tmp) < 14 do tmp := tmp + '0';
   for i := 1 to 14 do
     Digitos[i] := StrToInt(tmp[i]);

   // obtém o primeiro dígito verificador
   Calculo := (5 * Digitos[1]) + (4 * Digitos[2]) +
     (3 * Digitos[3]) + (2 * Digitos[4]) + (9 * Digitos[5]) +
     (8 * Digitos[6]) + (7 * Digitos[7]) + (6 * Digitos[8]) +
     (5 * Digitos[9]) + (4 * Digitos[10]) + (3 * Digitos[11]) +
     (2 * Digitos[12]);
   Resto := Calculo mod 11;
   if (Resto = 0) or (Resto = 1) then
     DV1 := 0
   else
     DV1 := 11 - Resto;

   // obtém o segundo dígito verificador
   Calculo := (6 * Digitos[1]) + (5 * Digitos[2]) + (4 * Digitos[3]) +
     (3 * Digitos[4]) + (2 * Digitos[5]) + (9 * Digitos[6]) +
     (8 * Digitos[7]) + (7 * Digitos[8]) + (6 * Digitos[9]) +
     (5 * Digitos[10]) + (4 * Digitos[11]) + (3 * Digitos[12]) +
     (2 * DV1);
   Resto := Calculo mod 11;
   if (Resto = 0) or (Resto = 1) then
     DV2 := 0
   else
     DV2 := 11 - Resto;

   // compara os dígitos
   Result := (Digitos[13] = DV1) and (Digitos[14] = DV2);
 except
   Result := False;
  end;
end;

//------ Verifica Integridade de Inscrição Estadual ------
//Incricao: ShortString deve ser passada sem formatação
//Tipo: ShortString da UF ou "CNPJ" ou "CPF"
function VerificaInscEst(Inscricao, UF: string): Boolean;
var
  Contador: ShortInt;
  Casos: ShortInt;
  Digitos: ShortInt;

  Tabela_1: string;
  Tabela_2: string;
  Tabela_3: string;

  Base_1: string;
  Base_2: string;
  Base_3: string;

  Valor_1: ShortInt;

  Soma_1: Integer;
  Soma_2: Integer;

  Erro_1: ShortInt;
  Erro_2: ShortInt;
  Erro_3: ShortInt;

  Posicao_1: string;
  Posicao_2: string;

  Tabela: string;
  Rotina: string;
  Modulo: ShortInt;
  Peso: string;

  Digito: ShortInt;

  Resultado: string;
  Retorno: Boolean;
{ Create: 21/06/2001 - Update: 23/06/2001 - By Paulo Ed Casagrande                                     }
{ Unit desenvolvida com base em informações contidas no site : www.sintegra.gov.br                     }
begin
  try
    Tabela_1 := ' ';
    Tabela_2 := ' ';
    Tabela_3 := ' ';
    {                                                                               }{                                                                                                }
    {         Valores possiveis para os digitos (j)                                 }
    {                                                                               }
    { 0 a 9 = Somente o digito indicado.                                            }
    {     N = Numeros 0 1 2 3 4 5 6 7 8 ou 9                                        }
    {     A = Numeros 1 2 3 4 5 6 7 8 ou 9                                          }
    {     B = Numeros 0 3 5 7 ou 8                                                  }
    {     C = Numeros 4 ou 7                                                        }
    {     D = Numeros 3 ou 4                                                        }
    {     E = Numeros 0 ou 8                                                        }
    {     F = Numeros 0 1 ou 5                                                      }
    {     G = Numeros 1 7 8 ou 9                                                    }
    {     H = Numeros 0 1 2 ou 3                                                    }
    {     I = Numeros 0 1 2 3 ou 4                                                  }
    {     J = Numeros 0 ou 9                                                        }
    {     K = Numeros 1 2 3 ou 9                                                    }
    {                                                                               }
    { ----------------------------------------------------------------------------- }
    {                                                                               }
    {         Valores possiveis para as rotinas (d) e (g)                           }
    {                                                                               }
    { A a E = Somente a Letra indicada.                                             }
    {     0 = B e D                                                                 }
    {     1 = C e E                                                                 }
    {     2 = A e E                                                                 }
    {                                                                               }
    { ----------------------------------------------------------------------------- }
    {                                                                               }
    {                                  C T  F R M  P  R M  P                        }
    {                                  A A  A O O  E  O O  E                        }
    {                                  S M  T T D  S  T D  S                        }
    {                                                                               }
    {                                  a b  c d e  f  g h  i  jjjjjjjjjjjjjj        }
    {                                  0000000001111111111222222222233333333        }
    {                                  1234567890123456789012345678901234567        }

    if UF = 'AC' then Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';
    if UF = 'AC' then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
    if UF = 'AL' then Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';
    if UF = 'AP' then Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';
    if UF = 'AP' then Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';
    if UF = 'AP' then Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';
    if UF = 'AM' then Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';
    if UF = 'BA' then Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';
    if UF = 'BA' then Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';
    if UF = 'CE' then Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';
    if UF = 'DF' then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
    if UF = 'ES' then Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';
    if UF = 'GO' then Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';
    if UF = 'GO' then Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';
    if UF = 'MA' then Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';
    if UF = 'MT' then Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';
    if UF = 'MS' then Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';
    if UF = 'MG' then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
    if UF = 'PA' then Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';
    if UF = 'PB' then Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';
    if UF = 'PR' then Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';
    if UF = 'PE' then Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';
    if UF = 'PI' then Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';
    if UF = 'RJ' then Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';
    if UF = 'RN' then Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';
    if UF = 'RS' then Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';
    if UF = 'RO' then Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';
    if UF = 'RO' then Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';
    if UF = 'RR' then Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';
    if UF = 'SC' then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
    if UF = 'SP' then Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';
    if UF = 'SP' then Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';
    if UF = 'SE' then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
    if UF = 'TO' then Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';

    if UF = 'CNPJ' then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
    if UF = 'CPF' then Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';

    { Deixa somente os numeros }
    Base_1 := '';
    for Contador := 1 to 30 do if Pos(Copy(Inscricao, Contador, 1), '0123456789') <> 0 then
      Base_1 := Base_1 + Copy(Inscricao, Contador, 1);

    { Repete 3x - 1 para cada caso possivel  }
    Casos := 0;

    Erro_1 := 0;
    Erro_2 := 0;
    Erro_3 := 0;

    while Casos < 3 do
    begin
      Casos := Casos + 1;
      if Casos = 1 then Tabela := Tabela_1;
      if Casos = 2 then Erro_1 := Erro_3;
      if Casos = 2 then Tabela := Tabela_2;
      if Casos = 3 then Erro_2 := Erro_3;
      if Casos = 3 then Tabela := Tabela_3;
      Erro_3 := 0;
      if Copy(Tabela, 1, 1) <> ' ' then
      begin
        { Verifica o Tamanho }
        if Length(Trim(Base_1)) <> (StrToInt(Copy(Tabela, 3, 2))) then Erro_3 := 1;
        if Erro_3 = 0 then
        begin
          { Ajusta o Tamanho }
          Base_2 := Copy('              ' + Base_1, Length('              ' + Base_1) - 13, 14);
          { Compara com valores possivel para cada uma da 14 posições }
          Contador := 0;
          while (Contador < 14) and (Erro_3 = 0) do
          begin
            Contador := Contador + 1;
            Posicao_1 := Copy(Copy(Tabela, 24, 14), Contador, 1);
            Posicao_2 := Copy(Base_2, Contador, 1);
            if (Posicao_1 = ' ') and (Posicao_2 <> ' ') then Erro_3 := 1;
            if (Posicao_1 = 'N') and (Pos(Posicao_2, '0123456789') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'A') and (Pos(Posicao_2, '123456789') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'B') and (Pos(Posicao_2, '03578') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'C') and (Pos(Posicao_2, '47') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'D') and (Pos(Posicao_2, '34') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'E') and (Pos(Posicao_2, '08') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'F') and (Pos(Posicao_2, '015') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'G') and (Pos(Posicao_2, '1789') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'H') and (Pos(Posicao_2, '0123') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'I') and (Pos(Posicao_2, '01234') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'J') and (Pos(Posicao_2, '09') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'K') and (Pos(Posicao_2, '1239') = 0) then Erro_3 := 1;
            if (Posicao_1 <> Posicao_2) and (Pos(Posicao_1, '0123456789') > 0) then Erro_3 := 1;
          end;
          { Calcula os Digitos }
          Rotina := ' ';
          Digitos := 000;
          Digito := 000;
          while (Digitos < 2) and (Erro_3 = 0) do
          begin
            Digitos := Digitos + 1;
            { Carrega peso }
            Peso := Copy(Tabela, 5 + (Digitos * 8), 2);
            if Peso <> '  ' then
            begin
              Rotina := Copy(Tabela, 0 + (Digitos * 8), 1);
              Modulo := StrToInt(Copy(Tabela, 2 + (Digitos * 8), 2));
              if Peso = '01' then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
              if Peso = '02' then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
              if Peso = '03' then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
              if Peso = '04' then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
              if Peso = '05' then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
              if Peso = '06' then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
              if Peso = '07' then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
              if Peso = '08' then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
              if Peso = '09' then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
              if Peso = '10' then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
              if Peso = '11' then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
              if Peso = '12' then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
              if Peso = '13' then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
              if Peso = '21' then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
              if Peso = '22' then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
              if Peso = '31' then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
              if Peso = '32' then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';
              { Multiplica }
              Base_3 := Copy(('0000000000000000' + Trim(Base_2)), Length(('0000000000000000' + Trim(Base_2))) - 13,                14);
              Soma_1 := 0;
              Soma_2 := 0;
              for Contador := 1 to 14 do
              begin
                Valor_1 := (StrToInt(Copy(Base_3, Contador, 01)) * StrToInt(Copy(Peso, Contador * 3 - 2, 2)));
                Soma_1 := Soma_1 + Valor_1;
                if Valor_1 > 9 then Valor_1 := Valor_1 - 9;
                Soma_2 := Soma_2 + Valor_1;
              end;

              { Ajusta valor da soma }
              if Pos(Rotina, 'A2') > 0 then Soma_1 := Soma_2;
              if Pos(Rotina, 'B0') > 0 then Soma_1 := Soma_1 * 10;
              if Pos(Rotina, 'C1') > 0 then Soma_1 := Soma_1 + (5 + 4 * StrToInt(Copy(Tabela, 6, 1)));
              { Calcula o Digito }
              if Pos(Rotina, 'D0') > 0 then Digito := Soma_1 mod Modulo;
              if Pos(Rotina, 'E12') > 0 then Digito := Modulo - (Soma_1 mod Modulo);
              if Digito < 10 then Resultado := IntToStr(Digito);
              if Digito = 10 then Resultado := '0';
              if Digito = 11 then Resultado := Copy(Tabela, 6, 1);
              { Verifica o Digito }
              if (Copy(Base_2, StrToInt(Copy(Tabela, 36 + (Digitos * 3), 2)), 1) <> Resultado) then Erro_3 := 1;
            end;
          end;
        end;
      end;
    end;
    { Retorna o resultado da Verificação }
    Retorno := FALSE;
    if (Trim(Tabela_1) <> '') and (ERRO_1 = 0) then Retorno := TRUE;
    if (Trim(Tabela_2) <> '') and (ERRO_2 = 0) then Retorno := TRUE;
    if (Trim(Tabela_3) <> '') and (ERRO_3 = 0) then Retorno := TRUE;
    if Trim(Inscricao) = 'ISENTO' then Retorno := TRUE;
    Result := Retorno;
  except
    Result := False;
  end;
end;

//------ Cria Janela para selecionar pastas ------
function SelectFolder(wnd: HWND; Title: string): string;
var
 lpItemID: PItemIDList;
 BrowseInfo: TBrowseInfo;
 DisplayName: array[0..MAX_PATH] of char;
 TempPath: array[0..MAX_PATH] of char;
begin
 FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
 BrowseInfo.hwndOwner := wnd;
 BrowseInfo.pszDisplayName := @DisplayName;
 BrowseInfo.lpszTitle := PChar(Title);
 BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
 lpItemID := SHBrowseForFolder(BrowseInfo);
 if lpItemId <> nil then
  begin
   SHGetPathFromIDList(lpItemID, TempPath);
   Result := TempPath;
   GlobalFreePtr(lpItemID);
  end 
 else
   Result := '';
end;

//------ Executa Rotina pelo nome ------
procedure ExecuteRoutine(Instance: TObject; Name: string);
var
 Routine: TMethod;
 Execute: TExecute;
begin
 Routine.Data := Pointer(Instance);
 //Returns the address of a published method.
 Routine.Code := Instance.MethodAddress(Name);
 if Routine.Code = nil then Exit;
 Execute := TExecute(Routine);
 Execute;
end;

//------ Confere se Rotina Existe pelo nome ------
function RoutineExists(Instance: TObject; Name: string): boolean;
var
 Routine: TMethod;
begin
 Result := False;
 try
   Routine.Data := Pointer(Instance);
   //Returns the address of a published method.
   Routine.Code := Instance.MethodAddress(Name);
   if Routine.Code <> nil then
     Result := True;
 except
   Result := False;
  end;
end;

//------ Login Procedure ------
procedure UserLogin(Sender: TForm);
var
 DefaultValor: boolean;
begin
 Lockwindowupdate(application.Handle);
 Dm1.QryPermissaoForm.Filtered := False;
 Dm1.QryPermissaoForm.Filter := 'Form = ' + QuotedStr(Sender.Name);
 Dm1.QryPermissaoForm.Filtered := True;

 DefaultValor := False;
 PrincipalFrm.ModuloLoginMnu.Visible := False;
 PrincipalFrm.ModuloLoginMnu.Enabled := False;
 if CodSetorUser = 0 then                                 //CodSetorUser = 0 -> Usuário Master
  begin
   PrincipalFrm.ModuloLoginMnu.Visible := True;
   PrincipalFrm.ModuloLoginMnu.Enabled := True;
   DefaultValor := True;
  end;

 while not Dm1.QryPermissaoForm.EOF do
  begin
   if assigned(Sender.FindComponent(Dm1.QryPermissaoForm['Component'])) then
    begin
     SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']), 'Visible', False);
     SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']), 'Enabled', False);

     if not varisnull(Dm1.QryPermissaoForm['Enabled']) then
      if Dm1.QryPermissaoForm['Enabled'] = 1 then
       begin
        SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']), 'Visible', DefaultValor);
        SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']), 'Enabled', DefaultValor);
       end
    end;

   if not DefaultValor then
    begin
     if Dm1.QryPermissaoForm['CodPermissao'] <> Dm1.QryPermissaoUser['CodPermissao'] then
       if Dm1.QryPermissaoUser.Locate('CodPermissao', Dm1.QryPermissaoForm['CodPermissao'], []) then
        begin
         try
           if assigned(Sender.FindComponent(Dm1.QryPermissaoForm['Component'])) then
             if not varisnull(Dm1.QryPermissaoForm['Component']) or
               varisnull(Dm1.QryPermissaoForm['Propertie']) or
               varisnull(Dm1.QryPermissaoUser['Valor']) then
              begin
               //SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']), Dm1.QryPermissaoForm['Propertie'], Dm1.QryPermissaoUser['Valor']);
               SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']),
                 'Visible', Dm1.QryPermissaoUser['Valor']);
               SetPropValue(Sender.FindComponent(Dm1.QryPermissaoForm['Component']),
                 'Enabled', Dm1.QryPermissaoUser['Valor']);
              end;
         except
          end;
        end;
    end;

   Dm1.QryPermissaoForm.Next
  end;
 Lockwindowupdate(0);
end;

//------ Encode/Decode String for passwords ------
function EnDecrypt(s: string): string;
var
 x: byte;
begin
 RandSeed := Length(s);
 for x := 1 to Length(s) do
   s[x] := Chr(Ord(s[x]) xor (Random(128) or 128));
 Result := s;
end;

//------ Procedure to Enable All Components on a group ------
procedure EnableAll(AWinControl: TWinControl);
var
 i: integer;
begin
 AWinControl.Enabled := True;
 for I := 0 to (AWinControl.ControlCount - 1) do
  begin
   if (AWinControl.Controls[I] is TWinControl) then
     EnableAll(TWinControl(AWinControl.Controls[I]))
   else
     AWinControl.Controls[I].Enabled := True;
  end;
end;


//------ Procedure to Disable All Components on a group ------
procedure DisableAll(AWinControl: TWinControl);
var
 I: integer;
begin
 AWinControl.Enabled := False;
 for I := 0 to (AWinControl.ControlCount - 1) do
  begin
   if (AWinControl.Controls[I] is TWinControl) then
     DisableAll(TWinControl(AWinControl.Controls[I]))
   else
     AWinControl.Controls[I].Enabled := False;
  end;
end;


{ This procedure scales all the children on a given form to conform to the }
{ current screen resolution                                                }
procedure AdjustResolution(oForm: TForm);
var
 iPercentage: integer;
begin
 if Screen.Width <> 800 then
  begin
   iPercentage := Round(((Screen.Width - 800) / 800) * 100) + 100;
   oForm.ScaleBy(iPercentage, 100);
  end;
end;

//------ Retorna o Diretório de Sistema do Windows ------
function GetSysDir: string;
var
 MeuBuffer: array [1..128] of char;
 retorno: integer;
begin
 retorno := GetSystemDirectory(@MeuBuffer, 128);
 if (retorno > 128) or (retorno = 0) then
   GetSysDir := ''
 else
   GetSysDir := StrPas(@MeuBuffer);
end;

//------ Procedure to remove string from another ------
//Usage: what is the string to be removed, where is the string to be removed from
function RemoveInvalid(what, where: string): string;
var
 tstr, res: string;
 x: integer;
begin
 tstr := where;
 x := 1;
 res := '';
 while x < length(tstr) + 1 do
  begin
   if copy(tstr, x, 1) <> what then
     res := res + copy(tstr, x, 1);
   x := x + 1;
  end;
 Result := res;
end;

//--- Remove caracteres invalidos de uma ShortString ---
//Usage: "NotToRemoveStr" is the Char Array NOT to be removed, "FromStr" is the ShortString to be removed from
function RemoveInvalid2(NotToRemoveStr: string; FromStr: string): string;
var
 TempStr: string;
 Res: ShortString;
 x: byte;
begin
 TempStr := UpperCase(FromStr);
 Res := '';
 for x := 1 to Length(TempStr) do
  begin
   if Pos(TempStr[x], NotToRemoveStr) <> 0 then
     Res := Res + FromStr[x];
  end;
 Result := Res;
end;

//------ Log em Arquivo.txt ------
procedure LogToFile(Text: string; AddDateTime: boolean);
var
 logfilename: string;
 f: TextFile;
begin
 try
   screen.cursor := crHourGlass;
   logfilename := extractfilepath(application.ExeName) + 'PostoLog' +
     RemoveInvalid('/', copy(datetostr(now), 3,length(datetostr(now)))) + '.log';
   //Cria o arquivo com o mes e o ano
   assignfile(f, logfilename);
   if not fileexists(logfilename) then
    begin
     rewrite(f);
     writeln(f, '.LOG');
     writeln(f, 'Siace Sistemas');
     writeln(f, 'TeleFax: +55(66)3555-1453');
     writeln(f, 'E-Mail : startnetinf@gmail.com');
     writeln(f, 'Site   : www.siacesistemas.com.br');
     writeln(f, 'Arquivo de LOG - Auditoria');
     writeln(f, ' ');
    end;
   Reset(f);
   Append(f);
   if AddDateTime then
     Writeln(f, datetimetostr(Now) + ' - ' + Text)
   else
     Writeln(f, '                  - ' + Text)
   except
     application.MessageBox(PChar('Erro ao tentar gravar registro de LOG no arquivo: ' + #13 +
       Logfilename),
       'Atenção', mb_ok + Mb_iconerror);
  end;
 CloseFile(f);
 screen.cursor := crDefault;
end;

//------ Cria arquivo INI com config default ------
function CreateDefaultIniFile: string;
var
 ArquivoIni: TIniFile;
 Path: string;
begin
 try
   screen.cursor := crHourGlass;
   Path := extractfiledir(application.Exename) + '\SiacePosto.ini';
   Result := Path;
   ArquivoIni := TIniFile.Create(Path);
   //------ Config Login ------
   if not ArquivoIni.ValueExists('Login', 'LembrarPwd') then
     ArquivoIni.WriteBool('Login', 'LembrarSenha', False);
   if not ArquivoIni.ValueExists('Login', 'LebrarLastUser') then
     ArquivoIni.WriteBool('Login', 'LebrarLastUser', False);
   if not ArquivoIni.ValueExists('Login', 'LastPwd') then
     ArquivoIni.WriteString('Login', 'LastPwd', ' ');
   if not ArquivoIni.ValueExists('Login', 'LastCodSetor') then
     ArquivoIni.WriteString('Login', 'LastCodSetor', ' ');
   if not ArquivoIni.ValueExists('Login', 'LastCodSetorUser') then
     ArquivoIni.WriteString('Login', 'LastCodSetorUser', ' ');

   //------ Config ShareWare ------
   if not ArquivoIni.ValueExists('USERINFO', 'Libera') then
     ArquivoINI.WriteString('USERINFO', 'Libera', 'NotFound');
   if not ArquivoIni.ValueExists('USERINFO', 'Confere') then
     ArquivoINI.WriteString('USERINFO', 'Confere', 'NotFound');
   if not ArquivoIni.ValueExists('USERINFO', 'Nome') then
     ArquivoINI.WriteString('USERINFO', 'Nome', 'NotFound');
   if not ArquivoIni.ValueExists('USERINFO', 'Prazo') then
     ArquivoINI.WriteString('USERINFO', 'Prazo', 'NotFound');

   //------ Config Promoção ------
   if not ArquivoIni.ValueExists('PROMOCAO', 'EnablePromocao') then
     ArquivoIni.WriteBool('PROMOCAO', 'EnablePromocao', True);

   //------ Config Impressora Fiscal ------
   if not ArquivoIni.ValueExists('ECF', 'COM') then
     ArquivoIni.WriteInteger('ECF', 'COM', 1);
   if not ArquivoIni.ValueExists('ECF', 'TipoECF') then
     ArquivoIni.WriteInteger('ECF', 'TipoECF', 1);
   if not ArquivoIni.ValueExists('ECF', 'GavetaInstalada') then
     ArquivoIni.WriteBool('ECF', 'GavetaInstalada', False);
   //"Vendas em Dinheiro", "Todas", "Gaveta não Intalada"
   if not ArquivoIni.ValueExists('ECF', 'EnableGavetaTest') then
     ArquivoIni.WriteBool('ECF', 'EnableGavetaTest', False);
   if not ArquivoIni.ValueExists('ECF', 'GavetaSanRe') then
     ArquivoIni.WriteBool('ECF', 'GavetaSanRe', False);
   //Abrir Após Sangria e Reforço
   if not ArquivoIni.ValueExists('ECF', 'EnableMsgP') then
     ArquivoIni.WriteBool('ECF', 'EnableMsgP', True);
   if not ArquivoIni.ValueExists('ECF', 'MsgP') then
     ArquivoIni.WriteString('ECF', 'MsgP', 'Siace Sistemas www.SiaceSistemas.com.br');
   if not ArquivoIni.ValueExists('ECF', 'DefTNome') then
     ArquivoIni.WriteString('ECF', 'DefTNome', 'T01');
   if not ArquivoIni.ValueExists('ECF', 'DefTVal') then
     ArquivoIni.WriteString('ECF', 'DefTVal', '1700');
   if not ArquivoIni.ValueExists('ECF', 'UltimaZ') then
     ArquivoIni.WriteDateTime('ECF', 'UltimaZ', now);
   if not ArquivoIni.ValueExists('ECF', 'UltimaX') then
     ArquivoIni.WriteDateTime('ECF', 'UltimaX', now);
   if not ArquivoIni.ValueExists('ECF', 'GavetaInterv') then
     ArquivoIni.WriteBool('ECF', 'GavetaInterv', False);
   if not ArquivoIni.ValueExists('ECF', 'GavetaVenda') then
     ArquivoINI.WriteBool('ECF', 'GavetaVenda', False);
   if not ArquivoIni.ValueExists('ECF', 'CodPDV') then
     ArquivoINI.WriteInteger('ECF', 'CodPDV', 0);

   //------ Config Boleto Não Fiscal ------
   if not ArquivoIni.ValueExists('BOLETO', 'PortaImpr') then
     ArquivoIni.WriteString('BOLETO', 'PortaImpr', 'LPT1');
   if not ArquivoIni.ValueExists('BOLETO', 'NumVias') then
     ArquivoIni.WriteInteger('BOLETO', 'NumVias', 1);
   if not ArquivoIni.ValueExists('BOLETO', 'EnableCabecalho') then
     ArquivoIni.WriteBool('BOLETO', 'EnableCabecalho', True);
   if not ArquivoIni.ValueExists('BOLETO', 'EnableRodape') then
     ArquivoIni.WriteBool('BOLETO', 'EnableRodape', True);
   if not ArquivoIni.ValueExists('BOLETO', 'EnablePreview') then
     ArquivoIni.WriteBool('BOLETO', 'EnablePreview', True);
   if not ArquivoIni.ValueExists('BOLETO', 'EnableMsgP') then
     ArquivoIni.WriteBool('BOLETO', 'EnableMsgP', True);
   if not ArquivoIni.ValueExists('BOLETO', 'AskImpr') then
     ArquivoIni.WriteBool('BOLETO', 'AskImpr', True);
   if not ArquivoIni.ValueExists('BOLETO', 'TipoImpr') then
     ArquivoIni.WriteInteger('BOLETO', 'TipoImpr', 0);
   if not ArquivoIni.ValueExists('BOLETO', 'DefaultAnswerAskImpr') then
     ArquivoIni.WriteBool('BOLETO', 'DefaultAnswerAskImpr', False);
   if not ArquivoIni.ValueExists('BOLETO', 'Cabecalho1') then
     ArquivoIni.WriteString('BOLETO', 'Cabecalho1', 'Siace Sistemas');
   if not ArquivoIni.ValueExists('BOLETO', 'Cabecalho2') then
     ArquivoIni.WriteString('BOLETO', 'Cabecalho2', 'Automação Comercial');
   if not ArquivoIni.ValueExists('BOLETO', 'Cabecalho3') then
     ArquivoIni.WriteString('BOLETO', 'Cabecalho3',
       'Av. 20 de Dezembro nº 47 Centro');
   if not ArquivoIni.ValueExists('BOLETO', 'Cabecalho4') then
     ArquivoIni.WriteString('BOLETO', 'Cabecalho4',
       'www.siacesistemas.com.br  /  startnetinfo@gmail.com');
   if not ArquivoIni.ValueExists('BOLETO', 'MsgP') then
     ArquivoIni.WriteString('BOLETO', 'MsgP', 'Siace Sistemas www.SiaceSistemas.com.br');
   if not ArquivoIni.ValueExists('BOLETO', 'Rodape1') then
     ArquivoIni.WriteString('BOLETO', 'Rodape1', 'Siace Sistemas');
   if not ArquivoIni.ValueExists('BOLETO', 'Rodape2') then
     ArquivoIni.WriteString('BOLETO', 'Rodape2',
       'Av. 20 de Dezembro nº 47 Centro');
   if not ArquivoIni.ValueExists('BOLETO', 'Rodape3') then
     ArquivoIni.WriteString('BOLETO', 'Rodape3',
       'Cep: 78.330-000  -   Cotriguaçu-MT');
   if not ArquivoIni.ValueExists('BOLETO', 'Rodape4') then
     ArquivoIni.WriteString('BOLETO', 'Rodape4',
       'Telefax: (66) 3555-1453   E-mail: startnetinfo@gmail.com   Site: www.siacesistemas.com.br');

   //------ Config MultiLoja ------
   if not ArquivoIni.ValueExists('MULTILOJA', 'EnableMultiLoja') then
     ArquivoIni.WriteBool('MULTILOJA', 'EnableMultiLoja', False);
   if not ArquivoIni.ValueExists('MULTILOJA', 'BaseLocal') then
     ArquivoIni.WriteString('MULTILOJA', 'BaseLocal',
       extractfiledir(application.Exename) + '\siace.gdb');

  //------ Config Interbase Connection ------
  if not ArquivoIni.ValueExists ('IBDB', 'UserName') then
   ArquivoIni.WriteString('IBDB', 'UserName', 'SYSDBA');
  if not ArquivoIni.ValueExists ('IBDB', 'Password') then
   ArquivoIni.WriteString('IBDB', 'Password', 'masterkey');
  if not ArquivoIni.ValueExists ('IBDB', 'SQLRole') then
   ArquivoIni.WriteString('IBDB', 'SQLRole', '');
  if not ArquivoIni.ValueExists ('IBDB', 'CharacterSet') then
   ArquivoIni.WriteString('IBDB', 'CharacterSet', '');
  if not ArquivoIni.ValueExists ('IBDB', 'LoginPrompt') then
   ArquivoIni.WriteBool('IBDB', 'LoginPrompt', False);
  if not ArquivoIni.ValueExists ('IBDB', 'ConexaoRemota') then
   ArquivoIni.WriteBool('IBDB', 'ConexaoRemota', False);
  if not ArquivoIni.ValueExists ('IBDB', 'IbServerName') then
   ArquivoIni.WriteString('IBDB', 'IbServerName', '');
  if not ArquivoIni.ValueExists('IBDB', 'IbDBPath') then
   ArquivoIni.WriteString('IBDB', 'IbDBPath', extractfiledir(application.Exename) + '\Banco\TkPosto.IB');
  if not ArquivoIni.ValueExists ('IBDB', 'IbScriptPath') then
   ArquivoIni.WriteString('IBDB', 'IbScriptPath', extractfiledir(application.Exename) + '\Banco\ScriptTkPosto.sql');

  //------ Config LOG ------
  if not ArquivoIni.ValueExists ('LOG', 'EnableLog') then
   ArquivoIni.WriteBool  ('LOG', 'EnableLog', True);
  if not ArquivoIni.ValueExists ('LOG', 'LogFileDir') then
   ArquivoIni.WriteString('LOG', 'LogFileDir', extractfiledir(application.Exename) + '\LOGDir');
  if not ArquivoIni.ValueExists ('LOG', 'LogFilePath') then
   ArquivoIni.WriteString('LOG', 'LogFilePath', extractfiledir(application.Exename) + '\LOGDir\TkPosto' + RemoveInvalid('/',copy(datetostr(now),3,length(datetostr(now)))) +'.log');

  //------ Config HelpFile ------
  if not ArquivoIni.ValueExists ('HELP', 'EnableHelpFile') then
   ArquivoIni.WriteBool  ('HELP', 'EnableHelpFile', True);
  if not ArquivoIni.ValueExists ('HELP', 'TkPostoHelpFilePath') then
   ArquivoIni.WriteString('HELP', 'HelpFilePath', extractfiledir(application.Exename) + '\AJUDA TKPosto.chm');
except
   application.messagebox('Erro no processo de criação de arquivo INI de Configurações Default.',
     'Atenção', mb_ok + Mb_iconerror);
   logtofile('Erro :: Problemas ao Iniciar processo de criação de arquivo INI default - DM1.Procedure CreateIniFile',
     True);
   logtofile('Msg  :: Erro ao iniciar processo de criação de arquivo INI com configurações Default.',
     False);
  end;
 ArquivoIni.Free;
 screen.cursor := crDefault;
end;

//------ Help File - Executa, Localiza e Salva Path ------
procedure ExecHelpFile;
var
 HelpFilePath: string;
 ArquivoIni: TIniFile;
 MyOpenDialog: TOpenDialog;
 Path: string;
begin
 try
   screen.cursor := crHourGlass;
   Path := CreateDefaultIniFile;
   ArquivoIni := TIniFile.Create(Path);
   HelpFilePath := ArquivoIni.ReadString('HELP', 'HelpFilePath',
     extractfiledir(application.Exename) + '\AJUDA SiacePosto.chm');

   if FileExists(HelpFilePath) then
     ShellExecute(0, nil, PChar(HelpFilePath), nil, nil, SW_NORMAL)
   else
    begin
     logtofile('Erro :: Impossível localizar arquivo de help em: ' + HelpFilePath, True);
     if application.messagebox(PChar('Não foi possível encontrar Arquivo de Ajuda:' +
       #13 + HelpFilePath + #13#13 +
       'Deseja Localizar o Arquivo?'),
       'Atenção', MB_IconInformation + MB_YESNO) = idYes then
      begin
       MyOpenDialog := TOpenDialog.Create(MyOpenDialog);
       MyOpenDialog.Title := 'Localizando Arquivo de Ajuda...';
       MyOpenDialog.InitialDir := Extractfiledir(HelpFilePath);
       if MyOpenDialog.Execute then
        begin
         ArquivoIni.WriteString('HELP', 'TkPostoHelpFilePath', MyOpenDialog.FileName);
         logtofile('Msg :: Alterado path do arquivo de help de: ' +
           HelpFilePath + ' para: ' + MyOpenDialog.filename, True);
         ShellExecute(0, nil, PChar(MyOpenDialog.filename), nil, nil, SW_NORMAL);
        end;
      end;
    end;
 except
   logtofile('Erro :: Falha na Execução do arquivo de Help (Procedure ExecHelpFile)', True);
   application.MessageBox('Erro no processo de execução do arquivo de Ajuda',
     'Atenção', mb_ok + mb_iconerror);
  end;

 ArquivoIni.Free;
 MyOpenDialog.Free;
 screen.cursor := crDefault;
end;

function Exec_File(File_Path: string): integer;
var
 retorno: integer;
 MyOpenDialog: TOpenDialog;
 Error_Msg: String;
begin
 retorno := ERROR_FILE_NOT_FOUND;

 try
   if FileExists(File_Path) then
     retorno := ShellExecute(0, nil, PChar(File_Path), nil, nil, SW_NORMAL)
   else if application.messagebox(PChar('Não foi possível encontrar o arquivo - ' +
     #13 + File_Path + #13#13 +
     'Deseja Localizar o Arquivo?'),
     'Atenção', MB_IconInformation + MB_YESNO) = idYes then
    begin
     MyOpenDialog := TOpenDialog.Create(MyOpenDialog);
     MyOpenDialog.Title := 'Localizando Arquivo...';
     MyOpenDialog.InitialDir := Extractfiledir(application.exename);
     if MyOpenDialog.Execute then
       retorno := ShellExecute(0, nil, PChar(MyOpenDialog.filename), nil, nil, SW_NORMAL);
    end;
 except
   application.MessageBox('Erro no processo de execução do arquivo de Ajuda',
     'Atenção', mb_ok + mb_iconerror);
  end;

 MyOpenDialog.Free;

 Error_Msg := '';
 case retorno of
  0:                      Error_Msg := 'Erro: Não há memória sufiente para executar o arquivo - ' + File_Path;
  ERROR_FILE_NOT_FOUND:   Error_Msg := 'Erro: Arquivo não encontrado em - ' + File_Path;
  ERROR_PATH_NOT_FOUND:   Error_Msg := 'Erro: Arquivo não encontrado em - ' + File_Path;
  ERROR_BAD_FORMAT:       Error_Msg := 'Erro: Arquivo .EXE inválido (non-Win32 .EXE or error in .EXE image).';
  SE_ERR_ACCESSDENIED:    Error_Msg := 'Erro: O Sistema Operacional negou o acesso ao arquivo - ' + File_Path;
  SE_ERR_ASSOCINCOMPLETE: Error_Msg := 'Erro: Associação de tipo de arquivo incompatível ou inválida.';
  SE_ERR_DDEBUSY:         Error_Msg := 'Erro: Transação DDE não pode ser completada devido a execução de outras transações.';
  SE_ERR_DDEFAIL:         Error_Msg := 'Erro: A Transação DDE falhou.';
  SE_ERR_DDETIMEOUT:      Error_Msg := 'Erro: Time de execução da transação DDE';
  SE_ERR_DLLNOTFOUND:     Error_Msg := 'Erro: Dll especificada não foi encontrada.';
  SE_ERR_NOASSOC:         Error_Msg := 'Erro: Não há aplicativo associado ao tipo de arquivo especificado.';
  SE_ERR_OOM:             Error_Msg := 'Erro: Não há memória sufiente para completar a operação.';
  SE_ERR_SHARE:           Error_Msg := 'Erro: Violação de Compartilhamento.';
  //else
  //showmessage('instance handle of the application that was run, or the handle of a dynamic data exchange (DDE) server application is: ' + inttostr(retorno));
 end;

 if trim(Error_Msg) <> '' then
  showmessage(Error_Msg);
end;

function GetFileVersion( const FileName: String; var Major, Minor, Release, Build: Integer;
var PreRelease, Debug: Boolean; var Description: String ) : Boolean;
var
  Zero: DWORD;  {set to 0 by GetFileVersionInfoSize}
  VersionInfoSize: DWORD;
  PVersionData: pointer;
  PFixedFileInfo: PVSFixedFileInfo;
  FixedFileInfoLength: UINT;
  FileFlags: WORD;
begin
  {ask Windows how big a data buffer to allocate to hold this EXE or DLL version info}
  VersionInfoSize := GetFileVersionInfoSize( pChar(FileName), Zero );
  {if no version info in the EXE or DLL}
  if VersionInfoSize = 0 then
  begin
    result := False;
    exit;
  end;
  {allocate memory needed to hold version info}
  PVersionData := AllocMem( VersionInfoSize );
  try
    {load version resource out of EXE or DLL into our buffer}
    if GetFileVersionInfo( pChar(FileName), 0, VersionInfoSize, PVersionData ) = false then
    begin
      Raise Exception.Create( 'Can''''t get version info' );
    end;
    {get the fixed file info portion of the resource in buffer}
    if VerQueryValue( PVersionData, '\', pointer(PFixedFileInfo), FixedFileInfoLength ) = false then
    begin
    {no fixed file info in this version resource !}
      result := False;
      exit;
    end;
    {extract the info from the the fixed file data structure}
    Major := PFixedFileInfo^.dwFileVersionMS shr 16;
    Minor := PFixedFileInfo^.dwFileVersionMS and $FFFF;
    Release := PFixedFileInfo^.dwFileVersionLS shr 16;
    Build := PFixedFileInfo^.dwFileVersionLS and $FFFF;
    FileFlags :=  PFixedFileInfo^.dwFileFlags;
    PreRelease := (VS_FF_PRERELEASE and FileFlags) <> 0;
    Debug := (VS_FF_DEBUG and FileFlags) <> 0;
    Description := Format('Ver %d.%d, Release %d Build %d', [Major, Minor, Release, Build] );
    if PreRelease then
    begin
      Description := Description + ' Beta';
    end;
    if Debug then
    begin
      Description := Description + ' Debug';
    end;
  finally
    FreeMem( PVersionData );
  end;
  result := True;
end;

//------ Verifica Integridade de CEP com UF------
//ShortString deve ser passada sem formatação
function VerificaCEP(cCep:ShortString ; cEstado:ShortString): Boolean;
var
cCEP1: integer;
begin
 Result := False;
 if Trim(cCep) = '' then
  Exit;

 cCEP1 := StrToInt(copy(cCep,1,3));
 if Length(trim(cCep)) > 0 then
  begin
   if (StrToInt(cCep) <= 1000000.0) then
    begin
     //MessageDlg('CEP tem que ser maior que [01000-000]',mtError,[mbOk],0);
     Result := False
    end
   else
    begin
     if Length(trim(copy(cCep,6,3))) < 3 then Result := False else
     if (cEstado = 'SP') and (cCEP1 >= 10 ) and (cCEP1 <= 199) then Result := True else
     if (cEstado = 'RJ') and (cCEP1 >= 200) and (cCEP1 <= 289) then Result := True else
     if (cEstado = 'ES') and (cCEP1 >= 290) and (cCEP1 <= 299) then Result := True else
     if (cEstado = 'MG') and (cCEP1 >= 300) and (cCEP1 <= 399) then Result := True else
     if (cEstado = 'BA') and (cCEP1 >= 400) and (cCEP1 <= 489) then Result := True else
     if (cEstado = 'SE') and (cCEP1 >= 490) and (cCEP1 <= 499) then Result := True else
     if (cEstado = 'PE') and (cCEP1 >= 500) and (cCEP1 <= 569) then Result := True else
     if (cEstado = 'AL') and (cCEP1 >= 570) and (cCEP1 <= 579) then Result := True else
     if (cEstado = 'PB') and (cCEP1 >= 580) and (cCEP1 <= 589) then Result := True else
     if (cEstado = 'RN') and (cCEP1 >= 590) and (cCEP1 <= 599) then Result := True else
     if (cEstado = 'CE') and (cCEP1 >= 600) and (cCEP1 <= 639) then Result := True else
     if (cEstado = 'PI') and (cCEP1 >= 640) and (cCEP1 <= 649) then Result := True else
     if (cEstado = 'MA') and (cCEP1 >= 650) and (cCEP1 <= 659) then Result := True else
     if (cEstado = 'PA') and (cCEP1 >= 660) and (cCEP1 <= 688) then Result := True else
     if (cEstado = 'AM') and ((cCEP1 >= 690) and (cCEP1 <= 692) or (cCEP1 >= 694) and (cCEP1 <= 698)) then Result := True else
     if (cEstado = 'AP') and (cCEP1 = 689) then Result := True else
     if (cEstado = 'RR') and (cCEP1 = 693) then Result := True else
     if (cEstado = 'AC') and (cCEP1 = 699) then Result := True else
     if ((cEstado = 'DF') or (cEstado = 'GO')) and (cCEP1 >= 700) and (cCEP1 <= 769) then Result := True else
     if (cEstado = 'TO') and (cCEP1 >= 770) and (cCEP1 <= 779) then Result := True else
     if (cEstado = 'MT') and (cCEP1 >= 780) and (cCEP1 <= 788) then Result := True else
     if (cEstado = 'MS') and (cCEP1 >= 790) and (cCEP1 <= 799) then Result := True else
     if (cEstado = 'RO') and (cCEP1 = 789) then Result := True else
     if (cEstado = 'PR') and (cCEP1 >= 800) and (cCEP1 <= 879) then Result := True else
     if (cEstado = 'SC') and (cCEP1 >= 880) and (cCEP1 <= 899) then Result := True else
     if (cEstado = 'RS') and (cCEP1 >= 900) and (cCEP1 <= 999) then Result := True else Result := False
    end;
  end
 else
  Result := True;
end;


end.
