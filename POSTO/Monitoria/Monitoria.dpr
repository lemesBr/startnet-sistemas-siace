program Monitoria;

uses
  Forms,
  Windows,
  IniFiles,
  SysUtils,
  IBServices,
  UnitFuncoes in 'Funcoes_Diversas\UnitFuncoes.pas',
  ClasseBico in 'Modulo_CUB\Classe_Bico\ClasseBico.pas',
  ClasseBomba in 'Modulo_CUB\Classe_Bomba\ClasseBomba.pas',
  ClasseCUB in 'Modulo_CUB\Classe_CUB\ClasseCUB.pas',
  CUBUtils in 'Modulo_CUB\CUB_Utils\CUBUtils.pas',
  Unit_ECF_Bematech_Fi1 in 'Modulo_ECF\ECF_Bematech_Fi1\Unit_ECF_Bematech_Fi1.pas',
  Unit_ECF_Bematech_Fi2 in 'Modulo_ECF\ECF_Bematech_Fi2\Unit_ECF_Bematech_Fi2.pas',
  Unit_ECF_Sweda_IFS7000 in 'Modulo_ECF\ECF_Sweda_IFS7000\Unit_ECF_Sweda_IFS7000.pas',
  UnitImprCF in 'Modulo_ECF\Impr_Cupom Fiscal\UnitImprCF.pas' {ImprCupomFiscalFrm},
  Unit_Comandos_Pista in 'Modulo_Monitoria\Comandos_Pista\Unit_Comandos_Pista.pas' {ComandosPistaMFrm},
  InfoBombaCUB in 'Modulo_Monitoria\List_Info_Bico\InfoBombaCUB.pas' {EncerrantesListMFrm},
  LegendaStatus in 'Modulo_Monitoria\List_Legenda_Estados\LegendaStatus.pas' {LegendaEstadoListMFrm},
  MonitoriaBombas in 'Modulo_Monitoria\Monitora_Bombas\MonitoriaBombas.pas' {MonitoriaFrm},
  BicoPresetLitrosDinheiro in 'Modulo_Monitoria\Preset_Bomba\BicoPresetLitrosDinheiro.pas' {PresetBicoFrm},
  Unit_Rep_Encerrantes in 'Modulo_Monitoria\Rep_Encerrantes_Bico\Unit_Rep_Encerrantes.pas' {EncerrantesRepMFrm},
  Unit_Rep_Legenda in 'Modulo_Monitoria\Rep_Legenda_Estados\Unit_Rep_Legenda.pas' {LegendaEstadoRepMFrm},
  Unit3SobreCad in 'Sobre_TkPosto\Unit3SobreCad.pas' {SobreFrm},
  Unit8Splash in 'SplashScreen\Unit8Splash.pas' {SplashFrm},
  UnitDataM1 in 'DataModule\UnitDataM1.pas' {DM1: TDataModule},
  UnitConfig in 'Configuracoes\UnitConfig.pas' {ConfigFrm},
  Unit_Rep_Encerrante_Geral in 'Modulo_Monitoria\Rep_Encerrante_Geral\Unit_Rep_Encerrante_Geral.pas' {EncerranteGeralRepMFrm},
  dllcompanytec in 'companytec\dllcompanytec.pas';

{$R *.RES}

var
 MutexHandle: THandle;
 hwind:HWND;
 Path, IbServerName, IbDBPath: string;
 IbRemote : Boolean;
 ArquivoIni: TIniFile;

begin
 //------ Enables only one instance of the App ------
 MutexHandle := CreateMutex(nil, True, 'Monitoria');   //Check to see if the named mutex object existed before this call
 if MutexHandle <> 0 then
  begin
   if GetLastError = ERROR_ALREADY_EXISTS then          //Set hPrevInst property and close the mutex handle
    begin
     CloseHandle(MutexHandle);
     MessageBox(0, 'Siace Sistemas' + #13 +
       'O Aplicativo Siace-Posto já está sendo executado.' + #13 +
       'Verifique!', 'Atenção!', mb_iconInformation);

     logtofile('Erro :: Tentativa de Abertura de mais de uma Instância "Siace-Posto".',
       True);
     logtofile('Msg  :: O Aplicativo Siace-Posto já está sendo executado.', False);
     hwind := 0;
     repeat                                                                     //Loop nos processos ativos tentando encontrar o programa
       hwind := Windows.FindWindowEx(0,hwind, 'TApplication', 'Monitoria');
     until (hwind <> Application.Handle);
     if (hwind <> 0) then
      begin
       Windows.ShowWindow(hwind, SW_SHOWNORMAL);             //Chama o programa caso encontre
       Windows.SetForegroundWindow(hwind);
      end;
     Halt;                                                                      //Abnormal Termination
    end
  end;

 SplashFrm:=tSplashFrm.create(application);
 if not(ParamStr(1) = 'ns') then
  SplashFrm.show;
 SplashFrm.update;
 application.ProcessMessages;
 Application.Title := 'Siace-Posto : Monitoria';
  SplashFrm.label1.caption:='Carregando programa Frente de Loja...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(20);

 SplashFrm.label1.caption:='Carregando Base de Dados...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(15);

 Application.CreateForm(TDM1, DM1);
  Path := CreateDefaultIniFile;
 ArquivoIni   := TIniFile.Create(Path);
 try
  SplashFrm.label1.caption:='Testando Base de Dados...';
  SplashFrm.label1.update;
  SplashFrm.ProgressBar1.StepBy(15);

  IbServerName := ArquivoIni.ReadString('IBDB', 'IbServerName', 'Erro Lendo ServerName');
  IbDBPath     := ArquivoIni.ReadString('IBDB', 'IbDBPath', 'C:\SIACE\Siace.GDB');
  IBRemote     := ArquivoIni.ReadBool('IBDB', 'ConexaoRemota', False);

  Dm1.IBDatabase1.Params.Clear;
  Dm1.IBStatisticalService1.Params.Clear;

  Dm1.IBDatabase1.Params.add('user_name=' + ArquivoIni.ReadString('IBDB', 'UserName', 'SYSDBA'));
  Dm1.IBDatabase1.Params.add('password=' + ArquivoIni.ReadString('IBDB', 'Password', 'masterkey'));

  Dm1.IBStatisticalService1.Params.add('user_name=' + ArquivoIni.ReadString('IBDB', 'UserName', 'SYSDBA'));
  Dm1.IBStatisticalService1.Params.add('password=' + ArquivoIni.ReadString('IBDB', 'Password', 'masterkey'));

  Dm1.IBLogService1.Params.add('user_name=' + ArquivoIni.ReadString('IBDB', 'UserName', 'SYSDBA'));
  Dm1.IBLogService1.Params.add('password=' + ArquivoIni.ReadString('IBDB', 'Password', 'masterkey'));

  Dm1.IBServerProperties1.Params.add('user_name=' + ArquivoIni.ReadString('IBDB', 'UserName', 'SYSDBA'));
  Dm1.IBServerProperties1.Params.add('password=' + ArquivoIni.ReadString('IBDB', 'Password', 'masterkey'));

  //--- Leitura de outras variáveis do INI ---
  LogoPath := ArquivoIni.ReadString('IMAGEM', 'LogoPath', extractfiledir(application.Exename) + 'Logo.JPG');


  SplashFrm.label1.caption:='Base de Dados OK :: Conectando...';
  SplashFrm.label1.update;

  //------ Config IBDatabase, se local ou remoto ------
  if not IBRemote then
   begin
    DM1.IBDatabase1.DatabaseName := IbDBPath;

    Dm1.IBStatisticalService1.DatabaseName := IbDBPath;
    Dm1.IBStatisticalService1.ServerName := '';
    Dm1.IBStatisticalService1.Protocol := Local;

    Dm1.IBLogService1.ServerName := '';
    Dm1.IBLogService1.Protocol := Local;

    Dm1.IBServerProperties1.ServerName := '';
    Dm1.IBServerProperties1.Protocol := Local;
   end
  else
   begin
    DM1.IBDatabase1.DatabaseName := IbServername + ':' + IbDBPath;

    Dm1.IBStatisticalService1.DatabaseName := IbDBPath;
    Dm1.IBStatisticalService1.ServerName := IbServername;
    Dm1.IBStatisticalService1.Protocol := TCP;

    Dm1.IBLogService1.ServerName := IbServerName;
    Dm1.IBLogService1.Protocol   := TCP;

    Dm1.IBServerProperties1.ServerName := IbServerName;
    Dm1.IBServerProperties1.Protocol   := TCP;
   end;

   //------ Testa IBGuard aberto, abre IBGuard ------
   if not IBRemote then
    if not (FindWindow(nil, PChar('Firebird Server')) > 0) then
     begin
      logtofile('Erro :: Servidor de banco de dados local indisponível', True);
      application.MessageBox('Servidor de banco de dados local indisponível'+#13+
                             'Verifique o IBGuard ou IBServer e tente novamente...','Atenção',
                             mb_Ok + mb_iconinformation);
     end;
{     if application.MessageBox('Servidor de banco de dados local indisponível'+#13+
                               'Deseja que o programa tente habilitar o servidor?','Atenção'
                               mb_yesno + mb_iconinformation) = idyes then
      Dm1.StartFirebird;
}

  //------ Testa conexão com servidor -------
  if not DM1.IBDatabase1.TestConnected then
   begin
    DM1.IBDatabase1.connected:=true;
    DM1.IBTransaction1.StartTransaction;
   end;

  //------ Testa conexão com servidor, abre tela de Config ------
  if not DM1.IBDatabase1.TestConnected then
   begin
    SplashFrm.label1.caption:='<< Erro :: Conexão com Base de Dados >>';
    SplashFrm.label1.update;
    logtofile('Erro :: Problemas ao tentar acessar a Base de Dados do Firebird', True);
    logtofile('Msg  :: Erro ao tentar acessar a Base de Dados, este aplicativo não funcionará corretamente.', False);
    if application.messagebox('Erro ao tentar acessar a Base de Dados.'+#13+
                              'Este programa não funcionará corretamente e por isso será fechado.' + #13#13 +
                              'Deseja Verificar as Configurações?','Atenção',mb_yesno + + mb_iconquestion + mb_defbutton2) = idyes then
     begin
      ConfigFrm.Showmodal;
      ConfigFrm.Free;
     end;
   end;

 except
  logtofile('Erro :: Problemas ao tentar acessar Base de Dados do Firebird', True);
  logtofile('Msg  :: Erro ao tentar acessar Base de Dados. Verifique sua configuração.', False);
  if application.messagebox('Erro ao tentar acessar Base de Dados.'+#13+
                            'Este programa não funcionará corretamente e por isso será fechado.' + #13#13 +
                            'Deseja Verificar as Configurações?','Atenção',mb_YesNo + + mb_iconquestion + mb_defbutton2) = idyes then
   begin
    ConfigFrm.Showmodal;
    ConfigFrm.Free;
   end;

  ArquivoIni.free;
  DM1.Free;
  Halt;
 end;
 ArquivoIni.free;

 SplashFrm.label1.caption:='Carregando Telas do Sistema...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(30);

 SplashFrm.label1.caption:='Finalizando...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(20);
 SplashFrm.hide;

 SplashFrm.free;
 Application.CreateForm(TMonitoriaFrm, MonitoriaFrm);
  //logtofile('Att  :: Iniciado Aplicativo "Siace-Posto v1.0/2002"', True);
 Application.Run;

end.
