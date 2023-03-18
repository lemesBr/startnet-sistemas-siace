unit Funcoes;

{Descrição : Este módulo contém funções gerais para validações.           }

interface
   Uses DBTables, MAPI, DB, DBClient, IBStoredProc, Sqlexpr, SysUtils, Types;
   
//Valida data no formato ddmmaa ou no formato ddmmaaaa
function TESTA_DATA(Dado : string) : boolean;

//Testa se data e valida
Function DataValida(StrD: string): Boolean;

// Retorna o Ultimo dia do mes de uma determinada data
function UltDiaDoMes(Data: TDateTime): String;

//Valida sigla de estados brasileiros
function RSS00002(Dado : string) : boolean;

//Valida valor nulo
function RSS00003(Dado : string) : boolean;

//Troca ponto por Virgula
function PontoVirg(Text : string) : string;

//strzero do clipper
function StrZero(Num : Real ; Zeros,Deci: integer): string;

//troca string
function FU_STRTRAN(WSTRINGAPROCESSAR: string; WRETIRAR: string; WCOLOCAR:string): string;
//exemplo
//WCGC := '60.175.585/0001-02';
//WCGC := FU_STRTRAN(WCGC,'.','');
//WCGC := FU_STRTRAN(WCGC,'/','');
//WCGC := FU_STRTRAN(WCGC,'-','');

//Repete o mesmo caractere várias vezes
function Replicate( Caracter:String; Quant:Integer ): String;

//Enviar e-mail
function EnviarEMail(const De, Para, Assunto, Texto, Arquivo: string; Confirma: Boolean): Integer;

//Achar um registro em SQL no IB
//function Achou(QyAuxiliar:TClientDataSet;Tabela:String;Campos,Valores:Array of String;Inclemental:Boolean;Filtro:Boolean;Farmacia:Smallint):Boolean;

//Gravar no Banco
//function Gravar(cdse:TClientDataSet):Boolean;
function Gravar(cdse:TClientDataSet):Boolean;

//Inicia a Transacao no Banco
function fsTransacao(Banco:TSQLConnection):Boolean;
function fsCommit(Banco:TSQLConnection):Boolean;
function fsRollback(Banco:TSQLConnection):Boolean;

//Nro Serial
function Criptografa( RazaoSocial:String; Cnpj:String; Periodo:String; nTerminais:String ): String;
function MesExtenso(AMonth: Integer): String;
function QtdeTerminal(NroTerminal: Integer): String;
function Abrir(dse : TSQLDataSet; cdse : TClientDataSet; vSql : String) : Boolean;

//Trucar valores
function fsRound(vValor : Double) : Double;

//Criptografar Senhas
function Encript(Encript : String): string;

//DesCriptografar Senhas
function Decript(Decript : String): string;

// Testa o CPF e retorno com a mascara.
// ex vRetorno := TestCPF('000000000-00') obs qualquer jeito que quiser digitar.
// se o retorno for '' deu errado.
function TestCPF(Dado : String) : String;

//Valida dígito verificador de CGC
function TestCGC(Dado : string) : String;

//Nome do computador
function SysComputerName: string;

// Data por extenso
Function DataExtenso(Data : TDateTime):String;

// Descompactar o Nro Serial
function DesCriptografa( nSerial : String; RazaoSocial:String; Cnpj:String ) : String;

//Valida sigla de estados brasileiros
function TestUF(Dado : string) : boolean;

//Spaces na frenta da string
function SpaceStr(Str : String ; Tam: integer): string;

//Spaces atraz da string
function StrSpace(Str : String ; Tam: integer): string;

//Centralizar uma String
function Centralizar(Str : String ; tam: Integer): Integer;

// Funcao para tirar os pontos
function sonumero(Str : String) : String;

// Travar o Mouse
function MouseClip(const Rct: TRect): boolean;

// Destravar o Mouse
function MouseUnClip: boolean;

// Limpar um string e deixar so numeros
function LimpaStr(vString : String) : String;

// ----------------------- Fim da Declaração ------------------------- //

implementation

{Módulos externos - Inclua nesta lista os nomes das Unit's necessárias às suas funções}
uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, StdCtrls, Tabs,
     ExtCtrls, DBCtrls, Grids, Dialogs, Menus, Printers, DBXpress, Windows;

function TestNumero(oNumero:String):Boolean;
var n : LongInt;
begin
   result := true;
   n:= 0;
   try
      n := StrToInt(oNumero);
   except
      on EConvertError do Result := false;
   end;
end;

function TestFloat(oNumero:String):Boolean;
var n : Real;
begin
   result := true;
   n:= 0;
   try
      n := StrToFloat(oNumero);
   except
      on EConvertError do Result := false;
   end;
end;

{Valida data no formato ddmmaa ou no formato ddmmaaaa}
function TESTA_DATA(Dado : string) : boolean;
var  SalvaFormato,
     DataExterna  : string;
     DataInterna  : TDateTime;
     Separador    : string;
begin
     Result := true;
     DataInterna := date;
     Separador := DateSeparator;
     while Pos(Separador, Dado) > 0 do
          Delete(Dado, Pos(Separador, Dado), 1);
     if Length(Dado) = 6 then
          Dado := Copy(Dado,1,2) + Separador +
                  Copy(Dado,3,2) + Separador + '19' +
                  Copy(Dado,5,2)
     else
          if Length(Dado) = 8 then
               Dado := Copy(Dado,1,2) + Separador +
                       Copy(Dado,3,2) + Separador +
                       Copy(Dado,5,4)
          else
               Result := false;
     if Result then
     begin
          SalvaFormato := ShortDateFormat;
          try
              ShortDateFormat := 'd' + Separador + 'm' + Separador + 'y';
              DataInterna := StrToDate(Dado);
          except
              on EConvertError do
              begin
                   Result := false;
                   ShortDateFormat := SalvaFormato;
              end;
          end;
          if Result then
          begin
               try
                   ShortDateFormat := 'dd' + Separador + 'mm' + Separador + 'yyyy';
                   DataExterna := DateToStr(DataInterna);
               except
                   on EConvertError do
                   begin
                        Result := false;
                        ShortDateFormat := SalvaFormato;
                   end;
               end;
               if Result and (DataExterna <> Dado) then
                    Result := false;
          end;
          ShortDateFormat := SalvaFormato;
     end;
end; {TESTA_DATA}


{Valida sigla de estados brasileiros}
function RSS00002(Dado : string) : boolean;
const Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var   Posicao : integer;
begin
     Result := true;
     if Dado <> '' then
     begin
          Posicao := Pos(UpperCase(Dado),Estados);
          if (Posicao = 0) or ((Posicao mod 2) = 0) then
               Result := false
     end;
end; {TESTA_UF}

{Valida valor nulo}
function RSS00003(Dado : string) : boolean;
begin
     if (Dado = '') or (Dado = '0') then
          Result := false
     else
          Result := true;
end; {RSS00003}

function Alltrim(Text : string) : string;
begin
while Pos(' ',Text) > 0 do
      Delete(Text,Pos(' ',Text),1);
Result := Text;
end;

function Rtrim(Text : string) : string;
var n : integer;
begin
for n := length(Text) downto 1 do
    begin
       if Copy(Text,n,1) <> ' ' then break;
       Delete(Text,n,1);
    end;
Result := Text;
end;

function StrZero(Num : Real ; Zeros,Deci: integer): string;
var tam,z : integer;
    res,zer : string;
begin
   Str(Num:Zeros:Deci, res);
   res := Alltrim(res);
   tam := length(res);
   zer := '';
   for z := 1 to (Zeros-tam) do zer := zer + '0';
   Result := zer+res;
end;

function CriptSenha(Senha:String):String;
var
   i : Integer;
begin
     for i := 1 to Length(Senha) do
         Senha[i] := Chr(Random(100) + Ord(Senha[i]));
     Result := Senha;
end;

function UnCriptSenha(Senha:String):String;
var
   i : Integer;
begin
     for i := 1 to Length(Senha) do
         Senha[i] := Chr(Ord(Senha[i]) - Random(100));
     Result := Senha;
end;

// Testa se uma data é valida
Function DataValida(StrD: string): Boolean;
var
  D : TDateTime;
begin
  Result := True;
  try
    D := StrToDate(StrD);
  except
    on E: EConvertError do Result:=False;
  end;
end;

// Retorna o Ultimo data do mes de uma determinada data
function UltDiaDoMes(Data: TDateTime): String;
var
d,m,a: Word;
dt: TDateTime;
begin
        DecodeDate(Data, a,m,d);
        Inc(m);
        if m = 13 then
        begin
                m := 1;
                Inc(a);
        end;

        dt := EncodeDate(a,m,1);
        dt := dt - 1;
        DecodeDate(dt, a,m,d);
        Result := DateToStr(dt);
end;

function ExecAndWait(const FileName, Params: string;
  const WindowState: Word): boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  { Coloca o nome do arquivo entre aspas. Isto é necessário devido
    aos espaços contidos em nomes longos }
  CmdLine := '"' + Filename + '"' + Params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);

  { Aguarda até ser finalizado }
  if Result then begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

function PontoVirg(Text : string) : string;
begin
        while Pos('.', Text) > 0 do
                Text[Pos('.', Text)] := ',';
        Result := Text;
end;

function FU_STRTRAN(WSTRINGAPROCESSAR: string; WRETIRAR: string; WCOLOCAR:string): string;
var
   WNOVASTRING : string;
   WPOSICAO: integer;
begin
   WNOVASTRING := '';
   while pos(WRETIRAR,WSTRINGAPROCESSAR) > 0 do
      begin
         WPOSICAO := pos(WRETIRAR,WSTRINGAPROCESSAR);
         WNOVASTRING := WNOVASTRING + copy(WSTRINGAPROCESSAR,1,WPOSICAO - 1) + WCOLOCAR;
         WSTRINGAPROCESSAR := copy(WSTRINGAPROCESSAR,WPOSICAO +length(WRETIRAR),length(WSTRINGAPROCESSAR) - WPOSICAO - length(WRETIRAR) +1);
      end;
   Result := WNOVASTRING + WSTRINGAPROCESSAR;
end;

function Replicate( Caracter:String; Quant:Integer ): String;
{Repete o mesmo caractere várias vezes}
var I : Integer;
begin
Result := '';
  for I := 1 to Quant do
      Result := Result + Caracter;
end;

// Enviar e-mail
function EnviarEMail(const De, Para, Assunto, Texto, Arquivo: string; Confirma: Boolean): Integer;
var
        Msg: TMapiMessage;
        lpSender, lpRecepient: TMapiRecipDesc;
        FileAttach: TMapiFileDesc;
        SM: TFNMapiSendMail;
        MAPIModule: HModule;
        Flags: Cardinal;
begin
        // cria propriedades da mensagem
        FillChar(Msg, SizeOf(Msg), 0);
        with Msg do
        begin
                if (Assunto <> '') then
                        lpszSubject := PChar(Assunto);

                if (Texto <> '') then
                        lpszNoteText := PChar(Texto);

                // remetente
                if (De <> '') then
                begin
                        lpSender.ulRecipClass := MAPI_ORIG;
                        lpSender.lpszName := PChar(De);
                        lpSender.lpszAddress := PChar(De);
                        lpSender.ulReserved := 0;
                        lpSender.ulEIDSize := 0;
                        lpSender.lpEntryID := nil;
                        lpOriginator := @lpSender;
                end;

                // destinatário
                if (Para <> '') then
                begin
                        lpRecepient.ulRecipClass := MAPI_TO;
                        lpRecepient.lpszName := PChar(Para);
                        lpRecepient.lpszAddress := PChar(Para);
                        lpRecepient.ulReserved := 0;
                        lpRecepient.ulEIDSize := 0;
                        lpRecepient.lpEntryID := nil;
                        nRecipCount := 1;
                        lpRecips := @lpRecepient;
                end
                else
                        lpRecips := nil;

                // arquivo anexo
                if (Arquivo = '') then
                begin
                        nFileCount := 0;
                        lpFiles := nil;
                end
                else
                begin
                        FillChar(FileAttach, SizeOf(FileAttach), 0);
                        FileAttach.nPosition := Cardinal($FFFFFFFF);
                        FileAttach.lpszPathName := PChar(Arquivo);
                        nFileCount := 1;
                        lpFiles := @FileAttach;
                end;
        end;

        // carrega dll e o método para envio do email
        MAPIModule := LoadLibrary(PChar(MAPIDLL));
        if MAPIModule = 0 then
                Result := -1
        else
        try
                if Confirma then
                        Flags := MAPI_DIALOG or MAPI_LOGON_UI
                else
                        Flags := 0;
                @SM := GetProcAddress(MAPIModule, 'MAPISendMail');
                if @SM <> nil then
                        Result := SM(0, Application.Handle, Msg, Flags, 0)
                else
                        Result := 1;
        finally
                FreeLibrary(MAPIModule);
        end;
end;

{
function Achou(QyAuxiliar:TClientDataSet;Tabela:String;Campos,Valores:Array of String;Inclemental,Filtro:Boolean;Farmacia:Smallint):Boolean;
var
        i : Byte;
        vChave : String;
begin
        Achou := False;
        if length(Campos)<>length(Valores) then
        begin                                                            
                ShowMessage('O Nº de Campos dever ser igual ao Nº de Valores');
                exit;
        end;
        with QyAuxiliar do
        begin
                vChave := '';
                Active := False; //Close;
                SQL.Clear;
                SQL.Add('Select * From '+Tabela+' Where ');
                for i := 0 to (length(Valores)-1) do
                begin
                        SQL.Add(Campos[i]);
                        
                        if Inclemental then //Busca inclemental
                        begin
                                SQL.Add('LIKE (:'+Campos[i]+')');

                                if Filtro then
                                        ParamByName(Campos[i]).Asstring := '%'+Valores[i]+'%'
                                else
                                        ParamByName(Campos[i]).Asstring := Valores[i]+'%';
                        end
                        else
                        begin
                                SQL.Add('= :'+Campos[i]);
                                ParamByName(Campos[i]).Asstring := Valores[i];
                        end;

                        if (i+1)<length(Campos) then
                                SQL.Add(' And ');

                        if i = 0 then
                                vChave := Campos[i]
                        else
                                vChave := vChave+','+Campos[i];
                end;

                // Busca a farmacia especifica
                if Farmacia <> 0 then
                begin
                        SQL.Add(' And Farmacia = :Farmacia');
                        ParamByName('Farmacia').Value := Farmacia;
                end;

                SQL.Add(' Order By '+vChave);

                //Prepare;
                Active := True; //Open;
                Achou := (not QyAuxiliar.IsEmpty);
        end;

end;
}

function Gravar(cdse:TClientDataSet):Boolean;
begin
        with cdse do
        begin
                if ApplyUpdates(0) > 0 then
                begin
                        ShowMessage('Atenção! Erro na Gravação.');
                        CancelUpdates;
                        Result := False;
                end
                else
                begin
                        Result := True;
                end;
        end;
end;

function fsTransacao(Banco:TSQLConnection):Boolean;
var
        TD: TTransactionDesc;
begin
        if not Banco.InTransaction then
        begin
                TD.TransactionID  := 1;
                TD.IsolationLevel := xilREADCOMMITTED;
                Banco.StartTransaction(TD);
        end;
end;

function fsCommit(Banco:TSQLConnection):Boolean;
var
        TD: TTransactionDesc;
begin
        if Banco.InTransaction then
        begin
                TD.TransactionID  := 1;
                TD.IsolationLevel := xilREADCOMMITTED;
                Banco.Commit(TD);
        end;
end;

function fsRollback(Banco:TSQLConnection):Boolean;
var
        TD: TTransactionDesc;
begin
        if Banco.InTransaction then
        begin
                TD.TransactionID  := 1;
                TD.IsolationLevel := xilREADCOMMITTED;
                Banco.Rollback(TD);
        end;
end;

function Criptografa( RazaoSocial:String; Cnpj:String; Periodo:String; nTerminais:String ): String;
var
        vRazaoSocial,vCnpj,vMes,vAno,vnTerminal,vPeriodo:String;
        vChar:Char;
        i:Integer;
begin
        Result := '';
        vRazaoSocial:='0';

        for i:=1 to length(RazaoSocial) do
        begin
                vChar := RazaoSocial[i];
                vRazaoSocial := IntToStr(StrToInt(vRazaoSocial)+ord(vChar));
        end;

        for i:=1 to length(Cnpj) do
        begin
                if (Copy(Cnpj,i,1) <> '.') and (Copy(Cnpj,i,1) <> '/') and (Copy(Cnpj,i,1) <> '-') then
                        vCnpj:=vCnpj+Copy(Cnpj,i,1);
        end;

        vCnpj := FloatToStr(Round((SQRT(StrToFloat(vCnpj))/10000)));

        vMes  := MesExtenso(StrToInt(Copy(Periodo,1,2)));


        Case StrToInt(Copy(Periodo,4,4)) of
                2001 : vAno:='0';
                2002 : vAno:='9';
                2003 : vAno:='8';
                2004 : vAno:='7';
                2005 : vAno:='6';
                2006 : vAno:='5';
                2007 : vAno:='4';
                2008 : vAno:='3';
                2009 : vAno:='2';
                2010 : vAno:='1';
        end;


        vnTerminal := QtdeTerminal(StrToInt(nTerminais));
        vChar      := Char(vnTerminal[1]);
        vnTerminal := IntToStr(Ord(vChar));

        vPeriodo   := IntToStr(StrToInt(IntToStr(ord(vMes[1]))+
                                        IntToStr(ord(vAno[1])))+StrToInt(vCnpj));

        Result := IntToStr(StrToInt(vRazaoSocial)+StrToInt(vCnpj)+StrToInt(vPeriodo))+
                                   '-'+IntToStr(StrToInt(vPeriodo)+StrToInt(vRazaoSocial))+
                                   '-'+IntToStr(StrToInt(vnTerminal)+StrToInt(vCnpj)+StrToInt(vPeriodo));
end;

function MesExtenso(AMonth: Integer): String;
const
        Month: array[1..12] of String = ('d','z','p','w','y','o','i','k','r','q','l','x');
begin
        Result := Month[AMonth];
end;

function QtdeTerminal(NroTerminal: Integer): String;
const
        Terminal: array[1..20] of String = ('d','z','p','w','y','o','i','k','r','q','l','x','a','s','b','c','e','f','g','h');
begin
        Result := Terminal[NroTerminal];
end;

function Abrir(dse : TSQLDataSet; cdse : TClientDataSet; vSql : String) : Boolean;
begin
        cdse.Active := False;
        with dse do
        begin
                Active := False;
                CommandText := vSql;
                Active := True;
        end;
        cdse.Active := True;
end;

function fsRound(vValor : Double) : Double;
begin
        Result := round(vValor*100)/100;
end;

function Encript(Encript : String): string;
var
        Cod: String;
        Codi_go: String;
        Qt_Expc: Integer;
        X : Integer;
        POrd: Integer;
        D: string;
begin
        Cod := Encript;
        Codi_go := '';
        Qt_Expc := Length(Encript);
        for X := QT_EXPC downto 1 do
                Codi_go := Codi_go + Copy(Cod,X,1);
        Cod:= '';
        for X := 1 TO Qt_Expc do
        begin
                D:= Copy(Codi_go,X,1);
                Pord := Ord(D[1]);
                if X/2 = INT(X/2) then
                        Cod := Cod+CHR(Pord+1)
                else
                        Cod := Cod+CHR(Pord-1);
        end;
        Codi_go := Cod;
        Result := Codi_go;
end;

function Decript(Decript : String): string;
var
        Cod: String;
        Codi_go: String;
        Qt_Expc: Integer;
        X : Integer;
        POrd: Integer;
        D: string;
        Resto: Integer;
begin
        Cod := Decript;
        Codi_go := '';
        Qt_Expc := Length(Decript);
        Resto := Length(Decript) mod 2;
        for X := QT_EXPC downto 1 do
                Codi_go := Codi_go + Copy(Cod,X,1);
        Cod:= '';
        for X := 1 TO Qt_Expc do
        begin
                D:=Copy(Codi_go,X,1);
                Pord := Ord(D[1]);
                if Resto > 0 then
                begin
                        if not (X/2 = INT(X/2)) then
                                Cod := Cod+CHR(Pord+1)
                        else
                                Cod := Cod+CHR(Pord-1);
                end
                else
                begin
                        if X/2 = INT(X/2) then
                                Cod := Cod+CHR(Pord+1)
                        else
                                Cod := Cod+CHR(Pord-1);
                end;
        end;
        Codi_go := Cod;
        Result := Codi_go;
end;

function TestCPF(Dado : String) : String;
var
        D1 : array[1..9] of Byte;
        I,DF1,DF2,DF3,DF4,DF5,DF6,Resto1,Resto2,PrimeiroDigito,SegundoDigito : integer;
        vCpf : String[11];
begin
     Result := '0';
     vCpf   := '';

     if length(Dado) > 11 then
     begin
          for i := 1 to length(Dado) do
                if Dado[i] in ['0'..'9'] then
                    vCpf := vCpf + Dado[i];
          Dado := vCpf;
     end;

     if Length(Dado) = 11 then
     begin
          for I := 1 to 9 do
              if Dado[I] in ['0'..'9'] then
                    D1[I] := StrToInt(Dado[I])
               else
                    Result := '';

          if Result <> '' then
          begin
               DF1 := 0;
               DF2 := 0;
               DF3 := 0;
               DF4 := 0;
               DF5 := 0;
               DF6 := 0;
               Resto1 := 0;
               Resto2 := 0;
               PrimeiroDigito := 0;
               SegundoDigito  := 0;
               DF1 := 10*D1[1] + 9*D1[2] + 8*D1[3] + 7*D1[4] + 6*D1[5] + 5*D1[6] +
                      4*D1[7] + 3*D1[8] + 2*D1[9];
               DF2 := DF1 div 11;
               DF3 := DF2 * 11;
               Resto1 := DF1 - DF3;
               if (Resto1 = 0) or (Resto1 = 1) then
                    PrimeiroDigito := 0
               else
                    PrimeiroDigito := 11 - Resto1;
               DF4 := 11*D1[1] + 10*D1[2] + 9*D1[3] + 8*D1[4] + 7*D1[5] + 6*D1[6] +
                      5*D1[7] + 4*D1[8] + 3*D1[9] + 2*PrimeiroDigito;
               DF5 := DF4 div 11;
               DF6 := DF5 * 11;
               Resto2 := DF4 - DF6;
               if (Resto2 = 0) or (Resto2 = 1) then
                    SegundoDigito := 0
               else
                    SegundoDigito := 11 - Resto2;

               if (PrimeiroDigito <> StrToInt(Dado[10])) or (SegundoDigito <> StrToInt(Dado[11])) then
               begin
                    ShowMessage('Atenção! CPF Invalido.');
                    Result := 'F'; // cpf incorreto
               end
               else
               begin
                    Dado := Copy(Dado,1,3)+'.'+Copy(Dado,4,3)+'.'+Copy(Dado,7,3)+'-'+Copy(Dado,10,2);
                    Result := Dado; // cpf correto
               end;
          end;
     end
     else
          if Length(Dado) <> 0 then
          begin
                ShowMessage('Atenção! CPF Invalido.');
                Result := 'F'; // cpf incorreto
          end;

     if Length(Dado) = 0 then
     begin
        ShowMessage('Atenção! CPF em branco.');
        Result := '0'; // nao foi digitado o cpf
     end;
end;

// Valida dígito verificador de CGC
function TestCGC(Dado : string) : String;
var
  D1 : array[1..12] of byte;
  I,DF1,DF2,DF3,DF4,DF5,DF6,Resto1,Resto2,PrimeiroDigito,SegundoDigito : integer;
  vCnpj : String[14];
begin
  Result := '0';
  vCnpj  := '';
  if length(Dado) > 14 then
  begin
    for i := 1 to length(Dado) do
      if Dado[i] in ['0'..'9'] then
        vCnpj := vCnpj + Dado[i];
    Dado := vCnpj;
  end;

  if Length(Dado) = 14 then
  begin
    for I := 1 to 12 do
      if Dado[I] in ['0'..'9'] then
        D1[I] := StrToInt(Dado[I])
      else
        Result := '';

    if Result <> '' then
    begin
      DF1:=0;DF2:=0;DF3:=0;DF4:=0;DF5:=0;DF6:=0;Resto1:=0;Resto2:=0;PrimeiroDigito:=0;SegundoDigito:=0;
      DF1 := 5*D1[1] + 4*D1[2] + 3*D1[3] + 2*D1[4] + 9*D1[5] + 8*D1[6] + 7*D1[7] + 6*D1[8] + 5*D1[9] + 4*D1[10] + 3*D1[11] + 2*D1[12];
      DF2 := DF1 div 11;
      DF3 := DF2 * 11;
      Resto1 := DF1 - DF3;

      if (Resto1 = 0) or (Resto1 = 1) then
        PrimeiroDigito := 0
      else
        PrimeiroDigito := 11 - Resto1;

      DF4 := 6*D1[1] + 5*D1[2] + 4*D1[3] + 3*D1[4] + 2*D1[5] + 9*D1[6] + 8*D1[7] + 7*D1[8] + 6*D1[9] + 5*D1[10] + 4*D1[11] + 3*D1[12] + 2*PrimeiroDigito;
      DF5 := DF4 div 11;
      DF6 := DF5 * 11;
      Resto2 := DF4 - DF6;
      if (Resto2 = 0) or (Resto2 = 1) then
        SegundoDigito := 0
      else
        SegundoDigito := 11 - Resto2;
      if (PrimeiroDigito <> StrToInt(Dado[13])) or (SegundoDigito <> StrToInt(Dado[14])) then
      begin
        ShowMessage('Atenção! CNPJ Invalido.');
        Result := 'F';
      end
      else
      begin
        Dado   := Copy(Dado,1,2)+'.'+Copy(Dado,3,3)+'.'+Copy(Dado,6,3)+'/'+Copy(Dado,9,4)+'-'+Copy(Dado,13,2);
        Result := Dado; // Cnpj correto
      end;
    end;
  end
  else
    if Length(Dado) <> 0 then
    begin
      ShowMessage('Atenção! CNPJ Invalido.');
      Result := 'F';
    end;

  if Length(Dado) = 0 then
  begin
    ShowMessage('Atenção! Cnpj em branco.');
    Result := '0'; // nao foi digitado o cnpj
  end;
end;

function SysComputerName: string;
var
  I: DWord;
begin
  I := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, I);
  Windows.GetComputerName(PChar(Result), I);
  Result := string(PChar(Result));
end;

Function DataExtenso(Data : TDateTime):String;
// Retorna a data por extenso
const
	vdia : array[1..7] of String  = ('Domingo', 'Segunda Feira', 'Terça Feira', 'Quarta Feira', 'Quinta Feira', 'Sexta Feira', 'Sabado');
	vMes : array[1..12] of String = ('Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto','Setembro', 'Outubro','Novembro','Dezembro');
begin
	Result := vDia[DayOfWeek(Data)]+', '+FormatDateTime('dd',Data)+' de '+vMes[StrToInt(FormatDateTime('mm',Data))]+' de '+FormatDateTime('yyyy',Data);
end;

function DesCriptografa( nSerial : String; RazaoSocial:String; Cnpj:String ) : String;
var
        vNroSerialRS, vRazaoSocial,vCnpj,vMes,vAno,vnTerminal,vPeriodo, vEmpresa : String;
        vChar:Char;
        i, vPosicaoI, vPosicaoF, vPosicaoF1 : Integer;
begin
        Result := '';
        vRazaoSocial:='0';
        try
        for i:=1 to length(RazaoSocial) do
        begin
                vChar := RazaoSocial[i];
                vRazaoSocial := IntToStr(StrToInt(vRazaoSocial)+ord(vChar));
        end;

        for i:=1 to length(Cnpj) do
        begin
                if (Copy(Cnpj,i,1) <> '.') and (Copy(Cnpj,i,1) <> '/') and (Copy(Cnpj,i,1) <> '-') then
                        vCnpj:=vCnpj+Copy(Cnpj,i,1);
        end;

        vCnpj := FloatToStr(Round((SQRT(StrToFloat(vCnpj))/10000)));

        vPosicaoI := Pos('-',nSerial);
        vPosicaoF := Pos('-',(Copy(nSerial,vPosicaoI+1,50)))+vPosicaoI;

        vNroSerialRS := IntToStr(StrToInt(vRazaoSocial)+StrToInt(vCnpj));

        vMes := Chr(StrToInt(Copy(IntToStr(StrToInt(Copy(nSerial, vPosicaoI+1,vPosicaoF-1-vPosicaoI))-StrToInt(vNroSerialRS)),1,3)));
        vAno := Chr(StrToInt(Copy(IntToStr(StrToInt(Copy(nSerial, vPosicaoI+1,vPosicaoF-1-vPosicaoI))-StrToInt(vNroSerialRS)),4,2)));

        vPosicaoF1 := Pos('-',(Copy(nSerial,vPosicaoF+1,50)))+vPosicaoF;

        vPeriodo:=IntToStr(StrToInt(IntToStr(ord(vMes[1]))+
                                    IntToStr(ord(vAno[1])))+StrToInt(vCnpj));

        try vEmpresa   := IntToStr(StrToInt(vRazaoSocial)+StrToInt(vCnpj)+StrToInt(vPeriodo)); except end;

        vnTerminal := Chr(StrToInt(Copy(nSerial, vPosicaoF1+1,10))-StrToInt(vPeriodo)-StrToInt(vCnpj));

        if vMes = 'd' then vMes := '01';
        if vMes = 'z' then vMes := '02';
        if vMes = 'p' then vMes := '03';
        if vMes = 'w' then vMes := '04';
        if vMes = 'y' then vMes := '05';
        if vMes = 'o' then vMes := '06';
        if vMes = 'i' then vMes := '07';
        if vMes = 'k' then vMes := '08';
        if vMes = 'r' then vMes := '09';
        if vMes = 'q' then vMes := '10';
        if vMes = 'l' then vMes := '11';
        if vMes = 'x' then vMes := '12';

        Case StrToInt(vAno) of
                0 : vAno:='2001';
                9 : vAno:='2002';
                8 : vAno:='2003';
                7 : vAno:='2004';
                6 : vAno:='2005';
                5 : vAno:='2006';
                4 : vAno:='2007';
                3 : vAno:='2008';
                2 : vAno:='2009';
                1 : vAno:='2010';
        end;

        if vnTerminal = 'd' then vnTerminal := '1';
        if vnTerminal = 'z' then vnTerminal := '2';
        if vnTerminal = 'p' then vnTerminal := '3';
        if vnTerminal = 'w' then vnTerminal := '4';
        if vnTerminal = 'y' then vnTerminal := '5';
        if vnTerminal = 'o' then vnTerminal := '6';
        if vnTerminal = 'i' then vnTerminal := '7';
        if vnTerminal = 'k' then vnTerminal := '8';
        if vnTerminal = 'r' then vnTerminal := '9';
        if vnTerminal = 'q' then vnTerminal := '10';
        if vnTerminal = 'l' then vnTerminal := '11';
        if vnTerminal = 'x' then vnTerminal := '12';
        if vnTerminal = 'a' then vnTerminal := '13';
        if vnTerminal = 's' then vnTerminal := '14';
        if vnTerminal = 'b' then vnTerminal := '15';
        if vnTerminal = 'c' then vnTerminal := '16';
        if vnTerminal = 'e' then vnTerminal := '17';
        if vnTerminal = 'f' then vnTerminal := '18';
        if vnTerminal = 'g' then vnTerminal := '19';
        if vnTerminal = 'h' then vnTerminal := '20';
        except
                ShowMessage('Atenção!, Copia Não Autorizada, Favor procurar a Futura System Informática'+#10+#13+'pelo Fone: (0xx42)239-3743 / 9971-0991');
                Application.Terminate;
        end;
        Result := vEmpresa +'-'+vMes +'/'+vAno +'*'+vnTerminal;

end;

// Valida sigla de estados brasileiros
function TestUF(Dado : string) : boolean;
const Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var   Posicao : integer;
begin
     Result := true;
     if Dado <> '' then
     begin
          Posicao := Pos(UpperCase(Dado),Estados);
          if (Posicao = 0) or ((Posicao mod 2) = 0) then
               Result := false
     end;
end;

function SpaceStr(Str : String ; Tam: integer): string;
Var
    i : Integer;
begin
   for i := 1 to (tam - length(Str)) do
        Str := ' '+Str;
   Result := Str;
end;

function StrSpace(Str : String ; Tam: integer): string;
Var
    i : Integer;
begin
   for i := 1 to (tam - length(Str)) do
        Str := Str + ' ';
   Result := Str;
end;

function Centralizar(Str : String ; tam: Integer): Integer;
begin
  Result := Round(((tam-length(Str))/2));
end;

function SoNumero(Str : String) : String;
var
  i : Integer;
  vStr : String;
begin
  for i := 1 to length(Str) do
    if Str[i] in ['0'..'9'] then
      vStr := vStr + Str[i];
  Result := vStr;
end;

function MouseClip(const Rct: TRect): boolean;
begin
  Result := Windows.ClipCursor(@Rct);
end;

function MouseUnClip: boolean;
begin
  Result := Windows.ClipCursor(nil);
end;

function LimpaStr(vString : String) : String;
var
        vNumero : String;
        i       : Integer;
begin
        vNumero := '';
        for I := 1 to length(vString) do
        begin
                if vString[I] in ['0'..'9'] then
                        vNumero := vNumero + vString[I];
        end;
        Result := vNumero;
end;

end.
