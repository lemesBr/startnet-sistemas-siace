unit UDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls, Buttons, sBitBtn, sLabel;

type
  TfrmDialog = class(TForm)
    ICOQ: TImage;
    Men: TsLabelFX;
    Panel1: TPanel;
    Panel2: TPanel;
    Nao: TsBitBtn;
    Sim: TsBitBtn;
    IcoE: TImage;
    IcoI: TImage;
    LeiaMais: TSpeedButton;
    Panel3: TPanel;
    Mais: TPanel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SimClick(Sender: TObject);
    procedure NaoClick(Sender: TObject);
    procedure LeiaMaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OP: Boolean;
    ICONE: string;
    LeiaMaisMensagen: String;
  end;
  function KDialog( Texto, Titulo, Icone: String; const LeiaMaisMen: string = ''  ): Boolean;

var
  frmDialog: TfrmDialog;

implementation

{$R *.dfm}

function KDialog( Texto, Titulo, Icone: String; const LeiaMaisMen: string = '' ): Boolean;
begin

   Application.CreateForm( TfrmDialog, frmDialog );
   frmDialog.OP := False;
   frmDialog.Men.Caption := Texto;
   frmDialog.Caption := Titulo;
   frmDialog.ICONE := Icone;
   frmDialog.LeiaMaisMensagen := LeiaMaisMen;
   frmDialog.ShowModal;
   if frmDialog.OP then
      Result := True
   else
      Result := false;
end;


procedure TfrmDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmDialog.FormShow(Sender: TObject);
begin
      Height := 110 + Men.Height;
   if (80 + Men.Width) < 270 then
       begin
          Width := 270;
       end
   else
       Width := 80 + Men.Width;
   if trim( ICONE ) = 'PERGUNTA' then
      begin
         ICOQ.Visible := True;
         IcoE.Visible := False;
         IcoI.Visible := false;
      end;
   if trim( ICONE ) = 'ERRO' then
      begin
         ICOQ.Visible := False;
         IcoE.Visible := True;
         IcoI.Visible := false;
         Nao.Visible := False;
         if LeiaMaisMensagen = '' then
            LeiaMais.Visible := False
         else
            LeiaMais.Visible := True;
         Sim.Caption := 'OK';
      end;
   if trim( ICONE ) = 'INFO' then
      begin
         ICOQ.Visible := False;
         IcoE.Visible := false;
         IcoI.Visible := true;
         Nao.Visible := False;
         Sim.Caption := 'OK';
      end;
   if trim( ICONE ) = 'INFO2' then
      begin
         ICOQ.Visible := False;
         IcoE.Visible := false;
         IcoI.Visible := true;
         Nao.Visible := False;
         if LeiaMaisMensagen = '' then
            LeiaMais.Visible := False
         else
            LeiaMais.Visible := True;
         Sim.Caption := 'OK';
      end;

end;

procedure TfrmDialog.LeiaMaisClick(Sender: TObject);
begin
   if Mais.Visible then
      begin
         Mais.Visible := False;
         Height := Height - 126;

      end
   else
      begin
         Memo1.Clear;
         Memo1.Text := LeiaMaisMensagen;
         Mais.Visible := True;
         Height := Height + 126;
         if Width < 430 then
            Width := 430;
      end;
end;

procedure TfrmDialog.SimClick(Sender: TObject);
begin
   OP := True;
   Close;
end;

procedure TfrmDialog.NaoClick(Sender: TObject);
begin
   OP := False;
   Close;
end;

end.
