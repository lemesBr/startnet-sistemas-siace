unit Udonloadnfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ACBrNFe, pcnConversao, ACBrNFeDANFEClass, ACBrUtil,
  pcnNFeW, pcnNFeRTXT, Mask, ACBrEAD, AdvCombo, AdvMemo;

type
  TFormDonwloadNfe = class(TForm)
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Memo1: TAdvMemo;
    Memo2: TAdvMemo;
    ComboBox1: TAdvComboBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDonwloadNfe: TFormDonwloadNfe;

implementation

uses ModulodeDados, Ubibli1;

{$R *.dfm}

procedure TFormDonwloadNfe.SpeedButton1Click(Sender: TObject);
begin
 { try
    DM.ACBrNFe1 := TACBrNFe.Create(nil);
    DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.SDS_CONFIGURACOESNUMERO_SERIE.text;
    DM.ACBrNFe1.Configuracoes.Certificados.Senha := DM.SDS_CONFIGURACOESNFE_SENHA.text;
    DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName);
    DM.ACBrNFe1.Configuracoes.Arquivos.PathSchemas := 'C:\Siace\Schemas';
    DM.ACBrNFe1.Configuracoes.Arquivos.Salvar := true;
    DM.ACBrNFe1.Configuracoes.WebServices.UF := 'MT';
    case ComboBox1.ItemIndex of
      0:DM.ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
      1:DM.ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao;
    end;
    Memo1.Clear;
    Memo2.Clear;
    with DM.ACBrNFe1.DownloadNFe do begin
      Download.CNPJ := removechar(dm.SDS_EmpresaCNPJ.Text);///Edit2.Text;
      with Download.Chaves.Add do begin
        chNFe := Edit1.Text;
      end;
    end;
    try
      DM.ACBrNFe1.Download;
      Memo1.Lines.Text := DM.ACBrNFe1.WebServices.DownloadNFe.RetornoWS;
      Memo2.Lines.Text := DM.ACBrNFe1.WebServices.DownloadNFe.RetWS;
    except
      on e:Exception do Memo1.Lines.Text := e.Message;
    end;
  finally
    DM.ACBrNFe1.Free;
    DM.ACBrNFe1 := nil;
  end;  }
end;

end.
