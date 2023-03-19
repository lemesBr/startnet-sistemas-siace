unit UCadNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Buttons, ImgList, ToolWin, SUIButton,
  AdvGlowButton, AdvPanel;

type
  TFrmCadastroNovo = class(TForm)
    Panel1: TAdvPanel;
    Panel2: TAdvPanel;
    btnLocalizar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnexcluir: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnNovo: TAdvGlowButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroNovo: TFrmCadastroNovo;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmCadastroNovo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key:= #0;
    SelectNext(ActiveControl, true, true);
  end;
end;

procedure TFrmCadastroNovo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    vk_f2:begin
      if (btnLocalizar.Enabled) and (BtnNovo.Enabled) then
        btnLocalizar.Click;
    end;
    vk_f5: begin
      if btnnovo.Enabled then
        btnnovo.Click;
    end;
    vk_f6: begin
      if btnSalvar.Enabled then
        btnSalvar.Click;
    end;
    vk_f7: begin
      if btncancelar.Enabled then
        btncancelar.Click;
    end;
    vk_f8: begin
      if btnEditar.Enabled then
        btnEditar.Click;
    end;
    vk_f9: begin
      if btnexcluir.Enabled then
        btnexcluir.Click;
    end;
  end;
end;

end.
