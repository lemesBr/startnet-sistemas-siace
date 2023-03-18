program Retaguarda;

//TODO: Relatorio agrupado e não agrupado de vendas por cliente, produto, frentista, bomba

uses
 // madExcept,
 // madLinkDisAsm,
 // madScreenShot,

  Forms,
  Windows,
  IniFiles,
  SysUtils,
  IBServices,
  UnitConfig in 'Configuracoes\UnitConfig.pas' {ConfigFrm},
  UnitConsultaGeral in 'Consulta_Geral\UnitConsultaGeral.pas' {ConsultaGeralListFrm},
  UnitDataM1 in 'DataModule\UnitDataM1.pas' {DM1: TDataModule},
  UnitFuncoes in 'Funcoes_Diversas\UnitFuncoes.pas',
  UnitCadBico in 'Modulo_Pista\Cad_Bico\UnitCadBico.pas' {BicoCadFrm},
  UnitCadBomba in 'Modulo_Pista\Cad_Bomba\UnitCadBomba.pas' {BombaCadFrm},
  UnitCadFrentista in 'Modulo_Pista\Cad_Frentista\UnitCadFrentista.pas' {FrentistaCadFrm},
  UnitCadProduto in 'Modulo_Pista\Cad_Produto\UnitCadProduto.pas' {ProdCombustivelCadFrm},
  UnitCadTanque in 'Modulo_Pista\Cad_Tanque\UnitCadTanque.pas' {TanqueCadFrm},
  ListBicoEncerrantes in 'Modulo_Vendas\List_Encerrantes_Bico\ListBicoEncerrantes.pas' {EncerrantesListFrm},
  RepEncBico in 'Modulo_Vendas\Rep_Encerrantes_Bico\RepEncBico.pas' {RepEncBicoFrm},
  Unit3SobreCad in 'Sobre_TkPosto\Unit3SobreCad.pas' {SobreFrm},
  Unit8Splash in 'SplashScreen\Unit8Splash.pas' {SplashFrm},
  UnitFrmPrincipal in 'TelaPrincipal\UnitFrmPrincipal.pas' {PrincipalFrm},
  UnitCadClasse in 'Modulo Cadastro\Cad_Classe\UnitCadClasse.pas' {ClasseCadFrm},
  Unit2 in 'Modulo Cadastro\Cad_Cliente\Unit2.pas' {ClienteCadFrm},
  Unit5Cadastro in 'Modulo Cadastro\Cad_Contato\Unit5Cadastro.pas' {ContatoCadFrm},
  UnitCadFormaContato in 'Modulo Cadastro\Cad_FormaContato\UnitCadFormaContato.pas' {FormaContatoCadFrm},
  UnitSelect in 'Modulo Cadastro\Selecao de Cadastro\UnitSelect.pas' {SelectFrm},
  UnitCad_GrupoProd in 'Modulo Produto\Cad_Grupo Produto\UnitCad_GrupoProd.pas' {ProdutoGrupoCadFrm},
  Unit1cadprod in 'Modulo Produto\Cad_Produto\Unit1cadprod.pas' {ProdutoCadFrm},
  UnitCad_SubGrupoProd in 'Modulo Produto\Cad_SubGrupo Produto\UnitCad_SubGrupoProd.pas' {ProdutoSubgrupoCadFrm},
  UnitListProd in 'Modulo Produto\List_Produto\UnitListProd\UnitListProd.pas' {ProdutoListFrm},
  Unit3ListProdImprSel in 'Modulo Produto\List_Produto\SelecaoListProd\Unit3ListProdImprSel.pas' {ProdutoListSelFrm},
  UnitDiscadorFrm in 'Modulo Discador\DiscadorFrm\UnitDiscadorFrm.pas' {DiscadorFrm},
  Unit_Connect_Sintegra32 in 'Modulo SIntegra\Conn_Sintegra32dll\Unit_Connect_Sintegra32.pas',
  UnitListVend in 'Modulo_Vendas\List_Vendas\UnitListVend.pas' {VendaListFrm},
  UnitQRVend in 'Modulo_Vendas\Rep_Venda\UnitQRVend.pas' {VendaRepFrm},
  Unit_Gerar_Sintegra in 'Modulo SIntegra\List_SIntegra\Unit_Gerar_Sintegra.pas' {SIntegra_ListFrm},
  UnitReducaoZ in 'Modulo SIntegra\Cad_ReducaoZ\UnitReducaoZ.pas' {SintegraReducaoZCadFrm},
  Unitcad_info_sintegra in 'Modulo SIntegra\Cad_Informante\Unitcad_info_sintegra.pas' {SintegraInfoCadFrm},
  UnitCad_Inventario in 'Modulo SIntegra\Cad_Inventario\UnitCad_Inventario.pas' {InventarioCadFrm},
  UnitCad_Inventario_Itens in 'Modulo SIntegra\Cad_Inventarios_Itens\UnitCad_Inventario_Itens.pas' {Inventario_ItensCadFrm},
  InventarioRep in 'Modulo SIntegra\Rep_Inventario\InventarioRep.pas' {InventarioRepFrm},
  UnitSaidaN in 'Modulo Nota Fiscal\Cad_SaidaNota\UnitSaidaN.pas' {SaidaNFCadFrm},
  UnitNotaFiscalConfig in 'Modulo Nota Fiscal\ConfigNotaFiscal\UnitNotaFiscalConfig.pas' {SaidaNFConfigFrm},
  UnitListSaidaN in 'Modulo Nota Fiscal\List_SaidaNota\UnitListSaidaN.pas' {SaidaNFListFrm},
  UnitRepSaidaN in 'Modulo Nota Fiscal\List_SaidaNota\Rep_SaidaNota\UnitRepSaidaN.pas' {SaidaNFRepFrm},
  Unit3EntradaN in 'Modulo Nota Fiscal\Cad_EntradaNota\Unit3EntradaN.pas' {EntradaNFCadFrm},
  UnitListEntradaN in 'Modulo Nota Fiscal\List_EntradaNota\UnitListEntradaN.pas' {EntradaNFListFrm},
  UnitRepEntradaN in 'Modulo Nota Fiscal\List_EntradaNota\Rep_EntradaNota\UnitRepEntradaN.pas' {EntradaNFRepFrm};

{$R *.RES}

var
 MutexHandle: THandle;
 hwind:HWND;
 Path, IbServerName, IbDBPath: string;
 IbRemote : Boolean;
 ArquivoIni: TIniFile;

begin
 //------ Enables only one instance of the App ------
 MutexHandle := CreateMutex(nil, True, 'Retaguarda');   //Check to see if the named mutex object existed before this call
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
       hwind := Windows.FindWindowEx(0,hwind, 'TApplication', 'Retaguarda');
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
 Application.Title := 'Siace-Posto :: Retaguarda';
  SplashFrm.label1.caption:='Carregando programa Retaguarda...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(20);

 SplashFrm.label1.caption:='Carregando Base de Dados...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(15);
 Application.CreateForm(TDM1, DM1);
  Path := CreateDefaultIniFile;
 ArquivoIni   := TIniFile.Create(Path);
 try
  IbServerName := ArquivoIni.ReadString('IBDB', 'IbServerName', 'Erro Lendo ServerName');
  IbDBPath     := ArquivoIni.ReadString('IBDB', 'IbDBPath', extractfiledir(application.ExeName) + '\Banco\Tkposto.GDB');
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

  SplashFrm.label1.caption:='Testando Base de Dados...';
  SplashFrm.label1.update;
  SplashFrm.ProgressBar1.StepBy(15);

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
   // if not (FindWindow(nil, PChar('Interbase Server')) > 0) then
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
      Dm1.StartInterbase;
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
//    Application.CreateForm(TDM1, DM1);
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
 Application.CreateForm(TPrincipalFrm, PrincipalFrm);

 SplashFrm.label1.caption:='Finalizando...';
 SplashFrm.label1.update;
 SplashFrm.ProgressBar1.StepBy(20);
 SplashFrm.hide;

 SplashFrm.free;
 //logtofile('Att  :: Iniciado Aplicativo "Siace-Posto v1.0/2002"', True);

  //--- Testa se Usuário Logado Corretamente ---
 Application.CreateForm(TConsultaGeralListFrm, ConsultaGeralListFrm);
 Application.CreateForm(TSelectFrm, SelectFrm);
 PrincipalFrm.Enabled := True;
 PrincipalFrm.Visible := True;
 Application.Run;

end.
