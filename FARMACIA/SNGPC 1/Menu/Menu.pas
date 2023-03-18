unit Menu;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, jpeg, ComCtrls, ToolWin, ImgList,
  Buttons, Wwintl, qrprntr, DB, MDOCustomDataSet, Wwdatsrc, ShellApi,
  MDODatabase, xmldom, XMLIntf, msxmldom, XMLDoc, MDOQuery, DBCtrls, MDOSQL,
  QRExport, QRPDFFilt, QRWebFilt, MDOStoredProc, WinSkinData;

type
  TfMenu = class(TForm)
    wwIntl1: TwwIntl;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Aquisies1: TMenuItem;
    Saidas1: TMenuItem;
    Perdas1: TMenuItem;
    Sair1: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    bEntradas: TToolButton;
    bSaidas: TToolButton;
    bPerdas: TToolButton;
    bEnviar: TToolButton;
    ToolButton6: TToolButton;
    Farmcia1: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    ToolButton8: TToolButton;
    Sobre1: TMenuItem;
    Conexao: TMDODatabase;
    Transacao: TMDOTransaction;
    Inventrio1: TMenuItem;
    Enviar1: TMenuItem;
    ransferncia1: TMenuItem;
    Medicamentos1: TMenuItem;
    Laboratrio1: TMenuItem;
    Mdicos1: TMenuItem;
    Sair2: TMenuItem;
    Clientes1: TMenuItem;
    qryEmpresa: TMDOQuery;
    dsqryEmpresa: TwwDataSource;
    DBText2: TDBText;
    Importar1: TMenuItem;
    Movimento1: TMenuItem;
    Importar2: TMenuItem;
    Movimentos1: TMenuItem;
    BalanoTrimestral1: TMenuItem;
    Aquisies2: TMenuItem;
    BalanoCompleto1: TMenuItem;
    PaginadeRosto1: TMenuItem;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    bTransferencias: TToolButton;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    AbrirInventrio1: TMenuItem;
    LanarInventrio1: TMenuItem;
    FecharInventrio1: TMenuItem;
    MDOSQL1: TMDOSQL;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    LimpezadaBasedeDados1: TMenuItem;
    RecaldodoSaldodeEstoque1: TMenuItem;
    RECAL_ESTOQUE: TMDOStoredProc;
    GerarConsultasSQL1: TMenuItem;
    ImportardoArquivoXML1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    PesquisarMSdoMedicamento1: TMenuItem;
    BackupRestoredoSistema1: TMenuItem;
    SuporteOnline1: TMenuItem;
    QRRTFFilter2: TQRRTFFilter;
    QRExcelFilter2: TQRExcelFilter;
    QRHTMLFilter2: TQRHTMLFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter2: TQRTextFilter;
    SkinData1: TSkinData;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Farmcia1Click(Sender: TObject);
    procedure Enviar1Click(Sender: TObject);
    procedure ransferncia1Click(Sender: TObject);
    procedure Perdas1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Medicamentos1Click(Sender: TObject);
    procedure Laboratrio1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Movimento1Click(Sender: TObject);
    procedure Movimentos1Click(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure Importar2Click(Sender: TObject);
    procedure Aquisies2Click(Sender: TObject);
    procedure PaginadeRosto1Click(Sender: TObject);
    procedure BalanoCompleto1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure LanarInventrio1Click(Sender: TObject);
    procedure AbrirInventrio1Click(Sender: TObject);
    procedure FecharInventrio1Click(Sender: TObject);
    procedure LimpezadaBasedeDados1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure RecaldodoSaldodeEstoque1Click(Sender: TObject);
    procedure GerarConsultasSQL1Click(Sender: TObject);
    procedure ImportardoArquivoXML1Click(Sender: TObject);
    procedure PesquisarMSdoMedicamento1Click(Sender: TObject);
    procedure BackupRestoredoSistema1Click(Sender: TObject);
    procedure SuporteOnline1Click(Sender: TObject);
  private

  end;

var
  fMenu: TfMenu;

implementation

uses Inventario, Entradas, EnviarAnvisa, Saidas,
  Transferencia, Perdas, informac, Medicamentos, Laboratorios, Medicos,
  Empresa, Clientes, ImportarSaidas, ImportarEntradas, Limpeza,
  Selecao_Balanco_Aquisicao, Selecao_Balanco_Pagina_Rosto,
  Selecao_Balanco_Completo, Senha, SQLExec, ImportarXML, FBackupRestore;

{$R *.DFM}

procedure TfMenu.Sair1Click(Sender: TObject);
begin
  if MessageDlg('Deseja Realmente sair do Sistema?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
  begin
    Close;
  end;
end;

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ShowMessage('ATENÇÃO!! Faça o Backup antes de sair. Será aberto a rotina de Backup.');

  FrmBackupRestore := TFrmBackupRestore.Create(Self);
  FrmBackupRestore.ShowModal;
  FrmBackupRestore.Release;
  FrmBackupRestore.Free;

  qryEmpresa.Active := False;

  Transacao.Commit;
  
  Action := CaFree;
  Application.Terminate;
end;

procedure TfMenu.FormCreate(Sender: TObject);
var
  F : TextFile;
  Descricao, vServidor, vBancoDados, vBancoImagem : String;
begin
  Top := 0;
  Left := 0;

  Width := Screen.Width;
  Height := Screen.Height;

  // Verificar se existe arquivo ini de configuraçào
  if not FileExists(ExtractFilePath( Application.ExeName )+'\SNGPC.ini') then
  begin
    AssignFile(F,ExtractFilePath( Application.ExeName )+'\SNGPC.ini');
    Rewrite(F);
    Writeln(F,Format('%s',['SERVIDOR = SERVIDOR']));
    Writeln(F,Format('%s',['BANCODB  = C:SNGPC\Db\SNGPC.fdb']));
    Writeln(F,Format('%s',['BANCOIMAG= C:BANCOIMAGEM']));
    CloseFile(F);
  end;

  AssignFile(F,ExtractFilePath( Application.ExeName )+'\SNGPC.ini');
  Reset(F);
  while not Eof(F) do
  begin
    Readln(F,Descricao);
    if Copy(Descricao,1,8) = 'SERVIDOR' then
      vServidor := Copy(Descricao,12,200);
    if Copy(Descricao,1,8) = 'BANCODB ' then
      vBancoDados := Copy(Descricao,12,200);
    if Copy(Descricao,1,8) = 'BANCOIMAG' then
      vBancoImagem := Copy(Descricao,12,200);
  end;
  CloseFile(F);

  with Conexao do
  begin
    Connected := False;
    if LoginPrompt = False then
    begin
      DatabaseName := pChar(Trim(vBancoDados));
      Params.Values['user_name'] := 'SYSDBA';
      Params.Values['password']  := 'masterkey';
      SQLDialect := 3;
    end;
    Connected := True;
  end;

  qryEmpresa.Active := True;
end;

procedure TfMenu.ToolButton7Click(Sender: TObject);
begin
  Cascade;
end;

procedure TfMenu.ToolButton9Click(Sender: TObject);
begin
  Tile;
end;


procedure TfMenu.Farmcia1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
  fEmpresa.Show;
end;

procedure TfMenu.Enviar1Click(Sender: TObject);
begin
  fEnviarAnvisa := TfEnviarAnvisa.Create(Self);
  fEnviarAnvisa.Show;
end;


procedure TfMenu.ransferncia1Click(Sender: TObject);
begin
  fTransferencia := TfTransferencia.Create(Self);
  fTransferencia.Show;
end;

procedure TfMenu.Perdas1Click(Sender: TObject);
begin
  fPerdas := TfPerdas.Create(Self);
  fPerdas.Show;
end;

procedure TfMenu.Sobre1Click(Sender: TObject);
begin
  Informa := TInforma.Create(Self);
  Informa.ShowModal;
end;

procedure TfMenu.Medicamentos1Click(Sender: TObject);
begin
  fMedicamentos := TfMedicamentos.Create(Self);
  fMedicamentos.Show;
end;

procedure TfMenu.Laboratrio1Click(Sender: TObject);
begin
  fLaboratorios := TfLaboratorios.Create(Self);
  fLaboratorios.Show;
end;

procedure TfMenu.Mdicos1Click(Sender: TObject);
begin
  fMedicos := TfMedicos.Create(Self);
  fMedicos.Show;
end;

procedure TfMenu.Clientes1Click(Sender: TObject);
begin
  fClientes := TfClientes.Create(Self);
  fClientes.Show;
end;

procedure TfMenu.Movimento1Click(Sender: TObject);
begin
  fSaidas := TfSaidas.Create(Self);
  fSaidas.Show;
end;

procedure TfMenu.Movimentos1Click(Sender: TObject);
begin
  fEntradas := TfEntradas.Create(Self);
  fEntradas.Show;
end;

procedure TfMenu.Importar1Click(Sender: TObject);
begin
  if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
  begin
    ShowMessage('ATENÇÃO! Inventário esta aberto, para fazer lançamento primeiro deve fechar-lo.');
    Exit;
  end;
  
  fImportarSaidas := TfImportarSaidas.Create(Self);
  fImportarSaidas.Show;
end;

procedure TfMenu.Importar2Click(Sender: TObject);
begin
  if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
  begin
    ShowMessage('ATENÇÃO! Inventário esta aberto, para fazer lançamento primeiro deve fechar-lo.');
    Exit;
  end;

  fImportarEntradas := TfImportarEntradas.Create(Self);
  fImportarEntradas.Show;
end;

procedure TfMenu.Aquisies2Click(Sender: TObject);
begin
  fSelBalancoAquisicao := TfSelBalancoAquisicao.Create(Self);
  fSelBalancoAquisicao.ShowModal;
  fSelBalancoAquisicao.Release;
  fSelBalancoAquisicao.Free;
end;

procedure TfMenu.PaginadeRosto1Click(Sender: TObject);
begin
  fSelBalancoPaginaRosto := TfSelBalancoPaginaRosto.Create(Self);
  fSelBalancoPaginaRosto.ShowModal;
  fSelBalancoPaginaRosto.Release;
  fSelBalancoPaginaRosto.Free;
end;

procedure TfMenu.BalanoCompleto1Click(Sender: TObject);
begin
  fSelBalancoCompleto := TfSelBalancoCompleto.Create(Self);
  fSelBalancoCompleto.ShowModal;
  fSelBalancoCompleto.Release;
  fSelBalancoCompleto.Free;
end;

procedure TfMenu.ToolButton13Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://sngpc.anvisa.gov.br',nil,nil,SW_MAXIMIZE);
end;

procedure TfMenu.ToolButton1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://www.anvisa.gov.br/hotsite/sngpc/passo_passo.htm',nil,nil,SW_MAXIMIZE);
end;

procedure TfMenu.LanarInventrio1Click(Sender: TObject);
begin
  fInventario := TfInventario.Create(Self);
  fInventario.Show;
end;

procedure TfMenu.AbrirInventrio1Click(Sender: TObject);
begin
  if Application.MessageBox('ATENÇÃO! Deseja Realmente Abrir o Inventário, esse procedimento zera o inventário anterior se houver?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
    begin
      ShowMessage('ATENÇÃO! Inventário já esta aberto.');
      Exit;
    end;

    fSenha.Label1.Caption := 'Digite a Senha para ABRIR O INVENTÁRIO';
    fsenha.ShowModal;
    if (fSenha.Senha.Text <> qryEmpresa.FieldByName('SENHA_ABRIR_INVENTARIO').AsString) then
    begin
      ShowMessage('ATENÇÃO! Senha Invalida.');
      Exit;
    end;

    //*******************************************
    MDOSQL1.SQL.Clear;
    MDOSQL1.SQL.Add('DELETE FROM INVENTARIO');
    MDOSQL1.ExecQuery;
    //*******************************************

    //*******************************************
    MDOSQL1.SQL.Clear;
    MDOSQL1.SQL.Add('UPDATE EMPRESA SET SITUACAO_INVENTARIO = :SITUACAO');
    MDOSQL1.ParamByName('SITUACAO').AsString := 'A';
    MDOSQL1.ExecQuery;
    //*******************************************

    ShowMessage('ATENÇÃO!! INVENTÁRIO ABERTO PARA LANÇAMENTOS');

    Transacao.Commit;
    qryEmpresa.Active := True;
  end;
end;

procedure TfMenu.FecharInventrio1Click(Sender: TObject);
begin
  if Application.MessageBox('ATENÇÃO! Deseja Realmente Fechar o Inventário, não será mais possivel lançamentos?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString = 'F' then
    begin
      ShowMessage('ATENÇÃO! Inventário já esta fechado.');
      Exit;
    end;

    fSenha.Label1.Caption := 'Digite a Senha para FECHAR O INVENTÁRIO';
    fsenha.ShowModal;
    if (fSenha.Senha.Text <> qryEmpresa.FieldByName('SENHA_FECHAR_INVENTARIO').AsString) then
    begin
      ShowMessage('ATENÇÃO! Senha Invalida.');
      Exit;
    end;

    //*******************************************
    MDOSQL1.SQL.Clear;
    MDOSQL1.SQL.Add('UPDATE EMPRESA SET SITUACAO_INVENTARIO = :SITUACAO');
    MDOSQL1.ParamByName('SITUACAO').AsString := 'F';
    MDOSQL1.ExecQuery;
    //*******************************************

    ShowMessage('ATENÇÃO!! INVENTÁRIO FECHADO');

    Transacao.Commit;
    qryEmpresa.Active := True;
  end;
end;

procedure TfMenu.LimpezadaBasedeDados1Click(Sender: TObject);
begin
  fLimpeza := TfLimpeza.Create(Self);
  fLimpeza.Show;
end;

procedure TfMenu.Calculadora1Click(Sender: TObject);
begin
  WinExec('calc.exe', SW_SHOWNORMAL);
end;

procedure TfMenu.RecaldodoSaldodeEstoque1Click(Sender: TObject);
begin

  if Application.MessageBox('ATENÇÃO! Deseja Realmente Recalcular o Estoque?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=IDYES then
  begin
    RECAL_ESTOQUE.ExecProc;
    ShowMessage('Recalculo do Saldo de Estoque concluido com sucesso.');
    Transacao.Commit;
    qryEmpresa.Active := True;
  end;

end;

procedure TfMenu.GerarConsultasSQL1Click(Sender: TObject);
begin
  fSQLExec := TfSQLExec.Create(Self);
  fSQLExec.ShowModal;
  fSQLExec.Release;
  fSQLExec.Free;
end;

procedure TfMenu.ImportardoArquivoXML1Click(Sender: TObject);
begin
  if qryEmpresa.FieldByName('SITUACAO_INVENTARIO').AsString = 'A' then
  begin
    ShowMessage('ATENÇÃO! Inventário esta aberto, para fazer lançamento primeiro deve fechar-lo.');
    Exit;
  end;

  fImportarXML := TfImportarXML.Create(Self);
  fImportarXML.Show;
end;

procedure TfMenu.PesquisarMSdoMedicamento1Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://www7.anvisa.gov.br/datavisa/consulta_produto/Medicamentos/frmConsultaMedicamentos.asp',nil,nil,SW_MAXIMIZE);
end;

procedure TfMenu.BackupRestoredoSistema1Click(Sender: TObject);
begin
  FrmBackupRestore := TFrmBackupRestore.Create(Self);
  FrmBackupRestore.ShowModal;
  FrmBackupRestore.Release;
  FrmBackupRestore.Free;
end;

procedure TfMenu.SuporteOnline1Click(Sender: TObject);
begin
  WinExec('C:\SNGPC\Util\Suporteonline',sw_show);
end;

end.
