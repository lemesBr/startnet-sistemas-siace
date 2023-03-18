unit Unit3SobreCad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ShellApi, Buttons, jpeg;

type
  TSobreFrm = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Image3: TImage;
    Label7: TLabel;
    Label12: TLabel;
    Image1: TImage;
    Image2: TImage;
    Bevel1: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label11Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SobreFrm: TSobreFrm;

implementation

{$R *.DFM}


procedure TSobreFrm.FormClick(Sender: TObject);
begin
self.close;
end;

procedure TSobreFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then
 begin
  self.close;
 end; 
end;

procedure TSobreFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TSobreFrm.Label11Click(Sender: TObject);
begin
ShellExecute(Self.Handle, nil, PChar('mailto:tksltda@uol.com.br'
      + '?Subject=E-mail TK-ADM&Body=E-mail enviado a partir do TK-ADM v1.0 '#13#10' Registrado para: '+label9.caption), nil, nil, SW_NORMAL);
end;

procedure TSobreFrm.Label10Click(Sender: TObject);
begin
ShellExecute(Self.Handle, nil, 'www.igara.com.br', nil, nil, SW_NORMAL);

end;

procedure TSobreFrm.FormShow(Sender: TObject);
begin
//label9.Caption:=principalfrm.label1.caption;
end;

procedure TSobreFrm.BitBtn1Click(Sender: TObject);
begin
self.Close;
end;

end.
