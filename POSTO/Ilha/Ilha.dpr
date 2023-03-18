program Ilha;

//TODO: tratar unidade de venda da tabela Bicoenc

uses
  Forms,
  Windows,
  IniFiles,
  SysUtils,
  IBServices,
  UnitFrmPrincipal in 'TelaPrincipal\UnitFrmPrincipal.pas' {PrincipalFrm},
  Unit13Venda in 'Modulo Vendas\Vendas\Unit13Venda.pas' {VendaFrm},
  Unit15ProcCli in 'Modulo Vendas\List_Procura de Cliente\Unit15ProcCli.pas' {VendaClienteListFrm},
  Unit14ProcProd in 'Modulo Vendas\List_Procura de Produto\Unit14ProcProd.pas' {VendaProdutoListFrm},
  Unit_ECF_Bematech_Fi2 in 'Modulo ECF\ECF_Bematech_Fi2\Unit_ECF_Bematech_Fi2.pas',
  Unit_ECF_General_GP2000 in 'Modulo ECF\ECF_General_GP2000\Unit_ECF_General_GP2000.pas',
  Unit_ECF_Sweda_IFS7000 in 'Modulo ECF\ECF_Sweda_IFS7000\Unit_ECF_Sweda_IFS7000.pas',
  Unit_ECF_Bematech_Fi1 in 'Modulo ECF\ECF_Bematech_Fi1\Unit_ECF_Bematech_Fi1.pas',
  UnitConsultaGeral in 'Consulta_Geral\UnitConsultaGeral.pas' {ConsultaGeralListFrm},
  Unit_Connect_Sintegra32 in 'Modulo SIntegra\Conn_Sintegra32dll\Unit_Connect_Sintegra32.pas',
  UnitProcBicoEnc_Temp in 'Modulo Vendas\List_Procura de BicoEnc_Temp\UnitProcBicoEnc_Temp.pas' {VendaBicoEnc_TempListFrm},
  Unit3SobreCad in 'Sobre_TkPosto\Unit3SobreCad.pas' {SobreFrm},
  ClasseBico in 'Modulo_CUB\Classe_Bico\ClasseBico.pas',
  CUBUtils in 'Modulo_CUB\CUB_Utils\CUBUtils.pas',
  UnitFuncoes in 'UnitFuncoes\UnitFuncoes.pas',
  UnitDataM1 in 'DataModule1\UnitDataM1.pas' {DM1: TDataModule},
  ClasseCUB in 'Modulo_CUB\Classe_CUB\ClasseCUB.pas',
  ClasseBomba in 'Modulo_CUB\Classe_Bomba\ClasseBomba.pas',
  UnitConfig in 'Configuracoes\UnitConfig.pas' {ConfigFrm},
  Unit_ECF_Global in 'Modulo ECF\ECF_Global\Unit_ECF_Global.pas',
  Unit8Splash in 'SplashScreen\Unit8Splash.pas' {SplashFrm};

{$R *.RES}

var
 MutexHandle: THandle;
 hwind: HWND;
 Path, IbServerName, IbDBPath: string;
 IbRemote: boolean;
 ArquivoIni: TIniFile;

begin
 //------ Enables only one instance of the App ------
 MutexHandle := CreateMutex(nil, True, 'Ilha');   //Check to see if the named mutex object existed before this call
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
     logtofile('Msg  :: O Aplicativo "Siace-Posto" já está sendo executado.', False);
     hwind := 0;
     repeat                                                                     //Loop nos processos ativos tentando encontrar o programa
       hwind := Windows.FindWindowEx(0,hwind, 'TApplication', 'Ilha');
     until (hwind <> Application.Handle);
     if (hwind <> 0) then
      begin
       Windows.ShowWindow(hwind, SW_SHOWNORMAL);             //Chama o programa caso encontre
       Windows.SetForegroundWindow(hwind);
      end;
     Halt;                                                                      //Abnormal Termination
    end
  end;

 SplashFrm := tSplashFrm.Create(application);
 if not (ParamStr(1) = 'ns') then
   SplashFrm.Show;
 SplashFrm.update;
 application.ProcessMessages;
 Application.Title := 'Siace-Posto :: Ilha';
  SplashFrm.label1.Caption := 'Carregando Aplicativo...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(20);

 SplashFrm.label1.Caption := 'Carregando Base de Dados...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(15);
 Application.CreateForm(TDM1, DM1);
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 try
   //------ Lê variáveis do INI -------
   IbServerName := ArquivoIni.ReadString('IBDB', 'IbServerName',
     'Erro Lendo ServerName');
   IbDBPath := ArquivoIni.ReadString('IBDB', 'IbDBPath',
     extractfiledir(application.ExeName) + '\Siace.GDB');
   IBRemote := ArquivoIni.ReadBool('IBDB', 'ConexaoRemota', False);

   Dm1.IBDatabase1.Params.Clear;
   Dm1.IBDatabase1.Params.add('user_name=' + ArquivoIni.ReadString('IBDB',
     'UserName', 'SYSDBA'));
   Dm1.IBDatabase1.Params.add('password=' + ArquivoIni.ReadString('IBDB',
     'Password', 'masterkey'));

   Dm1.IBStatisticalService1.Params := Dm1.IBDatabase1.Params;
   Dm1.IBLogService1.Params := Dm1.IBDatabase1.Params;
   Dm1.IBServerProperties1.Params := Dm1.IBDatabase1.Params;

   SplashFrm.label1.Caption := 'Testando Base de Dados...';
   SplashFrm.label1.update;
   SplashFrm.ProgressBar1.StepBy(15);

   SplashFrm.label1.Caption := 'Base de Dados OK :: Conectando...';
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
     Dm1.IBLogService1.Protocol := TCP;

     Dm1.IBServerProperties1.ServerName := IbServerName;
     Dm1.IBServerProperties1.Protocol := TCP;
    end;

   //------ Testa IBGuard aberto, abre IBGuard ------
   if not IBRemote then
     if not (FindWindow(nil, PChar('Firebird Server')) > 0) then
      begin
       logtofile('Erro :: Servidor de banco de dados local indisponível', True);
       application.MessageBox('Servidor de banco de dados local indisponível' + #13 +
         'Verifique o IBGuard ou IBServer e tente novamente...',
         'Atenção', MB_OK + mb_iconinformation);
      end;

   //------ Testa conexão com servidor -------
   if not DM1.IBDatabase1.TestConnected then
    begin
     DM1.IBDatabase1.connected := True;
     DM1.IBTransaction1.StartTransaction;
    end;

   //------ Testa conexão com servidor, abre tela de Config ------
   if not DM1.IBDatabase1.TestConnected then
    begin
     SplashFrm.label1.Caption := '<< Erro :: Conexão com Base de Dados >>';
     SplashFrm.label1.update;
     logtofile('Erro :: Problemas ao tentar acessar a Base de Dados do Interbase', True);
     logtofile('Msg  :: Erro ao tentar acessar a Base de Dados, este aplicativo não funcionará corretamente.',
       False);
     if application.messagebox('Erro ao tentar acessar a Base de Dados.' + #13 +
       'Este programa não funcionará corretamente e por isso será fechado.' +
       #13#13 +
       'Deseja Verificar as Configurações?',
       'Atenção', mb_yesno + mb_iconquestion + mb_defbutton2) = idYes then
      begin
//       Application.CreateForm(TDM1, DM1);
       ConfigFrm.Showmodal;
       ConfigFrm.Free;
      end;
    end;
 except
   logtofile('Erro :: Problemas ao tentar acessar Base de Dados', True);
   logtofile('Msg  :: Erro ao tentar acessar Base de Dados. Verifique sua configuração.',
     False);
   if application.messagebox('Erro ao tentar acessar Base de Dados.' + #13 +
     'Este programa não funcionará corretamente e por isso será fechado.' +
     #13#13 +
     'Deseja Verificar as Configurações?', 'Atenção',
     mb_YesNo + +mb_iconquestion + mb_defbutton2) = idYes then
    begin
     application.CreateForm(TConfigFrm, ConfigFrm);
     ConfigFrm.Showmodal;
     ConfigFrm.Free;
    end;

   ArquivoIni.Free;
   DM1.Free;
   Halt;
  end;
 ArquivoIni.Free;

 SplashFrm.label1.Caption := 'Carregando Telas do Sistema...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(30);
 Application.CreateForm(TPrincipalFrm, PrincipalFrm);

 SplashFrm.label1.Caption := 'Finalizando...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(20);
 SplashFrm.hide;

 SplashFrm.Free;
 //logtofile('Att  :: Iniciado Aplicativo "Siace-Posto"', True);

 //--- Testa se Usuário Logado Corretamente ---
 if CodSetorUser <> -1 then
  begin
   Application.CreateForm(TConsultaGeralListFrm, ConsultaGeralListFrm);
   PrincipalFrm.Enabled := True;
   PrincipalFrm.Visible := True;
   Application.Run
  end
 else
  begin
   DM1.Free;
   PrincipalFrm.Free;
   Halt;
  end;
end.
