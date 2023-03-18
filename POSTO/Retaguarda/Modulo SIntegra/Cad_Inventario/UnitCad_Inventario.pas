unit UnitCad_Inventario;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, IBCustomDataSet,
 ExtCtrls, IBSQL, Placemnt, Buttons, IBQuery, ComCtrls;

type
 TInventarioCadFrm = class(TForm)
   DBGrid1: TDBGrid;
    DtsDstInventario: TDataSource;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Label2: TLabel;
   Label1: TLabel;
   DBEdit1: TDBEdit;
   DBEdit2: TDBEdit;
    SQLCascadeCheck: TIBSQL;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBEdit3: TDBEdit;
    QryProdutos: TIBQuery;
    QryProdutosPRODUTOS: TIntegerField;

   procedure DBEdit1Enter(Sender: TObject);
   procedure DBEdit1Exit(Sender: TObject);
   procedure DBEdit2Enter(Sender: TObject);
   procedure DBEdit2Exit(Sender: TObject);
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure Abilita;
   procedure New;
   procedure Save;
   procedure Gerar;
   procedure EditCancel;
   procedure Del;
   procedure Consulta;
   procedure Imprimir;
   procedure LimparCampos;

   procedure DBEdit2KeyPress(Sender: TObject; var Key: char);
   procedure BitBtn1Click(Sender: TObject);
   procedure Seleciona_Responsavel(Sender: TObject);
   procedure Edit1KeyPress(Sender: TObject; var Key: Char);
   procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
   procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 InventarioCadFrm: TInventarioCadFrm;
 OrderbyStr: String = 'ORDER BY INVENTARIO.DATAHORA DESC';

implementation


uses UnitDataM1, UnitFrmPrincipal, UnitFuncoes, UnitSelect,
  UnitConsultaGeral, InventarioRep;

{$R *.DFM}

procedure tInventarioCadFrm.abilita;
begin
 case DM1.DstInventario.State of
   dsbrowse:
      begin
       PrincipalFrm.CamposPreenchidos(InventarioCadFrm.Label2);
       dbgrid1.Enabled := True;
       dbgrid1.SetFocus;
       groupbox1.Enabled := False;
       edit1.Visible         := false;
       BitBtn1.Enabled       := false;
       DateTimePicker1.Visible := False;
      end;
   dsinsert, dsedit:
      begin
       dbgrid1.Enabled := False;
       groupbox1.Enabled := True;
       edit1.Visible         := True;
       BitBtn1.Enabled       := True;
       DateTimePicker1.Visible := True;
       if not VarIsnull(DM1.DstInventario['RESPONSAVEL']) then
        edit1.Text := DBEdit1.Text;
       if not VarIsnull(DM1.DstInventario['DATAHORA']) then
        DateTimePicker1.Date := StrToDate(FormatDateTime('dd/MM/yyyy',DM1.DstInventario['DATAHORA']) );
       if Edit1.CanFocus then
        edit1.SetFocus;
      end;
  end;
end;

procedure tInventarioCadFrm.New;
begin
 if DM1.newsave(DM1.DstInventario) then
  begin
   LimparCampos;
   Abilita;
  end;
end;

procedure tInventarioCadFrm.Save;
begin
 DM1.DstInventario.UpdateRecord;
 if not VarIsNull(DateTimePicker1.Date) then
  begin
   DM1.DstInventario['DATAHORA'] := DateTimePicker1.Date;
   if DM1.newsave(DM1.DstInventario) then
    Abilita;
  end
 else
  begin
   PrincipalFrm.CamposNaoPreenchidos(InventarioCadFrm.Label3);
   Application.messagebox(
     'Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção!', mb_iconinformation + mb_ok);
   logtofile('Erro :: Preenchimento Incompleto de campos obrigatórios na Tela: ' +
     PrincipalFrm.Caption, True);
   logtofile('Msg  :: Campos obrigatórios não prenchidos', False);
  end;
end;


procedure tInventarioCadFrm.EditCancel;
begin
 if DM1.EditCancel(DM1.DstInventario) then
   Abilita;
end;

procedure tInventarioCadFrm.Del;
var
 Continuar: boolean;
 CodInventarioExcluido: integer;
begin
 Continuar := True;

 with SQLCascadeCheck do
  begin
   Close;
   SQL.Clear;
   SQL.Add('Select count(*) from Inventario_Itens where Cod_Inventario = :Cod_Inventario');
   Params.ByName('Cod_Inventario').AsString := DM1.DstInventario['Cod_Inventario'];
   Prepare;
   ExecQuery;
  end;

 if SQLCascadeCheck.Fields[0].AsInteger > 0 then
   if application.messagebox(PChar('Há ' + SQLCascadeCheck.Fields[0].AsString +
                             ' Item(s) relacionado(s) ao Inventario - ' +
                             DM1.DstInventario.FieldByName('RESPONSAVEL').AsString + #13 +
                             'Todos os Itens Inventario relacionados serão excluídos...' + #13#13 +
                             'Tem certeza que deseja excluir?'),
                             'Atenção!', mb_iconquestion + mb_YesNo) = idNo then
    Continuar := False;

 CodInventarioExcluido := DM1.DstInventario['Cod_Inventario'];
 if Continuar then
  if DM1.Del(DM1.DstInventario) then
   begin
    with SQLCascadeCheck do
     begin
      Close;
      SQL.Clear;
      SQL.Add('delete from Inventario_Itens where Cod_Inventario = :Cod_Inventario');
      Params.ByName('Cod_Inventario').Asinteger := CodInventarioExcluido;
      Prepare;
      ExecQuery;
      Transaction.CommitRetaining;
     end;
   end;
end;

procedure TInventarioCadFrm.Consulta;
begin
 ConsultaGeralListFrm.Caption := 'Consulta de Inventário';
 ConsultaGeralListFrm.SetStrValues(DM1.DstInventario, nil, 'Inventario', '',
   ['Cod_Inventario', 'DATAHORA','OBS'],
   ['Inventario',
   'Datahora','Descritivo'], [0]);
 ConsultaGeralListFrm.showmodal;
end;

procedure TInventarioCadFrm.DBEdit1Enter(Sender: TObject);
begin
 tdbedit(Sender).color := claqua;
end;

procedure TInventarioCadFrm.DBEdit1Exit(Sender: TObject);
begin
 tdbedit(Sender).color := clwindow;
end;

procedure TInventarioCadFrm.DBEdit2Enter(Sender: TObject);
begin
 dbedit2.color := claqua;
end;

procedure TInventarioCadFrm.DBEdit2Exit(Sender: TObject);
begin
 dbedit2.color := clwindow;
end;

procedure TInventarioCadFrm.FormActivate(Sender: TObject);
begin
 DateTimePicker1.Date := Now;
 DM1.OpenIBArray([DM1.DstInventario]);
 DM1.DefSenderDtsStateChange(DM1.DstInventario);
 abilita;
end;

procedure TInventarioCadFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstInventario);
 DM1.CloseIBArray([DM1.DstInventario_Itens,  InventarioCadFrm.QryProdutos]);
end;

procedure TInventarioCadFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = vk_delete then
   PrincipalFrm.speedbutton3.click;

 if key = VK_ADD then
   PrincipalFrm.speedbutton1.click;
end;

procedure TInventarioCadFrm.DBEdit2KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   PrincipalFrm.speedbutton5.click;
end;

procedure TInventarioCadFrm.BitBtn1Click(Sender: TObject);
begin
 SelectFrm.Caption := 'Selecione o Responsável...';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Responsavel;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT COD_SETORUSER, NOME');
   IBQuery1.sql.Add('FROM SETORUSER');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TInventarioCadFrm.Seleciona_Responsavel(Sender: TObject);
begin
 edit1.Clear;
 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   edit1.Text := SelectFrm.IBQuery1['NOME'];
   dm1.DstInventario['COD_RESPONSAVEL'] := SelectFrm.IBQuery1['COD_SETORUSER'];
  end;
 selectFrm.Close;
end;

procedure TInventarioCadFrm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #$20 then
   BitBtn1Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn1Click(self);
  end;
end;

procedure TInventarioCadFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
  PrincipalFrm.speedbutton6.click;
end;

procedure TInventarioCadFrm.Gerar;
begin
 QryProdutos.Close;
 QryProdutos.UnPrepare;
 QryProdutos.Prepare;
 QryProdutos.Open;
 if application.messagebox(PChar('Serão Gerados ' +
   QryProdutos.FieldByName('PRODUTOS').AsString +
   ' Ítem(s) relacionado(s) ao Inventário de ' +
   FormatDateTime('dd/MM/yyyy',DM1.DstInventario['DATAHORA']) + '.' +
   #13#13 +
   'Tem certeza que deseja Gerar?'),
   'Atenção!', mb_iconquestion + mb_YesNo) = idYes then
  begin
   SQLCascadeCheck.Close;
   SQLCascadeCheck.SQL.Clear;
   SQLCascadeCheck.SQL.add('Insert into INVENTARIO_ITENS');
   SQLCascadeCheck.SQL.add('(Cod_Inventario, Cod_Produtos, Produto, Cod_Posse, Quantidade, Valor_Produto, UF_POSSUIDOR, CNPJ_POSSUIDOR, IE_EST_POSSUIDOR, valor_unitario)');
   SQLCascadeCheck.SQL.add('select ');
   SQLCascadeCheck.SQL.add(DM1.DstInventario.FieldByName('COD_INVENTARIO').AsString);
   SQLCascadeCheck.SQL.add(',referencia, nome, cod_posse, est_atual, (prc_custo*est_atual) valor_produto, UF_POSSUIDOR, CNPJ_POSSUIDOR, IE_EST_POSSUIDOR, prc_custo');
   SQLCascadeCheck.SQL.add('from produtos where cod_produtos > 0');
   SQLCascadeCheck.ExecQuery;
   SQLCascadeCheck.Transaction.CommitRetaining;

   application.messagebox(PChar(' Ítem(s) relacionado(s) ao Inventário - Criados com sucesso.'),
   'Atenção!', MB_OK );
 end;
end;

procedure TInventarioCadFrm.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   Perform(wm_nextdlgctl, 0,0);
end;

procedure TInventarioCadFrm.DBGrid1TitleClick(Column: TColumn);
var
 s:string;
begin
 Screen.Cursor := crHourGlass;
 if TRIM(Column.FieldName) = 'RESPONSAVEL' then
  s := 'SETORUSER.NOME'
 else
  s := Column.FieldName;
 with DM1.DstInventario do
  begin
   Close;
   SelectSQL.Delete(SelectSQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SelectSQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SelectSQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 Screen.Cursor := crDefault;
end;

procedure TInventarioCadFrm.Imprimir;
begin
 Screen.Cursor := crHourGlass;
 Application.CreateForm(tInventarioRepFrm, InventarioRepFrm);
 DM1.DstInventario_Itens.Close;
 DM1.DstInventario_Itens.UnPrepare;
 DM1.DstInventario_Itens.Prepare;
 DM1.DstInventario_Itens.ParamByName('COD_INVENTARIO').AsInteger := DM1.DstInventario.FieldByName('COD_INVENTARIO').AsInteger;
 DM1.DstInventario_Itens.Open;
 Screen.Cursor := crDefault;
 InventarioRepFrm.QuickRep1.Preview;
end;

procedure TInventarioCadFrm.FormCreate(Sender: TObject);
begin
 date
end;

procedure TInventarioCadFrm.LimparCampos;
begin
 Edit1.Text := '';
 DateTimePicker1.DateTime := Now;
end;

end.
