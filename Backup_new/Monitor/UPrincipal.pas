unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, Registry, DateUtils,
  IBServices, FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.FB, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.IBBase;

type
  THorario = packed record
    Hora: TTime;
    Feito: Boolean;
    Agendado: Boolean;
  end;

  TFPrincipal = class(TForm)
    reStatus: TRichEdit;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    sbSair: TSpeedButton;
    Timer: TTimer;
    Backup: TIBBackupService;
    Panel2: TPanel;
    Image1: TImage;
    Memo1: TMemo;
    FDFBNBackup1: TFDFBNBackup;
    FDFBNRestore1: TFDFBNRestore;
    procedure TimerTimer(Sender: TObject);
    procedure sbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Horarios: array[0..23] of THorario;
    function DoBackup: Boolean;
    procedure AddStatusLine(S: string; Cor: TColor = clWindowText; Tamanho: byte = 10);
  public

  end;

var
  FPrincipal: TFPrincipal;

const
  Dia: array[1..7] of string = ('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado');

implementation

{$R *.dfm}

procedure TFPrincipal.TimerTimer(Sender: TObject);
var
  i: integer;
begin
  for i := low(Horarios) to High(Horarios) do
    begin
      if (Horarios[i].Agendado) and (not Horarios[i].Feito) and (Horarios[i].Hora = HourOf(now)) then
        begin
          Timer.Enabled := false;
          Horarios[i].Feito := DoBackup;
          Timer.Enabled := true;
          Break;
        end;
    end;
end;

function TFPrincipal.DoBackup: Boolean;
var
  reg: TRegistry;
begin
  Result := true;
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if reg.OpenKey('\Software\StartNet', false) then
      begin
        try
          ForceDirectories(reg.ReadString('BackupDir'));
          Backup.DatabaseName := reg.ReadString('Base');
          Backup.BackupFile.Clear;
          Backup.BackupFile.Add(ChangeFileExt(reg.ReadString('BackupDir') + '\' + FormatDateTime('yyyymmddnnhh', now), '.gbk'));
          Backup.Active := true;
          AddStatusLine(Format('Backup Iniciado às %s horas', [FormatDateTime('hh:nn:ss', now)]), clGreen);
          Backup.ServiceStart;
          Memo1.Lines.Clear;
          While not BackUp.Eof do
            Memo1.Lines.Add(BackUp.GetNextLine);
          Backup.Active := false;
        except
          Result := false;
        end;
        AddStatusLine(Format('Backup Finalizado às %s horas', [FormatDateTime('hh:nn:ss', now)]), clGreen);
      end;
  finally
    reg.CloseKey;
    reg.Free;
  end;
end;

procedure TFPrincipal.AddStatusLine(S: string; Cor: TColor; Tamanho: byte);
begin
  reStatus.SelAttributes.Color := Cor;
  reStatus.SelAttributes.Size := Tamanho;
  reStatus.Lines.Add(S);
end;

procedure TFPrincipal.sbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  reg: TRegistry;
  DiaBackup: Boolean;
  i: integer;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if not reg.OpenKey('\Software\StartNet', false) then
      begin
        MessageBox(Handle, PChar('Não existem configurações definidas!'), PChar('Erro'), MB_OK or MB_ICONWARNING);
        PostMessage(Application.Handle, WM_CLOSE, 0, 0);
      end
    else
      begin
        try
          DiaBackup := reg.ReadBool(Dia[DayOfWeek(date)]);
        except
          DiaBackup := false;
        end;
        if not DiaBackup or not reg.OpenKey('\Software\StartNet\Horarios', false) then AddStatusLine('Não existe Backup agendado para hoje...', clMaroon, 12)
        else
          begin
            AddStatusLine(Format('Backup inicializado às %s horas', [FormatDateTime('hh:nn:ss', now)]), clNavy, 12);
            for i := low(Horarios) to high(Horarios) do
              begin
                Horarios[i].Hora := I;
                Horarios[i].Agendado := reg.ReadBool(formatfloat('00', i) + ':00');
              end;
            Timer.Enabled := true;
          end;
      end;
  finally
    reg.CloseKey;
  end;
end;

end.

