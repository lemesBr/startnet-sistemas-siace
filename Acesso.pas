unit Acesso;

interface
              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, DB, DBClient, ComCtrls, Buttons,
  SUIButton, DBCtrls, RXCtrls, SUIDlg, RxGIF, SUIDBCtrls,
  SUIMgr, LockApplication, Mask, rxToolEdit, rxCurrEdit, OnGuard,
  OgProExe, jpeg, TaskDialog, sDBEdit, sSpeedButton, sGroupBox,
  sDBLookupComboBox, sEdit, sBitBtn, sBevel, sLabel, aDvSmoothMessageDialog,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, WinInet, acPNG, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP,
  IdHTTP, IdHashMessageDigest, FireDAC.Phys.IB, FireDAC.Phys.IBDef, OgUtil, DateUtils,
  RzCmboBx, RzDBCmbo, RxDBComb, sDBComboBox, acDBComboBoxEx, FireDAC.VCLUI.Wait,
  DBCtrlsEh, DBGridEh, DBLookupEh, Vcl.Grids, Vcl.DBGrids, XDBGrids;

type
  TForm_Usuario = class(TForm)
    Label5: TLabel;
    L: TLockApplication;
    OgProtectExe1: TOgProtectExe;
    FDQuery1: TFDQuery;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1NOME_RS: TStringField;
    FDQuery1V_CHEQUE_COMPENSAR: TBCDField;
    FDQuery1V_CRED_RECEBER: TBCDField;
    FDQuery1LIMITE_DE_CREDITO: TBCDField;
    FDQuery1LIMITE_DIPONIVEL: TBCDField;
    FDQuery1V_CRED_VENCIDO: TBCDField;
    GroupBox2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtCPFCNPJ: TEdit;
    edtRegCode2: TEdit;
    edtStatus: TEdit;
    Image1: TImage;
    Image2: TImage;
    Edit11: TComboBox;
    Edit2: TEdit;
    Label3: TLabel;
    lblTitle: TLabel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    btnVerify: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    edtUserName2: TsDBEdit;
    sLabelFX1: TsLabelFX;
    Label2: TLabel;
    DataSource1: TDataSource;
    qrempresa: TFDQuery;
    qrempresaCODIGO: TIntegerField;
    qrempresaRAZAO_SOCIAL: TStringField;
    qrempresaNOME_FANTASIA: TStringField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaFAX: TStringField;
    qrempresaEMAIL: TStringField;
    qrempresaHOMEPAGE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaNUMERO: TIntegerField;
    qrempresaBAIRRO: TStringField;
    qrempresaIM: TStringField;
    qrempresaLOGOMARCA: TBlobField;
    qrempresaCNAE: TStringField;
    qrempresaCOD_CID_IBGE: TStringField;
    qrempresaURS_INDEA: TStringField;
    qrempresaULE_INDEA: TStringField;
    qrempresaMATRICULA_INDEA: TStringField;
    qrempresaPROPRIETARIO: TStringField;
    qrempresaRESPONSAVEL_TECINICO: TStringField;
    qrempresaCRMV_N: TStringField;
    qrempresaFLAG_VETERINARIA: TStringField;
    qrempresaREGIME: TStringField;
    qrempresaALIC_SIMPLES: TFMTBCDField;
    qrempresaALIC_PIS: TFMTBCDField;
    qrempresaALIC_COFINS: TFMTBCDField;
    qrempresaALIC_IRPJ: TFMTBCDField;
    qrempresaALIC_CSLL: TFMTBCDField;
    qrempresaSUFRAMA: TStringField;
    qrempresaNOME_CONTADOR: TStringField;
    qrempresaCNPJ_CONTADOR: TStringField;
    qrempresaCRC_CONTADOR: TStringField;
    qrempresaENDERECO_CONTADOR: TStringField;
    qrempresaCEP_CONTADOR: TStringField;
    qrempresaNUM_CONTADOR: TIntegerField;
    qrempresaBAIRRO_CONTADOR: TStringField;
    qrempresaCOMPL_CONTADOR: TStringField;
    qrempresaFONE_CONTADOR: TStringField;
    qrempresaFAX_CONTADOR: TStringField;
    qrempresaEMAIL_CONTADOR: TStringField;
    qrempresaCOD_IBGE_CONTADOR: TStringField;
    qrempresaCPF_CONTADOR: TStringField;
    qrempresaCIDADE_CONTADOR: TStringField;
    qrempresaUF_CONTADOR: TStringField;
    qrempresaCPF_RESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaTIPO_SEGMENTO: TStringField;
    qrempresaCPF_PROPRIETARIO: TStringField;
    qrempresaDISTRIBUIDORA_COMBUSTIVEL: TStringField;
    qrempresaNUM_JUNT_COM: TStringField;
    qrempresaDATA_INICIO_LMC: TDateField;
    qrempresaDATA_FIM_LMC: TDateField;
    qrempresaNUM_ORD_LMC: TIntegerField;
    ComboBox1: TComboBox;
    procedure Sair1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure btnVerifyClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure edtRegCode2Exit(Sender: TObject);
  private
    { Private declarations }

    function StatusChaveAcesso: Integer;
    function KeyToDate(pCnpj,pKey: string): string;
    function GetURLChave(aURL: string): string;

    procedure StatusChaveAdd(Status,Dias: Integer);
    function VerificaStatusChave: Boolean;
  public
    { Public declarations }
   USER,PASS:String;
   RegStr : string;
   fecha: Boolean;
  end;

var
  Form_Usuario: TForm_Usuario;

  Key : TKey;
  Code : TCode;
  Modifier : Longint;

  s:string;
  b:Integer;
  s1:TDateTime;
  cnpj: string;

  implementation

  {$R *.dfm}

uses   Principal, Z_RotinasGerais, Z_CriptDecript,
  Math, Biblioteca, ModulodeDados;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FA, $6F, $8D, $AB, $FC, $DF, $B4);

Function GetStateK (Key: integer): boolean;

begin

  Result := Odd (GetKeyState (Key));

end;
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

function IsConectadoNaInternet: Boolean;
begin
Result := InternetCheckConnection('http://www.google.com.br/', 1, 0);
end;

procedure TForm_Usuario.Sair1Click(Sender: TObject);
begin
CLOSE;

end;

procedure TForm_Usuario.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
{Try
 USER:=(edit11.Text);
 PASS:= Wcriptografar(Edit2.Text,5);
  if USER='' then
  begin
    Informacao4.ShowModal;
    edit11.SetFocus;
    end
    else
  {  if PASS ='' then
    begin
    Informacao2.ShowModal;
    edit2.SetFocus;
    end
    else }
 {if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,PASS]),[locaseInsensitive])then
 begin
// Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.suiStatusBar1.Panels[1].Text:= USER;
// Form_Usuario.Visible:=False;
 //FormPrincipal.Show;
// Form_Usuario.Free;
  close;
 end
 else
   begin
    Informacao.ShowModal;
    edit11.SetFocus;
    end;
except
//       Informacao3.ShowModal;
end;  }
end;
END;


procedure TForm_Usuario.edtRegCode2Exit(Sender: TObject);
begin
    S := '';
  cnpj:=Trim(edtCPFCNPJ.Text);
  Key := EncryptionKey;
  Modifier := StringHashELF(cnpj);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
      edtStatus.Text := 'Expirada'
    else
      edtStatus.Text := 'Valida';
  end;
end;

procedure TForm_Usuario.suiButton1Click(Sender: TObject);
begin
  if ComboBox1.Text = ''  then
  BEGIN
     ShowMessage('favor Selecionar Uma Empresa Para Continuar');
    ComboBox1.SetFocus;
  END else
  begin
  USER:=(edit11.Text);
  PASS:= Wcriptografar(UpperCase(Edit2.Text),5);
  if USER='' then
  begin
    ShowMessage('Favor Selecione o Usuário');
    edit11.SetFocus;
  end
  else
  if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,PASS]),[locaseInsensitive])then
  begin
    fecha := True;
    Form_Usuario.Close;
  end
  else
  begin
    ShowMessage('Usuário e Senha Inválidos');
    edit11.SetFocus;
  end;

  //  iEmp := dm.SDS_EmpresaCODIGO.AsInteger;
  //  sCNPJEmpresa := RemoveChar(dm.SDS_EmpresaCNPJ.AsString);
end;
end;

procedure TForm_Usuario.FormShow(Sender: TObject);
begin
  if dm.Coneccao.Connected  = False then
    Application.Terminate
  else
  begin
   qrEmpresa.Active:= false;
   qrEmpresa.Active:= True;

    while not qrEmpresa.Eof do
    begin
      ComboBox1.Items.Add(qrEmpresaRAZAO_SOCIAL.AsString);
     // dbComboBox1.KeyItems.Add(qrEmpresacodigo.AsString);
      qrEmpresa.Next;
      end;
    qrEmpresa.First;

  //  edtCPFCNPJ.Text:= DM.SDS_EmpresaCNPJ.Text;

    DM.SDS_Usuarios.Active:= True;

    DM.SDS_Usuarios.First;

    while not DM.SDS_Usuarios.Eof do
    begin
      Edit11.Items.Add(DM.SDS_UsuariosUSUARIO.AsString);
      DM.SDS_Usuarios.Next;
    end;

    DM.SDS_Usuarios.First;
    DM.SDS_PlContas.Active := True;
    DM.SDS_CONFIGURACOES.Active:= True;

    DM.sds_IdSistema.Active:= True;

   // VerificaStatusChave;
  end;
{  dm.sds_IdSistema.Active := false;
  dm.sds_IdSistema.DataSet.CommandText:= 'select * from ID_CLIENTE where CNPJ like ' + #39 + '%' + edtCPFCNPJ.Text + '%' + #39+'' +'ORDER BY SEQ';
  dm.sds_IdSistema.Active := True; }


  GroupBox2.Visible := False;


{  if DM.sds_IdSistema.IsEmpty then
  begin
     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(seq) as N_CODIGO from id_cliente');
     DM.ProxCod.Open;


  dm.sds_IdSistema.Insert;
  dm.sds_IdSistemaSEQ.asinteger :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
  DM.sds_IdSistemaCNPJ.Text := DM.SDS_EmpresaCNPJ.Text;
  DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
  DM.sds_IdSistemaCod_empresa.Text := DM.SDS_EmpresaCODIGO.Text;
  dm.sds_IdSistema.Post;
  dm.sds_IdSistema.ApplyUpdates(0);

  end else
  begin
  edtRegCode2.Text := DM.sds_IdSistemaCHAVE.Text;

  btnVerifyClick(sender);

  cnpj:=  Trim(edtUserName2.Text);

  Key := EncryptionKey;
  Modifier := StringHashELF(cnpj);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
    begin
      edtStatus.Text := 'Expirada';
      GroupBox2.Visible :=  True;
    end else
     if edtStatus.Text = 'Valida' then
      if  edtStatus.Text = 'Valida' then
      begin
        GroupBox2.Visible := False;
        //SpeedButton1.Click;
       end;
  end else
  begin
    edtStatus.Text := 'Não é Valida';
    GroupBox2.Visible :=  True;
  end;


   s:= DateToStr(OgUtil.GetExpirationDate(Key,Code));
   s1:= OgUtil.GetExpirationDate(Key,Code);
   b:= DaysBetween(Date, s1);

   label1.Caption := '';
   Label1.Caption := 'VENCIMENTO DO REGISTRO'+ #13;
   Label1.Caption := Label1.Caption + 'Data Vecto: ' + s + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(b) + #13;
   Label1.Caption := Label1.Caption + 'Dias Chave Terminal F2 Renovar : ' + IntToStr(L.Dias_RestantesU);

      if b > 365 then
      begin
       ShowMessage('Sistema não Esta liberado para Este cliente...');
       DM.sds_IdSistema.Edit;
       DM.sds_IdSistemaCHAVE.Text := '';
       dm.sds_IdSistema.Post;
       dm.sds_IdSistema.ApplyUpdates(0);
       edtStatus.Text := 'Expirada';
       GroupBox2.Visible := True;
         Exit;
      end;

     if b < 6 then
     begin

     sLabelFX1.Caption := 'Restam apenas ' + IntToStr(b) +' dias para o vencimento de sua chave';
     end;

    if DM.sds_IdSistemaCNPJ.Text <> DM.SDS_EmpresaCNPJ.Text then
    begin
      Application.MESSAGEBOX('Cnpj da Empresa não confere com o Registrado para o Cliente...'+#13+'Entre em Contato com o Administrado do sistema.', 'Atenção', MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
      Application.Terminate;
    end;
      end;   }
end;

procedure TForm_Usuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(wm_nextdlgctl,0,0);
  end;
end;

procedure TForm_Usuario.Edit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);

    // RxHints.SetHintStyle(hsRoundRect, 5, true, taLeftJustify ); // Forma de Balão
    // Application.HintHidePause := 100000 ;
    // edit2.Hint := 'Digite a Senha do Usuario do Sistema';
    // edit2.ShowHint := True ;
end;

procedure TForm_Usuario.Edit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TForm_Usuario.FormCreate(Sender: TObject);
begin
  label13.Caption:= Trim(TBiblioteca.LerIni('Siace.ini', 'LIBERACAO-INFO', 'DESCRICAO'));
  L.executar;
end;

procedure TForm_Usuario.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
      Edit2.SetFocus;
end;
end;

Procedure TForm_Usuario.btnVerifyClick(Sender: TObject);
begin
{  if edtRegCode2.Text <> EmptyStr then
  begin
    dm.sds_IdSistema.edit;
    DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
    dm.sds_IdSistema.Post;
    dm.sds_IdSistema.ApplyUpdates(0);

    if VerificaStatusChave = False then
      Application.MessageBox('Chave de Liberação Inválida!','Atenção',MB_ICONWARNING);
  end
  else
  begin
    if VerificaStatusChave = False then
      Application.MessageBox('Chave de Liberação Inválida!','Atenção',MB_ICONWARNING);
  end;   }


  S := '';
  cnpj:=Trim(edtCPFCNPJ.Text);
  Key := EncryptionKey;
  Modifier := StringHashELF(cnpj);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
      edtStatus.Text := 'Expirada'
    else
      edtStatus.Text := 'Valida';

      if  edtStatus.Text = 'Valida' then
      begin
        dm.sds_IdSistema.edit;
        DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
        dm.sds_IdSistema.Post;
        dm.sds_IdSistema.ApplyUpdates(0);
        GroupBox2.Visible := False;
        sLabelFX1.Caption := '';
        end;
   s:= DateToStr(OgUtil.GetExpirationDate(Key,Code));
   s1:= OgUtil.GetExpirationDate(Key,Code);
   b:= DaysBetween(Date, s1);
   label1.Caption := '';
   Label1.Caption := 'VENCIMENTO DO REGISTRO'+ #13;
   Label1.Caption := Label1.Caption + 'Data Vecto: ' + s + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(b);

      if b > 365 then
      begin
       ShowMessage('Sistema não Esta liberado para Este cliente...');

       edtStatus.Text := 'Expirada';
       GroupBox2.Visible := True;
       Exit;
      end;

  end else
    edtStatus.Text := 'Chave Não Valida';

end;


procedure TForm_Usuario.ComboBox1Exit(Sender: TObject);
var
emp, Dia :string;
cod: string;
begin
      EMP:=(ComboBox1.Text);
    //   emp := copy(ComboBox1.Items.Text,1,1);
    //   cod :=  DBComboBox1.KeyItems.Text;
    // edit1.Text := emp;
    // cod:= qrempresacodigo.AsInteger;
    // qrEmpresa.Filter =('RAZAO_SOCIAL').;
    // DM.SDS_PRODUTOS.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive]) }

      dm.SDS_Empresa.close;
      dm.SDS_Empresa.sql.Clear;
      dm.SDS_Empresa.sql.add('select * from empresa where RAZAO_SOCIAL = ''' + emp + '''');
    //  dm.SDS_Empresa.ParamByName('cod_emp').Asinteger := strtoint(emp);
      dm.SDS_Empresa.open;

     iEmp := dm.SDS_EmpresaCODIGO.AsInteger;
     iTipoEmp := dm.SDS_EmpresaREGIME.Text;
     sCNPJEmpresa := RemoveChar(dm.SDS_EmpresaCNPJ.AsString);
     edtCPFCNPJ.Text:= DM.SDS_EmpresaCNPJ.Text;


     if ComboBox1.Text = '' then
     begin
       ShowMessage('Selecione uma empresa para continuar...') ;
       ComboBox1.SetFocus;
       Exit;
     end;


     FormPrincipal.suiStatusBar1.Panels[0].Text := 'Empresa: ' + dm.SDS_EmpresaNOME_FANTASIA.Text;
     FormPrincipal.suiStatusBar1.Panels[1].Text := 'Telefone: ' + dm.SDS_EmpresaTELEFONE.Text;

  dm.sds_IdSistema.Active := false;
  dm.sds_IdSistema.SQL.clear;
  dm.sds_IdSistema.SQL.Add('select * from ID_CLIENTE where CNPJ like ' + #39 + '%' + edtCPFCNPJ.Text + '%' + #39+'' +'ORDER BY SEQ');
  dm.sds_IdSistema.Active := True;


  if DM.sds_IdSistema.IsEmpty then
  begin
     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(seq) as N_CODIGO from id_cliente');
     DM.ProxCod.Open;


  dm.sds_IdSistema.Insert;
  dm.sds_IdSistemaSEQ.asinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
  DM.sds_IdSistemaCNPJ.Text := DM.SDS_EmpresaCNPJ.Text;
  DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
  DM.sds_IdSistemaCod_empresa.Text := DM.SDS_EmpresaCODIGO.Text;
  dm.sds_IdSistema.Post;
  dm.sds_IdSistema.ApplyUpdates(0);
  dm.Coneccao.Commit;
  end;

  edtRegCode2.Text := DM.sds_IdSistemaCHAVE.Text;

 // btnVerifyClick(sender);

{  cnpj:=  Trim(edtUserName2.Text);

  Key := EncryptionKey;
  Modifier := StringHashELF(cnpj);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
    begin
      edtStatus.Text := 'Expirada';
      GroupBox2.Visible :=  True;
    end else
     if edtStatus.Text = 'Valida' then
      if  edtStatus.Text = 'Valida' then
      begin
        GroupBox2.Visible := False;
        //SpeedButton1.Click;
       end;
  end else
  begin
    edtStatus.Text := 'Não é Valida';
    GroupBox2.Visible :=  True;
  end;   }

  S := '';
  cnpj:=Trim(edtCPFCNPJ.Text);
  Key := EncryptionKey;
  Modifier := StringHashELF(cnpj);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
      edtStatus.Text := 'Expirada'
    else
      edtStatus.Text := 'Valida';
  end;



   s:= DateToStr(OgUtil.GetExpirationDate(Key,Code));
   s1:= OgUtil.GetExpirationDate(Key,Code);
   b:= DaysBetween(Date, s1);
   
 //  Dia := datetostr(date - s1); 

   label1.Caption := '';
   Label1.Caption := 'VENCIMENTO DO REGISTRO'+ #13;
   Label1.Caption := Label1.Caption + 'Data Vecto: ' + s + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(b) + #13;
   Label1.Caption := Label1.Caption + 'Dias Chave Terminal F2 Renovar : ' + IntToStr(L.Dias_RestantesU);



   if  DM.sds_IdSistemaCHAVE.Text = '' then
     begin
       GroupBox2.Visible := True;
      end;

  if (s1 < date) then 
  begin
   GroupBox2.Visible :=  True;
   end;
      if dia > '365' then
      begin
       ShowMessage('Sistema não Esta liberado para Este cliente...');

       edtStatus.Text := 'Expirada';
       GroupBox2.Visible := True;
       Exit;
      end;

  // if b < 6 then
   begin

  sLabelFX1.Caption := 'Restam apenas ' + IntToStr(b) +' dias sendo '+ dateToStr(s1) +' o vencimento de sua chave';
 // sLabelFX1.Caption := 'Data de vencimento ' + dateToStr(s1) +' de sua chave';
   end;

{if DM.sds_IdSistemaCNPJ.Text <> DM.SDS_EmpresaCNPJ.Text then
begin
  Application.MESSAGEBOX('Cnpj da Empresa não confere com o Registrado para o Cliente...'+#13+'Entre em Contato com o Administrado do sistema.', 'Atenção', MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
  Application.Terminate;
end;  }

end;

procedure TForm_Usuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If GetStateK (VK_LMENU) And (Key = VK_F4) Then
    fecha := False;

  If (Key = VK_F2) Then
    l.renovar
  else
  If (Key = VK_F3) Then
    GroupBox2.Visible:= True;
end;

function TForm_Usuario.GetURLChave(aURL: string): string;
var
  lHTTP: TIdHTTP;
  lStream: TStringStream;
begin
  Result:= EmptyStr;
  lHTTP := TIdHTTP.Create(nil);
  lHTTP.Disconnect;
  lHTTP.Request.Accept := 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8';
  lHTTP.Request.AcceptLanguage:= 'pt-BR,pt;q=0.8';
  lHTTP.Request.CacheControl:= 'max-age=0';
  lHTTP.Request.Connection:= 'keep-alive';
  lHTTP.Request.Host:= 'siace.itecsoftware.com.br';
  lHTTP.Request.UserAgent:= 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36';

  lStream := TStringStream.Create(Result);
  try
    try
      lHTTP.Get(aURL, lStream);
      lStream.Position := 0;
      Result := Trim(Copy(lStream.ReadString(lStream.Size),39,32));
    except
      lHTTP.Disconnect;
    end;
  finally
    FreeAndNil(lHTTP);
    FreeAndNil(lStream);
  end;
end;

procedure TForm_Usuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fecha = False then
    Application.Terminate;
end;

procedure TForm_Usuario.BitBtn2Click(Sender: TObject);
begin
  close;
end;

function TForm_Usuario.StatusChaveAcesso: Integer;
var
  dExpiracao: TDateTime;
  sExpiracao: string;
begin
  Result:= 0;
  dm.sds_IdSistema.Open;

  if not dm.sds_IdSistema.IsEmpty then
  begin
    sExpiracao:= KeyToDate(TBiblioteca.RetiraMascara(Trim(DM.sds_IdSistemaCNPJ.AsString)),
    Trim(DM.sds_IdSistemaCHAVE.AsString));

    if sExpiracao <> EmptyStr then
    begin
      dExpiracao:= StrToDate(sExpiracao);
      Result:= DaysBetween(Now,dExpiracao);
    end;
  end;
end;

function TForm_Usuario.KeyToDate(pCnpj,pKey: string): string;
  function MD5String(const texto: string): string;
  var
    idmd5: TIdHashMessageDigest5;
  begin
    idmd5 := TIdHashMessageDigest5.Create;
    try
      Result := LowerCase(idmd5.HashStringAsHex(texto));
    finally
      idmd5.Free;
    end;
  end;
var
    i: Integer;
    Data: TDateTime;
    KeyComparar: string;
begin
  Result:= EmptyStr;
  try
    Data:= Now;
    KeyComparar:= UpperCase(MD5String(FormatDateTime('yyyy-mm-dd',Data) + pCnpj + '05041988-16011997'));
    if KeyComparar = pKey then
    begin
      Result:= FormatDateTime('dd/mm/yyyy',Data);
      Exit;
    end;

    for i:= 1 to 45 do
    begin
      Data:= IncDay(Now,i);
      KeyComparar:= UpperCase(MD5String(FormatDateTime('yyyy-mm-dd',Data) + pCnpj + '05041988-16011997'));

      if KeyComparar = pKey then
      begin
        Result:= FormatDateTime('dd/mm/yyyy',Data);
        Break;
      end;
    end;
  except
    Result:= EmptyStr;
  end;
end;

procedure TForm_Usuario.StatusChaveAdd(Status, Dias: Integer);
begin
  if Status = 0 then
  begin
    GroupBox2.Visible:= True;
    Label1.Caption:= IntToStr(Dias);
    lblTitle.Caption:= 'CHAVE DE LICENÇA DE USO EXPIROU VERIFIQUE!';
    edtStatus.Text:= 'Expirada';
  end
  else
  if Status = 1 then
  begin
    GroupBox2.Visible:= False;
    Label1.Caption:= IntToStr(Dias);
    edtStatus.Text:= 'Ativa';
    edtRegCode2.Text:= DM.sds_IdSistemaCHAVE.AsString;
  end;
end;

function TForm_Usuario.VerificaStatusChave: Boolean;
var
  StatusChave: Integer;
  HTTPChave: string;
begin
  Result:= False;
  StatusChave:= StatusChaveAcesso;

  if StatusChave > 0 then
  begin
    Result:= True;
    StatusChaveAdd(1,StatusChave);
  end
  else
  begin
    HTTPChave:= GetURLChave('http://siace.itecsoftware.com.br/clientekey?documento='+
    TBiblioteca.RetiraMascara(edtCPFCNPJ.Text));

    if HTTPChave <> EmptyStr then
    begin
      dm.sds_IdSistema.edit;
      DM.sds_IdSistemaCHAVE.Text := HTTPChave;
      dm.sds_IdSistema.Post;
      dm.sds_IdSistema.ApplyUpdates(0);

      StatusChave:= StatusChaveAcesso;

      if StatusChave > 0 then
      begin
        Result:= True;
        StatusChaveAdd(1,StatusChave);
      end
      else
        StatusChaveAdd(0,StatusChave);
    end
    else
        StatusChaveAdd(0,StatusChave);
  end;
end;

end.
