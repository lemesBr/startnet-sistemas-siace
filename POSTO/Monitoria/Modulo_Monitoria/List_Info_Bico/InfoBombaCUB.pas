unit InfoBombaCUB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, DateUtils, CUBUtils;

type
  TEncerrantesListMFrm = class(TForm)
    BitBtn06: TBitBtn;
    GBoxBombaXX: TGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    Label21: TLabel;
    Label10: TLabel;
    BitBtn05: TBitBtn;
    GBoxBico1: TGroupBox;
    LabelProduto1: TLabel;
    Label2: TLabel;
    GBoxUltimaVenda1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    LabelLitros1: TLabel;
    LabelTotalPagar1: TLabel;
    Label1: TLabel;
    LabelPrcLitros1: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    GBoxBico2: TGroupBox;
    LabelProduto2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    LabelPrcLitros2: TLabel;
    GBoxUltimaVenda2: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    LabelLitros2: TLabel;
    LabelTotalPagar2: TLabel;
    GBoxBico3: TGroupBox;
    LabelProduto3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LabelPrcLitros3: TLabel;
    GBoxUltimaVenda3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    LabelLitros3: TLabel;
    LabelTotalPagar3: TLabel;
    GBoxBico4: TGroupBox;
    LabelProduto4: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    LabelPrcLitros4: TLabel;
    GBoxUltimaVenda4: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    LabelLitros4: TLabel;
    LabelTotalPagar4: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Produto0: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    CheckBox1: TCheckBox;
    StatusImageXX: TImage;
    StatusLabelXX: TLabel;
    Bevel1: TBevel;
    BitBtn03: TBitBtn;
    BitBtn04: TBitBtn;
    Label24: TLabel;
    Label27: TLabel;
    LabelUltVenda1: TLabel;
    LabelUltVenda2: TLabel;
    LabelUltVenda3: TLabel;
    LabelUltVenda4: TLabel;
    BitBtn01: TBitBtn;
    BitBtn02: TBitBtn;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label3: TLabel;
    LabelEncDinheiro1: TLabel;
    LabelEncLitros1: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    LabelEncLitros2: TLabel;
    LabelEncDinheiro2: TLabel;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label22: TLabel;
    LabelEncLitros3: TLabel;
    LabelEncDinheiro3: TLabel;
    GroupBox4: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    LabelEncLitros4: TLabel;
    LabelEncDinheiro4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn06Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn05Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn04Click(Sender: TObject);
    procedure BitBtn01Click(Sender: TObject);
    procedure BitBtn02Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EncerrantesListMFrm: TEncerrantesListMFrm;

implementation

uses ClasseCUB, MonitoriaBombas,   ClasseBomba, UnitFuncoes,
  LegendaStatus, Unit_Rep_Encerrantes;

{$R *.dfm}

procedure TEncerrantesListMFrm.FormShow(Sender: TObject);
var
 x,y : integer;
 Enc_Bomba: double;
begin
 Case CUB.Bomba[id_Bomba_Default - 1].StatusBomba of
  SFIMDEVENDA,
  SDESCONHECIDO,
  SFORADOAR:
   begin
    Bitbtn01.enabled := False;
    bitbtn02.enabled := False;
   end;
  SDISPONIVEL,
  SBICOFORA,
  SPAUSA:
   begin
    Bitbtn01.enabled := True;
    bitbtn02.enabled := True;
    Bitbtn01.caption := 'F1 - Liberar';
   end;
  SABASTECENDO:
   begin
    Bitbtn01.enabled := True;
    bitbtn02.enabled := True;
    Bitbtn01.caption := 'F1 - Pausar';
   end;
  SAUTORIZADA:
   begin
    Bitbtn01.enabled := True;
    bitbtn02.enabled := True;
    Bitbtn01.caption := 'F1 - Desautorizar';
   end;
  SBOMBAFECHADA:
   begin
    Bitbtn01.enabled := True;
    bitbtn02.enabled := False;
    Bitbtn01.caption := 'F1 - Abrir';
   end;
 end;

 //--- Bomba, Status da Bomba ---
 GBoxBombaXX.Caption          := MonitoriaFrm.GBoxBombaXX.caption;
 StatusLabelXX.Caption        := MonitoriaFrm.StatusLabelXX.caption;
 StatusImageXX.Picture.Bitmap := MonitoriaFrm.StatusImageXX.Picture.Bitmap;

//--- Nome do Frentista ---
 if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Nome_Frentista) then
  label14.caption := inttostr(CUB.Bomba[id_Bomba_Default - 1].Cod_Frentista) + ' - ' +
                     CUB.Bomba[id_Bomba_Default - 1].Nome_Frentista;

 //--- Nº de Bicos
 if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Qnt_Bicos) then
  label16.caption := inttostr(CUB.Bomba[id_Bomba_Default - 1].Qnt_Bicos);

 //---Encerrante Total da Bomba em Dinheiro
 Enc_Bomba := 0;
 for x := 0 to CUB.Bomba[id_Bomba_Default - 1].Qnt_Bicos - 1 do
  Enc_Bomba := Enc_Bomba + CUB.Bomba[id_Bomba_Default - 1].Bico[x].Encerrante_Dinheiro/100;
 label27.caption := formatcurr('###,###,##0.000', Enc_Bomba);

 //--- Se houve ultima venda
 if CUB.Bomba[id_Bomba_Default - 1].id_Bico_UltimaVenda <> -1 then
  begin
   //--- Bico Ultima Venda ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].id_Bico_UltimaVenda) then
    Label23.caption := 'Bico 0' + inttostr(CUB.Bomba[id_Bomba_Default - 1].id_Bico_UltimaVenda);

   //--- Última Venda
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].UltimaVenda) then
    label19.caption := datetimetostr(CUB.Bomba[id_Bomba_Default - 1].UltimaVenda);

   //--- Ultima Autorizacao
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].UltimaAutorizacao) then
    label21.caption := DateTimetoStr(CUB.Bomba[id_Bomba_Default - 1].UltimaAutorizacao);
  end;

 //--- Auto Autorizar Bomba
 if not varisnull(CUB.Bomba[id_Bomba_Default - 1].AutoAutorizar) then
  checkbox1.Checked := CUB.Bomba[id_Bomba_Default - 1].AutoAutorizar;

 //--- Preenche valores por bico ---
 for x := 0 to CUB.Bomba[id_Bomba_Default - 1].Qnt_Bicos - 1 do
  begin
   y := x + 1;

   //Habilita Boxes de Bicos cadastrados
   TGroupBox(EncerrantesListMFrm.FindComponent('GBoxBico' + inttostr(y))).Visible := true;

   //--- Nome do Produto ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].Nome_Produto) then
    TLabel(EncerrantesListMFrm.FindComponent('LabelProduto' + inttostr(y))).Caption := CUB.Bomba[id_Bomba_Default - 1].Bico[x].Nome_Produto;

   //--- Preço por Litro ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].Preco) then
    TLabel(EncerrantesListMFrm.FindComponent('LabelPrcLitros' + inttostr(y))).caption := 'R$ ' + formatcurr('###,###,##0.000',CUB.Bomba[id_Bomba_Default - 1].Bico[x].Preco/1000);

   //--- Encerrante em Litros ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].Encerrante_Litros) then
    TLabel(EncerrantesListMFrm.FindComponent('LabelEncLitros' + inttostr(y))).Caption := formatcurr('###,###,##0.000',CUB.Bomba[id_Bomba_Default - 1].Bico[x].Encerrante_Litros/1000);

   //--- Encerrante em Dinheiro ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].Encerrante_Dinheiro) then
    TLabel(EncerrantesListMFrm.FindComponent('LabelEncDinheiro' + inttostr(y))).Caption := 'R$ ' + formatcurr('###,###,##0.00',CUB.Bomba[id_Bomba_Default - 1].Bico[x].Encerrante_Dinheiro/100);

   //--- Ultima Venda Mililitros ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].Mililitros) then
    begin
     TLabel(EncerrantesListMFrm.FindComponent('LabelLitros' + inttostr(y))).Caption := formatcurr('###,###,##0.000', CUB.Bomba[id_Bomba_Default - 1].Bico[x].Mililitros/1000);

     //--- Ultima Venda ---
     if CUB.Bomba[id_Bomba_Default - 1].Bico[x].Mililitros > 0 then
      if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].UltimaVenda)  then
       TGroupBox(EncerrantesListMFrm.FindComponent('LabelUltVenda' + inttostr(y))).Caption := DateTimeToStr(CUB.Bomba[id_Bomba_Default - 1].Bico[x].UltimaVenda) + ' ';
    end;

   //--- Ultima Venda Dinheiro ---
   if not varisnull(CUB.Bomba[id_Bomba_Default - 1].Bico[x].Dinheiro) then
    TLabel(EncerrantesListMFrm.FindComponent('LabelTotalPagar' + inttostr(y))).Caption := 'R$ ' + formatcurr('###,###,##0.00',CUB.Bomba[id_Bomba_Default - 1].Bico[x].Dinheiro/10);
  end;
end;

procedure TEncerrantesListMFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TEncerrantesListMFrm.BitBtn06Click(Sender: TObject);
begin
 self.close;
end;

procedure TEncerrantesListMFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_F1 then
  bitbtn01.click
 else if key = vk_F2 then
  bitbtn02.click
 else if key = vk_F3 then
  bitbtn03.click
 else if key = vk_F4 then
  bitbtn04.click
 else if key = vk_F5 then
  bitbtn05.click
 else if key = vk_Escape then
  bitbtn06.click
end;

procedure TEncerrantesListMFrm.BitBtn05Click(Sender: TObject);
begin
 application.CreateForm(TLegendaEstadoListMFrm, LegendaEstadoListMFrm);
 LegendaEstadoListMFrm.showmodal;
end;

procedure TEncerrantesListMFrm.CheckBox1Click(Sender: TObject);
begin
 CUB.Bomba[id_Bomba_Default - 1].AutoAutorizar := checkbox1.Checked;
end;

procedure TEncerrantesListMFrm.BitBtn04Click(Sender: TObject);
begin
 application.CreateForm(TEncerrantesRepMFrm, EncerrantesRepMFrm);
 EncerrantesRepMFrm.Quickrep1.preview;
end;

procedure TEncerrantesListMFrm.BitBtn01Click(Sender: TObject);
begin
 MonitoriaFrm.GBoxBomba1DblClick(MonitoriaFrm.GBoxBombaXX);
end;

procedure TEncerrantesListMFrm.BitBtn02Click(Sender: TObject);
begin
 MonitoriaFrm.FecharBombaPopMnuClick(MonitoriaFrm.GBoxBombaXX);
end;

end.
