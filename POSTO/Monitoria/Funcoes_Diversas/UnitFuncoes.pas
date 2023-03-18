unit UnitFuncoes;

interface

 Uses SysUtils, Forms, Inifiles, Windows, Controls, Dialogs, TypInfo,
      variants, ShlObj, ShellApi;

  Procedure LogToFile(Text : String; AddDateTime: Boolean);
  Function CreateDefaultIniFile: String;
  Procedure ExecHelpFile;
  procedure EnableAll (AWinControl: TWinControl);
  procedure DisableAll (AWinControl: TWinControl);
  Function RemoveInvalid(what, where: string): string;
  Function AlfaStuffL(Str: ShortString; Stuffer: Char; Size: Byte): ShortString;
  Function AlfaStuffR(Str: ShortString; Stuffer: Char; Size: Byte): ShortString;

 type
  TExecute = procedure of object;

 var
  EnableLogToFile: Boolean = False;

implementation

//------ Procedure to Enable All Components on a group ------
procedure EnableAll (AWinControl: TWinControl);
var
 i: integer;
begin
 AWinControl.Enabled := TRUE;
 for I := 0 to (AWinControl.ControlCount - 1) do
  begin
   if (AWinControl.Controls [I] is TWinControl) then
    EnableAll (TWinControl (AWinControl.Controls [I]))
   else
    AWinControl.Controls [I].Enabled := TRUE;
  end;
end;


//------ Procedure to Disable All Components on a group ------
procedure DisableAll (AWinControl: TWinControl);
var
 I: integer;
begin
 AWinControl.Enabled := False;
 for I := 0 to (AWinControl.ControlCount - 1) do
  begin
   if (AWinControl.Controls [I] is TWinControl) then
    DisableAll (TWinControl (AWinControl.Controls [I]))
   else
    AWinControl.Controls [I].Enabled := False;
  end;
end;

//------ Procedure to remove string from another ------
//Usage: what is the string to be removed, where is the string to be removed from
Function RemoveInvalid(what, where: string): string;
var
 tstr,res: string;
 x:integer;
begin
 tstr:=where;
 x:=1;
 res:='';
 while x < length(tstr)+1 do
  begin
   if copy(tstr,x,1)<> what then
   res:=res+copy(tstr,x,1);
   x:=x+1;
  end;
 Result:=res;
end;

//------ Log em Arquivo.txt ------
Procedure LogToFile(Text : String; AddDateTime: Boolean);
var
 logfilename: String;
 f: TextFile;
begin
 if EnableLogToFile then
  begin
   try
    screen.cursor:= crHourGlass;
    logfilename := extractfilepath(application.ExeName) + 'SiacePostoLog' + RemoveInvalid('/',copy(datetostr(now),3,length(datetostr(now)))) +'.log';         //Cria o arquivo com o mes e o ano
    assignfile(f, logfilename);
    if not fileexists(logfilename) then
     begin
      rewrite(f);
      writeln(f,'.LOG');
      writeln(f,'Siace Sistemas');
      writeln(f,'TeleFax: +55(66)3555-1453');
      writeln(f,'E-Mail : startnetinfo@gmail.com');
      writeln(f,'Site   : www.SiaceSistemas.com.br');
      writeln(f,'Arquivo de LOG - Auditoria');
      writeln(f,' ');
     end;
    Reset(f);
    Append(f);
    if AddDateTime then
     Writeln(f,datetimetostr(Now) + ' - ' + text)
    else
     Writeln(f,'                    - ' + text);
   except
    application.MessageBox(Pchar('Erro ao tentar gravar registro de LOG no arquivo: '+#13+ Logfilename),
                                 'Atenção',mb_ok+Mb_iconerror);
   end;
   CloseFile(f);
   screen.cursor:= crDefault;
  end;
end;

//------ Cria arquivo INI com config default ------
Function CreateDefaultIniFile: String;
var
 ArquivoIni: TIniFile;
 Path: String;
begin
 try
  screen.cursor:= crHourGlass;
  Path := extractfiledir(application.Exename) + '\SiacePosto.ini';
  Result := Path;
  ArquivoIni := TIniFile.Create(Path);
  //------ Config Login ------
  if not ArquivoIni.ValueExists ('Login', 'LembrarPwd') then
   ArquivoIni.WriteBool ('Login', 'LembrarSenha', False);
  if not ArquivoIni.ValueExists ('Login', 'LebrarLastUser') then
   ArquivoIni.WriteBool ('Login', 'LebrarLastUser', False);
  if not ArquivoIni.ValueExists ('Login', 'LastPwd') then
   ArquivoIni.WriteString ('Login', 'LastPwd', ' ');
  if not ArquivoIni.ValueExists ('Login', 'LastCodSetor') then
   ArquivoIni.WriteString ('Login', 'LastCodSetor', ' ');
  if not ArquivoIni.ValueExists ('Login', 'LastCodSetorUser') then
   ArquivoIni.WriteString ('Login', 'LastCodSetorUser', ' ');

  //------ Config ShareWare ------
  if not ArquivoIni.ValueExists ('USERINFO', 'Libera') then
   ArquivoINI.WriteString('USERINFO', 'Libera', 'NotFound');
  if not ArquivoIni.ValueExists ('USERINFO', 'Confere') then
   ArquivoINI.WriteString('USERINFO', 'Confere', 'NotFound');
  if not ArquivoIni.ValueExists ('USERINFO', 'Nome') then
   ArquivoINI.WriteString('USERINFO', 'Nome', 'NotFound');
  if not ArquivoIni.ValueExists ('USERINFO', 'Prazo') then
   ArquivoINI.WriteString('USERINFO', 'Prazo', 'NotFound');

  //------ Config Impressora Fiscal ------
  if not ArquivoIni.ValueExists ('ECF', 'COM') then
   ArquivoIni.WriteInteger('ECF', 'COM', 1);
  if not ArquivoIni.ValueExists ('ECF', 'TipoECF') then
   ArquivoIni.WriteInteger('ECF', 'TipoECF', 1);
  if not ArquivoIni.ValueExists ('ECF', 'UsaECF') then
   ArquivoIni.WriteInteger('ECF', 'UsaECF', 1);
  if not ArquivoIni.ValueExists ('ECF', 'GavetaInstalada') then
   ArquivoIni.WriteInteger('ECF', 'GavetaInstalada', 3);                      //"Vendas em Dinheiro", "Todas", "Gaveta não Intalada"
  if not ArquivoIni.ValueExists ('ECF', 'EnableGavetaTest') then
   ArquivoIni.WriteBool  ('ECF', 'EnableGavetaTest', False);
  if not ArquivoIni.ValueExists ('ECF', 'GavetaSanRe') then
   ArquivoIni.WriteBool  ('ECF', 'GavetaSanRe', False);                         //Abrir Após Sangria e Reforço
  if not ArquivoIni.ValueExists ('ECF', 'EnableMsgP') then
   ArquivoIni.WriteBool  ('ECF', 'EnableMsgP', True);
  if not ArquivoIni.ValueExists ('ECF', 'MsgP') then
   ArquivoIni.WriteString('ECF', 'MsgP', 'Siace Sistemas +55(66)3555-1453');
  if not ArquivoIni.ValueExists ('ECF', 'DefTNome') then
   ArquivoIni.WriteString('ECF', 'DefTNome', 'T01');
  if not ArquivoIni.ValueExists ('ECF', 'DefTVal') then
   ArquivoIni.WriteString('ECF', 'DefTVal', '1700');
  if not ArquivoIni.ValueExists ('ECF', 'UltimaZ') then
   ArquivoIni.WriteDateTime('ECF', 'UltimaZ', now);
  if not ArquivoIni.ValueExists ('ECF', 'UltimaX') then
   ArquivoIni.WriteDateTime('ECF', 'UltimaX', now);

  //------ Config Boleto Não Fiscal ------
  if not ArquivoIni.ValueExists ('BOLETO', 'PortaImpr') then
   ArquivoIni.WriteString('BOLETO', 'PortaImpr', 'LPT1');
  if not ArquivoIni.ValueExists ('BOLETO', 'NumVias') then
   ArquivoIni.WriteInteger('BOLETO', 'NumVias', 1);
  if not ArquivoIni.ValueExists ('BOLETO', 'EnableCabecalho') then
   ArquivoIni.WriteBool  ('BOLETO', 'EnableCabecalho', True);
  if not ArquivoIni.ValueExists ('BOLETO', 'EnableRodape') then
   ArquivoIni.WriteBool  ('BOLETO', 'EnableRodape', True);
  if not ArquivoIni.ValueExists ('BOLETO', 'EnablePreview') then
   ArquivoIni.WriteBool  ('BOLETO', 'EnablePreview', True);
  if not ArquivoIni.ValueExists ('BOLETO', 'EnableMsgP') then
   ArquivoIni.WriteBool  ('BOLETO', 'EnableMsgP', True);
  if not ArquivoIni.ValueExists ('BOLETO', 'AskImpr') then
   ArquivoIni.WriteBool  ('BOLETO', 'AskImpr', True);
  if not ArquivoIni.ValueExists ('BOLETO', 'TipoImpr') then
   ArquivoIni.WriteInteger('BOLETO', 'TipoImpr', 0);
  if not ArquivoIni.ValueExists ('BOLETO', 'DefaultAnswerAskImpr') then
   ArquivoIni.WriteBool  ('BOLETO', 'DefaultAnswerAskImpr', False);
  if not ArquivoIni.ValueExists ('BOLETO', 'Cabecalho1') then
   ArquivoIni.WriteString('BOLETO', 'Cabecalho1', 'Siace Sistemas');
  if not ArquivoIni.ValueExists ('BOLETO', 'Cabecalho2') then
   ArquivoIni.WriteString('BOLETO', 'Cabecalho2', 'Automação Comercial');
  if not ArquivoIni.ValueExists ('BOLETO', 'Cabecalho3') then
   ArquivoIni.WriteString('BOLETO', 'Cabecalho3', 'Av. 20 de dezembro - Cento');
  if not ArquivoIni.ValueExists ('BOLETO', 'Cabecalho4') then
   ArquivoIni.WriteString('BOLETO', 'Cabecalho4', 'www.SiaceSistemas.com.br  /  Startnetinfo@gmail.com');
  if not ArquivoIni.ValueExists ('BOLETO', 'MsgP') then
   ArquivoIni.WriteString('BOLETO', 'MsgP', 'Siace Sistemas +55(66)3555-1453');
  if not ArquivoIni.ValueExists ('BOLETO', 'Rodape1') then
   ArquivoIni.WriteString('BOLETO', 'Rodape1', 'Siace Sistemas');
  if not ArquivoIni.ValueExists ('BOLETO', 'Rodape2') then
   ArquivoIni.WriteString('BOLETO', 'Rodape2', 'Av. 20 de dezembro - Cento');
  if not ArquivoIni.ValueExists ('BOLETO', 'Rodape3') then
   ArquivoIni.WriteString('BOLETO', 'Rodape3', 'Cep: 78.330-000   -  Cotriguaçu-MT');
  if not ArquivoIni.ValueExists ('BOLETO', 'Rodape4') then
   ArquivoIni.WriteString('BOLETO', 'Rodape4', 'Telefax: 66)3555-1453   E-mail: startnetinfo@gmail.com   Site: www.SiaceSistemas.com.br');

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
   ArquivoIni.WriteString('IBDB', 'IbDBPath', {extractfiledir(application.Exename) +} 'c:\siace\siace.gdb');
  if not ArquivoIni.ValueExists ('IBDB', 'IbScriptPath') then
   ArquivoIni.WriteString('IBDB', 'IbScriptPath', extractfiledir(application.Exename) + '\ScriptSiacePosto.sql');

  //------ Config LOG ------
  if not ArquivoIni.ValueExists ('LOG', 'EnableLog') then
   ArquivoIni.WriteBool  ('LOG', 'EnableLog', True);
  if not ArquivoIni.ValueExists ('LOG', 'LogFileDir') then
   ArquivoIni.WriteString('LOG', 'LogFileDir', extractfiledir(application.Exename) + '\LOGDir');
  if not ArquivoIni.ValueExists ('LOG', 'LogFilePath') then
   ArquivoIni.WriteString('LOG', 'LogFilePath', extractfiledir(application.Exename) + '\LOGDir\SiacePosto' + RemoveInvalid('/',copy(datetostr(now),3,length(datetostr(now)))) +'.log');

  //------ Config HelpFile ------
  if not ArquivoIni.ValueExists ('HELP', 'EnableHelpFile') then
   ArquivoIni.WriteBool  ('HELP', 'EnableHelpFile', True);
  if not ArquivoIni.ValueExists ('HELP', 'SiacePostoHelpFilePath') then
   ArquivoIni.WriteString('HELP', 'HelpFilePath', extractfiledir(application.Exename) + '\AJUDA SiacePosto.chm');
 except
  application.messagebox('Erro no processo de criação de arquivo INI de Configurações Default.',
                         'Atenção',mb_ok+Mb_iconerror);
  logtofile('Erro :: Problemas ao Iniciar processo de criação de arquivo INI default - DM1.Procedure CreateIniFile', True);
  logtofile('Msg  :: Erro ao iniciar processo de criação de arquivo INI com configurações Default.', False);
 end;
 ArquivoIni.free;
 screen.cursor:= crDefault;
end;

//------ Help File - Executa, Localiza e Salva Path ------
Procedure ExecHelpFile;
var
 HelpFilePath: String;
 ArquivoIni: TIniFile;
 MyOpenDialog: TOpenDialog;
 Path : String;
begin
 try
  screen.cursor:= crHourGlass;
  Path := CreateDefaultIniFile;
  ArquivoIni := TIniFile.Create(Path);
  HelpFilePath:= ArquivoIni.ReadString('HELP', 'THelpFilePath', extractfiledir(application.Exename) + '\AJUDA.chm');

  if FileExists(HelpFilePath) then
   ShellExecute(0, Nil, PChar(HelpFilePath) , Nil, Nil, SW_NORMAL)
  else
   logtofile('Erro :: Impossível localizar arquivo de help em: '+ HelpFilePath, True);
   if application.messagebox(pchar('Não foi possível encontrar Arquivo de Ajuda:'+#13+ HelpFilePath + #13#13 +
                                   'Deseja Localizar o Arquivo?'),
                                   'Atenção', MB_IconInformation + MB_YESNO) = IDYES then
   begin
    MyOpenDialog := TOpenDialog.Create(MyOpenDialog);
    MyOpenDialog.Title := 'Localizando Arquivo de Ajuda...';
    MyOpenDialog.InitialDir := Extractfiledir(HelpFilePath);
    if MyOpenDialog.execute then
     begin
      ArquivoIni.WriteString('HELP', 'HelpFilePath', MyOpenDialog.FileName);
      logtofile('Msg :: Alterado path do arquivo de help de: '+ HelpFilePath + ' para: ' + MyOpenDialog.filename, True);
      ShellExecute(0, Nil, pchar(MyOpenDialog.filename), Nil, Nil, SW_NORMAL);
     end;
   end;
 Except
  logtofile('Erro :: Falha na Execução do arquivo de Help (Procedure ExecHelpFile)', True);
  application.MessageBox('Erro no processo de execução do arquivo de Ajuda',
                         'Atenção', mb_ok + mb_iconerror);
 end;

ArquivoIni.Free;
MyOpenDialog.Free;
screen.cursor:= crDefault;
end;

//------ Preenche ShortString a direita com caracter de Enchimento até o tamanho indicado ------
Function AlfaStuffR(Str: ShortString; Stuffer: Char; Size: Byte): ShortString;
begin
 Result := '';
 If (Size = 0) then
  Exit;

 while length(Str) < Size do
  Str := Str + Stuffer;
 Result := Str;
end;

//------ Preenche ShortString a esquerda com caracter de Enchimento até o tamanho indicado ------
Function AlfaStuffL(Str: ShortString; Stuffer: Char; Size: Byte): ShortString;
begin
 Result := '';
 If (Size = 0) then
  Exit;

 while length(Str) < Size do
  Str := Stuffer + Str;
 Result := Str;
end;

end.
