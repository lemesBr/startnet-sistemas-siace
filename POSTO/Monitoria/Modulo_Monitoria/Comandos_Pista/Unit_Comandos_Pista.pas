unit Unit_Comandos_Pista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TComandosPistaMFrm = class(TForm)
    BitBtnEsc: TBitBtn;
    BitBtn07: TBitBtn;
    BitBtn02: TBitBtn;
    BitBtn04: TBitBtn;
    BitBtn06: TBitBtn;
    BitBtn03: TBitBtn;
    BitBtn05: TBitBtn;
    BitBtn01: TBitBtn;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    BitBtn09: TBitBtn;
    BitBtn08: TBitBtn;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    procedure BitBtn04MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtnEscClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn07Click(Sender: TObject);
    procedure BitBtn06Click(Sender: TObject);
    procedure BitBtn03Click(Sender: TObject);
    procedure BitBtn04Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn09Click(Sender: TObject);
    procedure BitBtn01Click(Sender: TObject);
    procedure BitBtn02Click(Sender: TObject);
    procedure BitBtn08Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComandosPistaMFrm: TComandosPistaMFrm;
  Auto_Autoriza_Todas: Boolean;
  Old_Sender: TObject;

implementation

uses LegendaStatus, MonitoriaBombas, Unit_Rep_Encerrante_Geral;

{$R *.dfm}

procedure TComandosPistaMFrm.BitBtn04MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if sender <> old_sender then
  begin
   groupbox1.Caption := ' ' + TBitbtn(Sender).Caption + ': ';

   memo1.Lines.clear;
   memo1.Lines.add(TBitbtn(Sender).Hint);

   old_sender := sender;
  end;
end;

procedure TComandosPistaMFrm.BitBtnEscClick(Sender: TObject);
begin
 self.close;
end;

procedure TComandosPistaMFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TComandosPistaMFrm.FormCreate(Sender: TObject);
begin
 old_sender := self;
end;

procedure TComandosPistaMFrm.BitBtn07Click(Sender: TObject);
begin
 if application.MessageBox(PChar('Tem certeza que deseja DESAUTORIZAR TODAS AS BOMBAS?'),
                           'Atenção', mb_YesNo + mb_iconquestion) = idYes then
  begin
   CUB.DesautorizarTodasBombas;

   application.messagebox('Comando de DESAUTORIZAÇÃO de todas as bombas enviado com sucesso',
                          'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TComandosPistaMFrm.BitBtn06Click(Sender: TObject);
begin
 if application.MessageBox(PChar('Tem certeza que deseja AUTORIZAR TODAS AS BOMBAS?'),
                           'Atenção', mb_YesNo + mb_iconquestion) = idYes then
  begin
   CUB.AutorizarTodasBombas;

   application.messagebox('Comando de AUTORIZAÇÃO de todas as bombas enviado com sucesso',
                          'Atenção', mb_iconinformation + mb_ok);
  end;                        
end;

procedure TComandosPistaMFrm.BitBtn03Click(Sender: TObject);
begin
 if application.MessageBox(PChar('Tem certeza que deseja ABRIR TODAS AS BOMBAS?'),
                           'Atenção', mb_YesNo + mb_iconquestion) = idYes then
  begin
   CUB.AbrirTodasBombas;

   application.messagebox('Comando de ABERTURA de todas as bombas enviado com sucesso',
                          'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TComandosPistaMFrm.BitBtn04Click(Sender: TObject);
begin
 if application.MessageBox(PChar('Tem certeza que deseja FECHAR TODAS AS BOMBAS?'),
                           'Atenção', mb_YesNo + mb_iconquestion) = idYes then
  begin
   CUB.FecharTodasBombas;

   application.messagebox('Comando de FECHAMENTO de todas as bombas enviado com sucesso',
                          'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TComandosPistaMFrm.FormKeyDown(Sender: TObject; var Key: Word;
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
 else if key = vk_F6 then
  bitbtn06.click
 else if key = vk_F7 then
  bitbtn07.click
 else if key = vk_F8 then
  bitbtn08.click
 else if key = vk_escape then
  bitbtn09.click;
end;

procedure TComandosPistaMFrm.BitBtn09Click(Sender: TObject);
begin
 application.CreateForm(TLegendaEstadoListMFrm, LegendaEstadoListMFrm);
 LegendaEstadoListMFrm.showmodal;
end;

procedure TComandosPistaMFrm.BitBtn01Click(Sender: TObject);
var
 x, y: integer;
begin
 //Loop em todos os bicos para mapear produtos
 if application.messagebox('Deseja enviar o mapa de pista para o CUB?' + #13#13 +
                           'Esta opção deve ser utilizada quando a comunicação é ' +
                           'estabelecida pela 1ª vez com o CUB ou quando é modificado ' +
                           'o mapa de pista.',
                           'Atenção', mb_iconquestion + mb_yesno) = idyes then
  begin
   for x := 0 to CUB.Qnt_Bombas - 1 do
    begin
     for y := 0 to CUB.Bomba[x].Qnt_Bicos - 1 do
      begin
       CUB.Bomba[x].Bico[y].MapearProduto;
      end;
    end;
  end;

 application.messagebox('MAPA DE PISTA enviado com sucesso',
                        'Atenção', mb_iconinformation + mb_ok);
end;

procedure TComandosPistaMFrm.BitBtn02Click(Sender: TObject);
begin
 //Loop nos produtos para programa preço
 if application.messagebox('Deseja enviar os preços dos produtos para o CUB?',
                           'Atenção', mb_iconquestion + mb_yesno) = idyes then
  begin
   if MonitoriaFrm.QryProduto.active then
    begin
     MonitoriaFrm.QryProduto.close;
     MonitoriaFrm.QryProduto.Open;

     MonitoriaFrm.QryProduto.First;

     while not MonitoriaFrm.QryProduto.EOF do
      begin
       CUB.ProgramarPreco(MonitoriaFrm.QryProduto.FieldByName('ID_PRODUTOS').AsInteger,
                          1,                                            //TODO: Nivel de preco fixado em 1!
                          round(strtofloat(formatcurr('##0.000', MonitoriaFrm.QryProduto['PRC_VENDA']))*1000));

       if not MonitoriaFrm.QryProduto.EOF then
        MonitoriaFrm.QryProduto.Next;
      end;
    end;

   application.messagebox('PROGRAMAÇÃO DE PREÇO enviada com sucesso',
                          'Atenção', mb_iconinformation + mb_ok);
  end;
  
end;

procedure TComandosPistaMFrm.BitBtn08Click(Sender: TObject);
var
 x: integer;
 msg: string;
begin
 if Auto_Autoriza_Todas then
  msg := 'Tem certeza que deseja DESABILITAR a propriedade AUTO-AUTORIZAR em todas as bombas?'
 else
  msg := 'Tem certeza que deseja HABILITAR a propriedade AUTO-AUTORIZAR em todas as bombas?';

 if application.MessageBox(PChar(Msg), 'Atenção', mb_YesNo + mb_iconquestion) = idYes then
  begin
   for x := 0 to CUB.Qnt_Bombas - 1 do                           //Loop em todas as Bombas
    CUB.Bomba[x].AutoAutorizar := not Auto_Autoriza_Todas;

   Auto_Autoriza_Todas := not Auto_Autoriza_Todas;

   application.messagebox('Comando de AUTO-AUTORIZAR todas as bombas enviado com sucesso',
                          'Atenção', mb_iconinformation + mb_ok);
  end;
end;

procedure TComandosPistaMFrm.FormActivate(Sender: TObject);
begin
 Auto_Autoriza_Todas := false;
end;

procedure TComandosPistaMFrm.BitBtn1Click(Sender: TObject);
begin
 application.CreateForm(TEncerranteGeralRepMFrm, EncerranteGeralRepMFrm);
 EncerranteGeralRepMFrm.Quickrep1.preview;
end;

end.
