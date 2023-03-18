unit clientesaddVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,  SUIButton,
  SUIDBCtrls, FDvGlowButton, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
   TFormClientesAddVendas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label13: TLabel;
    suiDBCheckBox1: TsuiDBCheckBox;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    btnimprimir: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Qry_cliente: TSQLQuery;
    Qry_clienteCODIGO: TIntegerField;
    Qry_clienteNOME_RS: TStringField;
    Qry_clienteENDERECO: TStringField;
    Qry_clienteCIDADE: TStringField;
    Qry_clienteUF: TStringField;
    Qry_clienteCEP: TStringField;
    Qry_clienteTELEFONE: TStringField;
    Qry_clienteTELEFONE2: TStringField;
    Qry_clienteEMAIL: TStringField;
    Qry_clienteNASCIMENTO_IA: TDateField;
    Qry_clienteSEXO: TStringField;
    Qry_clienteFOTO_LOGOMARCA: TBlobField;
    Qry_clienteBAIRRO: TStringField;
    Qry_clienteFAX: TStringField;
    Qry_clienteCELULAR: TStringField;
    Qry_clienteUSERCAD: TStringField;
    Qry_clienteDATACAD: TDateField;
    Qry_clienteCPF_CNPJ: TStringField;
    Qry_clienteOBSERVACOES: TBlobField;
    Qry_clienteCREDIARIO: TStringField;
    Qry_clienteESTADOCIVIL: TStringField;
    Qry_clienteRESIDENCIA_SEDE: TStringField;
    Qry_clientePAI: TStringField;
    Qry_clienteMAE: TStringField;
    Qry_clienteNOME_CONJUGE: TStringField;
    Qry_clienteCPF_CONJUGE: TStringField;
    Qry_clienteNASCIMENTO_CONJUGE: TDateField;
    Qry_clienteTRABALHO_CONJUGE: TStringField;
    Qry_clientePROFISSAO_CONJUGE: TStringField;
    Qry_clienteLOCALTRABALHO: TStringField;
    Qry_clientePROFISSAO_RA: TStringField;
    Qry_clienteTELEFONE_TRABALHO: TStringField;
    Qry_clienteFAX_TRABALHO: TStringField;
    Qry_clienteOBSERVACOES_TRABALHO: TBlobField;
    Qry_clienteBANCO: TStringField;
    Qry_clienteNOME_AGENCIA: TStringField;
    Qry_clienteNUMERO_AGENCIA: TStringField;
    Qry_clienteCONTA_CORRENTE: TIntegerField;
    Qry_clienteNOME1_REFERENCIA: TStringField;
    Qry_clienteNOME2_REFERENCIA: TStringField;
    Qry_clienteTELEFONE1_REFERENCIA: TStringField;
    Qry_clienteTELEFONE2_REFERENCIA: TStringField;
    Qry_clienteBANCO_REFERENCIA: TStringField;
    Qry_clienteAPELIDO: TStringField;
    Qry_clienteTIPO: TStringField;
    Qry_clienteOBSERVACOES_COMERCIAIS: TBlobField;
    Qry_clienteOBSERVACOES_BANCO: TBlobField;
    Qry_clientePG_CREDIARIO: TStringField;
    Qry_clientePG_CHEQUE: TStringField;
    Qry_clientePG_FINANCEIRA: TStringField;
    Qry_clienteREMUNERACAO: TFMTBCDField;
    Qry_clienteNUMERO: TStringField;
    Qry_clienteCOMPLEMENTO: TStringField;
    Qry_clienteCOD_EMPRESA: TIntegerField;
    Qry_clienteORGAO_EMISSOR: TStringField;
    Qry_clienteDATA_EMISSAO_RG: TDateField;
    Qry_clienteNATURALIDADE: TStringField;
    Qry_clienteNATURALIDADE_UF: TStringField;
    Qry_clienteCOD_CIDADE: TIntegerField;
    Qry_clienteCOD_BAIRRO: TIntegerField;
    Qry_clienteDATA_ALTERACAO: TDateField;
    Qry_clienteCOD_ZONA: TIntegerField;
    Qry_clientePONTO_REFERENCIA: TStringField;
    Qry_clienteATIVO: TStringField;
    Qry_clienteCONTATO1: TStringField;
    Qry_clienteCONTATO2: TStringField;
    Qry_clienteCX_POSTAL: TStringField;
    Qry_clienteVALOR_ALUGUEL: TFMTBCDField;
    Qry_clienteTEMPO_RESIDENCIA: TStringField;
    Qry_clienteNUMERO_DEPENDENTES: TIntegerField;
    Qry_clienteENDERECO_REFERENCIA1: TStringField;
    Qry_clienteENDERECO_REFERENCIA2: TStringField;
    Qry_clienteDATA_ADMISSAO_REFERENCIA1: TDateField;
    Qry_clienteDATA_ADMISSAO_REFERENCIA2: TDateField;
    Qry_clienteRG_CONJUGUE: TStringField;
    Qry_clienteRENDA_CONJUGUE: TFMTBCDField;
    Qry_clienteDATA_ADMINSSAO_CONJUGUE: TDateField;
    Qry_clienteFONE_CONJUGUE: TStringField;
    Qry_clienteENDERECO_COBRANCA: TStringField;
    Qry_clienteCEP_COBRANCA: TStringField;
    Qry_clienteCOD_CIDADE_COBRANCA: TIntegerField;
    Qry_clienteCX_POSTAL_COBRANCA: TStringField;
    Qry_clienteLIMITE_DE_CREDITO: TFMTBCDField;
    Qry_clienteINSC_MUNICIPAL: TStringField;
    Qry_clientePRODUTOR_RURAL: TStringField;
    Qry_clienteINSC_PRODUTOR_RURAL: TStringField;
    Qry_clienteCOD_BAIRRO_COBRANCA: TIntegerField;
    Qry_clienteCIDADE_COBRANCA: TStringField;
    Qry_clienteBAIRRO_COBRANCA: TStringField;
    Qry_clienteUF_COBRANCA: TStringField;
    Qry_clienteCONTA_BANCARIA: TStringField;
    Qry_clienteNOME_PROPRIEDADE: TStringField;
    Qry_clienteNOME_VETERINARIO: TStringField;
    Qry_clienteSOCIO1: TStringField;
    Qry_clienteCPFSOCIO1: TStringField;
    Qry_clienteDATANASCSOCIO1: TDateField;
    Qry_clienteSOCIO2: TStringField;
    Qry_clienteCPFSOCIO2: TStringField;
    Qry_clienteDATANASCSOCIO2: TDateField;
    Qry_clienteSOCIO3: TStringField;
    Qry_clienteCPFSOCIO3: TStringField;
    Qry_clienteDATANASCSOCIO3: TDateField;
    Qry_clienteSOCIO4: TStringField;
    Qry_clienteCPFSOCIO4: TStringField;
    Qry_clienteDATANASCSOCIO4: TDateField;
    Qry_clienteDATAFUNDACAO: TDateField;
    Qry_clienteCAPITALSOCIAL: TFMTBCDField;
    Qry_clienteFATURAMENTOBRUTO: TFMTBCDField;
    Qry_clienteREGJUNTACOM: TStringField;
    Qry_clienteENDSOCIO1: TStringField;
    Qry_clienteRGSOCIO1: TIntegerField;
    Qry_clienteENDSOCIO2: TStringField;
    Qry_clienteRGSOCIO2: TIntegerField;
    Qry_clienteENDSOCIO3: TStringField;
    Qry_clienteRGSOCIO3: TIntegerField;
    Qry_clienteENDSOCIO4: TStringField;
    Qry_clienteRGSOCIO4: TIntegerField;
    Qry_clienteAUTORIZADO1: TStringField;
    Qry_clienteAUTORIZADO2: TStringField;
    Qry_clienteAUTORIZADO3: TStringField;
    Qry_clienteCPF_AUT1: TStringField;
    Qry_clienteCPF_AUT2: TStringField;
    Qry_clienteCPF_AUT3: TStringField;
    Qry_clienteFUNCIONARIO: TStringField;
    Qry_clienteCTPS: TStringField;
    Qry_clienteTESTA_CREDITO: TStringField;
    Qry_clienteTESTA_LIMITE: TStringField;
    Qry_clienteRG_IE: TStringField;
    Qry_clienteCOD_CONV: TIntegerField;
    Qry_clienteFOTO: TStringField;
    Qry_clienteDATA_ULTIMA_COMPRA: TDateField;
    Qry_clienteFUNC_SALARIO: TFMTBCDField;
    Qry_clienteFUNC_DATA_ADMISSAO: TDateField;
    Qry_clienteFUNC_SITUACAO: TStringField;
    Qry_clienteFUNC_DEMISSAO: TDateField;
    Qry_clienteFUNC_CARGO: TStringField;
    dsp_clientes: TDataSetProvider;
    cds_cliente: TClientDataSet;
    cds_clienteCODIGO: TIntegerField;
    cds_clienteNOME_RS: TStringField;
    cds_clienteENDERECO: TStringField;
    cds_clienteCIDADE: TStringField;
    cds_clienteUF: TStringField;
    cds_clienteCEP: TStringField;
    cds_clienteTELEFONE: TStringField;
    cds_clienteTELEFONE2: TStringField;
    cds_clienteEMAIL: TStringField;
    cds_clienteNASCIMENTO_IA: TDateField;
    cds_clienteSEXO: TStringField;
    cds_clienteFOTO_LOGOMARCA: TBlobField;
    cds_clienteBAIRRO: TStringField;
    cds_clienteFAX: TStringField;
    cds_clienteCELULAR: TStringField;
    cds_clienteUSERCAD: TStringField;
    cds_clienteDATACAD: TDateField;
    cds_clienteCPF_CNPJ: TStringField;
    cds_clienteOBSERVACOES: TBlobField;
    cds_clienteCREDIARIO: TStringField;
    cds_clienteESTADOCIVIL: TStringField;
    cds_clienteRESIDENCIA_SEDE: TStringField;
    cds_clientePAI: TStringField;
    cds_clienteMAE: TStringField;
    cds_clienteNOME_CONJUGE: TStringField;
    cds_clienteCPF_CONJUGE: TStringField;
    cds_clienteNASCIMENTO_CONJUGE: TDateField;
    cds_clienteTRABALHO_CONJUGE: TStringField;
    cds_clientePROFISSAO_CONJUGE: TStringField;
    cds_clienteLOCALTRABALHO: TStringField;
    cds_clientePROFISSAO_RA: TStringField;
    cds_clienteTELEFONE_TRABALHO: TStringField;
    cds_clienteFAX_TRABALHO: TStringField;
    cds_clienteOBSERVACOES_TRABALHO: TBlobField;
    cds_clienteBANCO: TStringField;
    cds_clienteNOME_AGENCIA: TStringField;
    cds_clienteNUMERO_AGENCIA: TStringField;
    cds_clienteCONTA_CORRENTE: TIntegerField;
    cds_clienteNOME1_REFERENCIA: TStringField;
    cds_clienteNOME2_REFERENCIA: TStringField;
    cds_clienteTELEFONE1_REFERENCIA: TStringField;
    cds_clienteTELEFONE2_REFERENCIA: TStringField;
    cds_clienteBANCO_REFERENCIA: TStringField;
    cds_clienteAPELIDO: TStringField;
    cds_clienteTIPO: TStringField;
    cds_clienteOBSERVACOES_COMERCIAIS: TBlobField;
    cds_clienteOBSERVACOES_BANCO: TBlobField;
    cds_clientePG_CREDIARIO: TStringField;
    cds_clientePG_CHEQUE: TStringField;
    cds_clientePG_FINANCEIRA: TStringField;
    cds_clienteREMUNERACAO: TFMTBCDField;
    cds_clienteNUMERO: TStringField;
    cds_clienteCOMPLEMENTO: TStringField;
    cds_clienteCOD_EMPRESA: TIntegerField;
    cds_clienteORGAO_EMISSOR: TStringField;
    cds_clienteDATA_EMISSAO_RG: TDateField;
    cds_clienteNATURALIDADE: TStringField;
    cds_clienteNATURALIDADE_UF: TStringField;
    cds_clienteCOD_CIDADE: TIntegerField;
    cds_clienteCOD_BAIRRO: TIntegerField;
    cds_clienteDATA_ALTERACAO: TDateField;
    cds_clienteCOD_ZONA: TIntegerField;
    cds_clientePONTO_REFERENCIA: TStringField;
    cds_clienteATIVO: TStringField;
    cds_clienteCONTATO1: TStringField;
    cds_clienteCONTATO2: TStringField;
    cds_clienteCX_POSTAL: TStringField;
    cds_clienteVALOR_ALUGUEL: TFMTBCDField;
    cds_clienteTEMPO_RESIDENCIA: TStringField;
    cds_clienteNUMERO_DEPENDENTES: TIntegerField;
    cds_clienteENDERECO_REFERENCIA1: TStringField;
    cds_clienteENDERECO_REFERENCIA2: TStringField;
    cds_clienteDATA_ADMISSAO_REFERENCIA1: TDateField;
    cds_clienteDATA_ADMISSAO_REFERENCIA2: TDateField;
    cds_clienteRG_CONJUGUE: TStringField;
    cds_clienteRENDA_CONJUGUE: TFMTBCDField;
    cds_clienteDATA_ADMINSSAO_CONJUGUE: TDateField;
    cds_clienteFONE_CONJUGUE: TStringField;
    cds_clienteENDERECO_COBRANCA: TStringField;
    cds_clienteCEP_COBRANCA: TStringField;
    cds_clienteCOD_CIDADE_COBRANCA: TIntegerField;
    cds_clienteCX_POSTAL_COBRANCA: TStringField;
    cds_clienteLIMITE_DE_CREDITO: TFMTBCDField;
    cds_clienteINSC_MUNICIPAL: TStringField;
    cds_clientePRODUTOR_RURAL: TStringField;
    cds_clienteINSC_PRODUTOR_RURAL: TStringField;
    cds_clienteCOD_BAIRRO_COBRANCA: TIntegerField;
    cds_clienteCIDADE_COBRANCA: TStringField;
    cds_clienteBAIRRO_COBRANCA: TStringField;
    cds_clienteUF_COBRANCA: TStringField;
    cds_clienteCONTA_BANCARIA: TStringField;
    cds_clienteNOME_PROPRIEDADE: TStringField;
    cds_clienteNOME_VETERINARIO: TStringField;
    cds_clienteSOCIO1: TStringField;
    cds_clienteCPFSOCIO1: TStringField;
    cds_clienteDATANASCSOCIO1: TDateField;
    cds_clienteSOCIO2: TStringField;
    cds_clienteCPFSOCIO2: TStringField;
    cds_clienteDATANASCSOCIO2: TDateField;
    cds_clienteSOCIO3: TStringField;
    cds_clienteCPFSOCIO3: TStringField;
    cds_clienteDATANASCSOCIO3: TDateField;
    cds_clienteSOCIO4: TStringField;
    cds_clienteCPFSOCIO4: TStringField;
    cds_clienteDATANASCSOCIO4: TDateField;
    cds_clienteDATAFUNDACAO: TDateField;
    cds_clienteCAPITALSOCIAL: TFMTBCDField;
    cds_clienteFATURAMENTOBRUTO: TFMTBCDField;
    cds_clienteREGJUNTACOM: TStringField;
    cds_clienteENDSOCIO1: TStringField;
    cds_clienteRGSOCIO1: TIntegerField;
    cds_clienteENDSOCIO2: TStringField;
    cds_clienteRGSOCIO2: TIntegerField;
    cds_clienteENDSOCIO3: TStringField;
    cds_clienteRGSOCIO3: TIntegerField;
    cds_clienteENDSOCIO4: TStringField;
    cds_clienteRGSOCIO4: TIntegerField;
    cds_clienteAUTORIZADO1: TStringField;
    cds_clienteAUTORIZADO2: TStringField;
    cds_clienteAUTORIZADO3: TStringField;
    cds_clienteCPF_AUT1: TStringField;
    cds_clienteCPF_AUT2: TStringField;
    cds_clienteCPF_AUT3: TStringField;
    cds_clienteFUNCIONARIO: TStringField;
    cds_clienteCTPS: TStringField;
    cds_clienteTESTA_CREDITO: TStringField;
    cds_clienteTESTA_LIMITE: TStringField;
    DTS_cliente: TDataSource;
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  FormClientesAddVendas: TFormClientesAddVendas;

implementation

uses Z_RotinasGerais,Formata_CPF_CNPJ, Vendas, Principal, ModulodeDados,
  FichaCliente;

{$R *.dfm}

procedure TFormClientesAddVendas.DBEdit1Enter(Sender: TObject);
begin
corentrada(Sender);
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormClientesAddVendas.DBEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
dbedit2.Clear;
end;

procedure TFormClientesAddVendas.DBEdit2Enter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormClientesAddVendas.DBEdit2Exit(Sender: TObject);
begin
CorSaida(sender);
dbedit3.Clear;
end;

procedure TFormClientesAddVendas.DBEdit6Exit(Sender: TObject);
begin
CorSaida(sender);
dbedit7.Clear;
end;

procedure TFormClientesAddVendas.DBEdit7Exit(Sender: TObject);
begin
CorSaida(sender);
dbedit3.Clear;
end;

procedure TFormClientesAddVendas.DBEdit3Enter(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
if formvendas.Sds_PedidosTIPO.Text = 'F' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '999.999.999-99;1;_';
end else
if formvendas.Sds_PedidosTIPO.Text = 'J' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormClientesAddVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
FormClientesAddVendas := nil;
end;

procedure TFormClientesAddVendas.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormClientesAddVendas.BitBtn1Click(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
formVendas.Desc_cliente.Text := DBEdit1.Text;

formvendas.Sds_Pedidos.Post;
BitBtn2Click(Sender);
end;

procedure TFormClientesAddVendas.DBEdit3Exit(Sender: TObject);
begin
  CorSaida(sender);
  dbedit4.Clear;
end;

procedure TFormClientesAddVendas.DBEdit5Exit(Sender: TObject);
begin
CorSaida(sender);
end;

procedure TFormClientesAddVendas.DBRadioGroup1Exit(Sender: TObject);
begin
if formvendas.Sds_PedidosTIPO.Text = 'F' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '999.999.999-99;1;_';
end else
if formvendas.Sds_Pedidostipo.Text = 'J' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormClientesAddVendas.DBRadioGroup1Click(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormClientesAddVendas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormClientesAddVendas.btnimprimirClick(Sender: TObject);
var
  codcli : string;
begin

codcli:=formVendas.DBComboCliente.text;
if codcli > '' then
BEGIN
cds_cliente.Active :=FALSE;
Qry_cliente.close;
Qry_cliente.SQL.Clear;
Qry_cliente.SQL.add('select * from clientes where COD_empresa >0'+'');
if codcli > '' then
Qry_cliente.SQL.add('and CODIGO ='+(codcli));
Qry_cliente.Open;
cds_cliente.Active :=true;
FormFichaCliente := TFormFichaCliente.Create(self);
FormFichaCliente.RLReport1.Prepare;
FormFichaCliente.RLReport1.PreviewModal;
end;

end;

end.
