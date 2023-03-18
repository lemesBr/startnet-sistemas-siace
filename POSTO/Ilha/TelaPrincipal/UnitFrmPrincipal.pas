unit UnitFrmPrincipal;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 Menus, Buttons, ExtCtrls, ComCtrls, StdCtrls, ToolWin, ImgList, ShellApI,
 RxCalc, jpeg, IBServices, RxGIF, OleCtrls, SHDocVw, StdActns, ActnList,
 ActnMan, Placemnt, INIFiles, DB, IBCustomDataSet, IBQuery, QRExport,
 ClasseBICO, ClasseCUB, ACBrBase, ACBrCalculadora;

type
 TPrincipalFrm = class(TForm)
   StatusBar1: TStatusBar;
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
   SpeedButton10: TSpeedButton;
   SpeedButton11: TSpeedButton;
   Panel2: TPanel;
   LogoLabel: TLabel;
   Image1: TImage;
   FormStorage1: TFormStorage;
   SpeedButton12: TSpeedButton;
   QryCaixa: TIBQuery;
    Label4: TLabel;
    Label2: TLabel;
    mmcadastro: TMainMenu;
    Cadastro1: TMenuItem;
    ModuloVendasMnu: TMenuItem;
    SistemaMnu: TMenuItem;
    ConfigMnu: TMenuItem;
    Pessoas1: TMenuItem;
    LogoffMnu: TMenuItem;
    Sair1: TMenuItem;
    FerramentasMnu: TMenuItem;
    CalculadoraMnu: TMenuItem;
    MnuLinha: TMenuItem;
    MnuNovo: TMenuItem;
    MnuSalva: TMenuItem;
    MnuAltera: TMenuItem;
    MnuCancela: TMenuItem;
    MnuExclui: TMenuItem;
    MnuLocaliza: TMenuItem;
    MnuGera: TMenuItem;
    MnuImprime: TMenuItem;
    MnuLimpa: TMenuItem;
    N4: TMenuItem;
    MnuRefresh: TMenuItem;
    Fechar1: TMenuItem;
    Impressoras1: TMenuItem;
    IniciodeDia: TMenuItem;
    N22: TMenuItem;
    LeituraX1: TMenuItem;
    ReduoZ1: TMenuItem;
    N19: TMenuItem;
    CancelaltimoCupom1: TMenuItem;
    N20: TMenuItem;
    StatusdoECF1: TMenuItem;
    StatusdeTransaodoECF1: TMenuItem;
    ProgramaHorriodeVero1: TMenuItem;
    Ajuda2: TMenuItem;
    TpicosdaAjuda1: TMenuItem;
    N1: TMenuItem;
    SobreoSoftware1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButtonVendas: TToolButton;
    CaixaMnu: TMenuItem;
    OpcoesCaixaMnu: TMenuItem;
    N2: TMenuItem;
    AberturaMnu: TMenuItem;
    FechamentoMnu: TMenuItem;
    SangriaMnu: TMenuItem;
    ReforcoMnu: TMenuItem;
    N3: TMenuItem;
    ModuloLoginMnu: TMenuItem;
    AlterarSenhaUsurioMaster1: TMenuItem;
    Setor1: TMenuItem;
    Usurio1: TMenuItem;
    RxCalculator1: TACBrCalculadora;
   procedure SpeedButton4Click(Sender: TObject);
   procedure SobreoSoftware1Click(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure Sair1Click(Sender: TObject);
   procedure TpicosdaAjuda1Click(Sender: TObject);

   procedure LoadDefaultIniVars;
   function AddAChild(MyFormCompClass: TComponentClass; var Reference): boolean;
   procedure FormShow(Sender: TObject);
   procedure CamposNaoPreenchidos(Sender: TObject);
   procedure CamposPreenchidos(Sender: TObject);
   procedure Hyperlink_On(Sender: TObject);
   procedure Hyperlink_Off(Sender: TObject);
   
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure ConfigMnuClick(Sender: TObject);
   procedure SpeedButton3Click(Sender: TObject);
   procedure SpeedButton11Click(Sender: TObject);
   procedure SpeedButton1Click(Sender: TObject);
   procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
     Panel: TStatusPanel; const Rect: TRect);
   procedure SpeedButton5Click(Sender: TObject);
   procedure SpeedButton2Click(Sender: TObject);
   procedure SpeedButton10Click(Sender: TObject);
   procedure SpeedButton7Click(Sender: TObject);
   procedure SpeedButton8Click(Sender: TObject);
   procedure SpeedButton9Click(Sender: TObject);
   procedure CalculadoraMnuClick(Sender: TObject);
   procedure LoginSetup;
   procedure LeituraX1Click(Sender: TObject);
   procedure ReduoZ1Click(Sender: TObject);
   procedure CancelaltimoCupom1Click(Sender: TObject);
   procedure StatusdoECF1Click(Sender: TObject);
   procedure StatusdeTransaodoECF1Click(Sender: TObject);
   procedure ProgramaHorriodeVero1Click(Sender: TObject);
   procedure IniciodeDiaClick(Sender: TObject);
    procedure ModuloVendasMnuClick(Sender: TObject);


 private
   { Private declarations }
 public
   { Public declarations }
 end;

var

 PrincipalFrm: TPrincipalFrm;

 CodSetor, CodSetorUser, Tempo_Digitacao: integer;
 ValorCotacao: double;
 Fiscal, Preview: Boolean;
 StatusBar: string;

 CUB: TCUB;
 
implementation

uses Unit3SobreCad, UnitDataM1,
 UnitFuncoes, UnitConfig,
 Unit_ECF_Global,
 Unit_ECF_Bematech_Fi2, UnitConsultaGeral, Unit13Venda,
  Unit_ECF_Bematech_Fi1, Unit_Connect_Sintegra32;

{$R *.DFM}

procedure tPrincipalFrm.LoginSetup;
var
 tempstr: string;
begin
 screen.cursor := crHourGlass;
 tempstr := PrincipalFrm.StatusBar1.Panels[0].Text;
 PrincipalFrm.StatusBar1.Panels[0].Text := 'Carregando Configurações do ' +
   PrincipalFrm.StatusBar1.Panels[1].Text;
 UserLogin(PrincipalFrm);

 //--- Trata Itens de Menu (Visiveis somente se 1 subitem visivel após o login) ---
 SistemaMnu.Visible := (ModuloLoginMnu.Visible) or
   (ConfigMnu.Visible);

// ModuloVendasMnu.Visible := (VendasMnu.Visible) or
//   (AtendenteMnu.Visible);

 CaixaMnu.Visible            := (OpcoesCaixaMnu.Visible) or
                                (AberturaMnu.Visible) or
                                (FechamentoMnu.Visible) or
                                (SangriaMnu.Visible) or
                                (ReforcoMnu.Visible);

 PrincipalFrm.StatusBar1.Panels[0].Text := tempstr;
 screen.cursor := crDefault;
end;

procedure tPrincipalFrm.CamposNaoPreenchidos(Sender: TObject);
begin
 TLabel(Sender).font.color := clred;
 TLabel(Sender).font.Style := [fsbold];
 TLabel(Sender).OnMouseMove := nil;
 TLabel(Sender).OnMouseLeave := nil;
end;

procedure tPrincipalFrm.CamposPreenchidos(Sender: TObject);
begin
 TLabel(Sender).font.color := clWindowText;
 TLabel(Sender).font.Style := [];
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

function tPrincipalFrm.AddAChild(MyFormCompClass: TComponentClass;
 var Reference): boolean;
var                                   //function to check if the specified form is already open;
 i: integer;
begin
 Result := False;

 if DM1.IBConectado then
  begin
   screen.cursor := crHourGlass;

   if MdiChildCount > 0 then
     for i := 0 to MDIChildCount - 1 do
      begin
       if MDIChildren[i] = TForm(Reference) then
        begin
         Result := True;
         if (TForm(Reference).Canfocus) and (TForm(Reference).Enabled)
           and (TForm(Reference).Visible) then
          begin
           TForm(Reference).BringtoFront;
           TForm(Reference).SetFocus;
          end;
         break;
        end
      end;

   if Result = False then
    begin
     lockwindowupdate(Handle);
     Application.createform(MyFormCompClass, Reference);
     lockwindowupdate(0);
    end;
   screen.cursor := crDefault;
  end;
end;


procedure TPrincipalFrm.SpeedButton4Click(Sender: TObject);
begin
 if mdichildcount = 0 then
   self.Close
 else
  begin
   ActiveMdiChild.Close;
   StatusBar1.Panels.Items[0].Text := '';
  end;
end;

procedure TPrincipalFrm.SobreoSoftware1Click(Sender: TObject);
begin
 principalfrm.Enabled := False;
 application.CreateForm(tSobreFrm, SobreFrm);
 SobreFrm.showmodal;
 principalfrm.Enabled := True;
end;

procedure TPrincipalFrm.FormCreate(Sender: TObject);
begin
 Fiscal := True;          //Fiscal  - habilitar para compilar no modo fiscal
 //Fiscal := False;       //Não Fiscal  - habilitar para compilar no modo não fiscal
 LoadDefaultIniVars;

 //--- Carrega Background ---
 image1.left := 0;
 image1.top := 0;
 image1.Height := principalfrm.clientheight -
   (principalfrm.statusbar1.Height + principalfrm.panel2.Height);
 image1.Width := principalfrm.panel1.left;

 if fileexists(extractfiledir(application.Exename) + '\background.jpg') then
  image1.Picture.LoadFromFile(extractfiledir(application.Exename) + '\background.jpg')
 else
   image1.Free;

 application.hintcolor := clyellow;
end;

procedure TPrincipalFrm.Sair1Click(Sender: TObject);
begin
 self.Close;
end;

procedure TPrincipalFrm.TpicosdaAjuda1Click(Sender: TObject);
begin
 //--- Executa arquivo de Help ---
 ExecHelpFile;
end;

procedure TPrincipalFrm.LoadDefaultIniVars;
var
 ArquivoIni: TIniFile;
 Path: string;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

 try
   ValorCotacao := ArquivoIni.ReadInteger('COTACAO', 'ValorCotacao', 1);
   TipoECF := ArquivoIni.ReadInteger('ECF', 'TipoECF', ECF_BemaFi2);
   DefTNome := ArquivoIni.ReadString('ECF', 'DefTNome', 'T01');
   DefTVal := ArquivoIni.ReadString('ECF', 'DefTVal', '1700');
   PortaECF := ArquivoIni.ReadInteger('ECF', 'COM', 1);
   Cod_Pdv := ArquivoIni.ReadInteger('ECF', 'codpdv', 0);
   Tempo_Digitacao := ArquivoINI.ReadInteger('IBDB', 'TempoDigitacao', 500);
   Preview := ArquivoIni.ReadBool('NOTAFISCAL', 'EnablePreview', True);

   Msg_P := '';
   if ArquivoINI.ReadBool('ECF', 'EnableMsgP', True) then
     Msg_P := ArquivoINI.ReadString('ECF', 'MsgP', 'TKS Software www.igara.com.br');

   Gaveta_Instalada := ArquivoINI.ReadBool('ECF', 'GavetaInstalada', False);
   Gaveta_Intervencao := ArquivoINI.ReadBool('ECF', 'GavetaInterv', False);
   Gaveta_Teste := ArquivoIni.ReadBool('ECF', 'EnableGavetaTest', False);
   Gaveta_Sanre := ArquivoINI.ReadBool('ECF', 'GavetaSanRe', False);
   Gaveta_Venda := ArquivoINI.ReadBool('ECF', 'GavetaVenda', False);

   LogoLabel.Caption := ArquivoIni.ReadString('USERINFO', 'Nome', 'TKS Software');

   //Carrega dinamicamente as DLLs das impressoras fiscais.
   //Até o presente momento, só para a Bematech Fi1
   if fiscal then
    begin
     Carrega_DLL;
     Abre_Porta_ECF;
    end; 
 finally
   ArquivoIni.Free;
  end;
end;

procedure TPrincipalFrm.FormShow(Sender: TObject);
begin
 //---------Confere estado do Caixa------------
 try
   with QryCaixa do
    begin
     Close;
     UnPrepare;
     sql.Clear;
     sql.add('Select * from CAIXAOPCL where ');
     sql.add('codcaixaopcl  in (Select max(codcaixaopcl) from CAIXAOPCL where (CODPDV = :CodPDV))');
     ParamByName('CodPDV').AsInteger := Cod_Pdv;
     Prepare;
     Open;
    end;

   if QryCaixa['STATE'] = 1 then          //Caixa Aberto
    begin
     Caixa_OPCL := True;                  //if True, it is Opened, else Closed
     FechamentoMnu.Visible := True;
     SangriaMnu.Visible := True;
     ReforcoMnu.Visible := True;
     AberturaMnu.Visible := False;
     StatusBar1.Panels.items[1].Text := 'Caixa Aberto.';
    end
   else
    begin
     Caixa_OPCL := False;
     FechamentoMnu.Visible := False;
     SangriaMnu.Visible := False;
     ReforcoMnu.Visible := False;
     AberturaMnu.Visible := True;
     StatusBar1.Panels.items[1].Text := 'Caixa Fechado.';
    end;
 except
  StatusBar1.Panels.items[1].Text := 'Erro ao ler Status do Caixa...';
 end;
 //--- Tratamento Fiscal ---
 if Fiscal then
  begin
   statusbar1.Panels.Items[2].Text := 'Versão Fiscal';
   Impressoras1.Visible := True;

   case TipoECF of
     ECF_BemaFi1:
        begin
         N22.Visible := False;
         IniciodeDia.Visible := False;
         N20.Visible := False;
         StatusdoECF1.Visible := False;
         StatusdeTransaodoECF1.Visible := False;
         ProgramaHorriodeVero1.Visible := False;
        end;

     ECF_BemaFi2:
        begin
         IniciodeDia.visible := false;
         StatusdeTransaodoECF1.Visible := False;
        end;

     ECF_Sweda, ECF_Zanthus:
        begin
         N22.Visible := False;
         IniciodeDia.Visible := False;
         N20.Visible := False;
         StatusdoECF1.Visible := False;
         StatusdeTransaodoECF1.Visible := False;
        end;
    end;
  end
 else
  begin
   statusbar1.Panels.Items[2].Text := 'Versão Não Fiscal';
   Impressoras1.Visible := False;
  end;
end;

procedure TPrincipalFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := canone;

 if application.MessageBox('Sair do Sistema?' + #13#13 +
   'Lembretes:'#13'- Realize "Cópias de Segurança" periódicas.',
   'Confirmação', mb_YesNo + mb_iconQuestion) = idYes then
  begin
   //logtofile('Att  :: Finalizado Aplicativo "Tk-Frente de Caixa v2.0"', True);
   action := cafree;

   ConsultaGeralListFrm.Free;
  end;
end;

procedure TPrincipalFrm.ConfigMnuClick(Sender: TObject);
begin
 principalfrm.Enabled := False;
 application.createform(TConfigFrm, ConfigFrm);
 ConfigFrm.showmodal;
 principalfrm.Enabled := True;
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

procedure TPrincipalFrm.StatusBar1DrawPanel(StatusBar: TStatusBar;
 Panel: TStatusPanel; const Rect: TRect);
begin
 {
 Case Panel.Index of
  2:
  begin
   if StatusBar1.Panels.items[0].text = 'Caixa Aberto.' then
    Imagelist3.Draw(StatusBar.Canvas,Rect.Left+2,Rect.Top,16);    //Caixa Aberto
   if StatusBar1.Panels.items[0].text = 'Caixa Fechado.' then
    Imagelist3.Draw(StatusBar.Canvas,Rect.Left+2,Rect.Top,17);    //Caixa Fechado
  end;
 end;
 }
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

procedure TPrincipalFrm.CalculadoraMnuClick(Sender: TObject);
begin
 RxCalculator1.Execute;
end;

procedure TPrincipalFrm.LeituraX1Click(Sender: TObject);
begin
 StatusBar := statusbar1.Panels[0].Text;
 statusbar1.Panels[0].Text := 'Enviado: Leitura X. Aguarde...';
 Leitura_X;
 statusbar1.Panels[0].Text := StatusBar
end;


procedure TPrincipalFrm.ReduoZ1Click(Sender: TObject);
begin
 StatusBar := statusbar1.Panels[0].Text;
 statusbar1.Panels[0].Text := 'Enviado: Redução Z. Aguarde...';
 Reducao_Z;
 statusbar1.Panels[0].Text := StatusBar
end;

procedure TPrincipalFrm.CancelaltimoCupom1Click(Sender: TObject);
begin
 if application.messagebox('Tem certeza que deseja cancelar o último cupom fiscal?',
                           'Atenção',
                           mb_yesno + mb_iconquestion) = idyes then
  begin
   StatusBar := statusbar1.Panels[0].Text;
   statusbar1.Panels[0].Text := 'Enviado: Cancelamento de Cupom. Aguarde...';
   Cancela_Cupom;
   statusbar1.Panels[0].Text := StatusBar;
  end;
end;

procedure TPrincipalFrm.StatusdoECF1Click(Sender: TObject);
begin
 StatusBar := statusbar1.Panels[0].Text;
 statusbar1.Panels[0].Text := 'Enviado: Status do ECF. Aguarde...';
 Status_ECF;
 statusbar1.Panels[0].Text := StatusBar
end;

procedure TPrincipalFrm.StatusdeTransaodoECF1Click(Sender: TObject);
begin
 StatusBar := statusbar1.Panels[0].Text;
 statusbar1.Panels[0].Text := 'Enviado: Status de Transação. Aguarde...';
 Status_Transacao;
 statusbar1.Panels[0].Text := StatusBar
end;

procedure TPrincipalFrm.ProgramaHorriodeVero1Click(Sender: TObject);
begin
 StatusBar := statusbar1.Panels[0].Text;
 statusbar1.Panels[0].Text := 'Enviado: Horário de Verão. Aguarde...';
 Horario_Verao;
 statusbar1.Panels[0].Text := StatusBar
end;

procedure TPrincipalFrm.IniciodeDiaClick(Sender: TObject);
var
 Tipo, SubTipo, Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
 Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z, Contador_Reinicio,
 Valor_Venda_Bruta, Valor_Total_Geral, Brancos_60M, S_Trib_Aliquota,
 Valor_TParcial, Brancos_60A, TempStr: Shortstring;
 i, idx: integer;
begin
 //--- Registro60Mestre_ECF - Registro de informação de operações/prestações realizadas com ECF ---
 //Função para tratar arquivo de retorno do ECF que gera registro60Mestre
 if R60M_Bematech_Fi2 then;
  begin
   TempStr := Registro60M_ECF(extractfilepath(application.exename) + 'retorno.txt',
     //Arquivo de Retorno do ECF contendo as informações a serem lidas
     '1',
     //Modelo do ECF que gerou o arquivo de retorno
     Tipo,
     SubTipo,
     Data_Emissao,
     Nro_Serie_Eqp,
     Nro_Ordem_Eqp,
     Modelo_Doc,
     Nro_Contador_Inicio,
     Nro_Contador_Fim,
     Nro_Contador_Z,
     Contador_Reinicio,
     Valor_Venda_Bruta,
     Valor_Total_Geral,
     Brancos_60M
     );

   if R60A_Bematech_Fi2 then
    begin
     i := Registro60A_Qnt(extractfilepath(application.exename) + 'retorno.txt',
       //Arquivo de Retorno do ECF contendo as informações a serem lidas
       '1'                                                       //Modelo do ECF que gerou o arquivo de retorno
       );

     for idx := 0 to i - 1 do
      begin
       TempStr := Registro60A_ECF(extractfilepath(application.exename) + 'retorno.txt',
         //Arquivo de Retorno do ECF contendo as informações a serem lidas
         '1',
         //Modelo do ECF que gerou o arquivo de retorno
         idx,
         Tipo,
         SubTipo,
         Data_Emissao,
         Nro_Serie_Eqp,
         S_Trib_Aliquota,
         Valor_TParcial,
         Brancos_60A
         );
      end;
    end;

   case TipoECF of
     ECF_BemaFi2: Abre_Dia_Bematech_Fi2;          //MP20Fi2
    end;
  end;
end;

procedure TPrincipalFrm.ModuloVendasMnuClick(Sender: TObject);
begin
 application.createform(TVendaFrm, VendaFrm);
 VendaFrm.showmodal;
 VendaFrm.Free;
end;

end.
