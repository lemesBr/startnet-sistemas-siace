unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, CheckLst, Mask, Registry;

type
  TFPrincipal = class(TForm)
    Label1: TLabel;
    eBase: TEdit;
    Label2: TLabel;
    eDirBackup: TEdit;
    GroupBox1: TGroupBox;
    sbBuscaBase: TSpeedButton;
    clbSemana: TCheckListBox;
    sbOk: TSpeedButton;
    sbCancelar: TSpeedButton;
    clbHorarios: TCheckListBox;
    Image1: TImage;
    procedure sbBuscaBaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbOkClick(Sender: TObject);
  private

  public

  end;

var
  FPrincipal: TFPrincipal;

const
  Dia: array[1..7] of string = ('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado');

implementation

{$R *.dfm}

procedure TFPrincipal.sbBuscaBaseClick(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
    begin
      Filter := 'FireBird/InterBase Database(*.fdb)|*.fdb';
      if Execute then eBase.Text := FileName;
    end;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  reg: TRegistry;
  i: integer;

begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if reg.OpenKey('\Software\StartNet', false) then
    begin
      eBase.Text := reg.ReadString('Base');
      eDirBackup.Text := reg.ReadString('BackupDir');
      for i := Low(Dia) to High(Dia) do
      begin
        try
          clbSemana.Checked[i-1] := reg.ReadBool(Dia[i]);
        except
          on E:Exception do
          Application.MessageBox(Pchar('Erro1.'+#13+
                                       'Contate o administrador do sistema.'+#13+
                                       'Erro:'+#13+e.Message),
                                       'Erro', MB_ICONERROR + MB_OK);
        end;
      end;
      if reg.OpenKey('\Software\StartNet\Horarios', false) then
      begin
        try
          for i := 0 to (clbHorarios.Items.Count - 1) do
          begin
            try
              clbHorarios.Checked[i] := reg.ReadBool(FormatFloat('00', i) + ':00');
            except
              on E:Exception do
              Application.MessageBox(Pchar('Erro2.'+#13+
                                           'Contate o administrador do sistema.'+#13+
                                           'Erro:'+#13+e.Message),
                                           'Erro', MB_ICONERROR + MB_OK);
            end;
          end;
        except
          on E:Exception do
          Application.MessageBox(Pchar('Erro3.'+#13+
                                       'Contate o administrador do sistema.'+#13+
                                       'Erro:'+#13+e.Message),
                                       'Erro', MB_ICONERROR + MB_OK);
        end;
      end;
    end;
  finally
    reg.Free;
  end;
end;

procedure TFPrincipal.sbCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.sbOkClick(Sender: TObject);
var
  reg: TRegistry;
  i: integer;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if reg.OpenKey('\Software\StartNet', true) then
    begin
      reg.WriteString('Base', eBase.Text);
      reg.WriteString('BackupDir', eDirBackup.Text);
      for i := Low(Dia) to High(Dia) do
        reg.WriteBool(Dia[i], clbSemana.Checked[i-1]);
      if reg.OpenKey('\Software\StartNet\Horarios', true) then
      begin
        for i := 0 to (clbHorarios.Items.Count - 1) do
          begin
            try
              reg.WriteBool(FormatFloat('00', i) + ':00', clbHorarios.Checked[i]);
            except
              on E:Exception do
              Application.MessageBox(Pchar('Erro1.'+#13+
                                           'Contate o administrador do sistema.'+#13+
                                           'Erro:'+#13+e.Message),
                                           'Erro', MB_ICONERROR + MB_OK);
            end;
          end;
      end;
    end;
    try
      reg.CloseKey;
    except
      on E:Exception do
      Application.MessageBox(Pchar('Erro2.'+#13+
                                   'Contate o administrador do sistema.'+#13+
                                   'Erro:'+#13+e.Message),
                                   'Erro', MB_ICONERROR + MB_OK);
    end;
  finally
    reg.Free;
  end;
  Close;
end;

end.

