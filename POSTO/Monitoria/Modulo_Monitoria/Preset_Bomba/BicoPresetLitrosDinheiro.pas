unit BicoPresetLitrosDinheiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, ToolEdit, CurrEdit;

type
  TPresetBicoFrm = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    AutorizadaImg: TImage;
    NaoAutorizadaImg: TImage;
    BicoForaImg: TImage;
    Bevel1: TBevel;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PresetBicoFrm: TPresetBicoFrm;

implementation

uses ClasseCUB, MonitoriaBombas, CUBUtils;

{$R *.dfm}

procedure TPresetBicoFrm.BitBtn2Click(Sender: TObject);
begin
 self.close;
end;

procedure TPresetBicoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TPresetBicoFrm.BitBtn4Click(Sender: TObject);
begin
if (not varisnull(currencyedit2.value)) and (currencyedit2.value > 0) then
 begin
  if application.MessageBox(PChar('Deseja Confirmar o Preset em Litros no valor de: ' + currencyedit2.text + ' ?'),
                            'Atenção', mb_yesNo + mb_iconquestion) = idyes then
   begin
    if CUB.Bomba[id_Bomba_Default - 1].StatusBomba in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
     begin
      if CUB.Bomba[id_Bomba_Default - 1].PresetLitros(round(Currencyedit2.value * 100)) then
       application.MessageBox('Preset em Litros efetuado com sucesso!',
                              'Atenção', mb_ok + mb_iconinformation);
       self.close;
     end
    else
     application.messagebox('Não foi possível efetuar o Preset em Litros...' + #13 +
                            'Estado atual da bomba não permite preset, verifique estado e tente novamente.',
                            'Atenção', mb_ok + mb_iconerror);
   end;
 end
else
 application.messagebox('Valor de Preset em Litros inválido...' + #13 +
                        'Verifique o valor e tente novamente.',
                        'Atenção', mb_ok + mb_iconerror);
end;

procedure TPresetBicoFrm.BitBtn3Click(Sender: TObject);
begin
if (not varisnull(currencyedit1.value)) and (currencyedit1.value > 0) then
 begin
  if application.MessageBox(PChar('Deseja Confirmar o Preset em Dinheiro no valor de: R$ ' + currencyedit1.text + ' ?'),
                            'Atenção', mb_yesNo + mb_iconquestion) = idyes then
   begin
    if CUB.Bomba[id_Bomba_Default - 1].StatusBomba in [SDISPONIVEL, SBICOFORA, SAUTORIZADA] then
     begin
      if CUB.Bomba[id_Bomba_Default - 1].PresetDinheiro(round(Currencyedit1.value * 100)) then
       application.MessageBox('Preset em Dinheiro efetuado com sucesso!',
                              'Atenção', mb_ok + mb_iconinformation);
      self.close;
     end
    else
     application.messagebox('Não foi possível efetuar o Preset em Litros...' + #13 +
                            'Estado atual da bomba não permite preset, verifique estado e tente novamente.',
                            'Atenção', mb_ok + mb_iconerror);
   end;
 end
else
 application.messagebox('Valor de Preset em Dinheiro inválido...' + #13 +
                        'Verifique o valor e tente novamente.',
                        'Atenção', mb_ok + mb_iconerror);
end;

procedure TPresetBicoFrm.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_escape then
 BitBtn2.Click;

if key = vk_return then
 begin
  if BitBtn3.Visible then
   BitBtn3.Click;

  if BitBtn4.Visible then
   BitBtn4.Click;
 end;
end;

procedure TPresetBicoFrm.CurrencyEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
If key = '.' then
 Key := ',';
end;

procedure TPresetBicoFrm.FormShow(Sender: TObject);
begin
 Groupbox1.Caption := MonitoriaFrm.GBoxBombaXX.caption;
end;

end.
