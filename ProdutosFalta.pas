unit ProdutosFalta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Mask, DBCtrls, SUIButton, ExtCtrls,
  rxToolEdit, RXDBCtrl, sLabel;

type
  TFormProdutosFalta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    myLabel3d1: TsLabelFX;
    btnSalvar: TsuiButton;
    btnCancelar: TsuiButton;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    DBEdit2: TRxDBComboEdit;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    DBDateEdit1: TDBDateEdit;
    Edit1: TDBEdit;
    suiButton3: TsuiButton;
    procedure FormShow(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2ButtonClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosFalta: TFormProdutosFalta;

implementation

uses ModulodeDados, Principal, ConsProdutos, RelPedidoCompras;

{$R *.dfm}

procedure TFormProdutosFalta.FormShow(Sender: TObject);
begin
dm.sds_produtos_Falta.Active := False;
dm.sds_produtos_Falta.Active := true;
suiButton1Click(Sender);
{dm.sds_produtos_Falta.Insert;
dm.sds_produtos_Falta.Edit; }

{If DM.SDS_Usuarios.locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[])=True then
BEGIN
dm.sds_produtos_FaltaCOD_USUARIO.text :=  DM.SDS_UsuariosCODIGO.Text;
end;
edit1.Text :=  DM.SDS_PRODUTOSDESCRICAO.Text;
dm.sds_produtos_FaltaCodigo_seq.text := DM.SDS_EmpresaCODIGO.Text;
dm.sds_produtos_FaltaCOD_EMPRESA.text := DM.SDS_EmpresaCODIGO.Text;
dm.sds_produtos_FaltaCOD_PRODUTO.text := DM.SDS_PRODUTOSCODIGO.Text;
dm.sds_produtos_FaltaFRACAO.text := DM.SDS_PRODUTOSFRACAO.Text;
DBDateEdit1.Date := Date; }
end;

procedure TFormProdutosFalta.DBEdit7Exit(Sender: TObject);
begin
DM.sds_produtos_FaltaQUANT_FRACAO.AsFloat := (DM.sds_produtos_FaltaQUANT_INTEIRA.AsFloat * DM.sds_produtos_FaltaFRACAO.AsFloat);
end;

procedure TFormProdutosFalta.btnSalvarClick(Sender: TObject);
begin
DM.sds_produtos_Falta.Post;
DM.sds_produtos_Falta.ApplyUpdates(0);
 Panel3.Enabled := false;
  suiButton1.Enabled := true;
  btnSalvar.Enabled := False;
end;

procedure TFormProdutosFalta.btnCancelarClick(Sender: TObject);
begin

Close;
end;

procedure TFormProdutosFalta.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormProdutosFalta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
Formprodutosfalta:=nil;
end;

procedure TFormProdutosFalta.DBEdit2ButtonClick(Sender: TObject);
begin
     dm.sds_produtos_Falta.Edit;
     edit1.Clear;
     If DM.SDS_Usuarios.locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[])=True then
     BEGIN
     dm.sds_produtos_FaltaCOD_USUARIO.text :=  DM.SDS_UsuariosCODIGO.Text;
     end;
     FormConsProdutos := TFormConsProdutos.Create(self);
     FormConsProdutos.showmodal;
     edit1.Text                            :=  DM.SDS_PRODUTOSDESCRICAO.Text;
     dm.sds_produtos_FaltaCOD_PRODUTO.text := DM.SDS_PRODUTOSCODIGO.Text;
     dm.sds_produtos_FaltaFRACAO.text      := DM.SDS_PRODUTOSFRACAO.Text;

     end;

procedure TFormProdutosFalta.suiButton1Click(Sender: TObject);
begin
   Panel3.Enabled := True;
   dm.sds_produtos_Falta.Insert;
   //dm.sds_produtos_Falta.Edit;
   dm.sds_produtos_FaltaCOD_PRODUTO.text := DM.Sds_produtos_cCODIGO.Text;
   dm.sds_produtos_FaltaCodigo_seq.text  := DM.SDS_EmpresaCODIGO.Text;
   dm.sds_produtos_FaltaCOD_EMPRESA.text := DM.SDS_EmpresaCODIGO.Text;

   If DM.SDS_Usuarios.locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[])=True then
   BEGIN
   dm.sds_produtos_FaltaCOD_USUARIO.text :=  DM.SDS_UsuariosCODIGO.Text;
   end;
   edit1.Clear;
   suiButton1.Enabled := False;
   btnSalvar.Enabled := true;
   DBDateEdit1.Date := Date;
   DBEdit2.SetFocus;
end;

procedure TFormProdutosFalta.DBEdit2Exit(Sender: TObject);
begin
   dm.sds_produtos_Falta.Edit;
     If DM.SDS_PRODUTOS_C.locate('codigo',DBEdit2.text,[])=True then
     BEGIN
     DBDateEdit1.Date := DATE;
     edit1.Text :=  DM.SDS_PRODUTOS_CDESCRICAO.Text;
     dm.sds_produtos_FaltaCodigo_seq.text := DM.SDS_EmpresaCODIGO.Text;
     dm.sds_produtos_FaltaCOD_EMPRESA.text := DM.SDS_EmpresaCODIGO.Text;
     dm.sds_produtos_FaltaCOD_PRODUTO.text := DM.SDS_PRODUTOS_CCODIGO.Text;
     dm.sds_produtos_FaltaFRACAO.text := DM.SDS_PRODUTOSFRACAO.Text;
     If DM.SDS_Usuarios.locate('USUARIO',FORMPRINCIPAL.USERLOGADO,[])=True then
     BEGIN
     dm.sds_produtos_FaltaCOD_USUARIO.text :=  DM.SDS_UsuariosCODIGO.Text;
      end;
      end else
       If  not DM.SDS_PRODUTOS.locate('CODIGO',DBEdit2.text,[])=True then
     BEGIN
       ShowMessage('Produtos não Localizado');
     end;
end;

procedure TFormProdutosFalta.suiButton2Click(Sender: TObject);
begin
 try
If FormPedidoCompra = nil   then
    begin
     FormPedidoCompra:=TFormPedidoCompra.Create(self);
      FormPedidoCompra.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulario de Impressaão de pedidos de compras!!');
end;
end;

procedure TFormProdutosFalta.DBEdit2Enter(Sender: TObject);
begin
    IF DBEdit2.Text >'' then
    BEGIN
    If DM.SDS_PRODUTOS_C.locate('codigo',DBEdit2.text,[])=True then
     BEGIN
     DBDateEdit1.Date := DATE;
     edit1.Text :=  DM.SDS_PRODUTOS_CDESCRICAO.Text;
     dm.sds_produtos_FaltaCodigo_seq.text := DM.SDS_EmpresaCODIGO.Text;
     dm.sds_produtos_FaltaCOD_EMPRESA.text := DM.SDS_EmpresaCODIGO.Text;
     dm.sds_produtos_FaltaCOD_PRODUTO.text := DM.SDS_PRODUTOS_CCODIGO.Text;
     dm.sds_produtos_FaltaFRACAO.text := DM.SDS_PRODUTOS_CFRACAO.Text;
end;
end;
end;

procedure TFormProdutosFalta.suiButton3Click(Sender: TObject);
begin
dm.sds_produtos_Falta.Cancel;
 Panel3.Enabled := false;
  suiButton1.Enabled := true;
  btnSalvar.Enabled := False;
end;

end.
