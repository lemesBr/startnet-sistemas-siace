unit LiberacaoAcesso1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, SUIForm, Menus;

type
  TFormLiberacaoNew = class(TForm)
    TreeView1: TTreeView;
    BitBtn1: TBitBtn;
    procedure PreencherMenus(Menu: TmainMenu);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLiberacaoNew: TFormLiberacaoNew;

implementation

uses Principal;

{$R *.dfm}

procedure TFormLiberacaoNew.PreencherMenus(Menu: TMainMenu);
var
i,j,p,imgS: integer;
a,b: string;
mI,mS: TMenu;
n,sn: TTreeNode;
begin
{TreeView1.Items.Clear;
sn := nil;
for i := 0 to FormPrincipal.MainMenu1.Items.Count - 1 do
begin
mI := Itens[i];
a := mI.Items.Caption; // Titulos do menus
p := pos('&',a);
if p > 0 then
Delete(a,p,1);
n := TreeView1.Items.Add(sn,a); //nó
for j := 0 to mI.Items.Count - 1 do
begin
mS := mI.Items[j];
b := mS.Items.Caption; // Titulos dos sub-menus
p := pos('&',b);
if p > 0 then
Delete(b,p,1);
if b <> '-' then
begin
TreeView1.Items.AddChild(n,b);
end;
end;
end;
for I := 0 to TreeView1.Items.Count - 1 do
if TreeView1.Items[i].Level <> 0 then
TreeView1.Items[i].StateIndex := 1;}
end;

procedure TFormLiberacaoNew.BitBtn1Click(Sender: TObject);
begin
//PreencherMenus(FormPrincipal.MainMenu1);
//TreeView1.FullExpand;//Abre toda a lista de itens

end;

end.
