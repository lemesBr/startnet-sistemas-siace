unit UAlterarSecaoGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls, AlignEdit;

type
  TFrmAlterarSecao = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    EdtCodSec: TAlignEdit;
    BtnConsSec: TSpeedButton;
    EdtNomeSec: TEdit;
    BtnOK: TButton;
    BtnCancelar: TButton;
    Label1: TLabel;
    EdtCodGrupo: TAlignEdit;
    BtnConsGrupo: TSpeedButton;
    EdtNomeGrupo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdtCodSub: TAlignEdit;
    BtnConsSub: TSpeedButton;
    EdtNomeSub: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    EdtCodSetor: TAlignEdit;
    BtnConsSetor: TSpeedButton;
    EdtNomeSetor: TEdit;
    Label8: TLabel;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsSecClick(Sender: TObject);
    procedure EdtCodSecEnter(Sender: TObject);
    procedure EdtCodSecExit(Sender: TObject);
    procedure EdtCodSecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodSecKeyPress(Sender: TObject; var Key: Char);
    procedure BtnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodGrupoEnter(Sender: TObject);
    procedure EdtCodGrupoExit(Sender: TObject);
    procedure EdtCodGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsGrupoClick(Sender: TObject);
    procedure EdtCodSubEnter(Sender: TObject);
    procedure EdtCodSubExit(Sender: TObject);
    procedure EdtCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsSubClick(Sender: TObject);
    procedure EdtCodSetorEnter(Sender: TObject);
    procedure EdtCodSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodSetorExit(Sender: TObject);
    procedure BtnConsSetorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlterarSecao: TFrmAlterarSecao;

implementation
Uses ModulodeDados, Ubibli1, UAlteraPreco, ConsSeccao, ConsGrupos,
  ConsSubGrupos, UConsLocaisEstoque;

{$R *.dfm}

procedure TFrmAlterarSecao.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAlterarSecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.QConsulta.close;
   Action:= caFree;
end;

procedure TFrmAlterarSecao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TFrmAlterarSecao.BtnConsSecClick(Sender: TObject);
begin
   DM.SDS_SECCAO.Active:=False;
   DM.SDS_SECCAO.Active:=true;

   Application.CreateForm(TFormConsSeccao, FormConsSeccao);
   //FormConsSeccao.Tag:= 19;
   FormConsSeccao.ShowModal;
   EdtCodSec.Text := DM.SDS_SECCAO.fieldbyname('codigo').AsString;
   EdtNomeSec.Text:= DM.SDS_SECCAO.fieldbyname('descricao').AsString;
end;

procedure TFrmAlterarSecao.EdtCodSecEnter(Sender: TObject);
begin
   EdtCodSec.SelectAll;
end;

procedure TFrmAlterarSecao.EdtCodSecExit(Sender: TObject);
begin
   if BtnCancelar.Focused then
     exit;

   EdtNomeSec.Text:= consulta('seccao', EdtCodSec, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
   if EdtNomeSec.Text = '' then
      begin
         showmessage('Seção não Cadastrada');
         EdtCodSec.SetFocus;
      end;
end;

procedure TFrmAlterarSecao.EdtCodSecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsSec.Click;
end;

procedure TFrmAlterarSecao.EdtCodSecKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
      key:= #0;
end;

procedure TFrmAlterarSecao.BtnOKClick(Sender: TObject);
var iAux : integer;
begin
   { verificar se tem algum selecionado }
   iAux:= 0;
   with FrmAlteraPreco.QConsProd do
      begin
         DisableControls;
         First;
         while not eof do
           begin
              if FrmAlteraPreco.DBGrid.SelectedRows.CurrentRowSelected then
                 begin
                    iAux:= 1;
                    Break;
                 end;
              next;
           end;
         First;
         EnableControls;
      end;

   if not (iAux > 0) then
      begin
         showmessage('Nenhum produto selecionado');
         exit;
      end;

   if Application.MessageBox('Confirma a Atualização da Seção?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
      begin
         if dm.IBTransaction.Active then
            dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         dm.QConsulta.close;
         dm.QConsulta.SQL.Clear;
         dm.QConsulta.sql.Text:= 'UPDATE PRODUTO SET SECCAO = :1, CODIGO_GRUPO = :2, ' +
                                 'CODIGO_SUBGRUPO = :3, CODIGO_LOCAL_ESTOQUE = :4 WHERE CODIGO = :5';
         with FrmAlteraPreco.QConsProd do
            begin
               DisableControls;
               First;
               while not eof do
                  begin
                     if FrmAlteraPreco.DBGrid.SelectedRows.CurrentRowSelected then
                        begin
                           iAuxCodPro:= FrmAlteraPreco.QConsProdCODIGO.AsInteger;
                           dm.QConsulta.Close;
                           dm.QConsulta.Parambyname('1').AsInteger:= strtoint(EdtCodSec.Text);

                           if trim(EdtCodGrupo.Text) = '' then
                              dm.QConsulta.Parambyname('2').Value:= null
                           else
                              dm.QConsulta.Parambyname('2').AsInteger:= strtoint(EdtCodGrupo.Text);

                           if trim(EdtCodSub.Text) = '' then
                              dm.QConsulta.Parambyname('3').Value:= null
                           else
                              dm.QConsulta.Parambyname('3').AsInteger:= strtoint(EdtCodSub.Text);

                           dm.QConsulta.ParamByName('4').AsInteger   := strtoint(EdtCodSetor.Text);

                           dm.QConsulta.Parambyname('5').AsInteger   := FrmAlteraPreco.QConsProdCODIGO.AsInteger;
                           dm.QConsulta.ExecSQL;
                        end;
                     next;
                  end;
               EnableControls;
            end;
         dm.IBTransaction.Commit;
         dm.QConsulta.Close;
         dm.QConsulta.SQL.Clear;
         FrmAlteraPreco.BtnOk.Click;
      end;
   close;
end;

procedure TFrmAlterarSecao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      begin
         key:= #0;
         SelectNext(ActiveControl, true, true);
      end;
end;

procedure TFrmAlterarSecao.EdtCodGrupoEnter(Sender: TObject);
begin
   EdtCodGrupo.SelectAll;
end;

procedure TFrmAlterarSecao.EdtCodGrupoExit(Sender: TObject);
begin
   if (BtnCancelar.Focused) or (EdtCodSec.Text = '') or (EdtCodGrupo.Text = '') then
      begin
         EdtNomeGrupo.Clear;
         exit;
      end;
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.add('SELECT CODIGOO, DESCRICAO ' +
                     'FROM GRUPOS ' +
                     'WHERE CODIGO = :1');
             Parambyname('1').AsInteger:= strtoint(EdtCodGrupo.Text);
           //  Parambyname('2').AsInteger:= strtoint(EdtCodSec.Text);
             Open;
             if not (fieldbyname('codigo').IsNull) then
                begin
                   EdtCodGrupo.Text := fieldbyname('codigo').AsString;
                   EdtNomeGrupo.Text:= fieldbyname('descricao').AsString;
                end
             else
                begin
                   EdtCodGrupo.Clear;
                   EdtNomeGrupo.Clear;
                   showmessage('Grupo não Cadastrado');
                   EdtCodGrupo.SetFocus;
                end;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar o grupo');
     end;
   finally
     dm.QConsulta.Close;
   end;
end;

procedure TFrmAlterarSecao.EdtCodGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsGrupo.Click;
end;

procedure TFrmAlterarSecao.BtnConsGrupoClick(Sender: TObject);
begin
   dm.SDS_Grupos.Active := false;
   dm.SDS_Grupos.Active := True;
   Application.CreateForm(TFormConsGrupos, FormConsGrupos);
   //FormConsGrupos.tag:= 2;
   FormConsGrupos.showmodal;
   EdtCodGrupo.Text := dm.SDS_Grupos.fieldbyname('codigo').AsString;
    EdtNomeGrupo.Text:= dm.SDS_Grupos.fieldbyname('descricao').AsString;
end;

procedure TFrmAlterarSecao.EdtCodSubEnter(Sender: TObject);
begin
   EdtCodSub.SelectAll;
end;

procedure TFrmAlterarSecao.EdtCodSubExit(Sender: TObject);
begin
   if (BtnCancelar.Focused) or (EdtCodSec.Text = '') or (EdtCodGrupo.Text = '') or (EdtCodSub.Text = '') then
      begin
         EdtNomeSub.Clear;
         exit;
      end;
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.add('SELECT CODIGO, NOME ' +
                     'FROM SUBGRUPOS ' +
                     'WHERE CODIGO = :1 AND LINK = :2');
             Parambyname('1').AsInteger:= strtoint(EdtCodSub.Text);
             Parambyname('2').AsInteger:= strtoint(EdtCodGrupo.Text);
            // Parambyname('3').AsInteger:= strtoint(EdtCodSec.Text);
             Open;
             if not (fieldbyname('codigo').IsNull) then
                begin
                   EdtCodSub.Text := fieldbyname('codigo').AsString;
                   EdtNomeSub.Text:= fieldbyname('NOME').AsString;
                end
             else
                begin
                   EdtCodSub.Clear;
                   EdtNomeSub.Clear;
                   showmessage('SubGrupo não Cadastrado');
                   EdtCodSub.SetFocus;
                end;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar o SubGrupo');
     end;
   finally
     dm.QConsulta.Close;
   end;
end;

procedure TFrmAlterarSecao.EdtCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsSub.Click;
end;

procedure TFrmAlterarSecao.BtnConsSubClick(Sender: TObject);
begin
  dm.SDS_SubGrupos.Active := False;
  dm.SDS_SubGrupos.Active := true;

   Application.CreateForm(TFormConsSubGrupos, FormConsSubGrupos);
  // FormConsSubGrupos.tag:= 2;
   FormConsSubGrupos.showmodal;
   EdtCodSub.Text:= DM.SDS_SubGruposCODIGO.Text;
   EdtNomeSub.Text := dm.SDS_SubGruposNOME.text
end;

procedure TFrmAlterarSecao.EdtCodSetorEnter(Sender: TObject);
begin
   EdtCodSetor.SelectAll;
end;

procedure TFrmAlterarSecao.EdtCodSetorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsSetor.Click;
end;

procedure TFrmAlterarSecao.EdtCodSetorExit(Sender: TObject);
begin
  if BtnCancelar.Focused then
     exit;

   EdtNomeSetor.Text:= consulta('LOCAIS_ESTOQUE', EdtCodSetor, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
   if trim(EdtNomeSetor.Text) = '' then
      begin
         showmessage('Setor não Cadastrado');
         EdtCodSetor.SetFocus;
      end;
end;

procedure TFrmAlterarSecao.BtnConsSetorClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
   //FrmConsLocaisEstoque.tag:= 2;
   FrmConsLocaisEstoque.showmodal;
end;

end.
