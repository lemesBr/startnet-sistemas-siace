unit Acesso;

interface
              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, DB, DBClient, ComCtrls, Buttons,
  SUIButton, DBCtrls, RXCtrls,  Mylabel, SUIDlg, RxGIF, ModulodeDados, SUIDBCtrls,
  SUIMgr, LockApplication, Mask, ToolEdit, CurrEdit, OnGuard,
  OgProExe, DateUtil, jpeg, TaskDialog, sDBEdit, sSpeedButton, sGroupBox,
  sDBLookupComboBox, sEdit, sBitBtn, sBevel, sLabel, FDvSmoothMessageDialog,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, WinInet;

type
  TForm_Usuario = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Bevel1: TsBevel;
    Edit2: TsEdit;
    Edit11: TsDBLookupComboBox;
    Label1: TLabel;
    suiButton3: TsBitBtn;
    Label4: TLabel;
    Bevel3: TBevel;
    L: TLockApplication;
    BitBtn1: TsBitBtn;
    BitBtn2: TsBitBtn;
    GroupBox2: TsGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    btnVerify: TsSpeedButton;
    edtStatus: TsEdit;
    edtUserName2: TsDBEdit;
    SpeedButton1: TsSpeedButton;
    edtRegCode2: TsEdit;
    OgProtectExe1: TOgProtectExe;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Image2: TImage;
    Label3: TsLabelFX;
    Label11: TsLabelFX;
    sLabelFX1: TsLabelFX;
    liberar: TsSpeedButton;
    Coneccao: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1NOME_RS: TStringField;
    FDQuery1V_CHEQUE_COMPENSAR: TBCDField;
    FDQuery1V_CRED_RECEBER: TBCDField;
    FDQuery1LIMITE_DE_CREDITO: TBCDField;
    FDQuery1LIMITE_DIPONIVEL: TBCDField;
    FDQuery1V_CRED_VENCIDO: TBCDField;
    Edit1: TEdit;
    procedure Sair1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    //  procedure SpeedButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure btnVerifyClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure liberarClick(Sender: TObject);
  private
    { Private declarations }
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

uses   OgUtil, Principal, Z_RotinasGerais, Z_CriptDecript;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FA, $6F, $8D, $AB, $FC, $DF, $B4);

Function GetStateK (Key: integer): boolean;

begin

  Result := Odd (GetKeyState (Key));

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


procedure TForm_Usuario.suiButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm_Usuario.suiButton1Click(Sender: TObject);
begin

 USER:=(edit11.Text);
 PASS:= Wcriptografar(Edit2.Text,5);
  if USER='' then
  begin
    ShowMessage('Favor Selecione o Usuário');
    edit11.SetFocus;
    end
    else

 if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,PASS]),[locaseInsensitive])then
 begin

  btnVerify.Click;

  cnpj:= Trim(edtUserName2.Text);

  Key := EncryptionKey;
  Modifier := StringHashELF(cnpj);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin


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
   sLabelFX1.Caption := 'Restam apenas ' + IntToStr(b) +' dias para o vencimento de sua chave';

     if IsRegCodeExpired(Key, Code) then
    begin
      edtStatus.Text := 'Expirada';
      GroupBox2.Visible := True;
   end else
      edtStatus.Text := 'Valida';
      if  edtStatus.Text = 'Valida' then
      begin
         fecha := True;
         Form_Usuario.Close;
      end;
     end else
    begin
     edtStatus.Text := 'Não é Valida';
    ShowMessage('Sistema não Esta liberado para Este cliente...');
    end;
 end
 else
   begin
   ShowMessage('Usuário e Senha Inválidos');
    edit11.SetFocus;
    end;

end;


procedure TForm_Usuario.FormShow(Sender: TObject);
begin
if DM.SQLC.Connected  = False then
BEGIN
  Application.Terminate;
end;

if DM.SQLC.Connected  = true then
BEGIN
DM.SDS_Empresa.Active:= True;
DM.SDS_Usuarios.Active:= True;
DM.SDS_PlContas.Active := True;
DM.SDS_CONFIGURACOES.Active:= True;

DM.sds_IdSistema.Active:= True;

if DM.sds_IdSistema.IsEmpty then
begin
dm.sds_IdSistema.Insert;
dm.sds_IdSistemaSEQ.Text := '1';
DM.sds_IdSistemaCNPJ.Text := DM.SDS_EmpresaCNPJ.Text;
DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
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


   s:= DateToStr(OnGuard.GetExpirationDate(Key,Code));
   s1:= OnGuard.GetExpirationDate(Key,Code);
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

  { label1.Caption := '';
   Label1.Caption := 'ID da instalação : '+ IntToStr(L.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(L.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data Vencimento : ' + l.Data_VencimentoU + #13;
 //  Label1.Caption := Label1.Caption + 'Chave : ' + l.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + l.Email_ClienteU + #13;
   Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(l.Versao_Sistema) + #13;
   if L.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'DEMO'
   else
         Label1.Caption := Label1.Caption + 'REGISTRADO';  }

   {dados.Clear;
   dados.Lines.Add(  l.Cliente_Nome );
   dados.Lines.Add(  l.Cliente_CPF );
   dados.Lines.Add(  l.Cliente_Endereco );
   dados.Lines.Add(  l.Cliente_Cidade );
   dados.Lines.Add(  l.Cliente_Estado );
   dados.Lines.Add(  l.Cliente_Telefone ); }
Edit11.SetFocus;
end;
end;
end;

procedure TForm_Usuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then
Application.Terminate;
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
//HintDesign1.Delay := 20;
//Edit11.SetFocus;
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

procedure TForm_Usuario.suiButton3Click(Sender: TObject);

begin
  GroupBox2.Visible := True;
{  l.renovar;
   label1.Caption := '';
   Label1.Caption := 'ID da instalação : '+ IntToStr(L.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(L.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data Vencimento : ' + l.Data_VencimentoU + #13;
  // Label1.Caption := Label1.Caption + 'Chave : ' + l.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + l.Email_ClienteU + #13;
   Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(l.Versao_Sistema )+ #13;   if L.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'DEMO'
   else
         Label1.Caption := Label1.Caption + 'REGISTRADO'   }
end;

procedure TForm_Usuario.btnVerifyClick(Sender: TObject);
begin
  S := '';
  cnpj:=Trim(edtUserName2.Text);
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
        end;
   s:= DateToStr(OnGuard.GetExpirationDate(Key,Code));
   s1:= OnGuard.GetExpirationDate(Key,Code);
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

procedure TForm_Usuario.SpeedButton1Click(Sender: TObject);
begin
GroupBox2.Visible := False;
end;

procedure TForm_Usuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If GetStateK (VK_LMENU) And (Key = VK_F4) Then

fecha := False;

If (Key = VK_F2) Then
begin
l.renovar;
end;
end;

procedure TForm_Usuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If Not fecha Then

Action := caNone
Else

Action := caFree;
end;

procedure TForm_Usuario.liberarClick(Sender: TObject);
var
    data :TDateTime;
begin
  if IsConectadoNaInternet =  True then
  BEGIN
      Coneccao.Connected := False;
      Coneccao.Connected := True;

      if Coneccao.Connected = True then
      begin
      FDQuery1.Close;
      FDQuery1.Params.ParamByName('CLIENTE').AsString:= dm.SDS_EmpresaCNPJ.Text;
      FDQuery1.Open;

      if FDQuery1V_CRED_RECEBER.AsFloat > 1 then
      begin
        ShowMessage('Cliente não liberado favor entrar em contato com a central de atendimento (66) 3555-1453');
      end else
      while not FDQuery1.eof do
      begin
        Data := + 35;
       // DateEdit3.Date := data;

        Key := EncryptionKey;
        Modifier := StringHashELF(Trim(dm.SDS_EmpresaCNPJ.Text));
        ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
        InitRegCode(Key, '', Data, Code);

        Edit1.Text := BufferToHex(Code, SizeOf(Code));

        edtRegCode2.Text:= edit1.Text;

        btnVerify.Click;
      end;
      end;
end else
begin
  ShowMessage('SEM CONECÇÃO COM A INTERNET');
end;
end;
end.
