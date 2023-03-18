unit FormConsultaCPF_CNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ACBrBase, ACBrSocket, ACBrConsultaCPF,
  ComCtrls, Mask, Buttons, ACBrConsultaCNPJ;

type
  TFConsultaCPF_CNPJ = class(TForm)
    ConsultaCPF: TACBrConsultaCPF;
    Panel1: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    pgcCPF_CNPJ: TPageControl;
    tbCPF: TTabSheet;
    EditCaptcha: TEdit;
    EditCPF: TEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    btnConsultar: TButton;
    EditDtNasc: TEdit;
    tbCNPJ: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    ButBuscar: TBitBtn;
    edtCaptchaCNPJ: TEdit;
    EditCNPJ: TMaskEdit;
    Panel4: TPanel;
    Image2: TImage;
    Label5: TLabel;
    ConsultaCNPJ: TACBrConsultaCNPJ;
    procedure Button1Click(Sender: TObject);
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure ButBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NomeCliente,CNPJRazaoSocial,CNPJFantasia,CNPJEndereco,
    CNPJNumero,CNPJComplemento,CNPJBairro,CNPJCidade,CNPJUF,CNPJCEP,CNPJEmail,CNPJTelefone: string;
    CNPJAbertura: TDateTime;
    procedure AtualizaCaptcha;
    procedure AtualizaCaptchaCNPJ;
  end;

var
  FConsultaCPF_CNPJ: TFConsultaCPF_CNPJ;

implementation

{$R *.dfm}

procedure TFConsultaCPF_CNPJ.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFConsultaCPF_CNPJ.AtualizaCaptcha;
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ConsultaCPF.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
  finally
    Stream.Free;
  end;
end;

procedure TFConsultaCPF_CNPJ.LabAtualizarCaptchaClick(Sender: TObject);
begin
  AtualizaCaptcha;
end;

procedure TFConsultaCPF_CNPJ.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ConsultaCPF.Consulta(EditCPF.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
      NomeCliente:= ConsultaCPF.Nome;
      Close;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TFConsultaCPF_CNPJ.AtualizaCaptchaCNPJ;
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ConsultaCNPJ.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile(ImgArq);
    Image2.Picture.LoadFromFile(ImgArq);

    edtCaptchaCNPJ.Clear;
  finally
    Stream.Free;
  end;
end;

procedure TFConsultaCPF_CNPJ.Label5Click(Sender: TObject);
begin
  AtualizaCaptchaCNPJ;
end;

procedure TFConsultaCPF_CNPJ.ButBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  if edtCaptchaCNPJ.Text <> '' then
  begin
    if ConsultaCNPJ.Consulta(EditCNPJ.Text,edtCaptchaCNPJ.Text,False) then
    begin
      CNPJRazaoSocial := ConsultaCNPJ.RazaoSocial;
      CNPJAbertura    := ConsultaCNPJ.Abertura;
      CNPJFantasia  := ConsultaCNPJ.Fantasia;
      CNPJEndereco    := ConsultaCNPJ.Endereco;
      CNPJNumero      := ConsultaCNPJ.Numero;
      CNPJComplemento := ConsultaCNPJ.Complemento;
      CNPJBairro    := ConsultaCNPJ.Bairro;
      CNPJCidade     := ConsultaCNPJ.Cidade;
      CNPJUF        := ConsultaCNPJ.UF;
      CNPJCEP        := ConsultaCNPJ.CEP;
      CNPJEmail     := ConsultaCNPJ.EndEletronico;
      CNPJTelefone    := ConsultaCNPJ.Telefone;
      Close;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    edtCaptchaCNPJ.SetFocus;
  end;
end;

end.
