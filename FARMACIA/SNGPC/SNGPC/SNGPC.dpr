program SNGPC;

uses
  Forms,
  Menu in 'Menu\Menu.pas' {fMenu},
  Balanco_Aquisicoes in 'Balanco\Balanco_Aquisicoes.pas' {fBalancoAquisicoes},
  Balanco_Completo in 'Balanco\Balanco_Completo.pas' {fBalancoCompleto},
  Balanco_Pagina_Rosto in 'Balanco\Balanco_Pagina_Rosto.pas' {fBalancoPaginaRosto},
  Clientes in 'Clientes\Clientes.pas' {fClientes},
  Empresa in 'Empresa\Empresa.pas' {fEmpresa},
  Entradas in 'entradas\Entradas.pas' {fEntradas},
  ImportarXML in 'Entradas\ImportarXML.pas' {fImportarXML},
  RelEntradas in 'Entradas\RelEntradas.pas' {fRelEntradas},
  SelRelEntradas in 'Entradas\SelRelEntradas.pas' {fSelRelEntradas},
  EnviarArquivo in 'EnviarAnvisa\EnviarArquivo.pas',
  Funcoes in 'Funcoes\Funcoes.pas',
  md5 in 'Funcoes\md5.pas',
  Senha in 'Funcoes\Senha.pas' {fSenha},
  informac in 'Informacao\informac.pas' {Informa},
  Inventario in 'Inventario\Inventario.pas' {fInventario},
  RelInventario in 'Inventario\RelInventario.pas' {fRelInventario},
  Laboratorios in 'Laboratorio\Laboratorios.pas' {fLaboratorios},
  Limpeza in 'Limpeza\Limpeza.pas' {fLimpeza},
  Medicamentos in 'Medicamentos\Medicamentos.pas' {fMedicamentos},
  RelMedicamentos in 'Medicamentos\RelMedicamentos.pas' {fRelMedicamentos},
  Medicos in 'Medicos\Medicos.pas' {fMedicos},
  Perdas in 'Perdas\Perdas.pas' {fPerdas},
  RelPerdas in 'Perdas\RelPerdas.pas' {fRelPerdas},
  SelRelPerdas in 'Perdas\SelRelPerdas.pas' {fSelRelPerdas},
  ImportarSaidas in 'Saidas\ImportarSaidas.pas' {fImportarSaidas},
  RelSaidas in 'Saidas\RelSaidas.pas' {fRelSaidas},
  Saidas in 'Saidas\Saidas.pas' {fSaidas},
  SelRelSaidas in 'Saidas\SelRelSaidas.pas' {fSelRelSaidas},
  Transferencia in 'Transferencias\Transferencia.pas' {fTransferencia},
  Selecao_Balanco_Pagina_Rosto in 'Balanco\Selecao_Balanco_Pagina_Rosto.pas' {fSelBalancoPaginaRosto},
  Selecao_Balanco_Completo in 'Balanco\Selecao_Balanco_Completo.pas' {fSelBalancoCompleto},
  Selecao_Balanco_Aquisicao in 'Balanco\Selecao_Balanco_Aquisicao.pas' {fSelBalancoAquisicao},
  PesqMedicSaidas in 'Saidas\PesqMedicSaidas.pas' {fPesqMecSaidas},
  PesqMedicEntradas in 'Entradas\PesqMedicEntradas.pas' {fPesqMecEntradas},
  HelpSql in 'ConsultaSQL\HelpSql.pas' {fHelpSql},
  SQLExec in 'ConsultaSQL\SQLExec.pas' {fSQLExec},
  ImportarEntradas in 'Entradas\ImportarEntradas.pas' {fImportarEntradas},
  EnviarAnvisa in 'EnviarAnvisa\EnviarAnvisa.pas' {fEnviarAnvisa},
  FBackupRestore in 'Backup\FBackupRestore.pas' {FrmBackupRestore},
  U_Splash in 'Splash\U_Splash.pas' {F_Splash};

{$R *.RES}

begin
  Application.Initialize;
  F_Splash := TF_Splash.Create(Application);
  F_Splash.Show;   
  F_Splash.Update;
  Application.Title := 'SNGPC - Sistema Nacional de Gerenciamento de Produtos Controlados';
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfSenha, fSenha);
  Application.CreateForm(TFrmBackupRestore, FrmBackupRestore);
  F_Splash.Hide;
  F_Splash.Free;
  Application.Run;
end.
