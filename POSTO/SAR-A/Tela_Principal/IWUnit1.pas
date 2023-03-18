unit IWUnit1;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWHTMLControls, jpeg, Graphics,
  IWExtCtrls, Classes, Controls, IWControl, IWCompLabel,
  Unit_Controle_Vendas, Unit_Controle_Abastecimentos, inifiles;

type
  TformMain = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWHRule1: TIWHRule;
    IWHRule2: TIWHRule;
    IWImage1: TIWImage;
    IWImage2: TIWImage;
    IWLabel6: TIWLabel;
    IWLink1: TIWLink;
    IWLabel2: TIWLabel;
    IWImage3: TIWImage;
    IWLabel7: TIWLabel;
    IWURL1: TIWURL;
    IWLink2: TIWLink;
    IWLabel8: TIWLabel;
    IWImage4: TIWImage;
    procedure IWLink1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
  public
   FAbastecimentoListFrm: TAbastecimentosListFrm ;
   FVendasListFrm: TVendasListFrm
  end;

implementation
{$R *.dfm}

uses
  ServerController, UnitFuncoes, DatamoduleUnit;

procedure TformMain.IWLink1Click(Sender: TObject);
begin
 FAbastecimentoListFrm := TAbastecimentosListFrm.Create(WebApplication);
 FAbastecimentoListFrm.IWLabel5.Caption := self.IWLabel5.Caption;
 FAbastecimentoListFrm.Show;
end;

procedure TformMain.IWAppFormCreate(Sender: TObject);
var
 ArquivoIni: TIniFile;
 Path : String;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);

try
 Datamodule1.IBDatabase1.Connected := false;

 Datamodule1.IBDatabase1.params.Clear;
 Datamodule1.IBDatabase1.params.add('user_name=' + ArquivoIni.ReadString('IBDB', 'UserName', 'SYSDBA'));
 Datamodule1.IBDatabase1.params.add('password=' + ArquivoIni.ReadString('IBDB', 'Password', 'masterkey'));
 Datamodule1.IBDatabase1.LoginPrompt := ArquivoIni.ReadBool('IBDB', 'LoginPrompt', False);
 Datamodule1.IBDatabase1.DatabaseName := ArquivoIni.ReadString('IBDB', 'IbDBPath', 'C:\TkPosto\Banco\TkPosto.IB');

 if ArquivoIni.ReadBool('IBDB', 'ConexaoRemota', False) then
  Datamodule1.IBDatabase1.DatabaseName := ArquivoIni.ReadString('IBDB', 'IbServerName', '') + ':' + Datamodule1.IBDatabase1.DatabaseName;

 Datamodule1.IBDatabase1.Connected := true;
finally
 ArquivoIni.free;
end;

end;

procedure TformMain.IWLink2Click(Sender: TObject);
begin
 FVendasListFrm := TVendasListFrm.Create(WebApplication);
 FVendasListFrm.IWLabel5.Caption := self.IWLabel5.Caption;
 FVendasListFrm.Show;
end;

end.
