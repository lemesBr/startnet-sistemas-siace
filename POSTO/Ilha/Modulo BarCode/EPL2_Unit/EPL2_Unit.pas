unit EPL2_Unit;

interface

 uses
  Dialogs, Windows, Classes, SysUtils, Printers;

 type
  TPassThroughData = Record
   nLen: Integer;
   Data: Array [0..2000] of byte;
  end;

  Procedure Impressao_Paralela(Texto: String);
  Procedure Abrir_Etiqueta_EPL2;
  Procedure Texto_EPL2(Margem_Esquerda, Margem_Superior, Multiplicador_Horizontal, Multiplicador_Vertical: Integer;
                       Tipo_Fonte: Char; Texto: String; Imprime_Espelhado: Boolean; Rotacao: integer = 0);
  Procedure Codigo_Barras_EPL2(Margem_Esquerda, Margem_Superior, Barra_Fina, Barra_Grossa, Altura_Barra: Integer;
                               Tipo_Codigo, Codigo: String; Imprime_Numero: Boolean; Rotacao: integer = 0);
  Procedure Configura_EPL2(Comprimento_Etiqueta, Distancia_Etiqueta, Offset,
                           Margem_Horizontal, Margem_Vertical: Integer);
  Function Fechar_Etiqueta_EPL2(Imprime: Boolean; Quantidade: integer = -1): TStrings;
  Function Comando_A(p1, p2, p3, p4, p5, p6 , p7, texto: String): String;
  Function Comando_B(p1, p2, p3, p4, p5, p6 , p7, p8, valor: String): String;
  Function Comando_Q(p1, p2, p3: String): String;
  Function Comando_R(p1, p2: String): String;
  Function Comando_N: String;
  Function Comando_P(p1: String): String;

 var
  Etiqueta_Str: TStrings;
  Etiqueta_Aberta: Boolean;

implementation

Procedure Verifica_Registro;
var
 Registro: Boolean;
begin
 Registro := False;

 if not Registro then
  begin
   ShowMessage('EPL2_Unit NÃO REGISTRADA... ' + #13#10 +
               'Adiquira agora mesmo a sua versão REGISTRADA!' + #13#13 +
               'Maiores informações:' + #13#10 +
               ' Site   : www.igara.com.br' + #13#10 +
               '            www.victory.hpg.com.br' + #13#13 +
               ' E-Mail: victory@igara.com.br' + #13#10 +
               '            hereim@ig.com.br');
  end;
end;

{Envio de Comandos pela Porta Paralela}
Procedure Impressao_Paralela(Texto: String);
var
 PTBlock : TPassThroughData;
Begin
 PTBlock.nLen := Length(Texto);
 StrPCopy(@PTBlock.Data, Texto);
 Escape(printer.handle, PASSTHROUGH,0,@PTBlock,nil);
end;

{Comando de impressao de textos
Parâmetros
p1 - Margem Esquerda
p2 - Margem Superior
p3 - Rotação
p4 - Tipo de Fonte
p5 - Multiplicador Horizontal
p6 - Multiplicador Vertical
p7 - Imprime Normal(N) ou em sentido Reverso(R)
Texto - Texto a ser impresso}
Function Comando_A(p1, p2, p3, p4, p5, p6 , p7, texto: String): String;
begin
 result := 'A' + p1 + ',' + p2 + ',' + p3 +',' +  p4 + ',' + p5 + ',' + p6 + ',' + p7 + ',"' + texto + '"';
end;

{Comando de impressao de código de barras
Parâmetros
p1 - Margem Esquerda     
p2 - Margem Superior
p3 - Rotação
p4 - Tipo de Codigo
p5 - Espaço da Barra mais Estreita
p6 - Espaço da Barra mais Larga
p7 - Altura da Barra
p8 - Imprime Valores(B) ou Não(N)
Valor - Código a ser impresso}
Function Comando_B(p1, p2, p3, p4, p5, p6 , p7, p8, valor: String): String;
begin
 result := 'B' + p1 + ',' + p2 + ',' + p3 + ',' + p4 + ',' + p5 + ',' + p6 + ',' + p7 + ',' + p8 + ',"' + valor + '"';
end;

{Comando de configuração da etiqueta
Parâmetros
p1 - Tamanho da Etiqueta
p2 - Espaço entre Etiquetas
p3 - Espaço deixado no início da Impressão da Etiqueta(Offset)}
Function Comando_Q(p1, p2, p3: String): String;
begin
 result := 'Q' + p1 + ',' + p2 + ',' + p3;
end;

{Comando de configuração da etiqueta
Parâmetros
p1 - Margem Horizontal
p2 - Margem Vertical}
Function Comando_R(p1, p2: String): String;
begin
 result := 'R' + p1 + ',' + p2;
end;

{Comando de limpeza do buffer}
Function Comando_N: String;
begin
 result := 'N';
end;

{Comando de Numero de repetições de impressao da etiqueta
Parâmetros
p1 - Quantidade de Etiquetas a Serem Impressas}
Function Comando_P(p1: String): String;
begin
 result := 'P' + p1;
end;

{Inicio de Formatação de Etiqueta}
procedure Abrir_Etiqueta_EPL2;
begin
 Verifica_Registro;

 Etiqueta_Aberta := True;
 
 if not Assigned(Etiqueta_Str) then
  Etiqueta_Str := TStringList.Create;

 Etiqueta_Str.Clear;

  with Etiqueta_Str do
   begin
    Add(Comando_N);
   end;
end;

{Fim de Formatação de Etiqueta:
  - O Comando é enviado e apagado do TStringList
  - A função retorna a última StringList enviada}
Function Fechar_Etiqueta_EPL2(Imprime: Boolean; Quantidade: integer = -1): TStrings;
begin
 Verifica_Registro;
 
 with Etiqueta_Str do
  begin
   if Quantidade > 0 then
    Add(Comando_P(IntToStr(Quantidade)));
  end;

 if Imprime then
  begin
   Printer.BeginDoc;
   Impressao_Paralela(Etiqueta_Str.Text);
   Printer.EndDoc;
  end;

 Result := TStringList.Create;
 Result.AddStrings(Etiqueta_Str);

 Etiqueta_Str.Clear;
 Etiqueta_Str.Free;
 Etiqueta_Str := nil;

 Etiqueta_Aberta := False;
end;

{Impressão de Campo de Texto}
Procedure Texto_EPL2(Margem_Esquerda, Margem_Superior, Multiplicador_Horizontal, Multiplicador_Vertical: Integer;
                     Tipo_Fonte: Char; Texto: String; Imprime_Espelhado: Boolean; Rotacao: integer = 0);
var
 Imp: String;
begin
 if not Etiqueta_Aberta then
  Exit;

 //N - Normal
 //R - Reverso
 Imp := 'N';
 if Imprime_Espelhado then
  Imp := 'R';
 with Etiqueta_Str do
  begin
   Add(Comando_A(IntToStr(Margem_Esquerda), IntToStr(Margem_Superior), IntToStr(Rotacao), Tipo_Fonte,
                 IntToStr(Multiplicador_Horizontal), IntToStr(Multiplicador_Vertical), Imp, Texto));
  end;
end;

{Impressão de Código de Barras}
Procedure Codigo_Barras_EPL2(Margem_Esquerda, Margem_Superior, Barra_Fina, Barra_Grossa, Altura_Barra: Integer;
                             Tipo_Codigo, Codigo: String; Imprime_Numero: Boolean; Rotacao: integer = 0);
var
 Imp: String;
begin
 if not Etiqueta_Aberta then
  Exit;

 //N - Não Imprime Código Numérico
 //B - Imprime Código Numérico
 Imp := 'N';
 if Imprime_Numero then
  Imp := 'B';
 with Etiqueta_Str do
  begin
   Add(Comando_B(IntToStr(Margem_Esquerda), IntToStr(Margem_Superior), IntToStr(Rotacao), Tipo_Codigo,
                 IntToStr(Barra_Fina), IntToStr(Barra_Grossa), IntToStr(Altura_Barra), Imp, Codigo));
  end;
end;

{Configuração da Etiqueta}
Procedure Configura_EPL2(Comprimento_Etiqueta, Distancia_Etiqueta, Offset, Margem_Horizontal, Margem_Vertical: Integer);
begin
 if not Etiqueta_Aberta then
  Exit;

 with Etiqueta_Str do
  begin
   Add(Comando_Q(IntToStr(Comprimento_Etiqueta), IntToStr(Distancia_Etiqueta), IntToStr(Offset)));
   Add(Comando_R(IntToStr(Margem_Horizontal), IntToStr(Margem_Vertical)));
  end;
end;

end.
