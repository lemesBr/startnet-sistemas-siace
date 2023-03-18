unit MonitoriaBombas;

//TODO: como alterar o frentista de uma bomba durante a monitoria?!
//TODO: Como alterar produto de um bico durante a monitoria?
//TODO: Colocar parâmetro no .INI para indicar se sistema/usuario trabalha ou não com Preset, com ECF conectado, se pode dar "Comandos de pista", se pode intervir nos estados
//TODO: Ler Unidade de venda do produto do BD
//TODO: Salvar em BicoEnc venda com Unidade de Venda

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IBSQL, DB, IBCustomDataSet, Mask,
  ToolEdit, CurrEdit, ClasseCUB, Menus, UnitFuncoes, ClasseBomba, IBQuery,
  jpeg, RxGIF, ComCtrls, Buttons, GIFImage;

type
  TMonitoriaFrm = class(TForm)
    AbastecendoImg: TImage;
    BicoForaImg: TImage;
    PausaImg: TImage;
    AutorizadaImg: TImage;
    NaoAutorizadaImg: TImage;
    FimDeVendaImg: TImage;
    ForadoArImg: TImage;
    FechadaImg: TImage;
    Panel4: TPanel;
    Label17: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    IBSQL: TIBSQL;
    LabelTotalPagar: TCurrencyEdit;
    Label1: TLabel;
    Panel1: TPanel;
    LabelLitros: TCurrencyEdit;
    Label3: TLabel;
    Panel3: TPanel;
    LabelPrcLitro: TCurrencyEdit;
    Bevel2: TBevel;
    PopupMenu1: TPopupMenu;
    LegendaPopMnu: TMenuItem;
    GBoxBombaXX: TGroupBox;
    StatusImageXX: TImage;
    StatusLabelXX: TLabel;
    QryBomba: TIBQuery;
    QryBico: TIBQuery;
    ScrollBox1: TScrollBox;
    BoxBomba: TGroupBox;
    Estado: TImage;
    Status: TLabel;
    TotalPagar: TLabel;
    Litros: TLabel;
    Produto: TShape;
    LabelProduto: TLabel;
    BitBtn6: TBitBtn;
    Image15: TImage;
    StatusBar1: TStatusBar;
    BitBtn5: TBitBtn;
    QryProduto: TIBQuery;
    QryFrentista: TIBQuery;
    QryTanque: TIBQuery;
    QryFrentistaCOD_FRENTISTA: TIntegerField;
    QryFrentistaID_FRENTISTA: TIntegerField;
    QryFrentistaNOME: TIBStringField;
    QryBombaCOD_BOMBA: TIntegerField;
    QryBombaID_BOMBA: TIntegerField;
    QryBombaCOD_FRENTISTA: TIntegerField;
    QryBombaQNT_BICO: TIntegerField;
    QryBombaAUTO_AUTORIZA: TSmallintField;
    QryProdutoCODIGO: TIntegerField;
    QryProdutoID_PRODUTOS: TIntegerField;
    QryProdutoDESCRICAO: TIBStringField;
    QryProdutoCOR: TIntegerField;
    QryProdutoPRECO_VENDA: TIBBCDField;
    QryProdutoDESC_UNIDADE: TIBStringField;
    QryBicoCOD_BICO: TIntegerField;
    QryBicoCOD_BOMBA: TIntegerField;
    QryBicoCOD_FRENTISTA: TIntegerField;
    QryBicoCOD_PRODUTOS: TIntegerField;
    QryBicoCOD_TANQUE: TIntegerField;
    QryBicoID_BICO: TIntegerField;
    QryTanqueCOD_TANQUE: TIntegerField;
    QryTanqueID_TANQUE: TIntegerField;
    QryTanqueCOD_PRODUTOS: TIntegerField;

    procedure OnStatusBombaChange(Sender: TObject; NewStatus: Char; StatusDesc: String);
    procedure OnLerVendaBomba(Sender: TObject; id_Produto, NivelDePreco, Mililitros, Dinheiro, Preco: LongInt; Nome_Produto: String);
    procedure OnLerTotaisBico(Sender: TObject; EncerranteLitros, EncerranteDinheiro: Integer; Preco: LongInt; FimdeVenda: Boolean);
    procedure OnBombaRTM(Sender: TObject; RealTimeMoney_Dinheiro: LongInt);

    Function Abre_Querys: Boolean;
    procedure Cria_BoxBomba(id_bomba: byte);
    procedure Exclue_DefaultBoxBomba;

    procedure GBoxBomba1Click(Sender: TObject);
    procedure GBoxBomba1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FecharBombaPopMnuClick(Sender: TObject);
    procedure LegendaPopMnuClick(Sender: TObject);
    procedure InfoBombaPopMnuClick(Sender: TObject);
    procedure PresetDinheiroPopMnuClick(Sender: TObject);
    procedure PresetLitrosPopMnuClick(Sender: TObject);
    procedure ImprimirCFPopMnuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonitoriaFrm: TMonitoriaFrm;

  id_Bomba_Default: integer;
  idx_bomba: integer = 0;

  CUB: TCUB;

  LogoPath: string;

implementation

uses ClasseBico, CUBUtils, InfoBombaCUB,
  BicoPresetLitrosDinheiro, LegendaStatus, UnitImprCF,
  Unit_Comandos_Pista, UnitDataM1, dllcompanytec;

{$R *.dfm}

procedure TMonitoriaFrm.OnStatusBombaChange(Sender: TObject; NewStatus: Char; StatusDesc: String);
begin
 logtofile('OnStatusBombaChange - Bomba ' + inttostr(TBomba(Sender).id_Bomba) +
            '  Status: ' + NewStatus + ' ' + StatusDesc, True);

 //--- Altera Informações de Bico na Tela de Monitoria---
 if assigned(MonitoriaFrm) then
  begin
   //--- no Label de Status para novo Status ---
   TLabel(MonitoriaFrm.FindComponent('Status' + inttostr(TBomba(Sender).id_Bomba - 1))).Caption := StatusDesc;

   //--- na Imagem de Status para nova Imagem de Status ---
   case NewStatus of
    SDESCONHECIDO: TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := ForadoArImg.Picture.Bitmap;
    SFORADOAR:     TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := ForadoArImg.Picture.Bitmap;
    SDISPONIVEL:   TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := NaoAutorizadaImg.Picture.Bitmap;
    SABASTECENDO:  TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := AbastecendoImg.Picture.Bitmap;
    sFIMDEVENDA:   TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := FimDeVendaImg.Picture.Bitmap;
    SBICOFORA:     TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := BicoForaImg.Picture.Bitmap;
    SBOMBAFECHADA: TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := FechadaImg.Picture.Bitmap;
    SPAUSA:        TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := PausaImg.Picture.Bitmap;
    SAUTORIZADA:   TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap := AutorizadaImg.Picture.Bitmap;
   end;
  end;

 //--- Altera Informações de Bico Default ---
 if TBomba(Sender).id_Bomba = id_Bomba_Default then
  begin
   //--- na Tela de Monitoria ---
   if assigned(MonitoriaFrm) then
    begin
     MonitoriaFrm.StatusLabelXX.Caption := StatusDesc;
     MonitoriaFrm.StatusImageXX.Picture.Bitmap := TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap;

     //--- Trata Botões de acordo com NewStatus ---
     if NewStatus in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
      begin
       MonitoriaFrm.Bitbtn1.Enabled := true;
       MonitoriaFrm.Bitbtn3.Enabled := true;
       MonitoriaFrm.Bitbtn4.Enabled := true;
      end
     else
      begin
       MonitoriaFrm.Bitbtn1.Enabled := false;
       MonitoriaFrm.Bitbtn3.Enabled := false;
       MonitoriaFrm.Bitbtn4.Enabled := false;
      end;
    end;

   //--- na Tela de Preset ---
   if assigned(PresetBicoFrm) then
    begin
     //--- Trata Botões de acordo com NewStatus ---
     if NewStatus in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
      begin
       PresetBicoFrm.Bitbtn3.Enabled := true;
       PresetBicoFrm.Bitbtn4.Enabled := true;
      end
     else
      begin
       PresetBicoFrm.Bitbtn3.Enabled := false;
       PresetBicoFrm.Bitbtn4.Enabled := false;
      end
    end;

   //--- na Tela de Informações de Bico Específico ---
   if assigned(EncerrantesListMFrm) then
    begin
     EncerrantesListMFrm.StatusLabelXX.Caption := StatusDesc;
     EncerrantesListMFrm.StatusImageXX.Picture.Bitmap := TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(TBomba(Sender).id_Bomba - 1))).Picture.Bitmap;

     //--- Trata Botões de Acordo com o Estado da Bomba
     Case CUB.Bomba[id_Bomba_Default - 1].StatusBomba of
      SFIMDEVENDA,
      SDESCONHECIDO,
      SFORADOAR:
       begin
        EncerrantesListMFrm.Bitbtn01.enabled := False;
        EncerrantesListMFrm.bitbtn02.enabled := False;
       end;
      SDISPONIVEL,
      SBICOFORA,
      SPAUSA:
       begin
        EncerrantesListMFrm.Bitbtn01.enabled := True;
        EncerrantesListMFrm.bitbtn02.enabled := True;
        EncerrantesListMFrm.Bitbtn01.caption := 'F1 - Liberar';
       end;
      SABASTECENDO:
       begin
        EncerrantesListMFrm.Bitbtn01.enabled := True;
        EncerrantesListMFrm.bitbtn02.enabled := True;
        EncerrantesListMFrm.Bitbtn01.caption := 'F1 - Pausar';
       end;
      SAUTORIZADA:
       begin
        EncerrantesListMFrm.Bitbtn01.enabled := True;
        EncerrantesListMFrm.bitbtn02.enabled := True;
        EncerrantesListMFrm.Bitbtn01.caption := 'F1 - Desautorizar';
       end;
      SBOMBAFECHADA:
       begin
        EncerrantesListMFrm.Bitbtn01.enabled := True;
        EncerrantesListMFrm.bitbtn02.enabled := False;
        EncerrantesListMFrm.Bitbtn01.caption := 'F1 - Abrir';
       end;
     end;

    end;
  end;
end;

procedure TMonitoriaFrm.OnLerVendaBomba(Sender: TObject; id_Produto, NivelDePreco, Mililitros, Dinheiro, Preco: LongInt; Nome_Produto: String);
begin
 logtofile('OnLerVendaBomba - Bomba ' + inttostr(TBomba(Sender).id_Bomba) +
           '  Nível de Preço: ' + inttostr(NivelDePreco) +
           '  MiliLitros: ' + inttostr(Mililitros) +
           '  Dinheiro: ' + floattostr(dinheiro/100) +
           '  Preço: ' + inttostr(preco), True);

 //--- Altera Informações de Bomba ---
 if assigned(MonitoriaFrm) then
  begin
   TLabel(MonitoriaFrm.FindComponent('Litros' + inttostr(TBomba(Sender).id_Bomba - 1))).Caption     := formatcurr('###,##0.000', Mililitros/1000);
   TLabel(MonitoriaFrm.FindComponent('TotalPagar' + inttostr(TBomba(Sender).id_Bomba - 1))).Caption := 'R$ ' + formatcurr('###,##0.00', Dinheiro/100);
   //TODO: Mostrar cor do ultimo produto vendido no Shape
  end;

 //--- Altera Informações de Bomba Default ---
 if TBomba(Sender).id_Bomba = id_Bomba_Default then
  begin
   //--- na Tela de Monitoria ---
   if assigned(MonitoriaFrm) then
    begin
     MonitoriaFrm.LabelProduto.Caption  := Nome_Produto;
     MonitoriaFrm.LabelPrcLitro.value   := preco/1000;
     MonitoriaFrm.LabelLitros.value     := Mililitros/1000;
     MonitoriaFrm.LabelTotalPagar.value := Dinheiro/100;
    end;
  end;
end;

procedure TMonitoriaFrm.OnLerTotaisBico(Sender: TObject; EncerranteLitros, EncerranteDinheiro: integer; Preco: LongInt; FimdeVenda: Boolean);
var
 x: string;
begin
 LogToFile('OnLerTotaisBico - Bico ' + inttostr(TBico(Sender).id_Bico) +
           '  EncerranteLitros: ' + inttostr(EncerranteLitros) +
           '  EncerranteDinheiro: ' + inttostr(EncerranteDinheiro) +
           '  Preço: ' + inttostr(preco), True);

 //--- Altera Info de Encerrantes Bico na Tela de Informações de Bomba Específica ---
 x := inttostr(TBico(Sender).id_Bico);

 if TBico(Sender).id_Bomba = id_Bomba_Default then
  begin
   if assigned(EncerrantesListMFrm) then
    begin
     //--- Encerrante em Litros ---
     if not varisnull(TBico(Sender).Encerrante_Litros) then
      TLabel(EncerrantesListMFrm.FindComponent('LabelEncLitros' + x)).Caption := formatcurr('###,##0.000', TBico(Sender).Encerrante_Litros/1000);

     //--- Encerrante em Dinheiro ---
     if not varisnull(TBico(Sender).Encerrante_Dinheiro) then
      TLabel(EncerrantesListMFrm.FindComponent('LabelEncDinheiro' + x)).Caption := 'R$ ' + formatcurr('###,##0.00', TBico(Sender).Encerrante_Dinheiro/100);

     //---Encerrante Total da Bomba em Dinheiro
     {label27.caption := formatcurr('###,##0.00', CUB.Bomba[id_Bomba_Default - 1].Bico[0].Encerrante_Dinheiro/100 +
                                                 CUB.Bomba[id_Bomba_Default - 1].Bico[1].Encerrante_Dinheiro/100 +
                                                 CUB.Bomba[id_Bomba_Default - 1].Bico[2].Encerrante_Dinheiro/100 +
                                                 CUB.Bomba[id_Bomba_Default - 1].Bico[3].Encerrante_Dinheiro/100);
     }
     //--- Mililitros ---
     if not varisnull(TBico(Sender).Mililitros) then
      TLabel(EncerrantesListMFrm.FindComponent('LabelLitros' + x)).Caption := formatcurr('###,###,##0.00', TBico(Sender).Mililitros/1000);

     //--- Dinheiro ---
     if not varisnull(TBico(Sender).Dinheiro) then
      TLabel(EncerrantesListMFrm.FindComponent('LabelTotalPagar' + x)).Caption := 'R$ ' + formatcurr('###,###,##0.00', TBico(Sender).Dinheiro/100);

     //--- Ultima Venda ---
     TGroupBox(EncerrantesListMFrm.FindComponent('LabelUltVenda' + x)).Caption := DateTimeToStr(TBico(Sender).UltimaVenda) + ' ';
     EncerrantesListMFrm.Label19.Caption := DateTimeToStr(TBico(Sender).UltimaVenda);

     //--- Bico Ultima Venda ---
     EncerrantesListMFrm.Label23.caption := 'Bico 0' + x;
    end;
  end;

 //--- Insere registro de Encerrantes por Bico no Banco de Dados ---
 if FimDeVenda then
  begin
   with IBSQL do
    begin
     //--- Registra venda na tabela de encerrantes ---
     close;
     SQL.clear;
     SQL.Add('insert into BICOENC (ID_BICO, ID_BOMBA, COD_FRENTISTA, ID_PRODUTOS, ENC_LITROS, ENC_DINHEIRO,');
     SQL.Add('PRODUTOS_DESC, NIVEL_PRECO, LITROS, DINHEIRO, PRECO, DATAHORA, ID_TANQUE, UNIDADE) values');
     SQL.Add('(:ID_BICO, :ID_BOMBA, :COD_FRENTISTA, :ID_PRODUTOS, :ENC_LITROS, :ENC_DINHEIRO,');
     SQL.Add(':PRODUTOS_DESC, :NIVEL_PRECO, :LITROS, :DINHEIRO, :PRECO, :DATAHORA, :ID_TANQUE, :UNIDADE)');
     ParamByName('ID_BICO').asinteger      := TBico(Sender).id_Bico;
     ParamByName('ID_BOMBA').asinteger     := TBico(Sender).id_Bomba;
     ParamByName('COD_FRENTISTA').asinteger := CUB.Bomba[TBico(Sender).id_Bomba - 1].cod_frentista;
     ParamByName('ID_PRODUTOS').asinteger  := TBico(Sender).id_Produto;
     ParamByName('ID_TANQUE').asinteger    := TBico(Sender).cod_Tanque;
     ParamByName('ENC_LITROS').asfloat      := EncerranteLitros/1000;
     ParamByName('ENC_DINHEIRO').asfloat    := EncerranteDinheiro/100;
     ParamByName('PRODUTOS_DESC').asstring  := TBico(Sender).Nome_Produto;
     ParamByName('NIVEL_PRECO').asinteger   := TBico(Sender).NiveldePreco;
     ParamByName('LITROS').asfloat          := TBico(Sender).Mililitros/1000;
     ParamByName('DINHEIRO').asfloat        := TBico(Sender).Dinheiro/100;
     ParamByName('PRECO').asfloat           := Preco/1000;
     ParamByName('DATAHORA').AsDateTime     := now;
     parambyname('UNIDADE').asstring        := TBico(Sender).Unidade;
     Prepare;
     ExecQuery;

     //--- Registra venda na tabela temporária de encerrantes (Software Ilha)---
     close;
     SQL.clear;
     SQL.Add('insert into BICOENC_TEMP (ID_BICO, ID_BOMBA, COD_FRENTISTA, ID_PRODUTOS, ENC_LITROS, ENC_DINHEIRO,');
     SQL.Add('PRODUTOS_DESC, NIVEL_PRECO, LITROS, DINHEIRO, PRECO, DATAHORA, ID_TANQUE, UNIDADE) values');
     SQL.Add('(:ID_BICO, :ID_BOMBA, :COD_FRENTISTA, :ID_PRODUTOS, :ENC_LITROS, :ENC_DINHEIRO,');
     SQL.Add(':PRODUTOS_DESC, :NIVEL_PRECO, :LITROS, :DINHEIRO, :PRECO, :DATAHORA, :ID_TANQUE, :UNIDADE)');
     ParamByName('ID_BICO').asinteger       := TBico(Sender).id_Bico;
     ParamByName('ID_BOMBA').asinteger      := TBico(Sender).id_Bomba;
     ParamByName('COD_FRENTISTA').asinteger := CUB.Bomba[TBico(Sender).id_Bomba - 1].cod_frentista;
     ParamByName('ID_PRODUTOS').asinteger   := TBico(Sender).id_Produto;
     ParamByName('ID_TANQUE').asinteger     := TBico(Sender).cod_Tanque;
     ParamByName('ENC_LITROS').asfloat      := EncerranteLitros/1000;
     ParamByName('ENC_DINHEIRO').asfloat    := EncerranteDinheiro/100;
     ParamByName('PRODUTOS_DESC').asstring  := TBico(Sender).Nome_Produto;
     ParamByName('NIVEL_PRECO').asinteger   := TBico(Sender).NiveldePreco;
     ParamByName('LITROS').asfloat          := TBico(Sender).Mililitros/1000;
     ParamByName('DINHEIRO').asfloat        := TBico(Sender).Dinheiro/100;
     ParamByName('PRECO').asfloat           := Preco/1000;
     ParamByName('DATAHORA').AsDateTime     := now;
     parambyname('UNIDADE').asstring        := TBico(Sender).Unidade;
     Prepare;
     ExecQuery;

     //--- Deduz estoque do produto ---
     close;
     SQL.clear;
     SQL.Add('update PRODUTOS set ESTOQUE = ESTOQUE - :VOLUME where CODIGO = :COD_PRODUTOS');
     ParamByName('COD_PRODUTOS').asinteger := TBico(Sender).cod_produto;
     ParamByName('VOLUME').asfloat         := TBico(Sender).Mililitros/1000;
     Prepare;
     ExecQuery;

     //--- Deduz volume atual do tanque específico do bico ---
     close;
     SQL.clear;
     SQL.Add('update TANQUE set LITROS_ATUAL = LITROS_ATUAL - :VOLUME where COD_PRODUTOS = :COD_PRODUTOS');
     ParamByName('COD_PRODUTOS').asinteger := TBico(Sender).cod_Produto;
     ParamByName('VOLUME').asfloat         := TBico(Sender).Mililitros/1000;
     Prepare;
     ExecQuery;

     Transaction.CommitRetaining;
    end;

  end;
end;

procedure TMonitoriaFrm.OnBombaRTM(Sender: TObject; RealTimeMoney_Dinheiro: LongInt);
begin
 LogToFile('OnBombaRTM - Bomba ' + inttostr(TBomba(Sender).id_Bomba) +
           '  RTM: ' + inttostr(RealTimeMoney_Dinheiro), True);

 //--- Altera Informações de Real Time Money para Bico Default ---
 if TBomba(Sender).id_Bomba = id_Bomba_Default then
  begin
   //--- na Tela de Monitoria ---
   if assigned(MonitoriaFrm) then
    begin
     LabelProduto.Caption  := '';
     LabelPrcLitro.Value   := 0;
     LabelLitros.Value     := 0;
     LabelTotalPagar.value := RealTimeMoney_Dinheiro/100;
    end;
  end;
end;

procedure TMonitoriaFrm.GBoxBomba1Click(Sender: TObject);
begin
 //TODO: Usar o TAG não é uma boa opção!
 if TComponent(Sender).Tag <> id_Bomba_Default then
  begin
   CUB.Bomba[id_Bomba_Default - 1].RTMActive := False;

   id_Bomba_Default := TComponent(Sender).Tag;

   GBoxBombaXX.Caption          := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(id_Bomba_Default - 1))).Caption;
   GBoxBombaXX.Tag              := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(id_Bomba_Default - 1))).Tag;
   StatusLabelXX.caption        := TLabel(MonitoriaFrm.FindComponent('Status' + inttostr(id_Bomba_Default - 1))).Caption;
   StatusImageXX.Picture.Bitmap := TImage(MonitoriaFrm.FindComponent('Estado' + inttostr(id_Bomba_Default - 1))).Picture.Bitmap;

   if not (CUB.Bomba[id_Bomba_Default - 1].StatusBomba in [SABASTECENDO]) then
    begin
     LabelProduto.caption  := CUB.Bomba[id_Bomba_Default - 1].Nome_Produto_UltimaVenda;
     LabelPrcLitro.value   := CUB.Bomba[id_Bomba_Default - 1].Preco_UltimaVenda/1000;
     LabelLitros.value     := CUB.Bomba[id_Bomba_Default - 1].Mililitros_UltimaVenda/1000;
     LabelTotalPagar.value := CUB.Bomba[id_Bomba_Default - 1].Dinheiro_UltimaVenda/100;
    end;

   //--- Trata Botões de acordo com Status do Bico---
   if CUB.Bomba[id_Bomba_Default - 1].StatusBomba in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
    begin
     if (CUB.Bomba[id_Bomba_Default - 1].Dinheiro_UltimaVenda > 0) and
        (CUB.Bomba[id_Bomba_Default - 1].Mililitros_UltimaVenda > 0)    then
      MonitoriaFrm.Bitbtn1.Enabled := true
     else
      MonitoriaFrm.Bitbtn1.Enabled := False;

     MonitoriaFrm.Bitbtn3.Enabled := true;
     MonitoriaFrm.Bitbtn4.Enabled := true;
    end
   else
    begin
     MonitoriaFrm.Bitbtn1.Enabled := false;
     MonitoriaFrm.Bitbtn3.Enabled := false;
     MonitoriaFrm.Bitbtn4.Enabled := false;
    end;

   CUB.Bomba[id_Bomba_Default - 1].RTMActive := True;
 end;

 
end;

procedure TMonitoriaFrm.GBoxBomba1DblClick(Sender: TObject);
begin
 case CUB.Bomba[id_Bomba_Default - 1].StatusBomba of
  SFIMDEVENDA: ;

  //Autoriza Abastecimento
  SDISPONIVEL, SBICOFORA:
   begin
    if application.messagebox(PChar('Deseja AUTORIZAR Abastecimento na Bomba ' + formatcurr('00', TComponent(Sender).Tag) + '?'),
                              'Atenção', mb_iconquestion + mb_yesno) = idyes then
     CUB.Bomba[id_Bomba_Default - 1].AutorizarBomba;
   end;

  //Desautoriza Abastecimento
  SAUTORIZADA:
   begin
    if application.messagebox(PChar('Deseja DESAUTORIZAR Abastecimento na Bomba ' + formatcurr('00', TComponent(Sender).Tag) + '?'),
                              'Atenção', mb_iconquestion + mb_yesno) = idyes then
     CUB.Bomba[id_Bomba_Default - 1].DesautorizarBomba;
   end;

  //Desautoriza Abastecimento
  SABASTECENDO:
   begin
    if application.messagebox(PChar('Deseja PAUSAR Abastecimento na Bomba ' + formatcurr('00', TComponent(Sender).Tag) + '?'),
                              'Atenção', mb_iconquestion + mb_yesno) = idyes then
     CUB.Bomba[id_Bomba_Default - 1].DesautorizarBomba;
   end;

  //Continua Abastecimento
  SPAUSA:
   begin
    if application.messagebox(PChar('Deseja LIBERAR Abastecimento na Bomba ' + formatcurr('00', TComponent(Sender).Tag) + '?'),
                              'Atenção', mb_iconquestion + mb_yesno) = idyes then
     CUB.Bomba[id_Bomba_Default - 1].ContinuarAbastecimento;
   end;

  //Mensagem de Estado desconhecido
  SDESCONHECIDO, SFORADOAR:
   begin
    application.MessageBox('Estado do Bico DESCONHECIDO ou Bomba FORA DO AR...' + #13 +
                           'Verifique suas configurações, e tente novamente.',
                           'Atenção', mb_ok + mb_iconinformation);
   end;

  //Abre bomba
  SBOMBAFECHADA:
   begin
    if application.MessageBox(PChar('BOMBA FECHADA, tem certeza que deseja ABRIR a Bomba ' + formatcurr('00', TComponent(Sender).Tag) + '?'),
                              'Atenção', mb_YesNo + mb_iconquestion) = idYes then
     CUB.Bomba[id_Bomba_Default - 1].AbrirBomba;
   end;
 end;
end;

procedure TMonitoriaFrm.BitBtn3Click(Sender: TObject);
begin
//--- Preset em Dinheiro
if CUB.Bomba[id_Bomba_Default - 1].StatusBomba in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
 begin
  application.createform(TPresetBicoFrm, PresetBicoFrm);
  PresetBicoFrm.Currencyedit1.Enabled := True;
  PresetBicoFrm.Bitbtn3.Visible := True;
  PresetBicoFrm.showmodal;
  PresetBicoFrm := nil;
 end;
end;

procedure TMonitoriaFrm.BitBtn4Click(Sender: TObject);
begin
//--- Preset em Litros
if CUB.Bomba[id_Bomba_Default - 1].StatusBomba in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
 begin
  application.createform(TPresetBicoFrm, PresetBicoFrm);
  PresetBicoFrm.Currencyedit2.Enabled := True;
  PresetBicoFrm.Bitbtn4.Visible := True;
  PresetBicoFrm.showmodal;
  PresetBicoFrm := nil;
 end;
end;

procedure TMonitoriaFrm.BitBtn2Click(Sender: TObject);
begin
 //--- Abre informações de Bomba e respectivos Bicos
 application.createform(TEncerrantesListMFrm, EncerrantesListMFrm);

 EncerrantesListMFrm.showmodal;
 EncerrantesListMFrm := nil;
end;

//Prepara e Abre Querys de Informações
Function TMonitoriaFrm.Abre_Querys: Boolean;
var
 idx_teste: integer;
 combustivel : string;
begin
 result := false;

 //TODO: implementar verificação de continuidade no cadastro para existir a bomba 3 a bomba 1 e 2 devem estar cadastradas (o mesmo para os bicos). Atualmente dá access viloation se cadastro errado!
 combustivel := 'S';

 //Informações de Bomba
 With QryBomba do
  begin
   Close;
   Sql.Clear;
   Sql.add('select COD_BOMBA, ID_BOMBA, COD_FRENTISTA, QNT_BICO, AUTO_AUTORIZA from BOMBA');
   Sql.add('order by ID_BOMBA');
   Prepare;
   Open;
   FetchAll;
  end;

 //Informações de Bico
 With QryBico do
  begin
   Close;
   Sql.Clear;
   Sql.add('select COD_BICO, COD_BOMBA, COD_FRENTISTA, COD_PRODUTOS, COD_TANQUE, ID_BICO from BICO');
   Sql.add('order by COD_BOMBA, ID_BICO');
   Prepare;
   Open;
  end;

 //Informações de Frentista
 With QryFrentista do
  begin
   Close;
   Sql.Clear;
   Sql.add('select COD_FRENTISTA, ID_FRENTISTA, NOME from FRENTISTA');
   Prepare;
   Open;
  end;

 //Informações de Produto
 With QryProduto do
  begin
   Close;
   Sql.Clear;
   Sql.add('select CODIGO, ID_PRODUTOS, DESCRICAO, COR, PRECO_VENDA, DESC_UNIDADE from PRODUTOS where COMBUSTIVEL <>'+QuotedStr(combustivel)+'');
   Sql.add('order by CODIGO');
   Prepare;
   Open;
  end;

 //Informações de Tanque
 With QryTanque do
  begin
   Close;
   Sql.Clear;
   Sql.add('select COD_TANQUE, ID_TANQUE, COD_PRODUTOS from TANQUE');
   Sql.add('order by ID_TANQUE');
   Prepare;
   Open;
  end;

 result := true;
end;

procedure TMonitoriaFrm.Exclue_DefaultBoxBomba;
begin
 Estado.Free;
 Produto.Free;
 Status.Free;
 Litros.Free;
 TotalPagar.Free;
 BoxBomba.Free;
end;

procedure TMonitoriaFrm.Cria_BoxBomba(Id_Bomba: byte);
const
 colunas = 4;
var
 Deltaleft, Deltatop, MyTag: integer;
 MyControl: TControl;
begin
 DeltaLeft := 88 * (idx_bomba mod colunas);
 Deltatop := 104 * (idx_bomba div colunas);

 MyTag := id_bomba;
 
 id_bomba := id_bomba - 1;

 //Criação em Runtime dos componentes da bomba
 try
  MyControl := TGroupBox.Create(MonitoriaFrm);             //Cria GroupBox da Bomba
  with MyControl do
   begin
    Parent := ScrollBox1;
    Name := 'BoxBomba' + inttostr(Id_Bomba);
    Tag := MyTag;
    SetBounds(DeltaLeft, Deltatop, 81, 97);
    Visible := True;
    TGroupBox(MyControl).Caption := ' Bomba ' + formatcurr('00', Id_Bomba + 1) + ':';
    TGroupBox(MyControl).OnClick := GBoxBomba1Click;
    TGroupBox(MyControl).OnDblClick := GBoxBomba1DblClick;
    TGroupBox(MyControl).Font.Size := 8;
   end;

  MyControl := TLabel.Create(MonitoriaFrm);                //Cria Label de Status
  with MyControl do
   begin
    Parent := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(Id_Bomba)));
    Name := 'Status' + inttostr(Id_Bomba);
    Tag := MyTag;
    SetBounds(2, 48, 77, 13);
    Visible := True;
    TLabel(MyControl).Alignment := taCenter;
    TLabel(MyControl).Autosize := False;
    TLabel(MyControl).Caption := 'Desconhecido';
    TGroupBox(MyControl).OnClick := GBoxBomba1Click;
    TGroupBox(MyControl).OnDblClick := GBoxBomba1DblClick;
    TGroupBox(MyControl).Font.Size := 8;
   end;

  MyControl := TLabel.Create(MonitoriaFrm);                //Cria Label de Litros
  with MyControl do
   begin
    Parent := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(Id_Bomba)));
    Name := 'Litros' + inttostr(Id_Bomba);
    Tag := MyTag;
    SetBounds(8, 64, 65, 13);
    Visible := True;
    TLabel(MyControl).Alignment := taRightJustify;
    TLabel(MyControl).Autosize := False;
    TLabel(MyControl).Caption := '0,000';
    TGroupBox(MyControl).OnClick := GBoxBomba1Click;
    TGroupBox(MyControl).OnDblClick := GBoxBomba1DblClick;
    TGroupBox(MyControl).Font.Size := 8;
   end;

  MyControl := TLabel.Create(MonitoriaFrm);                //Cria Label de Total a Pagar
  with MyControl do
   begin
    Parent := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(Id_Bomba)));
    Name := 'TotalPagar' + inttostr(Id_Bomba);
    Tag := MyTag;
    SetBounds(8, 80, 65, 13);
    Visible := True;
    TLabel(MyControl).Alignment := taRightJustify;
    TLabel(MyControl).Autosize := False;
    TLabel(MyControl).Caption := 'R$ 0,00';
    TGroupBox(MyControl).OnClick := GBoxBomba1Click;
    TGroupBox(MyControl).OnDblClick := GBoxBomba1DblClick;
    TGroupBox(MyControl).Font.Size := 8;
   end;

  MyControl := TShape.Create(MonitoriaFrm);                //Cria Shape de Cor do Produto
  with MyControl do
   begin
    Parent := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(Id_Bomba)));
    Name := 'Produto' + inttostr(Id_Bomba);
    Tag := MyTag;
    SetBounds(64, 16, 9, 9);
    Visible := False;
    TGroupBox(MyControl).OnClick := GBoxBomba1Click;
    TGroupBox(MyControl).OnDblClick := GBoxBomba1DblClick;
   end;

  MyControl := TImage.Create(MonitoriaFrm);                //Cria Imagem de Status
  with MyControl do
   begin
    Parent := TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(Id_Bomba)));
    Name := 'Estado' + inttostr(Id_Bomba);
    Tag := MyTag;
    SetBounds(24, 16, 32, 32);
    Visible := True;
    TImage(MyControl).Transparent := True;
    TGroupBox(MyControl).OnClick := GBoxBomba1Click;
    TGroupBox(MyControl).OnDblClick := GBoxBomba1DblClick;
   end;

 finally

 end;
end;

procedure Erro_Ao_Iniciar;
begin
 application.messagebox('Sistema desabilitado' + #13 +
                        'É necessário efetuar as devidas correções no cadastro das informações de Bombas, Bicos e Produtos para iniciar o sistema.',
                        'Atenção', mb_iconinformation + mb_ok);

 //TODO: depois de implementar a verificação descrita em Abre_Querys, desabilitar demais componentes da tela aqui!
end;

procedure TMonitoriaFrm.FormCreate(Sender: TObject);
var
 x, y: integer;
 auto_autoriza_bomba: boolean;
begin
 //Abre Querys com informações para a tela
 if not Abre_Querys then
  Erro_Ao_Iniciar
 else
  begin
   //--- Cria Objeto CUB ---
   CUB := TCUB.Create(QryBomba.RecordCount);

   //--- Cria Objeto Bomba ---
   QryBomba.First;

   Exclue_DefaultBoxBomba;

   idx_bomba := 0;
   while not QryBomba.Eof do
    begin
     QryFrentista.Locate('COD_FRENTISTA', QryBomba.FieldByName('COD_FRENTISTA').asinteger, []);

     auto_autoriza_bomba := true;
     if QryBomba.FieldByName('AUTO_AUTORIZA').Asinteger = 0 then
      auto_autoriza_bomba := False;

     Cria_BoxBomba(QryBomba.FieldByName('ID_BOMBA').asinteger);
     idx_bomba := idx_bomba + 1;

     CUB.Cria_Bomba(QryBomba.FieldByName('ID_BOMBA').asinteger,                   //id da bomba
                    QryBomba.FieldByName('QNT_BICO').asinteger,                   //Quantidade de Bicos na Bomba
                    QryFrentista.FieldByName('COD_FRENTISTA').asinteger,          //Codigo do Frentista
                    QryFrentista.FieldByName('NOME').asstring,                    //Nome do Frentista
                    auto_autoriza_bomba);                                         //Auto Autoriza Bomba Apos abastecimento

     TControl(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(QryBomba.FieldByName('ID_BOMBA').asinteger - 1))).visible := true;

     QryBomba.Next;
    end;

   //--- Cria Objeto Bico ---
  QryBico.First;
   while not QryBico.Eof do
    begin
     QryProduto.Locate('CODIGO', QryBico.FieldByName('COD_PRODUTOS').asinteger, []);
     QryTanque.Locate('COD_TANQUE', QryBico.FieldByName('COD_TANQUE').asinteger, []);
     QryBomba.Locate('COD_BOMBA', QryBico.FieldByName('COD_BOMBA').asinteger, []);

     CUB.Cria_Bico(QryBomba.FieldByName('ID_BOMBA').asinteger,                    //id da bomba a que o bico pertence
                   QryBico.FieldByName('ID_BICO').asinteger,                      //id do bico
                   QryProduto.FieldByName('ID_PRODUTOS').asinteger,               //id do produto
                   QryProduto.FieldByName('CODIGO').asinteger,                    //codigo do produto no banco de dados
                   QryTanque.FieldByName('COD_TANQUE').asinteger,                 //id do tanque
                   QryProduto.FieldByName('DESCRICAO').asstring,                  //nome do produto do bico
                   QryProduto.FieldByName('DESC_UNIDADE').asstring);              //unidade de venda

     QryBico.Next;
    end;


    //Associa os eventos as Bombas e Bicos Criados
   for x := 0 to CUB.Qnt_Bombas - 1 do
    begin
     CUB.Bomba[x].OnRTM          := OnBombaRTM;
     CUB.Bomba[x].OnStatusChange := OnStatusBombaChange;
     CUB.Bomba[x].OnLerVenda     := OnLerVendaBomba;

     for y := 0 to CUB.Bomba[x].Qnt_Bicos - 1 do
      CUB.Bomba[x].Bico[y].OnLerTotais := OnLerTotaisBico;
    end;

   //Inicia o CUB

  { CUB.InicializaCUB;}

   //--- Primeira Bomba é default ao abrir
   QryBomba.first;
   id_Bomba_Default := QryBomba.FieldByName('ID_BOMBA').asinteger;
   GBoxBomba1Click(TGroupBox(MonitoriaFrm.FindComponent('BoxBomba' + inttostr(QryBomba.FieldByName('ID_BOMBA').asinteger - 1))));
  end;
end;


procedure TMonitoriaFrm.BitBtn1Click(Sender: TObject);
begin
 //TODO: Colocar opção de qual tipo de impressão e se haverá impressão etc
{ application.CreateForm(TImprCupomFiscalFrm, ImprCupomFiscalFrm);
 ImprCupomFiscalFrm.ShowModal;
 ImprCupomFiscalFrm := nil;}

 application.MessageBox('Em Construção.','Atenção', mb_iconinformation + mb_ok);
end;

procedure TMonitoriaFrm.FecharBombaPopMnuClick(Sender: TObject);
begin
 //TODO: Colocar a opção de se Bombas podem ou não ser fechadas
 if application.MessageBox(PChar('Tem certeza que deseja FECHAR a Bomba ' + inttostr(CUB.Bomba[id_Bomba_Default - 1].id_bomba) + '?'),
                           'Atenção', mb_YesNo + mb_iconquestion) = idYes then
  CUB.Bomba[id_Bomba_Default - 1].FecharBomba;
end;

procedure TMonitoriaFrm.LegendaPopMnuClick(Sender: TObject);
begin
 application.CreateForm(TLegendaEstadoListMFrm, LegendaEstadoListMFrm);
 LegendaEstadoListMFrm.showmodal;
end;

procedure TMonitoriaFrm.InfoBombaPopMnuClick(Sender: TObject);
begin
BitBtn2.Click;
end;

procedure TMonitoriaFrm.PresetDinheiroPopMnuClick(Sender: TObject);
begin
BitBtn3.click;
end;

procedure TMonitoriaFrm.PresetLitrosPopMnuClick(Sender: TObject);
begin
BitBtn4.Click;
end;

procedure TMonitoriaFrm.ImprimirCFPopMnuClick(Sender: TObject);
begin
BitBtn1.Click;
end;

procedure TMonitoriaFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := canone;

 if application.MessageBox('Fechar tela de Monitoria de Bombas?',
                           'Confirmação', mb_YesNo + mb_iconQuestion) = idyes then
  begin
   CUB.Free;
   
   action:=cafree;
  end;
end;

procedure TMonitoriaFrm.BitBtn5Click(Sender: TObject);
begin
 self.close;
end;

procedure TMonitoriaFrm.BitBtn6Click(Sender: TObject);
begin
 application.createform(TComandosPistaMFrm, ComandosPistaMFrm);
 
 ComandosPistaMFrm.showmodal;
 ComandosPistaMFrm := nil;
end;

procedure TMonitoriaFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Box_Bomba: TComponent;
begin
 Box_Bomba := nil;

 if key = vk_F1 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba0')
 else if key = vk_F2 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba1')
 else if key = vk_F3 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba2')
 else if key = vk_F4 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba3')
 else if key = vk_F5 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba4')
 else if key = vk_F6 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba5')
 else if key = vk_F7 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba6')
 else if key = vk_F8 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba7')
 else if key = vk_F9 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba8')
 else if key = vk_F10 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba9')
 else if key = vk_F11 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba10')
 else if key = vk_F12 then
  Box_Bomba := MonitoriaFrm.FindComponent('BoxBomba11')
 else if key =vk_escape then
  bitbtn5.click;

 if key in [vk_F1..vk_F12] then
  begin
   if TControl(Box_Bomba).Visible then
    GBoxBomba1Click(Box_Bomba)
   else
    application.MessageBox('A bomba selecionada não existe', 'Atenção',
                           mb_ok + mb_iconerror);
  end;
end;

end.
