unit LiberarAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  StdCtrls, Mask, DBCtrls, SUIDBCtrls,
  RXCtrls, SUIPageControl, SUITabControl, SUIButton, SUIImagePanel,
  SUIGroupBox, SUIRadioGroup, DB, SUIDlg, ComCtrls,
  aDvGlowButton, NxPageControl, sDBEdit, sPanel, sDBNavigator;

type
  TFormLibAcesso = class(TForm)
    Panel2: TPanel;
    DBNavigator: TsDBNavigator;
    pnldados: TPanel;
    dbt_codigo: TsDBEdit;
    db_nome: TsDBEdit;
    DBEdit2: TsDBEdit;
    DBEdit1: TsDBEdit;
    Panel1: TPanel;
    PanelD: TPanel;
    PanelE: TPanel;
    PanelA: TPanel;
    PanelB: TPanel;
    PanelC: TPanel;
    PanelF: TPanel;
    Bevel1: TBevel;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel6: TRxLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    Panelg: TPanel;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox84: TDBCheckBox;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    BtnEditar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnLocalizar: TAdvGlowButton;
    bMarcar: TAdvGlowButton;
    bDesmarcar: TAdvGlowButton;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox96: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    DBCheckBox98: TDBCheckBox;
    DBCheckBox99: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox101: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    DBCheckBox104: TDBCheckBox;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    DBCheckBox107: TDBCheckBox;
    DBCheckBox108: TDBCheckBox;
    DBCheckBox109: TDBCheckBox;
    DBCheckBox110: TDBCheckBox;
    DBCheckBox111: TDBCheckBox;
    DBCheckBox112: TDBCheckBox;
    DBCheckBox113: TDBCheckBox;
    DBCheckBox114: TDBCheckBox;
    DBCheckBox115: TDBCheckBox;
    DBCheckBox116: TDBCheckBox;
    DBCheckBox117: TDBCheckBox;
    DBCheckBox118: TDBCheckBox;
    DBCheckBox119: TDBCheckBox;
    DBCheckBox120: TDBCheckBox;
    DBCheckBox121: TDBCheckBox;
    DBCheckBox122: TDBCheckBox;
    DBCheckBox123: TDBCheckBox;
    DBCheckBox124: TDBCheckBox;
    DBCheckBox125: TDBCheckBox;
    DBCheckBox126: TDBCheckBox;
    DBCheckBox127: TDBCheckBox;
    DBCheckBox128: TDBCheckBox;
    DBCheckBox129: TDBCheckBox;
    DBCheckBox130: TDBCheckBox;
    DBCheckBox131: TDBCheckBox;
    DBCheckBox132: TDBCheckBox;
    DBCheckBox133: TDBCheckBox;
    DBCheckBox134: TDBCheckBox;
    DBCheckBox135: TDBCheckBox;
    DBCheckBox136: TDBCheckBox;
    DBCheckBox137: TDBCheckBox;
    DBCheckBox138: TDBCheckBox;
    DBCheckBox139: TDBCheckBox;
    DBCheckBox140: TDBCheckBox;
    DBCheckBox141: TDBCheckBox;
    DBCheckBox142: TDBCheckBox;
    DBCheckBox143: TDBCheckBox;
    DBCheckBox144: TDBCheckBox;
    DBCheckBox145: TDBCheckBox;
    DBCheckBox146: TDBCheckBox;
    Panel3: TPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    NxTabSheet4: TNxTabSheet;
    NxTabSheet5: TNxTabSheet;
    NxTabSheet6: TNxTabSheet;
    NxTabSheet7: TNxTabSheet;
    DBCheckBox147: TDBCheckBox;
    DBCheckBox148: TDBCheckBox;
    DBCheckBox149: TDBCheckBox;
    procedure HabilitaNovo;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    Procedure AtualizaManutencao;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bMarcarClick(Sender: TObject);
    procedure bDesmarcarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLibAcesso: TFormLibAcesso;


implementation

uses ModulodeDados, Principal, ConsUsuarios;

{$R *.dfm}

procedure TFormLibAcesso.HabilitaNovo;
begin
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormLibAcesso.HabilitaPanel;
begin
PanelA.Enabled:= True;
PanelB.Enabled:= True;
PanelC.Enabled:= True;
PanelD.Enabled:= True;
PanelE.Enabled:= True;
PanelF.Enabled:= True;
Panelg.Enabled:= True;
Panel3.Enabled:= True;
end;

procedure TFormLibAcesso.DesabilitaPanel;
begin
PanelA.Enabled:= False;
PanelB.Enabled:= False;
PanelC.Enabled:= False;
PanelD.Enabled:= False;
PanelE.Enabled:= False;
PanelF.Enabled:= False;
PanelG.Enabled:= False;
Panel3.Enabled:= False;
end;

Procedure TFormLibAcesso.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
Bmarcar.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
bDesmarcar.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_Usuarios.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.SDS_Usuarios.State = dsBrowse);
end;


procedure TFormLibAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormLibAcesso:=nil;
end;

procedure TFormLibAcesso.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormLibAcesso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Usuarios.State in [dsInsert, dsEdit, dsSetKey] then
  begin

  FormPrincipal.MsgAtencao.HTMLText.text:= 'Antes de Sair voçê deve Cancelar ou Salvar o Registro !!!';
  FormPrincipal.MsgAtencao.Execute;

    CanClose := False;
  end;
end;

procedure TFormLibAcesso.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Alterar Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   DM.SDS_Usuarios.Edit;
   AtualizaManutencao;
   HabilitaPanel;
     Except
   FormPrincipal.MsgAtencao.HTMLText.text:= 'Erro ao tentar editar o Registro !!!';
   FormPrincipal.MsgAtencao.Execute;
   end;

end;
end;

procedure TFormLibAcesso.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_Usuarios.Cancel;
 if  DM.SDS_Usuarios.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   FormPrincipal.MsgAtencao.HTMLText.text:= 'Erro ao tentar cancelar editar o Registro !!!';
   FormPrincipal.MsgAtencao.Execute;
   end;
end;

procedure TFormLibAcesso.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
          DM.SDS_Usuarios.Post;
          DM.SDS_Usuarios.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   FormPrincipal.MsgAtencao.HTMLText.text:= 'Erro ao tentar Salvar editar o Registro !!!';
   FormPrincipal.MsgAtencao.Execute;
   end;
end;

procedure TFormLibAcesso.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsUsuarios=nil   then
    begin
    FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      BtnEditar.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormLibAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F2) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;
end;

procedure TFormLibAcesso.FormShow(Sender: TObject);
begin
//DM.SDS_Usuarios.Active:= False;
//DM.SDS_Usuarios.Active:= True;
DESABILITAPANEL;
IF DM.SDS_Usuarios.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
end;

procedure TFormLibAcesso.bMarcarClick(Sender: TObject);
var
  i : integer;
begin
  {     for i:=0 to ComponentCount-1 do
       if (Components[i] is TDBCheckBox) then
       TdbCheckBox(Components[i]).checked := True; // true marca, false desmarca}
DM.SDS_Usuarios.FieldByname('S01').AsString :='S';
DM.SDS_Usuarios.FieldByname('S02').AsString :='S';
DM.SDS_Usuarios.FieldByname('S03').AsString :='S';
DM.SDS_Usuarios.FieldByname('S04').AsString :='S';
DM.SDS_Usuarios.FieldByname('S05').AsString :='S';
DM.SDS_Usuarios.FieldByname('S06').AsString :='S';
DM.SDS_Usuarios.FieldByname('S07').AsString:='S';
DM.SDS_Usuarios.FieldByname('S08').AsString:='S';
DM.SDS_Usuarios.FieldByname('S09').AsString:='S';
DM.SDS_Usuarios.FieldByname('S10').AsString:='S';
DM.SDS_Usuarios.FieldByname('S11').AsString:='S';
DM.SDS_Usuarios.FieldByname('S12').AsString:='S';
DM.SDS_Usuarios.FieldByname('S13').AsString:='S';
DM.SDS_Usuarios.FieldByname('S14').AsString:='S';
DM.SDS_Usuarios.FieldByname('S15').AsString:='S';
DM.SDS_Usuarios.FieldByname('S16').AsString:='S';
DM.SDS_Usuarios.FieldByname('S17').AsString:='S';
DM.SDS_Usuarios.FieldByname('S18').AsString:='S';
DM.SDS_Usuarios.FieldByname('S19').AsString:='S';
DM.SDS_Usuarios.FieldByname('S20').AsString:='S';
DM.SDS_Usuarios.FieldByname('S21').AsString:='S';
DM.SDS_Usuarios.FieldByname('S22').AsString:='S';
DM.SDS_Usuarios.FieldByname('S23').AsString:='S';
DM.SDS_Usuarios.FieldByname('S24').AsString:='S';
DM.SDS_Usuarios.FieldByname('S25').AsString:='S';
DM.SDS_Usuarios.FieldByname('S26').AsString:='S';
DM.SDS_Usuarios.FieldByname('S27').AsString:='S';
DM.SDS_Usuarios.FieldByname('S28').AsString:='S';
DM.SDS_Usuarios.FieldByname('S29').AsString:='S';
DM.SDS_Usuarios.FieldByname('S30').AsString:='S';
DM.SDS_Usuarios.FieldByname('S31').AsString:='S';
DM.SDS_Usuarios.FieldByname('S32').AsString:='S';
DM.SDS_Usuarios.FieldByname('S33').AsString:='S';
DM.SDS_Usuarios.FieldByname('S34').AsString:='S';
DM.SDS_Usuarios.FieldByname('S35').AsString:='S';
DM.SDS_Usuarios.FieldByname('S36').AsString:='S';
DM.SDS_Usuarios.FieldByname('S37').AsString:='S';
DM.SDS_Usuarios.FieldByname('S38').AsString:='S';
DM.SDS_Usuarios.FieldByname('S39').AsString:='S';
DM.SDS_Usuarios.FieldByname('S40').AsString:='S';
DM.SDS_Usuarios.FieldByname('S41').AsString:='S';
DM.SDS_Usuarios.FieldByname('S42').AsString:='S';
DM.SDS_Usuarios.FieldByname('S43').AsString:='S';
DM.SDS_Usuarios.FieldByname('S44').AsString:='S';
DM.SDS_Usuarios.FieldByname('S45').AsString:='S';
DM.SDS_Usuarios.FieldByname('S46').AsString:='S';
DM.SDS_Usuarios.FieldByname('S47').AsString:='S';
DM.SDS_Usuarios.FieldByname('S48').AsString:='S';
DM.SDS_Usuarios.FieldByname('S49').AsString:='S';
DM.SDS_Usuarios.FieldByname('S50').AsString:='S';
DM.SDS_Usuarios.FieldByname('S51').AsString:='S';
DM.SDS_Usuarios.FieldByname('S52').AsString:='S';
DM.SDS_Usuarios.FieldByname('S53').AsString:='S';
DM.SDS_Usuarios.FieldByname('S54').AsString:='S';
DM.SDS_Usuarios.FieldByname('S55').AsString:='S';
DM.SDS_Usuarios.FieldByname('S56').AsString:='S';
DM.SDS_Usuarios.FieldByname('S57').AsString:='S';
DM.SDS_Usuarios.FieldByname('S58').AsString:='S';
DM.SDS_Usuarios.FieldByname('S59').AsString:='S';
DM.SDS_Usuarios.FieldByname('S60').AsString:='S';
DM.SDS_Usuarios.FieldByname('S61').AsString:='S';
DM.SDS_Usuarios.FieldByname('S62').AsString:='S';
DM.SDS_Usuarios.FieldByname('S63').AsString:='S';
DM.SDS_Usuarios.FieldByname('S64').AsString:='S';
DM.SDS_Usuarios.FieldByname('S65').AsString:='S';
DM.SDS_Usuarios.FieldByname('S66').AsString:='S';
DM.SDS_Usuarios.FieldByname('S67').AsString:='S';
DM.SDS_Usuarios.FieldByname('S68').AsString:='S';
DM.SDS_Usuarios.FieldByname('S69').AsString:='S';
DM.SDS_Usuarios.FieldByname('S70').AsString:='S';
DM.SDS_Usuarios.FieldByname('S71').AsString:='S';
DM.SDS_Usuarios.FieldByname('S72').AsString:='S';
DM.SDS_Usuarios.FieldByname('S73').AsString:='S';
DM.SDS_Usuarios.FieldByname('S74').AsString:='S';
DM.SDS_Usuarios.FieldByname('S75').AsString:='S';
DM.SDS_Usuarios.FieldByname('S76').AsString :='S';
DM.SDS_Usuarios.FieldByname('S77').AsString :='S';
DM.SDS_Usuarios.FieldByname('S78').AsString :='S';
DM.SDS_Usuarios.FieldByname('S79').AsString :='S';
DM.SDS_Usuarios.FieldByname('S80').AsString :='S';
DM.SDS_Usuarios.FieldByname('S81').AsString :='S';
DM.SDS_Usuarios.FieldByname('S82').AsString:='S';
DM.SDS_Usuarios.FieldByname('S83').AsString:='S';
DM.SDS_Usuarios.FieldByname('S84').AsString:='S';
DM.SDS_Usuarios.FieldByname('S85').AsString:='S';
DM.SDS_Usuarios.FieldByname('S86').AsString:='S';
DM.SDS_Usuarios.FieldByname('S87').AsString:='S';
DM.SDS_Usuarios.FieldByname('S88').AsString:='S';
DM.SDS_Usuarios.FieldByname('S89').AsString:='S';
DM.SDS_Usuarios.FieldByname('S90').AsString:='S';
DM.SDS_Usuarios.FieldByname('S91').AsString:='S';
DM.SDS_Usuarios.FieldByname('S92').AsString:='S';
DM.SDS_Usuarios.FieldByname('S93').AsString:='S';
DM.SDS_Usuarios.FieldByname('S94').AsString:='S';
DM.SDS_Usuarios.FieldByname('S95').AsString:='S';
DM.SDS_Usuarios.FieldByname('S96').AsString:='S';
DM.SDS_Usuarios.FieldByname('S97').AsString:='S';
DM.SDS_Usuarios.FieldByname('S98').AsString:='S';
DM.SDS_Usuarios.FieldByname('S99').AsString:='S';
DM.SDS_Usuarios.FieldByname('S100').AsString:='S';
DM.SDS_Usuarios.FieldByname('S101').AsString:='S';
DM.SDS_Usuarios.FieldByname('S102').AsString:='S';
DM.SDS_Usuarios.FieldByname('S103').AsString:='S';
DM.SDS_Usuarios.FieldByname('S104').AsString:='S';
DM.SDS_Usuarios.FieldByname('S105').AsString:='S';
DM.SDS_Usuarios.FieldByname('S106').AsString:='S';
DM.SDS_Usuarios.FieldByname('S107').AsString:='S';
DM.SDS_Usuarios.FieldByname('S108').AsString:='S';
DM.SDS_Usuarios.FieldByname('S109').AsString:='S';
DM.SDS_Usuarios.FieldByname('S110').AsString:='S';
DM.SDS_Usuarios.FieldByname('S111').AsString:='S';
DM.SDS_Usuarios.FieldByname('S112').AsString:='S';
DM.SDS_Usuarios.FieldByname('S113').AsString:='S';
DM.SDS_Usuarios.FieldByname('S114').AsString:='S';
DM.SDS_Usuarios.FieldByname('S115').AsString:='S';
DM.SDS_Usuarios.FieldByname('S116').AsString:='S';
DM.SDS_Usuarios.FieldByname('S117').AsString:='S';
DM.SDS_Usuarios.FieldByname('S118').AsString:='S';
DM.SDS_Usuarios.FieldByname('S119').AsString:='S';
DM.SDS_Usuarios.FieldByname('S120').AsString:='S';
DM.SDS_Usuarios.FieldByname('S121').AsString:='S';
DM.SDS_Usuarios.FieldByname('S122').AsString:='S';
DM.SDS_Usuarios.FieldByname('S123').AsString:='S';
DM.SDS_Usuarios.FieldByname('S124').AsString:='S';
DM.SDS_Usuarios.FieldByname('S125').AsString:='S';
DM.SDS_Usuarios.FieldByname('S126').AsString:='S';
DM.SDS_Usuarios.FieldByname('S127').AsString:='S';
DM.SDS_Usuarios.FieldByname('S128').AsString:='S';
DM.SDS_Usuarios.FieldByname('S129').AsString:='S';
DM.SDS_Usuarios.FieldByname('S130').AsString:='S';
DM.SDS_Usuarios.FieldByname('S131').AsString:='S';
DM.SDS_Usuarios.FieldByname('S132').AsString:='S';
DM.SDS_Usuarios.FieldByname('S133').AsString:='S';
DM.SDS_Usuarios.FieldByname('S134').AsString:='S';
DM.SDS_Usuarios.FieldByname('S135').AsString:='S';
DM.SDS_Usuarios.FieldByname('S136').AsString:='S';
DM.SDS_Usuarios.FieldByname('S137').AsString:='S';
DM.SDS_Usuarios.FieldByname('S138').AsString:='S';
DM.SDS_Usuarios.FieldByname('S139').AsString:='S';
DM.SDS_Usuarios.FieldByname('S140').AsString:='S';
DM.SDS_Usuarios.FieldByname('S141').AsString:='S';
DM.SDS_Usuarios.FieldByname('S142').AsString:='S';
DM.SDS_Usuarios.FieldByname('S143').AsString:='S';
DM.SDS_Usuarios.FieldByname('INSERIR').AsString:='S';
DM.SDS_Usuarios.FieldByname('EDITAR').AsString:='S';
DM.SDS_Usuarios.FieldByname('EXCLUIR').AsString:='S';
end;

procedure TFormLibAcesso.bDesmarcarClick(Sender: TObject);
var
  i : integer;
begin
      { for i:=0 to ComponentCount-1 do
       if (Components[i] is TDBCheckBox) then
       TdbCheckBox( Components[i] ).checked := False;} // true marca, false desmarca
DM.SDS_Usuarios.FieldByname('S01').AsString :='N';
DM.SDS_Usuarios.FieldByname('S02').AsString :='N';
DM.SDS_Usuarios.FieldByname('S03').AsString :='N';
DM.SDS_Usuarios.FieldByname('S04').AsString :='N';
DM.SDS_Usuarios.FieldByname('S05').AsString :='N';
DM.SDS_Usuarios.FieldByname('S06').AsString :='N';
DM.SDS_Usuarios.FieldByname('S07').AsString:='N';
DM.SDS_Usuarios.FieldByname('S08').AsString:='N';
DM.SDS_Usuarios.FieldByname('S09').AsString:='N';
DM.SDS_Usuarios.FieldByname('S10').AsString:='N';
DM.SDS_Usuarios.FieldByname('S11').AsString:='N';
DM.SDS_Usuarios.FieldByname('S12').AsString:='N';
DM.SDS_Usuarios.FieldByname('S13').AsString:='N';
DM.SDS_Usuarios.FieldByname('S14').AsString:='N';
DM.SDS_Usuarios.FieldByname('S15').AsString:='N';
DM.SDS_Usuarios.FieldByname('S16').AsString:='N';
DM.SDS_Usuarios.FieldByname('S17').AsString:='N';
DM.SDS_Usuarios.FieldByname('S18').AsString:='N';
DM.SDS_Usuarios.FieldByname('S19').AsString:='N';
DM.SDS_Usuarios.FieldByname('S20').AsString:='N';
DM.SDS_Usuarios.FieldByname('S21').AsString:='N';
DM.SDS_Usuarios.FieldByname('S22').AsString:='N';
DM.SDS_Usuarios.FieldByname('S23').AsString:='N';
DM.SDS_Usuarios.FieldByname('S24').AsString:='N';
DM.SDS_Usuarios.FieldByname('S25').AsString:='N';
DM.SDS_Usuarios.FieldByname('S26').AsString:='N';
DM.SDS_Usuarios.FieldByname('S27').AsString:='N';
DM.SDS_Usuarios.FieldByname('S28').AsString:='N';
DM.SDS_Usuarios.FieldByname('S29').AsString:='N';
DM.SDS_Usuarios.FieldByname('S30').AsString:='N';
DM.SDS_Usuarios.FieldByname('S31').AsString:='N';
DM.SDS_Usuarios.FieldByname('S32').AsString:='N';
DM.SDS_Usuarios.FieldByname('S33').AsString:='N';
DM.SDS_Usuarios.FieldByname('S34').AsString:='N';
DM.SDS_Usuarios.FieldByname('S35').AsString:='N';
DM.SDS_Usuarios.FieldByname('S36').AsString:='N';
DM.SDS_Usuarios.FieldByname('S37').AsString:='N';
DM.SDS_Usuarios.FieldByname('S38').AsString:='N';
DM.SDS_Usuarios.FieldByname('S39').AsString:='N';
DM.SDS_Usuarios.FieldByname('S40').AsString:='N';
DM.SDS_Usuarios.FieldByname('S41').AsString:='N';
DM.SDS_Usuarios.FieldByname('S42').AsString:='N';
DM.SDS_Usuarios.FieldByname('S43').AsString:='N';
DM.SDS_Usuarios.FieldByname('S44').AsString:='N';
DM.SDS_Usuarios.FieldByname('S45').AsString:='N';
DM.SDS_Usuarios.FieldByname('S46').AsString:='N';
DM.SDS_Usuarios.FieldByname('S47').AsString:='N';
DM.SDS_Usuarios.FieldByname('S48').AsString:='N';
DM.SDS_Usuarios.FieldByname('S49').AsString:='N';
DM.SDS_Usuarios.FieldByname('S50').AsString:='N';
DM.SDS_Usuarios.FieldByname('S51').AsString:='N';
DM.SDS_Usuarios.FieldByname('S52').AsString:='N';
DM.SDS_Usuarios.FieldByname('S53').AsString:='N';
DM.SDS_Usuarios.FieldByname('S54').AsString:='N';
DM.SDS_Usuarios.FieldByname('S55').AsString:='N';
DM.SDS_Usuarios.FieldByname('S56').AsString:='N';
DM.SDS_Usuarios.FieldByname('S57').AsString:='N';
DM.SDS_Usuarios.FieldByname('S58').AsString:='N';
DM.SDS_Usuarios.FieldByname('S59').AsString:='N';
DM.SDS_Usuarios.FieldByname('S60').AsString:='N';
DM.SDS_Usuarios.FieldByname('S61').AsString:='N';
DM.SDS_Usuarios.FieldByname('S62').AsString:='N';
DM.SDS_Usuarios.FieldByname('S63').AsString:='N';
DM.SDS_Usuarios.FieldByname('S64').AsString:='N';
DM.SDS_Usuarios.FieldByname('S65').AsString:='N';
DM.SDS_Usuarios.FieldByname('S66').AsString:='N';
DM.SDS_Usuarios.FieldByname('S67').AsString:='N';
DM.SDS_Usuarios.FieldByname('S68').AsString:='N';
DM.SDS_Usuarios.FieldByname('S69').AsString:='N';
DM.SDS_Usuarios.FieldByname('S70').AsString:='N';
DM.SDS_Usuarios.FieldByname('S71').AsString:='N';
DM.SDS_Usuarios.FieldByname('S72').AsString:='N';
DM.SDS_Usuarios.FieldByname('S73').AsString:='N';
DM.SDS_Usuarios.FieldByname('S74').AsString:='N';
DM.SDS_Usuarios.FieldByname('S75').AsString:='N';
DM.SDS_Usuarios.FieldByname('S76').AsString :='N';
DM.SDS_Usuarios.FieldByname('S77').AsString :='N';
DM.SDS_Usuarios.FieldByname('S78').AsString :='N';
DM.SDS_Usuarios.FieldByname('S79').AsString :='N';
DM.SDS_Usuarios.FieldByname('S80').AsString :='N';
DM.SDS_Usuarios.FieldByname('S81').AsString :='N';
DM.SDS_Usuarios.FieldByname('S82').AsString:='N';
DM.SDS_Usuarios.FieldByname('S83').AsString:='N';
DM.SDS_Usuarios.FieldByname('S84').AsString:='N';
DM.SDS_Usuarios.FieldByname('S85').AsString:='N';
DM.SDS_Usuarios.FieldByname('S86').AsString:='N';
DM.SDS_Usuarios.FieldByname('S87').AsString:='N';
DM.SDS_Usuarios.FieldByname('S88').AsString:='N';
DM.SDS_Usuarios.FieldByname('S89').AsString:='N';
DM.SDS_Usuarios.FieldByname('S90').AsString:='N';
DM.SDS_Usuarios.FieldByname('S91').AsString:='N';
DM.SDS_Usuarios.FieldByname('S92').AsString:='N';
DM.SDS_Usuarios.FieldByname('S93').AsString:='N';
DM.SDS_Usuarios.FieldByname('S94').AsString:='N';
DM.SDS_Usuarios.FieldByname('S95').AsString:='N';
DM.SDS_Usuarios.FieldByname('S96').AsString:='N';
DM.SDS_Usuarios.FieldByname('S97').AsString:='N';
DM.SDS_Usuarios.FieldByname('S98').AsString:='N';
DM.SDS_Usuarios.FieldByname('S99').AsString:='N';
DM.SDS_Usuarios.FieldByname('S100').AsString:='N';
DM.SDS_Usuarios.FieldByname('S101').AsString:='N';
DM.SDS_Usuarios.FieldByname('S102').AsString:='N';
DM.SDS_Usuarios.FieldByname('S103').AsString:='N';
DM.SDS_Usuarios.FieldByname('S104').AsString:='N';
DM.SDS_Usuarios.FieldByname('S105').AsString:='N';
DM.SDS_Usuarios.FieldByname('S106').AsString:='N';
DM.SDS_Usuarios.FieldByname('S107').AsString:='N';
DM.SDS_Usuarios.FieldByname('S108').AsString:='N';
DM.SDS_Usuarios.FieldByname('S109').AsString:='N';
DM.SDS_Usuarios.FieldByname('S110').AsString:='N';
DM.SDS_Usuarios.FieldByname('S111').AsString:='N';
DM.SDS_Usuarios.FieldByname('S112').AsString:='N';
DM.SDS_Usuarios.FieldByname('S113').AsString:='N';
DM.SDS_Usuarios.FieldByname('S114').AsString:='N';
DM.SDS_Usuarios.FieldByname('S115').AsString:='N';
DM.SDS_Usuarios.FieldByname('S116').AsString:='N';
DM.SDS_Usuarios.FieldByname('S117').AsString:='N';
DM.SDS_Usuarios.FieldByname('S118').AsString:='N';
DM.SDS_Usuarios.FieldByname('S119').AsString:='N';
DM.SDS_Usuarios.FieldByname('S120').AsString:='N';
DM.SDS_Usuarios.FieldByname('S121').AsString:='N';
DM.SDS_Usuarios.FieldByname('S122').AsString:='N';
DM.SDS_Usuarios.FieldByname('S123').AsString:='N';
DM.SDS_Usuarios.FieldByname('S124').AsString:='N';
DM.SDS_Usuarios.FieldByname('S125').AsString:='N';
DM.SDS_Usuarios.FieldByname('S126').AsString:='N';
DM.SDS_Usuarios.FieldByname('S127').AsString:='N';
DM.SDS_Usuarios.FieldByname('S128').AsString:='N';
DM.SDS_Usuarios.FieldByname('S129').AsString:='N';
DM.SDS_Usuarios.FieldByname('S130').AsString:='N';
DM.SDS_Usuarios.FieldByname('S131').AsString:='N';
DM.SDS_Usuarios.FieldByname('S132').AsString:='N';
DM.SDS_Usuarios.FieldByname('S133').AsString:='N';
DM.SDS_Usuarios.FieldByname('S134').AsString:='N';
DM.SDS_Usuarios.FieldByname('S135').AsString:='N';
DM.SDS_Usuarios.FieldByname('S136').AsString:='N';
DM.SDS_Usuarios.FieldByname('S137').AsString:='N';
DM.SDS_Usuarios.FieldByname('S138').AsString:='N';
DM.SDS_Usuarios.FieldByname('S139').AsString:='N';
DM.SDS_Usuarios.FieldByname('S140').AsString:='N';
DM.SDS_Usuarios.FieldByname('S141').AsString:='N';
DM.SDS_Usuarios.FieldByname('S142').AsString:='N';
DM.SDS_Usuarios.FieldByname('S143').AsString:='N';
DM.SDS_Usuarios.FieldByname('INSERIR').AsString:='N';
DM.SDS_Usuarios.FieldByname('EDITAR').AsString:='N';
DM.SDS_Usuarios.FieldByname('EXCLUIR').AsString:='N';
end;

end.
