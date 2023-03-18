unit ClientesaddPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, StdCtrls, SUIButton, SUIDBCtrls, Buttons,
  ExtCtrls, Mask, ToolEdit, IBSQL, DB, sBitBtn;

type
  TFormAddClientesPedido = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn1: TsBitBtn;
    BitBtn2: TsBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    DBComboCliente: TComboEdit;
    Label14: TLabel;
    Label13: TLabel;
    Edit7: TEdit;
    SPC_VENDA: TIBSQL;
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure DBComboClienteChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddClientesPedido: TFormAddClientesPedido;

implementation

uses ConsClientes, ModulodeDados;

{$R *.dfm}

function RemoveChar(Const Texto:String):String; 
  // 
  // Remove caracteres de uma string deixando apenas numeros 
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure TFormAddClientesPedido.DBComboClienteButtonClick(
  Sender: TObject);
begin
      FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsClientes.ShowModal;



      DBComboCliente.Text := DM.SDS_ClientesCODIGO.text;
      edit1.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Edit2.Text := DM.SDS_ClientesENDERECO.AsString;
      MaskEdit1.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Edit8.Text :=    DM.SDS_ClientesRG_IE.Text;
      Edit9.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Edit5.Text :=   dm.SDS_ClientesCIDADE.AsString;
      edit4.Text :=   DM.Sds_clientesBairro.Text;
      Edit11.Text := removechar(DM.SDS_ClientesCEP.Text);
      edit6.Text  := DM.SDS_ClientesUF.Text;
      edit10.Text := DM.SDS_ClientesCOD_IBGE.Text;
      edit3.text :=  DM.SDS_ClientesNUMERO.Text;
      edit12.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      //Sds_pedidosPROD_RURAL.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      
end;


procedure TFormAddClientesPedido.DBComboClienteChange(Sender: TObject);
begin
IF (DBComboCliente.Text>='A') AND (DBComboCliente.Text<='Z') THEN
EDIT7.Text:='LETRAS';

IF (DBComboCliente.Text>='0') AND (DBComboCliente.Text<='9') THEN
EDIT7.Text:='NUMEROS';

IF DBComboCliente.Text='' THEN
EDIT7.Text:='';
end;

procedure TFormAddClientesPedido.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormAddClientesPedido.DBComboClienteExit(Sender: TObject);
begin
if edit7.Text='LETRAS' THEN
  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;

   ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);


  IF ACHOU=FALSE THEN
  begin
  DBComboClienteButtonClick(sender);
  end;


  IF ACHOU=TRUE THEN
  begin
      DBComboCliente.Text := DM.SDS_ClientesCODIGO.text;
      edit1.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Edit2.Text := DM.SDS_ClientesENDERECO.AsString;
      MaskEdit1.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Edit8.Text :=    DM.SDS_ClientesRG_IE.Text;
      Edit9.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Edit5.Text :=   dm.SDS_ClientesCIDADE.AsString;
      edit4.Text :=   DM.Sds_clientesBairro.Text;
      Edit11.Text := removechar(DM.SDS_ClientesCEP.Text);
      edit6.Text  := DM.SDS_ClientesUF.Text;
      edit10.Text := DM.SDS_ClientesCOD_IBGE.Text;
      edit3.text :=  DM.SDS_ClientesNUMERO.Text;
      edit12.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  end;
  end else

IF EDIT7.Text='NUMEROS' THEN
BEGIN
   //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);


IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
DBComboCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
      //BComboCliente.Text := DM.SDS_ClientesCODIGO.text;
      edit1.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Edit2.Text := DM.SDS_ClientesENDERECO.AsString;
      MaskEdit1.Text := DM.SDS_ClientesCPF_CNPJ.Text;
      Edit8.Text :=    DM.SDS_ClientesRG_IE.Text;
      Edit9.Text :=     DM.SDS_ClientesTELEFONE.Text;
      Edit5.Text :=   dm.SDS_ClientesCIDADE.AsString;
      edit4.Text :=   DM.Sds_clientesBairro.Text;
      Edit11.Text := removechar(DM.SDS_ClientesCEP.Text);
      edit6.Text  := DM.SDS_ClientesUF.Text;
      edit10.Text := DM.SDS_ClientesCOD_IBGE.Text;
      edit3.text :=  DM.SDS_ClientesNUMERO.Text;
      edit12.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
 end;
 end; 
end;

procedure TFormAddClientesPedido.MaskEdit1Enter(Sender: TObject);
begin
if dm.SDS_ClientesTIPO.Text = 'F' then
begin
MaskEdit1.EditMask:= '999.999.999-99;1;_';
end else
if dm.SDS_ClientesTIPO.Text = 'J' then
begin
MaskEdit1.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormAddClientesPedido.BitBtn1Click(Sender: TObject);
begin
  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
     with SPC_VENDA do
        begin
           close;
           sql.Clear;
           //if bGrava then
             //begin
                 sql.Add('UPDATE PEDIDOS SET CODIGO_CLIENTE = :CODIGO_CLIENTE, NOME_CLIENTE = :NOME_CLIENTE, ENDERECO = :ENDERECO,'+
                         'CPF_CNPJ = :CPF_CNPJ, RG_IE = :RG_IE, FONE = :FONE, CIDADE = :CIDADE, BAIRRO = :BAIRRO, UF = :UF, COD_IBGE = :COD_IBGE,'+
                         'CEP = :CEP,  NUMERO = :NUMERO,  TIPO = :TIPO, PROD_RURAL = :PROD_RURAL,  IE_PRODUTOR = :IE_PRODUTOR WHERE (CODIGO = :VDA)');


           Parambyname('VDA').AsInteger            := DM.Sds_vendasCODIGO.AsInteger;
           Parambyname('CODIGO_CLIENTE').asinteger := StrToInt(DBComboCliente.Text);
           Parambyname('NOME_CLIENTE').aSSTRING    := edit1.Text;
           Parambyname('ENDERECO').AsString        := edit2.Text;
           Parambyname('CPF_CNPJ').AsString        := MaskEdit1.text;
           Parambyname('RG_IE').AsString           := edit8.Text;
           Parambyname('FONE').AsString            := edit9.Text;
           Parambyname('CIDADE').AsString          := edit5.Text;
           Parambyname('BAIRRO').AsString          := edit4.Text;
           Parambyname('UF').AsString              := edit6.Text;
           Parambyname('COD_IBGE').AsString        := edit10.Text;
           Parambyname('CEP').AsString             := edit11.Text;
           Parambyname('NUMERO').AsString          := edit3.Text;
           if DM.SDS_ClientesPRODUTOR_RURAL.Text = 'S' THEN
           Parambyname('PROD_RURAL').AsString      := 'S'
           else
           Parambyname('PROD_RURAL').AsString      := 'N';
           Parambyname('TIPO').AsString            := DM.SDS_ClientesTIPO.text;
          ExecQuery;
        end;
        DM.IBTransaction.Commit;
    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Alterar os dados da Venda');
    end;
  finally
   SPC_VENDA.Close;
   CLOSE;
  end;

   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
     with SPC_VENDA do
        begin
           close;
           sql.Clear;
           //if bGrava then
             //begin
                 sql.Add('UPDATE CREDIARIO SET CODIGO_CLIENTE = :CODIGO_CLIENTE WHERE (CODIGO = :VDA)');

                   Parambyname('VDA').AsInteger            := DM.Sds_vendasCODIGO.AsInteger;
                   Parambyname('CODIGO_CLIENTE').asinteger := StrToInt(DBComboCliente.Text);
                     ExecQuery;
        end;
        DM.IBTransaction.Commit;
    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Alterar os dados Do crediario');
    end;
  finally
   SPC_VENDA.Close;
   CLOSE;
  end;
end;

procedure TFormAddClientesPedido.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

IF NOT (ActiveControl is TComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
