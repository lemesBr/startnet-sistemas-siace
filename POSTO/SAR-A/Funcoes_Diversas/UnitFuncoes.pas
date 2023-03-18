unit UnitFuncoes;

interface

 Uses SysUtils, Forms, Inifiles, Windows, Controls, Dialogs, TypInfo,
      variants, ShlObj, ShellApi;

  Function CreateDefaultIniFile: String;

 type
  TExecute = procedure of object;

 var
  EnableLogToFile: Boolean = False;

implementation

//------ Cria arquivo INI com config default ------
Function CreateDefaultIniFile: String;
var
 ArquivoIni: TIniFile;
 Path: String;
begin
 try
  screen.cursor:= crHourGlass;
  Path := extractfiledir(application.Exename) + '\TkPostoConfig.ini';
  Result := Path;
  ArquivoIni := TIniFile.Create(Path);

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
 except
  application.messagebox('Erro no processo de criação de arquivo INI de Configurações Default.',
                         'Atenção',mb_ok+Mb_iconerror);
 end;
 ArquivoIni.free;
 screen.cursor:= crDefault;
end;

end.
