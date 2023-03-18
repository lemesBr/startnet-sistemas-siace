unit Empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Db, IBCustomDataSet, IBStoredProc,
  IBQuery, Grids, DBGrids, Mask, SUIStatusBar, SUIEdit, SUIButton,
  SUIPageControl, SUITabControl, DBCtrls, SUIDBCtrls, RXCtrls,
  SUIDlg, ExtDlgs, rxToolEdit, RXDBCtrl, RzEdit, RzDBEdit, rxCurrEdit,
  RzTabs, aDvReflectionImage, aDvOfficePager, MaskUtils, RxDBComb, XDBCtrls,
  AdvGlowButton;

type
  TFormEmpresa = class(TForm)
    Panel2: TPanel;
    btnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    Panel1: TPanel;
    BitBtn6: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    DBImage1: TsuiDBImage;
    RxLabel1: TRxLabel;
    suiDBEdit1: TDBEdit;
    RxLabel2: TRxLabel;
    suiDBEdit2: TDBEdit;
    suiDBEdit3: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit5: TDBEdit;
    suiDBEdit6: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit9: TDBEdit;
    suiDBEdit10: TDBEdit;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    suiDBEdit11: TDBEdit;
    RxLabel9: TRxLabel;
    suiDBEdit12: TDBEdit;
    suiDBEdit13: TDBEdit;
    suiDBEdit14: TDBEdit;
    suiDBEdit15: TDBEdit;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    MessageCanClose: TsuiMessageDialog;
    PerEditar: TsuiMessageDialog;
    ErroGravacao: TsuiMessageDialog;
    OpenDialog1: TOpenPictureDialog;
    RxLabel12: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    suiDBEdit16: TDBEdit;
    RxLabel17: TRxLabel;
    suiDBEdit17: TDBEdit;
    RxLabel18: TRxLabel;
    suiDBEdit18: TDBEdit;
    RxLabel19: TRxLabel;
    suiDBEdit19: TDBEdit;
    RxLabel20: TRxLabel;
    suiDBEdit20: TDBEdit;
    RxLabel21: TRxLabel;
    suiDBEdit21: TDBEdit;
    suiDBEdit22: TDBEdit;
    RxLabel22: TRxLabel;
    DBCheckBox1: TDBCheckBox;
    RxDBComboEdit1: TRxDBComboEdit;
    GroupBox1: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    RxLabel23: TRxLabel;
    RxLabel24: TRxLabel;
    RxLabel25: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel27: TRxLabel;
    RzDBNumericEdit1: TRxDBCalcEdit;
    RzDBNumericEdit2: TRxDBCalcEdit;
    RzDBNumericEdit3: TRxDBCalcEdit;
    RzDBNumericEdit4: TRxDBCalcEdit;
    RzDBNumericEdit5: TRxDBCalcEdit;
    RxLabel28: TRxLabel;
    suiDBEdit8: TDBEdit;
    RxLabel29: TRxLabel;
    suiDBEdit23: TDBEdit;
    RxLabel30: TRxLabel;
    suiDBEdit24: TDBEdit;
    RxLabel31: TRxLabel;
    suiDBEdit25: TDBEdit;
    RxLabel32: TRxLabel;
    suiDBEdit26: TDBEdit;
    RxLabel33: TRxLabel;
    suiDBEdit27: TDBEdit;
    RxLabel34: TRxLabel;
    suiDBEdit28: TDBEdit;
    RxLabel35: TRxLabel;
    suiDBEdit29: TDBEdit;
    RxLabel36: TRxLabel;
    suiDBEdit30: TDBEdit;
    RxLabel37: TRxLabel;
    suiDBEdit31: TDBEdit;
    RxLabel38: TRxLabel;
    suiDBEdit32: TDBEdit;
    RxLabel39: TRxLabel;
    suiDBEdit33: TDBEdit;
    RxLabel40: TRxLabel;
    suiDBEdit34: TDBEdit;
    RxLabel41: TRxLabel;
    RxDBComboEdit2: TRxDBComboEdit;
    suiDBEdit35: TDBEdit;
    RxLabel42: TRxLabel;
    RxLabel43: TRxLabel;
    suiDBEdit36: TDBEdit;
    RxLabel44: TRxLabel;
    suiDBEdit37: TDBEdit;
    Panel3: TPanel;
    suiDBEdit38: TDBEdit;
    RxLabel45: TRxLabel;
    EvDBComboBox1: TRxDBComboBox;
    RxLabel46: TRxLabel;
    FDvOfficePager1: TAdvOfficePager;
    FDvOfficePager11: TAdvOfficePage;
    FDvOfficePager12: TAdvOfficePage;
    FDvReflectionImage2: TAdvReflectionImage;
    FDvReflectionImage1: TAdvReflectionImage;
    suiDBEdit39: TDBEdit;
    RxLabel47: TRxLabel;
    RxLabel48: TRxLabel;
    suiDBEdit40: TDBEdit;
    FDvOfficePage1: TAdvOfficePage;
    RxLabel49: TRxLabel;
    suiDBEdit41: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxLabel50: TRxLabel;
    RxLabel51: TRxLabel;
    RxLabel52: TRxLabel;
    DBDateEdit2: TDBDateEdit;
    suiDBEdit42: TDBEdit;
    RxLabel53: TRxLabel;
    Panel4: TPanel;
    FDvReflectionImage3: TAdvReflectionImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BtnNovo: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    suiDBNavigator1: TXDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure suiDBEdit1Enter(Sender: TObject);
    procedure suiDBEdit2Enter(Sender: TObject);
    procedure suiDBEdit3Enter(Sender: TObject);
    procedure suiDBEdit4Enter(Sender: TObject);
    procedure suiDBEdit5Enter(Sender: TObject);
    procedure suiDBEdit6Enter(Sender: TObject);
    procedure suiDBEdit10Enter(Sender: TObject);
    procedure suiDBEdit7Enter(Sender: TObject);
    procedure suiDBEdit13Enter(Sender: TObject);
    procedure suiDBEdit8Enter(Sender: TObject);
    procedure suiDBEdit11Enter(Sender: TObject);
    procedure suiDBEdit9Enter(Sender: TObject);
    procedure suiDBEdit12Enter(Sender: TObject);
    procedure suiDBEdit14Enter(Sender: TObject);
    procedure suiDBEdit15Enter(Sender: TObject);
    procedure suiDBEdit1Exit(Sender: TObject);
    procedure suiDBEdit2Exit(Sender: TObject);
    procedure suiDBEdit3Exit(Sender: TObject);
    procedure suiDBEdit4Exit(Sender: TObject);
    procedure suiDBEdit5Exit(Sender: TObject);
    procedure suiDBEdit6Exit(Sender: TObject);
    procedure suiDBEdit10Exit(Sender: TObject);
    procedure suiDBEdit7Exit(Sender: TObject);
    procedure suiDBEdit13Exit(Sender: TObject);
    procedure suiDBEdit8Exit(Sender: TObject);
    procedure suiDBEdit11Exit(Sender: TObject);
    procedure suiDBEdit9Exit(Sender: TObject);
    procedure suiDBEdit12Exit(Sender: TObject);
    procedure suiDBEdit14Exit(Sender: TObject);
    procedure suiDBEdit15Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmpresa: TFormEmpresa;


implementation

uses ModulodeDados, Principal, Z_RotinasGerais, ConsCidades,
  Formata_CPF_CNPJ, Ubibli1;



{$R *.DFM}

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


procedure TFormEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormEmpresa:=nil;
end;


procedure TFormEmpresa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Empresa.State in [dsInsert, dsEdit, dsSetKey] then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormEmpresa.FormShow(Sender: TObject);
begin
Panel1.Enabled:= False;
BtnCancelar.Enabled:= False;
BtnSalvar.Enabled:= False;
Btneditar.Enabled:= True;

//DM.Sds_cidades.Active := False;

//DM.Sds_cidades.Active := True;

end;

procedure TFormEmpresa.btnSalvarClick(Sender: TObject);
begin
 Try
      begin

          DM.SDS_Empresa.Post;
          DM.SDS_Empresa.ApplyUpdates(0);
          Panel1.Enabled:= False;
          Panel3.Enabled:= False;
          Panel4.Enabled:= False;
          BtnCancelar.Enabled:= False;
          BtnSalvar.Enabled:= False;
          Btneditar.Enabled:= True;
          Btnnovo.Enabled:= True;
          Btnexcluir.Enabled:= True;
          iemp:= dm.SDS_Empresacodigo.asinteger;
          iTipoEmp := dm.SDS_EmpresaREGIME.text;
      end;
   Except
    ErroGravacao.ShowModal;
   end;

end;

procedure TFormEmpresa.btnCancelarClick(Sender: TObject);
begin
Try
DM.SDS_Empresa.Cancel;
Panel1.Enabled:= False;
Panel3.Enabled:= False;
Panel4.Enabled:= False;
BtnCancelar.Enabled:= False;
BtnSalvar.Enabled:= False;
Btneditar.Enabled:= True;
Btnnovo.Enabled:= True;
     Btnexcluir.Enabled:= True;
   Except
     ErroGravacao.ShowModal;
   end;

end;

procedure TFormEmpresa.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
PerEditar.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.SDS_Empresa.Edit;
     Panel1.Enabled:= True;
     Panel3.Enabled:= True;
     Panel4.Enabled:= True;
     BtnCancelar.Enabled:= True;
     BtnSalvar.Enabled:= True;
     Btneditar.Enabled:= False;
     // suiDBEdit1.SetFocus;
     suiDBEdit34.Text := FormatMaskText('999.999.999-99;0;_',suiDBEdit34.Text);
   Except
     ErroGravacao.ShowModal;
   end;

end;

end;

procedure TFormEmpresa.BitBtn6Click(Sender: TObject);
begin
Try
 if OpenDialog1.Execute then
  begin
    DBImage1.Picture.LoadFromFile(OpenDialog1.Filename);
  end;
  Except
     ErroGravacao.ShowModal;
   end;
end;

procedure TFormEmpresa.BitBtn2Click(Sender: TObject);
begin
DM.SDS_EmpresaLOGOMARCA.Clear;
end;

procedure TFormEmpresa.suiDBEdit1Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit2Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit3Enter(Sender: TObject);
begin
   CorEntrada(Sender);
   if RadioButton1.Checked then
begin
DM.SDS_EmpresaCNPJ.EditMask:= '999.999.999-99;1;_';
end else
if RadioButton2.Checked then
begin
DM.SDS_EmpresaCNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormEmpresa.suiDBEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
dm.SDS_Empresa.Edit;
dm.SDS_EmpresaIE.Text := removechar(dm.SDS_EmpresaIE.Text);
end;

procedure TFormEmpresa.suiDBEdit5Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit6Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.BtnExcluirClick(Sender: TObject);
begin
Try
DM.SDS_Empresa.delete;
Panel1.Enabled:= False;
Panel3.Enabled:= False;
Panel4.Enabled:= False;
BtnCancelar.Enabled:= False;
BtnSalvar.Enabled:= False;
Btneditar.Enabled:= True;
Btnnovo.Enabled:= True;
     Btnexcluir.Enabled:= True;
   Except
     ErroGravacao.ShowModal;
   end;
end;

procedure TFormEmpresa.BtnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
PerEditar.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
try
     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM EMPRESA');
     DM.ProxCod.Open;



     DM.SDS_Empresa.Insert;
     DM.SDS_empresaCODIGO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
     Panel1.Enabled:= True;
     Panel3.Enabled:= True;
     Panel4.Enabled:= True;
     BtnCancelar.Enabled:= True;
     BtnSalvar.Enabled:= True;
     Btneditar.Enabled:= False;
     Btnnovo.Enabled:= False;
     Btnexcluir.Enabled:= False;

     // suiDBEdit1.SetFocus;
     suiDBEdit34.Text := FormatMaskText('999.999.999-99;0;_',suiDBEdit34.Text);
   Except
     ErroGravacao.ShowModal;
   end;
end;
end;

procedure TFormEmpresa.suiDBEdit10Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit7Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit13Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit8Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit11Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit9Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit12Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit14Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit15Enter(Sender: TObject);
begin
   CorEntrada(Sender);
end;

procedure TFormEmpresa.suiDBEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
if RadioButton1.Checked then
begin
DM.SDS_EmpresaCNPJ.EditMask:= '999.999.999-99;1;_';
end else
if RadioButton2.Checked then
begin
DM.SDS_EmpresaCNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormEmpresa.suiDBEdit4Exit(Sender: TObject);
begin
corSaida(Sender);
dm.SDS_Empresa.Edit;
removechar(suiDBEdit4.Text);

if Inscricao(suiDBEdit4.Text,suiDBEdit13.Text) = True then
else
ShowMessage('Inscrição Invalida');

suiDBEdit4.Text:= Mascara_Inscricao(suiDBEdit4.Text,suiDBEdit13.Text);
end;

procedure TFormEmpresa.suiDBEdit5Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit6Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit10Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit7Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit13Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit8Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit11Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit9Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit12Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit14Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.suiDBEdit15Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
  If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormEmpresa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormEmpresa.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
//if FormConscidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;

    RxDBComboEdit1.text :=  dm.sds_cidadesnome.Text;
    DM.SDS_EmpresaCOD_CID_IBGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
    suiDBEdit13.Text := DM.Sds_cidadesUF.Text;
    suiDBEdit11.Text := DM.Sds_cidadesCEP.Text;
end;
end;

procedure TFormEmpresa.RxDBComboEdit1Exit(Sender: TObject);
begin
if DM.Sds_cidades.locate('nome',RxDBComboEdit1.Text,[loCaseInsensitive]) = True then;
begin
DM.SDS_EmpresaCOD_CID_IBGE.Text := DM.Sds_cidadesCOD_IBGE.Text;
suiDBEdit13.Text := DM.Sds_cidadesUF.Text;
suiDBEdit11.Text := DM.Sds_cidadesCEP.Text;
end;
end;

procedure TFormEmpresa.DBRadioGroup1Change(Sender: TObject);
begin
IF DBRadioGroup1.ItemIndex = 0 then
begin
RzDBNumericEdit1.Enabled := True;
RzDBNumericEdit2.Enabled := False;
RzDBNumericEdit3.Enabled := False;
RzDBNumericEdit4.Enabled := False;
RzDBNumericEdit5.Enabled := False;
end ELSE
IF DBRadioGroup1.ItemIndex = 1 then
begin
RzDBNumericEdit1.Enabled := FALSE;
RzDBNumericEdit2.Enabled := TRUE;
RzDBNumericEdit3.Enabled := True;
RzDBNumericEdit4.Enabled := True;
RzDBNumericEdit5.Enabled := True;
end ELSE
IF DBRadioGroup1.ItemIndex = 2 then
begin
RzDBNumericEdit1.Enabled := FALSE;
RzDBNumericEdit2.Enabled := TRUE;
RzDBNumericEdit3.Enabled := True;
RzDBNumericEdit4.Enabled := True;
RzDBNumericEdit5.Enabled := True;
end;
end;

procedure TFormEmpresa.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
if FormConscidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;

    RxDBComboEdit2.text :=  dm.sds_cidadesnome.Text;
    dm.SDS_EmpresaCOD_IBGE_CONTADOR.Text := DM.Sds_cidadesCOD_IBGE.Text;
    DM.SDS_EmpresaUF_CONTADOR.Text := DM.Sds_cidadesUF.Text;
    dm.SDS_EmpresaCEP_CONTADOR.Text := DM.Sds_cidadesCEP.Text;

end;
end;

procedure TFormEmpresa.RxDBComboEdit2Exit(Sender: TObject);
begin
if DM.Sds_cidades.locate('nome',RxDBComboEdit2.Text,[loCaseInsensitive]) = True then;
begin
 RxDBComboEdit2.text :=  dm.sds_cidadesnome.Text;
 dm.SDS_EmpresaCOD_IBGE_CONTADOR.Text := DM.Sds_cidadesCOD_IBGE.Text;
 DM.SDS_EmpresaUF_CONTADOR.Text := DM.Sds_cidadesUF.Text;
 dm.SDS_EmpresaCEP_CONTADOR.Text := DM.Sds_cidadesCEP.Text;

end;
end;

procedure TFormEmpresa.RadioButton2Click(Sender: TObject);
begin
suiDBEdit3.Text := FormatMaskText('99.999.999/9999-99;0;_',suiDBEdit3.Text);
end;

procedure TFormEmpresa.RadioButton1Click(Sender: TObject);
begin
suiDBEdit3.Text := FormatMaskText('999.999.999-99;0;_',suiDBEdit3.Text);
end;

end.
