unit UnitFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Buttons, ExtCtrls, ComCtrls, StdCtrls, ToolWin, ImgList, ShellApI,
  RxCalc, jpeg, IBServices, RxGIF, OleCtrls, TypInfo, INIFiles,
  DB, IBCustomDataSet, IBSQL, IBQuery,
  Grids, DBGrids, ACBrBase, ACBrCalculadora;

type
  TPrincipalFrm = class(TForm)
    mmcadastro: TMainMenu;
    ModuloCadastroMnu: TMenuItem;
    Pessoas1: TMenuItem;
    StatusBar1: TStatusBar;
    Sair1: TMenuItem;
    Ajuda2: TMenuItem;
    TpicosdaAjuda1: TMenuItem;
    N1: TMenuItem;
    SobreoSoftware1: TMenuItem;
    ImageList1: TImageList;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ImageList3: TImageList;
    FerramentasMnu: TMenuItem;
    CalculadoraMnu: TMenuItem;
    SistemaMnu: TMenuItem;
    N6: TMenuItem;
    ConfigMnu: TMenuItem;
    MnuLinha: TMenuItem;
    MnuNovo: TMenuItem;
    MnuAltera: TMenuItem;
    MnuExclui: TMenuItem;
    MnuGera: TMenuItem;
    MnuImprime: TMenuItem;
    MnuLimpa: TMenuItem;
    MnuSalva: TMenuItem;
    MnuCancela: TMenuItem;
    N4: TMenuItem;
    Fechar1: TMenuItem;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    MnuRefresh: TMenuItem;
    MnuLocaliza: TMenuItem;
    Panel2: TPanel;
    RelatoriosMnu: TMenuItem;
    DiscadorManualMnu: TMenuItem;
    LogoffMnu: TMenuItem;
    LogoLabel: TLabel;
    DBInfoMnu: TMenuItem;
    Image1: TImage;
    ModuloLoginMnu: TMenuItem;
    Setor1: TMenuItem;
    Usurio1: TMenuItem;
    N2: TMenuItem;
    AlterarSenhaUsurioMaster1: TMenuItem;
    ListagemdeEncerrantes1: TMenuItem;
    ModuloCadastro: TMenuItem;
    BombaMnu: TMenuItem;
    BicoMnu: TMenuItem;
    FrentistaMnu: TMenuItem;
    CombustivelMnu: TMenuItem;
    TanqueMnu: TMenuItem;
    QryCheck: TIBQuery;
    QryCheck2: TIBQuery;
    DtsQryCheck: TDataSource;
    DataSource1: TDataSource;
    ModuloProdutosMnu: TMenuItem;
    GrupoProdMnu: TMenuItem;
    SubGrupoProdMnu: TMenuItem;
    ListProdMnu: TMenuItem;
    N5: TMenuItem;
    CadCliMnu: TMenuItem;
    ClasseMnu: TMenuItem;
    N7: TMenuItem;
    EntradaNotaMnu: TMenuItem;
    ProdutosMnu: TMenuItem;
    FormaContatoMnu: TMenuItem;
    ToolBar1: TToolBar;
    ToolButtonCadastro: TToolButton;
    ToolButtonProdutos: TToolButton;
    PopupMenu2: TPopupMenu;
    GrupoProdPopMnu: TMenuItem;
    SubGrupoProdPopMnu: TMenuItem;
    N14: TMenuItem;
    ListProdPopMnu: TMenuItem;
    PopupMenu1: TPopupMenu;
    ClassePopMnu: TMenuItem;
    FormaContatoPopMnu: TMenuItem;
    N10: TMenuItem;
    N9: TMenuItem;
    BombaPopMnu: TMenuItem;
    BicoPopMnu: TMenuItem;
    FrentistaPopMnu: TMenuItem;
    TanquePopMnu: TMenuItem;
    CombustivelPopMnu: TMenuItem;
    ListagemdeVendas1: TMenuItem;
    ModuloSIntegraMnu: TMenuItem;
    GerarSIntegraMnu: TMenuItem;
    N3: TMenuItem;
    CadReducaoZMnu: TMenuItem;
    CadInformanteMnu: TMenuItem;
    CadInventarioMnu: TMenuItem;
    CadInventario_ItensMnu: TMenuItem;
    N11: TMenuItem;
    N8: TMenuItem;
    SaidaNotaMnu: TMenuItem;
    ConfigNotaMnu: TMenuItem;
    ListSaidaNotaMnu: TMenuItem;
    ListEntradaNotaMnu: TMenuItem;
    RxCalculator1: TACBrCalculadora;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SobreoSoftware1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure TpicosdaAjuda1Click(Sender: TObject);
    procedure LoadDefaultIniVars;

    Function AddAChild(MyFormCompClass: TComponentClass; var Reference): boolean;
    procedure Hyperlink_On(Sender: TObject);
    procedure Hyperlink_Off(Sender: TObject);
    function VerificaBombas: Boolean;
    function VerificaBicos: Boolean;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfigMnuClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure LogoffMnuClick(Sender: TObject);
    procedure CalculadoraMnuClick(Sender: TObject);
    procedure AlterarSenhaUsurioMaster1Click(Sender: TObject);
    procedure DBInfoMnuClick(Sender: TObject);
    Procedure CamposNaoPreenchidos(Sender: TObject);
    Procedure CamposPreenchidos(Sender: TObject);
    Procedure LoginSetup;
    procedure ListagemdeEncerrantes1Click(Sender: TObject);
    procedure BombaMnuClick(Sender: TObject);
    procedure BicoMnuClick(Sender: TObject);
    procedure FrentistaMnuClick(Sender: TObject);
    procedure CombustivelMnuClick(Sender: TObject);
    procedure TanqueMnuClick(Sender: TObject);
    procedure ListProdMnuClick(Sender: TObject);
    procedure CadCliMnuClick(Sender: TObject);
    procedure ClasseMnuClick(Sender: TObject);
    procedure ProdutosMnuClick(Sender: TObject);
    procedure GrupoProdMnuClick(Sender: TObject);
    procedure SubGrupoProdMnuClick(Sender: TObject);
    procedure FormaContatoMnuClick(Sender: TObject);
    procedure ListagemdeVendas1Click(Sender: TObject);
    procedure GerarSIntegraMnuClick(Sender: TObject);
    procedure CadReducaoZMnuClick(Sender: TObject);
    procedure CadInformanteMnuClick(Sender: TObject);
    procedure CadInventarioMnuClick(Sender: TObject);
    procedure CadInventario_ItensMnuClick(Sender: TObject);
    procedure SaidaNotaMnuClick(Sender: TObject);
    procedure EntradaNotaMnuClick(Sender: TObject);
    procedure ConfigNotaMnuClick(Sender: TObject);
    procedure ListSaidaNotaMnuClick(Sender: TObject);
    procedure ListEntradaNotaMnuClick(Sender: TObject);

  private
   { Private declarations }
  public
   { Public declarations }
  end;

var
 PrincipalFrm: TPrincipalFrm;

 CodSetor, CodSetorUser: integer;
 Tempo_Digitacao: integer = 500;
 Und_Default: string = 'Un';
                                                      
implementation

uses Unit3SobreCad, UnitDataM1, UnitConfig, UnitFuncoes, UnitConsultaGeral,
  UnitCadBomba, UnitCadBico, UnitCadFrentista, UnitCadProduto, UnitCadTanque,
  ListBicoEncerrantes, UnitListProd, Unit2, UnitCadClasse, Unit1cadprod,
  UnitCad_GrupoProd, UnitCad_SubGrupoProd, UnitCadFormaContato,
  UnitListVend, Unit_Gerar_Sintegra, UnitReducaoZ, Unitcad_info_sintegra,
  UnitCad_Inventario, UnitCad_Inventario_Itens, UnitSaidaN,
  UnitNotaFiscalConfig, UnitListSaidaN, Unit3EntradaN, UnitListEntradaN;

{$R *.DFM}

Procedure tPrincipalFrm.LoginSetup;
//var
// tempstr: string;
begin
{  screen.cursor:= crHourGlass;
  tempstr := PrincipalFrm.StatusBar1.Panels[0].Text;
  PrincipalFrm.StatusBar1.Panels[0].Text := 'Carregando Configurações do ' + PrincipalFrm.StatusBar1.Panels[1].Text;
  UserLogin(PrincipalFrm);

  //------ Trata Itens de Menu (Visiveis somente se 1 subitem visivel após o login) ------
  ModuloCadastroMnu.Visible := (CadCliMnu.visible) or (ClasseMnu.visible) or (FormaContatoMnu.Visible);
  ModuloFinanceiroMnu.Visible := (LancFinancMnu.Visible) or (AgBancoMnu.Visible) or (CentroCustoMnu.Visible) or (GrupoFinancMnu.Visible) or (SubGrupoFinancMnu.Visible) or (ContratoFinancMnu.Visible);
  ModuloEventosMnu.Visible := (CadEventoMnu.Visible) or (ConfirmCliEventoMnu.Visible) or (ListEventoMnu.Visible);
  ModuloDiscadorMnu.Visible := (PrefixoValidoMnu.Visible) or (PrefixoInvalidoMnu.Visible) or (AreaXOperadoraMnu.Visible) or (CallSolicitanteMnu.Visible) or (DiscadorManual2Mnu.Visible);
  SistemaMnu.Visible := (ModuloDiscadorMnu.visible) or (ModuloLoginMnu.Visible) or (ConfigMnu.Visible);
  RelatoriosMnu.Visible := (ListCprMnu.Visible) or (ListCadMnu.Visible) or (EtiquetaCadMnu.Visible);
  ModuloProdutosMnu.visible := (ProdutosMnu.Visible) or (GrupoProdMnu.Visible) or (SubGrupoProdMnu.visible);

  PrincipalFrm.StatusBar1.Panels[0].Text := tempstr;
  screen.cursor:= crDefault;
}
end;


Procedure tPrincipalFrm.CamposNaoPreenchidos(Sender: TObject);
begin
 TLabel(Sender).font.color := clred;
 TLabel(Sender).font.Style := [fsbold];
 TLabel(Sender).OnMouseMove := nil;
 TLabel(Sender).OnMouseLeave := nil;
end;

Procedure tPrincipalFrm.CamposPreenchidos(Sender: TObject);
begin
 TLabel(Sender).font.color := clWindowText;
 TLabel(Sender).font.Style := [];
end;

Function tPrincipalFrm.AddAChild(MyFormCompClass: TComponentClass; var Reference): boolean;
var                                   //function to check if the specified form is already open;
 i : integer;
begin
{if DM1.IBConectado then
 begin }
  screen.cursor:= crHourGlass;
  Result:=false;
  if MdiChildCount > 0 then
  for i := 0 to MDIChildCount - 1 do
   begin
    if MDIChildren[i] = TForm(Reference) then
     begin
      Result:=true;
      if (TForm(Reference).Canfocus) and (TForm(Reference).Enabled) and (TForm(Reference).Visible)then
       begin
        TForm(Reference).BringtoFront;
        TForm(Reference).setfocus;
       end;
      break;
     end
   end;

  if result = false then
  begin
   lockwindowupdate(Handle);
   Application.createform(MyFormCompClass, Reference);
   lockwindowupdate(0);
  end;
  screen.cursor:= crDefault;
 {end;}
end;

procedure tPrincipalFrm.Hyperlink_On(Sender: TObject);
begin
 TLabel(Sender).font.color := clblue;
 TLabel(Sender).font.Style := [fsunderline];
end;

procedure tPrincipalFrm.Hyperlink_Off(Sender: TObject);
begin
 TLabel(Sender).font.color := clWindowText;
 TLabel(Sender).font.Style := [];
end;

procedure TPrincipalFrm.SpeedButton4Click(Sender: TObject);
begin
if mdichildcount = 0 then
 self.close
else
 begin
  ActiveMdiChild.close;
  StatusBar1.Panels.Items[0].text:='';
 end;
end;

procedure TPrincipalFrm.SobreoSoftware1Click(Sender: TObject);
begin
principalfrm.enabled := False;
application.CreateForm(tSobreFrm,SobreFrm);
SobreFrm.showmodal;
principalfrm.enabled := True;
end;

procedure TPrincipalFrm.FormCreate(Sender: TObject);
begin
 //------- Carrega Background ------
 image1.left := 0;
 image1.top := 0;
 image1.Height := principalfrm.clientheight - (principalfrm.statusbar1.height + principalfrm.panel2.height);
 image1.Width := principalfrm.panel1.left;

 {label4.left := 8;
 label2.left := 8;
 label4.top := image1.Height - label4.Height - 25;
 label2.top := image1.Height - label4.Height - 25 - 16;}

 if fileexists(extractfiledir(application.Exename) + '\background.jpg') then
  image1.Picture.LoadFromFile(extractfiledir(application.Exename) + '\background.jpg')
 else
  image1.Free;

 application.hintcolor:=clyellow;

 LoadDefaultIniVars;
end;

procedure TPrincipalFrm.Sair1Click(Sender: TObject);
begin
 self.close;
end;

procedure TPrincipalFrm.TpicosdaAjuda1Click(Sender: TObject);
begin
//--- Executa arquivo de Help ---
 ExecHelpFile;
end;

procedure TPrincipalFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=canone;

 if application.MessageBox('Sair do Sistema?'+#13#13+
                           'Lembretes:'#13'- Realize "Cópias de Segurança" periódicas.',
                           'Confirmação', mb_YesNo + mb_iconQuestion) = idyes then
  begin
   //logtofile('Att  :: Finalizado Aplicativo "Tk-Frente de Caixa v2.0"', True);
   action:=cafree;
   //ConsultaGeralListFrm.free;
   //DiscadorFrm.Free;
   //SelectFrm.Free;
  end
end;

procedure TPrincipalFrm.ConfigMnuClick(Sender: TObject);
begin
principalfrm.enabled := False;
application.createform(TConfigFrm, ConfigFrm);
ConfigFrm.showmodal;
principalfrm.enabled := True;
end;


procedure TPrincipalFrm.SpeedButton3Click(Sender: TObject);
begin
if speedbutton3.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'Del');
end;

procedure TPrincipalFrm.SpeedButton11Click(Sender: TObject);
begin
 if DM1.IBConectado then
  begin
   DM1.GetRecPosIBArray(IBArray);
   DM1.IBTransaction1.Rollback;
   DM1.OpenIBArray(IBArray);
   DM1.SetRecPosIBArray(IBArray);
  end;
end;

procedure TPrincipalFrm.SpeedButton1Click(Sender: TObject);
begin
if speedbutton1.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'New');
end;

procedure TPrincipalFrm.SpeedButton5Click(Sender: TObject);
begin
if speedbutton5.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'Save');
end;

procedure TPrincipalFrm.SpeedButton2Click(Sender: TObject);
begin
if speedbutton2.Visible or speedbutton6.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'EditCancel');
end;

procedure TPrincipalFrm.SpeedButton10Click(Sender: TObject);
begin
if speedbutton10.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'Consulta');
end;

procedure TPrincipalFrm.SpeedButton7Click(Sender: TObject);
begin
if speedbutton7.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'Gerar');
end;

procedure TPrincipalFrm.SpeedButton8Click(Sender: TObject);
begin
if speedbutton8.Visible then
 if DM1.IBConectado then
  ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'Imprimir');
end;

procedure TPrincipalFrm.SpeedButton9Click(Sender: TObject);
begin
if speedbutton9.Visible then
 ExecuteRoutine(PrincipalFrm.ActiveMDIChild, 'Limpar');
end;

procedure TPrincipalFrm.LogoffMnuClick(Sender: TObject);
//var
// LastCodSetorUser, LastCodSetor: integer;
// tempstr: string;
begin
{if PrincipalFrm.MDIChildCount < 1 then
 begin
  LastCodSetorUser := CodSetorUser;
  LastCodSetor := CodSetor;

  //------ Login ------
  PrincipalFrm.Enabled := False;
  application.CreateForm(TLoginFrm, LoginFrm);
  LoginFrm.showmodal;
  PrincipalFrm.Enabled := True;

  if CodSetorUser = -1 then
   begin
    CodSetor := LastCodSetorUser;
    CodSetor := LastCodSetor;
   end
  else
   PrincipalFrm.LoginSetup;
 end
else
 application.MessageBox('Há janelas abertas, impossível efetuar Logoff de usuário' +#13+
                        'Feche todas as janelas e tente novamente....',
                        'Informação', mb_ok + mb_iconinformation);
}
end;

procedure TPrincipalFrm.CalculadoraMnuClick(Sender: TObject);
begin
RxCalculator1.Execute;
end;

procedure TPrincipalFrm.AlterarSenhaUsurioMaster1Click(Sender: TObject);
begin
{principalfrm.enabled := False;
application.CreateForm(TPwdUserMasterCadFrm, PwdUserMasterCadFrm);
PwdUserMasterCadFrm.showmodal;
principalfrm.enabled := True;
}end;

procedure TPrincipalFrm.DBInfoMnuClick(Sender: TObject);
begin
{principalfrm.enabled := False;
application.CreateForm(TIBDBInfoFrm, IBDBInfoFrm);
IBDBInfoFrm.ShowModal;
principalfrm.enabled := True;        }
end;

procedure TPrincipalFrm.ListagemdeEncerrantes1Click(Sender: TObject);
begin
 AddAChild(TEncerrantesListFrm, EncerrantesListFrm);
end;

procedure TPrincipalFrm.BombaMnuClick(Sender: TObject);
begin
 AddAChild(TBombaCadFrm, BombaCadFrm);
end;

procedure TPrincipalFrm.BicoMnuClick(Sender: TObject);
begin
AddAChild(TBicoCadFrm, BicoCadFrm);
end;

procedure TPrincipalFrm.FrentistaMnuClick(Sender: TObject);
begin
AddAChild(TFrentistaCadFrm, FrentistaCadFrm);
end;

procedure TPrincipalFrm.CombustivelMnuClick(Sender: TObject);
begin
AddAChild(TProdCombustivelCadFrm, ProdCombustivelCadFrm);
end;

procedure TPrincipalFrm.TanqueMnuClick(Sender: TObject);
begin
 AddAChild(TTanqueCadFrm,TanqueCadFrm)
end;

//Verifica se o cadastro de Bombas está ok
function TPrincipalFrm.VerificaBombas: Boolean;
begin
 Result := True;

 with QryCheck do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select COD_BOMBA from BOMBA');
   Prepare;
   Open;
   FetchAll;
   First;
  end;

 if not QryCheck.RecordCount > 0 then
  begin
   Result := False;

   Application.MessageBox('Não há Bombas cadastradas.' + #13+
                          'Cadastre uma "Bomba" e só então entre na "Monitoria de Bombas".' + #13#13 +
                          'Para Cadastrar uma Bomba, clique em:'+#13+
                          'Programa >Cadastro >Bomba', 'Informação', mb_ok + mb_iconinformation);
  end;
end;

//Verifica se o cadastro de Bicos está ok
function TPrincipalFrm.VerificaBicos: Boolean;
var
 x: Integer;
begin
 Result := True;

 with QryCheck2 do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('select * from BICO where COD_BOMBA = :COD_BOMBA order by ID_BICO');
   Prepare;
   Open;
   FetchAll;
  end;

 while not QryCheck.Eof do
  begin
   if not QryCheck2.RecordCount > 0 then
    begin
     Application.MessageBox('Não há Bicos cadastrados.' + #13+
                            'Cadastre uma "Bico" em uma das Bombas e então entre na "Monitoria de Bombas".' + #13#13 +
                            'Para Cadastrar uma Bico, clique em:'+#13+
                            'Programa >Cadastro >Bico de Bomba', 'Informação', mb_ok + mb_iconinformation);
     break;
    end;

     QryCheck2.First;

     for x := 1 to QryCheck2.RecordCount do
      begin
       if not (QryCheck2['ID_BICO'] = x) then
        begin
         Result := False;
         break;
        end;

       QryCheck2.Next;
      end;

   if not result then
    break;

   QryCheck.Next;
  end;

end;

procedure TPrincipalFrm.ListProdMnuClick(Sender: TObject);
begin
 AddaChild(TProdutoListFrm, ProdutoListFrm);
end;

procedure TPrincipalFrm.CadCliMnuClick(Sender: TObject);
begin
 AddAChild(TClienteCadFrm, ClienteCadFrm);
end;

procedure TPrincipalFrm.ClasseMnuClick(Sender: TObject);
begin
 AddAChild(TClasseCadFrm, ClasseCadFrm);
end;

procedure TPrincipalFrm.ProdutosMnuClick(Sender: TObject);
begin
 AddaChild(TProdutoCadFrm, ProdutoCadFrm);
end;

procedure TPrincipalFrm.GrupoProdMnuClick(Sender: TObject);
begin
 AddAChild(TProdutoGrupoCadFrm, ProdutoGrupoCadFrm);
end;

procedure TPrincipalFrm.SubGrupoProdMnuClick(Sender: TObject);
begin
 AddAChild(TProdutoSubGrupoCadFrm, ProdutoSubGrupoCadFrm);
end;

procedure TPrincipalFrm.FormaContatoMnuClick(Sender: TObject);
begin
 AddaChild(TFormaContatoCadFrm, FormaContatoCadFrm);
end;

procedure TPrincipalFrm.LoadDefaultIniVars;
var
 ArquivoIni: TIniFile;
 Path: string;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);
 try
  Tempo_Digitacao := ArquivoINI.ReadInteger('IBDB', 'TempoDigitacao', 500);
  und_default := ArquivoIni.ReadString('PRODUTO', 'und_default', 'Un');
 finally
   ArquivoIni.Free;
 end;

end;

procedure TPrincipalFrm.ListagemdeVendas1Click(Sender: TObject);
begin
 AddaChild(TVendaListFrm, VendaListFrm);
end;

procedure TPrincipalFrm.GerarSIntegraMnuClick(Sender: TObject);
begin
 principalfrm.Enabled := False;
 application.CreateForm(TSintegra_ListFrm, Sintegra_ListFrm);
 Sintegra_ListFrm.ShowModal;
 principalfrm.Enabled := True;
end;

procedure TPrincipalFrm.CadReducaoZMnuClick(Sender: TObject);
begin
 AddAChild(TSintegraReducaoZCadFrm, SintegraReducaoZCadFrm);
end;

procedure TPrincipalFrm.CadInformanteMnuClick(Sender: TObject);
begin
 AddAChild(TSintegraInfoCadFrm, SintegraInfoCadFrm);
end;

procedure TPrincipalFrm.CadInventarioMnuClick(Sender: TObject);
begin
 AddAChild(TInventarioCadFrm, InventarioCadFrm);
end;

procedure TPrincipalFrm.CadInventario_ItensMnuClick(Sender: TObject);
begin
 AddAChild(TInventario_ItensCadFrm, Inventario_ItensCadFrm);
end;

procedure TPrincipalFrm.SaidaNotaMnuClick(Sender: TObject);
begin
 AddAChild(TSaidaNFCadFrm, SaidaNFCadFrm);
end;

procedure TPrincipalFrm.EntradaNotaMnuClick(Sender: TObject);
begin
 AddAChild(TEntradaNFCadFrm, EntradaNFCadFrm);
end;

procedure TPrincipalFrm.ConfigNotaMnuClick(Sender: TObject);
begin
 if not PrincipalFrm.AddAChild(TSaidaNFConfigFrm, SaidaNFConfigFrm) then
   application.CreateForm(tSaidaNFConfigFrm, SaidaNFConfigFrm);

 SaidaNFConfigFrm.bitbtn1.tag := 1;
 SaidaNFConfigFrm.showmodal;
 SaidaNFConfigFrm.Free;
end;

procedure TPrincipalFrm.ListSaidaNotaMnuClick(Sender: TObject);
begin
 AddAChild(TSaidaNFListFrm, SaidaNFListFrm);
end;

procedure TPrincipalFrm.ListEntradaNotaMnuClick(Sender: TObject);
begin
 AddAChild(TEntradaNFListFrm, EntradaNFListFrm);
end;

end.




