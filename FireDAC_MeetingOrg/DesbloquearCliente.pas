unit DesbloquearCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, SUIDBCtrls, ExtCtrls, SUIButton, RXCtrls,
  Mask, RxToolEdit,  SUIImagePanel, SUIGroupBox, SUIRadioGroup, DB,
  SUIDlg, RXDBCtrl,  sButton, sDBEdit, Buttons, sBitBtn,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormDesbloquearCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboEdit1: TComboEdit;
    RxLabel1: TRxLabel;
    suiButton2: TsBitBtn;
    Bevel1: TBevel;
    RxLabel2: TRxLabel;
    suiDBRadioGroup11: TDBRadioGroup;
    Panel3: TPanel;
    RxLabel3: TRxLabel;
    suiDBEdit1: TsDBEdit;
    suiDBEdit2: TsDBEdit;
    RxLabel4: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    RxLabel5: TRxLabel;
    suiDBEdit3: TsDBEdit;
    DBMemo2: TDBMemo;
    Panel4: TPanel;
    suiButton5: TsButton;
    suiButton4: TsBitBtn;
    suiDBRadioGroup2: TDBRadioGroup;
    suiDBRadioGroup3: TDBRadioGroup;
    RxLabel6: TRxLabel;
    suiDBEdit4: TsDBEdit;
    qrCliente: TFDQuery;
    dsCliente: TDataSource;
    qrClienteCODIGO: TIntegerField;
    qrClienteNOME_RS: TStringField;
    qrClienteENDERECO: TStringField;
    qrClienteCIDADE: TStringField;
    qrClienteUF: TStringField;
    qrClienteCEP: TStringField;
    qrClienteTELEFONE: TStringField;
    qrClienteTELEFONE2: TStringField;
    qrClienteEMAIL: TStringField;
    qrClienteNASCIMENTO_IA: TDateField;
    qrClienteSEXO: TStringField;
    qrClienteFOTO_LOGOMARCA: TBlobField;
    qrClienteBAIRRO: TStringField;
    qrClienteRG_IE: TStringField;
    qrClienteFAX: TStringField;
    qrClienteCELULAR: TStringField;
    qrClienteUSERCAD: TStringField;
    qrClienteDATACAD: TDateField;
    qrClienteCPF_CNPJ: TStringField;
    qrClienteOBSERVACOES: TBlobField;
    qrClienteCREDIARIO: TStringField;
    qrClienteESTADOCIVIL: TStringField;
    qrClienteRESIDENCIA_SEDE: TStringField;
    qrClientePAI: TStringField;
    qrClienteMAE: TStringField;
    qrClienteNOME_CONJUGE: TStringField;
    qrClienteCPF_CONJUGE: TStringField;
    qrClienteNASCIMENTO_CONJUGE: TDateField;
    qrClienteTRABALHO_CONJUGE: TStringField;
    qrClientePROFISSAO_CONJUGE: TStringField;
    qrClienteLOCALTRABALHO: TStringField;
    qrClientePROFISSAO_RA: TStringField;
    qrClienteTELEFONE_TRABALHO: TStringField;
    qrClienteFAX_TRABALHO: TStringField;
    qrClienteOBSERVACOES_TRABALHO: TBlobField;
    qrClienteBANCO: TStringField;
    qrClienteNOME_AGENCIA: TStringField;
    qrClienteNUMERO_AGENCIA: TStringField;
    qrClienteCONTA_CORRENTE: TIntegerField;
    qrClienteNOME1_REFERENCIA: TStringField;
    qrClienteNOME2_REFERENCIA: TStringField;
    qrClienteTELEFONE1_REFERENCIA: TStringField;
    qrClienteTELEFONE2_REFERENCIA: TStringField;
    qrClienteBANCO_REFERENCIA: TStringField;
    qrClienteAPELIDO: TStringField;
    qrClienteTIPO: TStringField;
    qrClienteOBSERVACOES_COMERCIAIS: TBlobField;
    qrClienteOBSERVACOES_BANCO: TBlobField;
    qrClientePG_CREDIARIO: TStringField;
    qrClientePG_CHEQUE: TStringField;
    qrClientePG_FINANCEIRA: TStringField;
    qrClienteREMUNERACAO: TBCDField;
    qrClienteNUMERO: TStringField;
    qrClienteCOMPLEMENTO: TStringField;
    qrClienteCOD_EMPRESA: TIntegerField;
    qrClienteORGAO_EMISSOR: TStringField;
    qrClienteDATA_EMISSAO_RG: TDateField;
    qrClienteNATURALIDADE: TStringField;
    qrClienteNATURALIDADE_UF: TStringField;
    qrClienteCOD_CIDADE: TIntegerField;
    qrClienteCOD_BAIRRO: TIntegerField;
    qrClienteDATA_ALTERACAO: TDateField;
    qrClienteCOD_ZONA: TIntegerField;
    qrClientePONTO_REFERENCIA: TStringField;
    qrClienteATIVO: TStringField;
    qrClienteCONTATO1: TStringField;
    qrClienteCONTATO2: TStringField;
    qrClienteCX_POSTAL: TStringField;
    qrClienteVALOR_ALUGUEL: TBCDField;
    qrClienteTEMPO_RESIDENCIA: TStringField;
    qrClienteNUMERO_DEPENDENTES: TIntegerField;
    qrClienteENDERECO_REFERENCIA1: TStringField;
    qrClienteENDERECO_REFERENCIA2: TStringField;
    qrClienteDATA_ADMISSAO_REFERENCIA1: TDateField;
    qrClienteDATA_ADMISSAO_REFERENCIA2: TDateField;
    qrClienteRG_CONJUGUE: TStringField;
    qrClienteRENDA_CONJUGUE: TBCDField;
    qrClienteDATA_ADMINSSAO_CONJUGUE: TDateField;
    qrClienteFONE_CONJUGUE: TStringField;
    qrClienteENDERECO_COBRANCA: TStringField;
    qrClienteCEP_COBRANCA: TStringField;
    qrClienteCOD_CIDADE_COBRANCA: TIntegerField;
    qrClienteCX_POSTAL_COBRANCA: TStringField;
    qrClienteLIMITE_DE_CREDITO: TBCDField;
    qrClienteINSC_MUNICIPAL: TStringField;
    qrClientePRODUTOR_RURAL: TStringField;
    qrClienteINSC_PRODUTOR_RURAL: TStringField;
    qrClienteCOD_BAIRRO_COBRANCA: TIntegerField;
    qrClienteCIDADE_COBRANCA: TStringField;
    qrClienteBAIRRO_COBRANCA: TStringField;
    qrClienteUF_COBRANCA: TStringField;
    qrClienteCONTA_BANCARIA: TStringField;
    qrClienteNOME_PROPRIEDADE: TStringField;
    qrClienteNOME_VETERINARIO: TStringField;
    qrClienteSOCIO1: TStringField;
    qrClienteCPFSOCIO1: TStringField;
    qrClienteDATANASCSOCIO1: TDateField;
    qrClienteSOCIO2: TStringField;
    qrClienteCPFSOCIO2: TStringField;
    qrClienteDATANASCSOCIO2: TDateField;
    qrClienteSOCIO3: TStringField;
    qrClienteCPFSOCIO3: TStringField;
    qrClienteDATANASCSOCIO3: TDateField;
    qrClienteSOCIO4: TStringField;
    qrClienteCPFSOCIO4: TStringField;
    qrClienteDATANASCSOCIO4: TDateField;
    qrClienteDATAFUNDACAO: TDateField;
    qrClienteCAPITALSOCIAL: TBCDField;
    qrClienteFATURAMENTOBRUTO: TBCDField;
    qrClienteREGJUNTACOM: TStringField;
    qrClienteENDSOCIO1: TStringField;
    qrClienteRGSOCIO1: TIntegerField;
    qrClienteENDSOCIO2: TStringField;
    qrClienteRGSOCIO2: TIntegerField;
    qrClienteENDSOCIO3: TStringField;
    qrClienteRGSOCIO3: TIntegerField;
    qrClienteENDSOCIO4: TStringField;
    qrClienteRGSOCIO4: TIntegerField;
    qrClienteAUTORIZADO1: TStringField;
    qrClienteAUTORIZADO2: TStringField;
    qrClienteAUTORIZADO3: TStringField;
    qrClienteCPF_AUT1: TStringField;
    qrClienteCPF_AUT2: TStringField;
    qrClienteCPF_AUT3: TStringField;
    qrClienteFUNCIONARIO: TStringField;
    qrClienteCTPS: TStringField;
    qrClienteTESTA_CREDITO: TStringField;
    qrClienteTESTA_LIMITE: TStringField;
    qrClienteCOD_CONV: TIntegerField;
    qrClienteFOTO: TStringField;
    qrClienteDATA_ULTIMA_COMPRA: TDateField;
    qrClienteFUNC_SALARIO: TBCDField;
    qrClienteFUNC_DATA_ADMISSAO: TDateField;
    qrClienteFUNC_SITUACAO: TStringField;
    qrClienteFUNC_DEMISSAO: TDateField;
    qrClienteFUNC_CARGO: TStringField;
    qrClienteDOCUMENTOS: TBlobField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiDBRadioGroup11Enter(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure suiDBRadioGroup11Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDesbloquearCliente: TFormDesbloquearCliente;
//  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, ConsClientes, Principal;

{$R *.dfm}

procedure TFormDesbloquearCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrCliente.Close;
  Action:=CaFree;
  FormDesbloquearCliente:=nil;
end;

procedure TFormDesbloquearCliente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM.SDS_Cli.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    Application.MessageBox('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!','Atenção',0);
    CanClose := False;
  end;
end;

procedure TFormDesbloquearCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#27 then
    close;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TFormDesbloquearCliente.FormShow(Sender: TObject);
begin
  try
    qrCliente.Close;
    qrCliente.ParamByName('CODIGO').AsString:= ComboEdit1.Text;
    qrCliente.Open;

    SuiButton2.Enabled:= False;
    suiButton4.Enabled:= False;
    suiButton5.Enabled:= False;

    SuiButton2.Enabled:= True;
    SuiButton2.SetFocus;
    suiButton2Click(Sender);
  except
    Application.MessageBox('Erro ao tentar localizar Cliente. Contate o Suporte!','Atenção',0);
  end;
end;

procedure TFormDesbloquearCliente.suiDBRadioGroup11Enter(Sender: TObject);
begin
  CorEntrada(Sender);
end;

procedure TFormDesbloquearCliente.ComboEdit1Enter(Sender: TObject);
begin
  CorEntrada(Sender);
end;

procedure TFormDesbloquearCliente.ComboEdit1Exit(Sender: TObject);
begin
  CorSaida(Sender);
  qrCliente.Close;
  qrCliente.ParamByName('CODIGO').AsString:= ComboEdit1.Text;
  qrCliente.Open;

  if not qrCliente.IsEmpty then
  begin
    SuiButton2.Enabled:= True;
    SuiButton2.SetFocus;
  end;
end;

procedure TFormDesbloquearCliente.suiDBRadioGroup11Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFormDesbloquearCliente.ComboEdit1ButtonClick(Sender: TObject);
begin
  try
    if FormConsClientes = nil   then
    begin
      FormConsClientes:=  TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      ComboEdit1.Text:= DM.SDS_ClientesCODIGO.Text;
      SuiButton2.Enabled:= True;
      SuiButton2.SetFocus;
    end;
  except
    Application.MessageBox('Erro ao Tentar Exibir o Formulário de Clientes!','Atenção',0);
  end;
end;

procedure TFormDesbloquearCliente.suiButton2Click(Sender: TObject);
begin
  Try
    qrCliente.Edit;
    SuiButton2.Enabled:= False;
    suiButton4.Enabled:= True;
    suiButton5.Enabled:= True;
    ComboEdit1.Enabled:= False;
    Panel2.Enabled:= True;
    DBMemo2.Color:= clWindow;
    suiDBEdit4.Color:= clWindow;
  except
    Application.MessageBox('Não Foi Possivel Gravar o Registro!','Atenção',0);
  end;
end;

procedure TFormDesbloquearCliente.suiButton5Click(Sender: TObject);
begin
  try
    qrCliente.Cancel;
    SuiButton2.Enabled:= True;
    suiButton4.Enabled:= False;
    suiButton5.Enabled:= False;
    ComboEdit1.Enabled:= True;
    Panel2.Enabled:= True;
    DBMemo2.Color:= $00E8E8E8;
    ComboEdit1.SetFocus;
  except
    Application.MessageBox('Não Foi Possivel Cancelar o Registro!','Atenção',0);
  end;
end;

procedure TFormDesbloquearCliente.DBMemo2Enter(Sender: TObject);
begin
  CorEntrada(Sender);
end;

procedure TFormDesbloquearCliente.DBMemo2Exit(Sender: TObject);
begin
  CorSaida(Sender);
end;

procedure TFormDesbloquearCliente.suiButton4Click(Sender: TObject);
begin
  try
    qrCliente.Post;
    SuiButton2.Enabled:= True;
    Panel2.Enabled:= True;
    DBMemo2.Color:= $00E8E8E8;
    suiDBEdit4.Color:= $00E8E8E8;
    suiButton4.Enabled:= False;
    suiButton5.Enabled:= False;
    ComboEdit1.Enabled:= True;
    ComboEdit1.SetFocus;
  except
    Application.MessageBox('Erro ao tentar Salvar dados do Cliente. Contate o Suporte!','Atenção',0);
  end;
end;


procedure TFormDesbloquearCliente.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  with Tedit do
  if Key = #13 then
  begin
    SelectNext(Sender as tWinControl, True, True );
    Key := #0;

    if  ComboEdit1.Text= '' then
    begin
      Application.MessageBox('Digite algo para localizar o Registro!','Atenção',0);
      ComboEdit1.SetFocus;
    end
    else
    if  ComboEdit1.Text <> '' then
    begin
      qrCliente.Close;
      qrCliente.ParamByName('CODIGO').AsString:= ComboEdit1.Text;
      qrCliente.Open;

      if not qrCliente.IsEmpty then
      begin
        SuiButton2.Enabled:= True;
        SuiButton2.SetFocus;
      end
      else
      begin
        ComboEdit1.color:= clWhite;

        if FormConsClientes=nil   then
        begin
          FormConsClientes:=TFormConsClientes.Create(self);
          FormConsClientes.ShowModal;
          ComboEdit1.Text:= DM.SDS_ClientesCODIGO.Text;
        end;

        qrCliente.Close;
        qrCliente.ParamByName('CODIGO').AsString:= ComboEdit1.Text;
        qrCliente.Open;

        if not qrCliente.IsEmpty then
        begin
          SuiButton2.Enabled:= True;
          SuiButton2.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure TFormDesbloquearCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_F1) then
  begin
    FormPrincipal.Calculator.Execute;
  end;
end;

end.
