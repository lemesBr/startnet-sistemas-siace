unit Formata_CPF_CNPJ;

interface

uses SysUtils;

{ Retorna a string no formato de fone: (xx)xxxx-xxxx }
function tbFmtFone(const S: string): string;
{ Retorna a string no formato de CEP: xxxxx-xxx }
function tbFmtCep(const S: string): string;
{ Retorna a string no formato de CPF: xxx.xxx.xxx-xx }
function tbFmtCPF(const S: string): string;
{ Retorna a string no formato de CNPJ: xx.xxx.xxx/xxxx-xx }
function tbFmtCNPJ(const S: string): string;
{ Retorna a string no formato apropriado: CPF ou CNPJ }
function tbFmtCPForCNPJ(const S: string): string;
{ Retorna true se a string cont�m um n�mero de CPF v�lido }
function tbIsCPF(S: string): boolean;
{ Retorna true se a string cont�m um n�mero de CNPJ v�lido }
function tbIsCNPJ(S: string): boolean;
{ Retorna true se a string cont�m um n�mero de CPF ou de CNPJ v�lido }
function tbIsCPForCNPJ(const S: string): boolean;

function Criptografia(mStr, mChave: string): string;
{valida inscricao estadual icri��o - uf }
Function Inscricao        ( Inscricao, Tipo   : String ) : Boolean;
{mascara Inscri��o}
Function Mascara_Inscricao( Inscricao, Estado : String ) : String;


implementation

{ fun��o que obt�m os d�gitos de uma string }
function tbDigits(const S: string): string;
var
  I: integer;
begin
  for I := 1 to Length(S) do
    if S[I] in ['0'..'9'] then
      Result := Result + S[I];
end;

function tbFmtfone(const S: string): string;
begin
  Result := tbDigits(S);
  if Length(Result) = 10 then
    Result := Copy(S, 0, 0) + '(' +
              Copy(S, 1, 2) + ')' +
              Copy(S, 3, 4) + '-' +
              Copy(S, 7, 4)
  else
    Result := S;
end;

function tbFmtCEP(const S: string): string;
begin
  Result := tbDigits(S);
  if Length(Result) = 8 then
    Result := Copy(S, 1, 5) + '-' +
              Copy(S, 6, 3)
  else
    Result := S;
end;

function tbFmtCPF(const S: string): string;
begin
  Result := tbDigits(S);
  if Length(Result) = 11 then
    Result := Copy(S, 1, 3) + '.' +
              Copy(S, 4, 3) + '.' +
              Copy(S, 7, 3) + '-' +
              Copy(S, 10, 2)
  else
    Result := S;
end;

function tbFmtCNPJ(const S: string): string;
begin
  Result := tbDigits(S);
  if Length(Result) = 14 then
    Result := Copy(S, 1, 2) + '.' +
              Copy(S, 3, 3) + '.' +
              Copy(S, 6, 3) + '/' +
              Copy(S, 9, 4) + '-' +
              Copy(S, 13, 2)
  else
    Result := S;
end;

function tbFmtCPForCNPJ(const S: string): string;
begin
  Result := tbDigits(S);
  case Length(Result) of
    11: Result := tbFmtCPF(Result);
    14: Result := tbFmtCNPJ(Result);
  else
    Result := S;
  end;
end;

function tbIsCPF(S: string): boolean;
var
  Soma: integer;
  I, CalcDig1, CalcDig2: byte;
begin
  Result := false;

  { Obt�m somente os d�gitos }
  S := tbDigits(S);

  { Se n�o tiver 11 d�gitos... }
  if Length(S) <> 11 then Exit;

  { C�lculo do 1� d�gito }
  Soma := 0;
  for I := 1 to 9 do
    Soma := Soma + StrToInt(S[I]) * (11 - I);

  CalcDig1 := 11 - (Soma mod 11);
  if CalcDig1 in [10, 11] then
    CalcDig1 := 0;

  { C�lculo do 2� d�gito }
  Soma := 0;
  for I := 1 to 10 do
    Soma := Soma + StrToInt(S[I]) * (12 - I);

  CalcDig2 := 11 - (Soma mod 11);
  if CalcDig2 in [10, 11] then
    CalcDig2 := 0;

  Result := (CalcDig1 = StrToInt(S[10])) and
    (CalcDig2 = StrToInt(S[11]));
end;

function tbIsCNPJ(S: string): boolean;
var
  Soma: integer;
  I, CalcDig1, CalcDig2: byte;
begin
  Result := false;

  { Obt�m somente os d�gitos }
  S := tbDigits(S);

  { Se n�o tiver 14 d�gitos... }
  if Length(S) <> 14 then Exit;

  { C�lculo do 1� d�gito }
  Soma := 0;
  for I := 1 to 4 do
    Soma := Soma + StrToInt(S[I]) * (6 - I);
  for I := 1 to 8 do
    Soma := Soma + StrToInt(S[I + 4]) * (10 - I);

  CalcDig1 := 11 - (Soma mod 11);
  if CalcDig1 in [10, 11] then
    CalcDig1 := 0;

  { C�lculo do 2� d�gito }
  Soma := 0;
  for I := 1 to 5 do
    Soma := Soma + StrToInt(S[I]) * (7 - I);
  for I := 1 to 8 do
    Soma := Soma + StrToInt(S[I + 5]) * (10 - I);

  CalcDig2 := 11 - (Soma mod 11);
  if CalcDig2 in [10, 11] then
    CalcDig2 := 0;

  Result := (CalcDig1 = StrToInt(S[13])) and
            (CalcDig2 = StrToInt(S[14]));
end;

function tbIsCPForCNPJ(const S: string): boolean;
begin
  Result := tbIsCPF(S) or tbIsCNPJ(S);
end;

function Criptografia(mStr, mChave: string): string;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
begin
  Result := mStr;
  TamanhoString := Length(mStr);
  TamanhoChave := Length(mChave);
  for i := 1 to TamanhoString do
    begin
      pos := (i mod TamanhoChave);
      if pos = 0 then
        pos := TamanhoChave;
      posLetra := ord(Result[i]) xor ord(mChave[pos]);
      if posLetra = 0 then
        posLetra := ord(Result[i]);
      Result[i] := chr(posLetra);
    end;
end;

Function Inscricao( Inscricao, Tipo : String ) : Boolean; Var

Contador  : ShortInt;
Casos     : ShortInt;
Digitos   : ShortInt;

Tabela_1  : String;
Tabela_2  : String;
Tabela_3  : String;

Base_1    : String;
Base_2    : String;
Base_3    : String;

Valor_1   : ShortInt;

Soma_1    : Integer;
Soma_2    : Integer;

Erro_1    : ShortInt;
Erro_2    : ShortInt;
Erro_3    : ShortInt;

Posicao_1 : string;
Posicao_2 : String;

Tabela    : String;
Rotina    : String;
Modulo    : ShortInt;
Peso      : String;

Digito    : ShortInt;

Resultado : String;
Retorno   : Boolean;

Begin

  Try

  Tabela_1 := ' ';
  Tabela_2 := ' ';
  Tabela_3 := ' ';

  {                                                                               }                                                                                                                 {                                                                                                }
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
  { -------------------------------------------------------- }
  {                                                                               }
  {         Valores possiveis para as rotinas (d) e (g)                           }
  {                                                                               }
  { A a E = Somente a Letra indicada.                                             }
  {     0 = B e D                                                                 }
  {     1 = C e E                                                                 }
  {     2 = A e E                                                                 }
  {                                                                               }
  { -------------------------------------------------------- }
  {                                                                               }
  {                                  C T  F R M  P  R M  P                        }
  {                                  A A  A O O  E  O O  E                        }
  {                                  S M  T T D  S  T D  S                        }
  {                                                                               }
  {                                  a b  c d e  f  g h  i  jjjjjjjjjjjjjj        }
  {                                  0000000001111111111222222222233333333        }
  {                                  1234567890123456789012345678901234567        }

  IF Tipo = 'AC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';
  IF Tipo = 'AC'   Then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
  IF Tipo = 'AL'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AM'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';
  IF Tipo = 'BA'   Then Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';
  IF Tipo = 'BA'   Then Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';
  IF Tipo = 'CE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';
  IF Tipo = 'DF'   Then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
  IF Tipo = 'ES'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';
  IF Tipo = 'GO'   Then Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';
  IF Tipo = 'GO'   Then Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';
  IF Tipo = 'MA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';
  IF Tipo = 'MT'   Then Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';
  IF Tipo = 'MS'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';
  IF Tipo = 'MG'   Then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
  IF Tipo = 'PA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';
  IF Tipo = 'PB'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';
  IF Tipo = 'PR'   Then Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';
  IF Tipo = 'PE'   Then Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';
  IF Tipo = 'PI'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';
  IF Tipo = 'RJ'   Then Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';
  IF Tipo = 'RN'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';
  IF Tipo = 'RS'   Then Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';
  IF Tipo = 'RO'   Then Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';
  IF Tipo = 'RO'   Then Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';
  IF Tipo = 'RR'   Then Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';
  IF Tipo = 'SC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
  IF Tipo = 'SP'   Then Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';
  IF Tipo = 'SP'   Then Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';
  IF Tipo = 'SE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
  IF Tipo = 'TO'   Then Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';

  IF Tipo = 'CNPJ' Then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
  IF Tipo = 'CPF'  Then Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';

  { Deixa somente os numeros }

  Base_1 := '';

  For Contador := 1 TO 30 Do IF Pos( Copy( Inscricao, Contador, 1 ), '0123456789' ) <> 0 Then Base_1 := Base_1 + Copy( Inscricao, Contador, 1 );

  { Repete 3x - 1 para cada caso possivel  }

  Casos  := 0;

  Erro_1 := 0;
  Erro_2 := 0;
  Erro_3 := 0;

  While Casos < 3 Do Begin

    Casos := Casos + 1;

    IF Casos = 1 Then Tabela := Tabela_1;
    IF Casos = 2 Then Erro_1 := Erro_3  ;
    IF Casos = 2 Then Tabela := Tabela_2;
    IF Casos = 3 Then Erro_2 := Erro_3  ;
    IF Casos = 3 Then Tabela := Tabela_3;

    Erro_3 := 0 ;

    IF Copy( Tabela, 1, 1 ) <> ' ' Then Begin

      { Verifica o Tamanho }

      IF Length( Trim( Base_1 ) ) <> ( StrToInt( Copy( Tabela,  3,  2 ) ) ) Then Erro_3 := 1;

      IF Erro_3 = 0 Then Begin

        { Ajusta o Tamanho }

        Base_2 := Copy( '              ' + Base_1, Length( '              ' + Base_1 ) - 13, 14 );

        { Compara com valores possivel para cada uma da 14 posi��es }

        Contador := 0 ;

        While ( Contador < 14 ) AND ( Erro_3 = 0 ) Do Begin

          Contador := Contador + 1;

          Posicao_1 := Copy( Copy( Tabela, 24, 14 ), Contador, 1 );
          Posicao_2 := Copy( Base_2                , Contador, 1 );

          IF ( Posicao_1  = ' '        ) AND (      Posicao_2                 <> ' ' ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'N'        ) AND ( Pos( Posicao_2, '0123456789' )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'A'        ) AND ( Pos( Posicao_2, '123456789'  )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'B'        ) AND ( Pos( Posicao_2, '03578'      )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'C'        ) AND ( Pos( Posicao_2, '47'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'D'        ) AND ( Pos( Posicao_2, '34'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'E'        ) AND ( Pos( Posicao_2, '08'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'F'        ) AND ( Pos( Posicao_2, '015'        )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'G'        ) AND ( Pos( Posicao_2, '1789'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'H'        ) AND ( Pos( Posicao_2, '0123'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'I'        ) AND ( Pos( Posicao_2, '01234'      )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'J'        ) AND ( Pos( Posicao_2, '09'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'K'        ) AND ( Pos( Posicao_2, '1239'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1 <>  Posicao_2 ) AND ( Pos( Posicao_1, '0123456789' )  >   0 ) Then Erro_3 := 1;

        End;

        { Calcula os Digitos }

        Rotina  := ' ';
        Digitos := 000;
        Digito  := 000;

        While ( Digitos < 2 ) AND ( Erro_3 = 0 ) Do Begin

          Digitos := Digitos + 1;

          { Carrega peso }

          Peso := Copy( Tabela, 5 + ( Digitos * 8 ), 2 );

          IF Peso <> '  ' Then Begin

            Rotina :=           Copy( Tabela, 0 + ( Digitos * 8 ), 1 )  ;
            Modulo := StrToInt( Copy( Tabela, 2 + ( Digitos * 8 ), 2 ) );

            IF Peso = '01' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
            IF Peso = '02' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '03' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
            IF Peso = '04' Then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
            IF Peso = '05' Then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
            IF Peso = '06' Then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
            IF Peso = '07' Then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
            IF Peso = '08' Then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
            IF Peso = '09' Then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
            IF Peso = '10' Then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
            IF Peso = '11' Then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
            IF Peso = '12' Then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
            IF Peso = '13' Then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
            IF Peso = '21' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '22' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
            IF Peso = '31' Then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '32' Then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';

            { Multiplica }

            Base_3 := Copy( ( '0000000000000000' + Trim( Base_2 ) ), Length( ( '0000000000000000' + Trim( Base_2 ) ) ) - 13, 14 );

            Soma_1 := 0;
            Soma_2 := 0;

            For Contador := 1 To 14 Do Begin

              Valor_1 := ( StrToInt( Copy( Base_3, Contador, 01 ) ) * StrToInt( Copy( Peso, Contador * 3 - 2, 2 ) ) );

              Soma_1  := Soma_1 + Valor_1;

              IF Valor_1 > 9 Then Valor_1 := Valor_1 - 9;

              Soma_2  := Soma_2 + Valor_1;

            End;

            { Ajusta valor da soma }

            IF Pos( Rotina, 'A2'  ) > 0 Then Soma_1 := Soma_2;
            IF Pos( Rotina, 'B0'  ) > 0 Then Soma_1 := Soma_1 * 10;
            IF Pos( Rotina, 'C1'  ) > 0 Then Soma_1 := Soma_1 + ( 5 + 4 * StrToInt( Copy( Tabela, 6, 1 ) ) );

            { Calcula o Digito }

            IF Pos( Rotina, 'D0'  ) > 0 Then Digito := Soma_1 Mod Modulo;
            IF Pos( Rotina, 'E12' ) > 0 Then Digito := Modulo - ( Soma_1 Mod Modulo);

            IF Digito < 10 Then Resultado := IntToStr( Digito );
            IF Digito = 10 Then Resultado := '0';
            IF Digito = 11 Then Resultado := Copy( Tabela, 6, 1 );

            { Verifica o Digito }

            IF ( Copy( Base_2, StrToInt( Copy( Tabela, 36 + ( Digitos * 3 ), 2 ) ), 1 ) <> Resultado ) Then Erro_3 := 1;

          End;

        End;

      End;

    End;

  End;

  { Retorna o resultado da Verifica��o }

  Retorno := FALSE;

  IF ( Trim( Tabela_1 ) <> '' ) AND ( ERRO_1 = 0 ) Then Retorno := TRUE;
  IF ( Trim( Tabela_2 ) <> '' ) AND ( ERRO_2 = 0 ) Then Retorno := TRUE;
  IF ( Trim( Tabela_3 ) <> '' ) AND ( ERRO_3 = 0 ) Then Retorno := TRUE;

  IF Trim( Inscricao ) = 'ISENTO' Then Retorno := TRUE;

  Result := Retorno;

  Except

  Result := False;

End;

End;

{ Mascara_Inscricao __________________________________}

Function Mascara_Inscricao( Inscricao, Estado : String ) : String; Var

Mascara     : String;

Contador_1  : Integer;
Contador_2  : Integer;

Begin

  IF Estado = 'AC' Then Mascara := '**.***.***/***-**' ;
  IF Estado = 'AL' Then Mascara := '*********'         ;
  IF Estado = 'AP' Then Mascara := '*********'         ;
  IF Estado = 'AM' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'BA' Then Mascara := '******-**'         ;
  IF Estado = 'CE' Then Mascara := '********-*'        ;
  IF Estado = 'DF' Then Mascara := '***********-**'    ;
  IF Estado = 'ES' Then Mascara := '*********'         ;
  IF Estado = 'GO' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'MA' Then Mascara := '*********'         ;
  IF Estado = 'MT' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'MS' Then Mascara := '*********'         ;
  IF Estado = 'MG' Then Mascara := '***.***.***/****'  ;
  IF Estado = 'PA' Then Mascara := '**-******-*'       ;
  IF Estado = 'PB' Then Mascara := '********-*'        ;
  IF Estado = 'PR' Then Mascara := '********-**'       ;
  IF Estado = 'PE' Then Mascara := '**.*.***.*******-*';
  IF Estado = 'PI' Then Mascara := '*********'         ;
  IF Estado = 'RJ' Then Mascara := '**.***.**-*'       ;
  IF Estado = 'RN' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'RS' Then Mascara := '***/*******'       ;
  IF Estado = 'RO' Then Mascara := '***.*****-*'       ;
  IF Estado = 'RR' Then Mascara := '********-*'        ;
  IF Estado = 'SC' Then Mascara := '***.***.***'       ;
  IF Estado = 'SP' Then Mascara := '***.***.***.***'   ;
  IF Estado = 'SE' Then Mascara := '*********-*'       ;
  IF Estado = 'TO' Then Mascara := '***********'       ;

  Contador_2  := 1;

  Result      := '';

  Mascara     := Mascara + '****';

  For Contador_1 := 1 To Length( Mascara ) Do Begin

    IF Copy( Mascara, Contador_1, 1 ) =  '*' Then Result := Result + Copy( Inscricao, Contador_2, 1 );
    IF Copy( Mascara, Contador_1, 1 ) <> '*' Then Result := Result + Copy( Mascara  , Contador_1, 1 );

    IF Copy( Mascara, Contador_1, 1 ) =  '*' Then Contador_2 := Contador_2 + 1;

  End;

  Result := Trim( Result );

End;


end.
