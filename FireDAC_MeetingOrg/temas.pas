unit temas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, SUIImagePanel, SUIGroupBox, SUIRadioGroup, ExtCtrls,
  StdCtrls, IniFiles, sComboBox, sLabel;

type
  TFormtemas = class(TForm)
    suiButton1: TsuiButton;
    OpenDialog1: TOpenDialog;
    ListBox1: TListBox;
    procedure suiButton1Click(Sender: TObject);
    procedure suiRadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GravarINI;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formtemas: TFormtemas;
  CaminhoDasSkins , ss : string;

  Loading : boolean;
  NewBGName : string;

  sl : TStringList;
  s : string;
  i : integer;
implementation

uses Principal,  sSkinProps, FileCtrl, sStyleSimply, sConst, sMaskData, sVclUtils;
{$R *.dfm}

procedure TFormtemas.suiButton1Click(Sender: TObject);
var
  Procurar : TSearchRec;
  Arquivos: Integer;
Begin
   CaminhoDasSkins := ExtractFilePath(Application.ExeName) + 'skins\*.skn';
  Arquivos := 0;
  Arquivos := Arquivos + faDirectory;
  Arquivos := Arquivos + faArchive;
  Arquivos := Arquivos + faAnyFile;
  if FindFirst(CaminhoDasSkins, Arquivos, Procurar) = 0 then
  begin
    repeat
      if (Procurar.Attr and Arquivos) = Procurar.Attr then
        ListBox1.Items.Add(Procurar.Name);
    until FindNext(Procurar) <> 0;
    FindClose(Procurar);
end;

{ if OpenDialog1.Execute() then
        FormPrincipal.suiFileTheme1.ThemeFile := OpenDialog1.FileName;  }

end;

procedure TFormtemas.suiRadioGroup1Click(Sender: TObject);
begin
  { Application.Minimize();
    case suiRadioGroup1.ItemIndex of
    0 : FormPrincipal.suiThemeManager1.UIStyle := MacOS;
    1 : FormPrincipal.suiThemeManager1.UIStyle := WinXP;
    2 : FormPrincipal.suiThemeManager1.UIStyle := DeepBlue;
    3 : FormPrincipal.suiThemeManager1.UIStyle := Protein;
    4 : FormPrincipal.suiThemeManager1.UIStyle := BlueGlass;
    5 : FormPrincipal.suiThemeManager1.UIStyle := FromThemeFile;
    end;
    Application.Restore();   }
end;

procedure TFormtemas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
Formtemas := nil;
end;

procedure TFormtemas.ListBox1Click(Sender: TObject);
var
  i : integer;
begin
  i := ListBox1.ItemIndex;
  ss := Copy(CaminhoDasSkins,1,Pos('*.skn',CaminhoDasSkins)-2)+'\'+ListBox1.items.strings[i];
  FormPrincipal.SkinData1.SkinFile := ss;
  if not FormPrincipal.SkinData1.Active Then FormPrincipal.SkinData1.Active := True;

  GravarINI
  
end;

procedure TFormtemas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormtemas.GravarINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     INI.WriteString('Temas','Tema',ss);
   finally
     INI.Free ;
  end ;
  end ;



procedure TFormtemas.FormShow(Sender: TObject);
begin
{   sl := TStringList.Create;
  FormPrincipal.SkinData1.SkinName(sl);
  ComboBox1.Clear;
  ComboBox1.Items.Add('Skins directory...');
  for i := 0 to sl.Count - 1 do begin
    ComboBox1.Items.Add(sl[i]);
  end;
  // If no available skins...
  if ComboBox1.Items.Count < 1 then begin
    ComboBox1.Items.Add('No skins available');
    ComboBox1.ItemIndex := 0;
  end
  else begin
    // Sets ComboBox to current skin name value without skin changing
    Loading := True;
    ComboBox1.ItemIndex := sl.IndexOf(FormPrincipal.SkinData1.SkinName) + 1;
    Loading := False;
  end;
  FreeAndNil(sl);}

suiButton1Click(Sender);
end;

procedure TFormtemas.ComboBox1Change(Sender: TObject);

begin
  {if Loading then Exit;
  if ComboBox1.ItemIndex = 0 then begin
    if SelectDirectory(s, [], 0) then begin
      FormPrincipal.SkinData1.SkinDirectory := s;
      sl := TStringList.Create;
      FormPrincipal.SkinData1.SkinName := FormPrincipal.SkinData1.GetSkinNames(sl);
      ComboBox1.Items.Clear;
      ComboBox1.Items.Add('Skins directory...');
      for i := 0 to sl.Count - 1 do begin
        ComboBox1.Items.Add(sl[i]);
      end;
      FreeAndNil(sl);
    end;
  end
  else begin
    FormPrincipal.SkinData1.SkinName := ComboBox1.Text;
  end;
  GravarINI; }
end;

end.
