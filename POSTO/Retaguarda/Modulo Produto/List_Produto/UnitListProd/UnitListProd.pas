unit UnitListProd;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 DBCtrls, StdCtrls, Mask, ToolEdit, Grids, DBGrids, ExtCtrls, dateutil, variants,
 ComCtrls, Menus, Buttons, BDE, Db, DBTables, IBCustomDataSet, IBQuery,
 Placemnt;

type
 TProdutoListFrm = class(TForm)
   GroupBox2: TGroupBox;
   Label1: TLabel;
   Label3: TLabel;
   Label4: TLabel;
   Edit1: TEdit;
   DBLookupComboBox1: TDBLookupComboBox;
   Label6: TLabel;
   Edit3: TEdit;
   GroupBox1: TGroupBox;
   CheckBox1: TCheckBox;
   CheckBox2: TCheckBox;
   GroupBox4: TGroupBox;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   Label5: TLabel;
   Label7: TLabel;
   CheckBox3: TCheckBox;
   CheckBox4: TCheckBox;
   Edit2: TEdit;
   Label2: TLabel;
   QryListProd: TIBQuery;
   QrySubGrupoP: TIBQuery;
   QryGrupoP: TIBQuery;
   DtsQryListProd: TDataSource;
   DtsQryGrupoP: TDataSource;
   DtsQrySubGrupoP: TDataSource;
   DtsDstProduto: TDataSource;
   BitBtn2: TBitBtn;
   BitBtn3: TBitBtn;
   Edit4: TEdit;
   Label8: TLabel;
   DBLookupComboBox2: TDBLookupComboBox;
   CheckBox5: TCheckBox;
   DtsNumSerie: TDataSource;
   QryNumSerie: TIBQuery;
   PopupMenu2: TPopupMenu;
   AumentarMnu: TMenuItem;
   DiminuirMnu: TMenuItem;
   MaximizarMnu: TMenuItem;
   MinimizarMnu: TMenuItem;
   CheckBox6: TCheckBox;
   Panel7: TPanel;
   Splitter1: TSplitter;
   Panel6: TPanel;
   SpeedButton3: TSpeedButton;
   SpeedButton1: TSpeedButton;
   SpeedButton2: TSpeedButton;
   SpeedButton4: TSpeedButton;
   Panel9: TPanel;
   DBGrid2: TDBGrid;
   Panel11: TPanel;
   FormStorage1: TFormStorage;
   Panel1: TPanel;
   DBGrid1: TDBGrid;
    QryListProdCOD_PRODUTOS: TIntegerField;
    QryListProdREFERENCIA: TIBStringField;
    QryListProdNOME: TIBStringField;
    QryListProdPRC_VENDA: TIBBCDField;
    QryListProdEST_ATUAL: TIBBCDField;
    QryListProdEST_MIN: TIBBCDField;
    QryListProdEST_IDEAL: TIBBCDField;
    QryListProdULT_COMPRA: TDateTimeField;
    QryListProdPRM_QUANT: TIBBCDField;
    QryListProdAPR_UND: TIBStringField;
    QryListProdPRM_PRC: TIBBCDField;
    QryListProdFORNECEDOR: TIBStringField;
    QryListProdFABRICANTE: TIBStringField;
    QryListProdGRUPO: TIBStringField;
    QryListProdSUBGRUPO: TIBStringField;
    QryListProdPRC_CUSTO: TIBBCDField;
    QryListProdENABLE_NUMSERIE: TIntegerField;
    QryListProdNTRIBECF: TIBStringField;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
   procedure Gerar(Sender: TObject);
   procedure Limpar(Sender: TObject);
   procedure Imprimir(Sender: TObject);
   procedure FiltroChanged(Sender: TObject);

   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);

   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure DateEdit1Enter(Sender: TObject);
   procedure DateEdit1Exit(Sender: TObject);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid1TitleClick(Column: TColumn);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure Edit2KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure BitBtn2Click(Sender: TObject);
   procedure Edit3KeyPress(Sender: TObject; var Key: char);

   procedure Seleciona_Forn(Sender: TObject);
   procedure Seleciona_Fabri(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure DateEdit2KeyPress(Sender: TObject; var Key: char);
   procedure ResizeGrid(Sender: TObject);
   procedure Label1MouseLeave(Sender: TObject);
   procedure Label3Click(Sender: TObject);
   procedure Label6Click(Sender: TObject);
   procedure Label8Click(Sender: TObject);
   procedure Label4Click(Sender: TObject);
   procedure QryGrupoPAfterScroll(DataSet: TDataSet);
   procedure Edit1Change(Sender: TObject);
   procedure CheckBox1Click(Sender: TObject);
   procedure DateEdit1Change(Sender: TObject);
   procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: integer; Column: TColumn; State: TGridDrawState);
   procedure CheckBox5MouseDown(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: integer);
   procedure CheckBox5KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure QryListProdAfterScroll(DataSet: TDataSet);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label6MouseEnter(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);

 private
   { Private declarations }

 public
   { Public declarations }
 end;

var
 ProdutoListFrm: TProdutoListFrm;
 OrderbyStr: string;


implementation

uses UnitDataM1, UnitFrmPrincipal, Unit1cadprod, UnitSelect,
 Unit3ListProdImprSel, Unit2, UnitCad_GrupoProd, UnitCad_SubGrupoProd;
// ,UnitCad_GrupoFinanc;

{$R *.DFM}

function sBreakApart(BaseString, BreakString: string;
 StringList: TStringList): TStringList;
var
 EndOfCurrentString: byte;
begin
 repeat
   EndOfCurrentString := Pos(BreakString, BaseString);
   if EndOfCurrentString = 0 then
     StringList.add(BaseString)
   else
    begin
     StringList.add(Copy(BaseString, 1, EndOfCurrentString - 1));
     BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString),
       length(BaseString) - EndOfCurrentString);
    end;
 until EndOfCurrentString = 0;
 Result := StringList;
end;

procedure TProdutoListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([ProdutoListFrm.QryGrupoP, ProdutoListFrm.QrySubGrupoP,
   ProdutoListFrm.QryNumSerie]);
 DM1.DefSenderDtsStateChange(ProdutoListFrm.QryListProd);
 DBLookupComboBox1.KeyValue := null;
 DBLookupComboBox2.KeyValue := null;
end;

//-------------Procedure GERAR-----------------------
procedure TProdutoListFrm.Gerar(Sender: TObject);
var
 q, z, a: integer;
 m, p: string;
 list1, list: TStringList;
begin
 if (dateedit2.Date < dateedit1.Date) or ((dateedit1.Text = '  /  /  ')
   and (dateedit2.Text <> '  /  /  ')) then
  begin
   application.messagebox('Data final deve ser MAIOR que a data inicial'#13'Verifique e tente novamente.',
     'Atenção', mb_ok + mb_iconinformation);
   dateedit2.SetFocus;
  end
 else
  begin
   QryListProd.Tag := 0;
   with QryListProd do
    begin
     Close;
     sql.Clear;
     sql.add('select  PRODUTOS.COD_PRODUTOS,PRODUTOS.REFERENCIA, PRODUTOS.NOME, PRODUTOS.Prc_Venda,');
     sql.add('PRODUTOS.EST_ATUAL, PRODUTOS.EST_MIN, PRODUTOS.EST_IDEAL,');
     sql.add('PRODUTOS.ULT_COMPRA, PRODUTOS.PRM_QUANT,PRODUTOS.Apr_Und,');
     sql.add('PRODUTOS.PRM_PRC,a.NOME FORNECEDOR,b.NOME FABRICANTE, TribEcf.nome NTRIBECF, Grupop.nome GRUPO,');
     sql.add('SubGrupoP.Nome SUBGRUPO, PRODUTOS.Prc_Custo,ENABLE_NUMSERIE');
     //Faz a query de Prod e faz a mudança dos campos subgrupo e grupo, de numero para nome.
     sql.add('from PRODUTOS');

     sql.Add('LEFT OUTER JOIN TribEcf ON (PRODUTOS.COD_ECF = TribEcf.CODECF)');
     sql.Add('LEFT OUTER JOIN GrupoP ON (PRODUTOS.COD_GRUPOP = Grupop.CodGrupoP)');
     sql.Add('LEFT OUTER JOIN SubGrupoP ON (PRODUTOS.COD_SUBGRUPOP = SubGrupop.CodSubGRUPOP)');
     SQL.Add('LEFT OUTER JOIN CADASTRO a on (a.CODCLI=PRODUTOS.COD_CLI_FORNECEDOR)');
     SQL.Add('LEFT OUTER JOIN CADASTRO b on (b.CODCLI= PRODUTOS.COD_CLI_FABRICANTE)');
     sql.add(' WHERE (PRODUTOS.COD_PRODUTOS <> 0)');

     //----por Garantia Fornecedor
     if checkbox6.Checked then
      begin
       sql.add(
         ' and (PRODUTOS.COD_PRODUTOS in (select COD_PRODUTOS from Produtos_NSerie where FIM_GARANTIA_FABRICANTE < :FIM_GARANTIA_FABRICANTE))');
       params.parambyname('FIM_GARANTIA_FABRICANTE').Asdatetime := now;
      end;

     //--------------Filtros Estoque minimo, estoque ideal e estoque negativo-----------
     if checkbox1.Checked = True then
      begin
       sql.add(' and(EST_ATUAL < Est_Min)');
      end;

     if checkbox2.Checked = True then
      begin
       sql.add(' and(EST_ATUAL < Est_Ideal)');
      end;

     if checkbox3.Checked = True then
      begin
       sql.add(' and(PRM_QUANT >0)');
      end;

     if checkbox4.Checked = True then
      begin
       sql.add(' and(EST_ATUAL < 0)');
      end;

     if checkbox7.Checked = True then
      begin
       sql.add(' and(EST_ATUAL > 0)');
      end;

     if checkbox8.Checked = True then
      begin
       sql.add(' and(EST_ATUAL = 0)');
      end;
     //---------------por Código----------------------------
     if edit1.Text <> '' then
      begin
       p := '(';
       sql.add(' and (');
       p := '';
       list := TStringList.Create;
       sBreakApart(edit1.Text, ';', list);
       for q := 0 to list.Count - 1 do
        begin
         m := list[q];
         a := pos('-', m);

         //restrição por traço
         if a > 0 then
          begin
           list1 := TStringList.Create;
           sBreakApart(m, '-', list1);
           z := list1.Count - 1;
           if list1[z] < list1[0] then
            begin
             application.messagebox(PChar('A combinação ' + list1[0]
               + '-' + list1[z] + ' é invalida.' + #13#10 + 'Digite em ordem numerica ' +
               list1[z] + '-' + list1[0]), 'Atenção', mb_iconexclamation + mb_ok);
             edit1.SetFocus;
             list1[z] := '0';
             list1[0] := '0';
            end;
           if q = 0 then
            begin
             sql.add(p + ' PRODUTOS.REFERENCIA between :DE' + IntToStr(q)
               + ' and :ATE' + IntToStr(q));
             params.parambyname('DE' + IntToStr(q)).AsString := list1[0];
             params.parambyname('ATE' + IntToStr(q)).AsString := list1[z];
            end
           else
            begin
             sql.add('or PRODUTOS.REFERENCIA between :DE' + IntToStr(q) +
               ' and :ATE' + IntToStr(q));
             params.parambyname('DE' + IntToStr(q)).AsString := list1[0];
             params.parambyname('ATE' + IntToStr(q)).AsString := list1[z];
             list[q] := '0';
            end;
          end;
         //Restrição por ponto-virgula
         if a = 0 then
          begin
           with QryListProd do
            begin
             if q = 0 then
              begin
               sql.add(p + ' PRODUTOS.REFERENCIA = :DE' + IntToStr(q));
               params.parambyname('DE' + IntToStr(q)).AsString := list[q];
              end
             else
              begin
               sql.add(' or PRODUTOS.REFERENCIA = :DE' + IntToStr(q));
               params.parambyname('DE' + IntToStr(q)).AsString := list[q];
              end;
            end;
          end;
        end;
       sql.add(')');
       list.Free;
       list1.Free;
      end;

     //---------------Por nome do produto---------------
     if edit2.Text <> '' then
      begin
       sql.add(' and UPPER(PRODUTOS.NOME) LIKE UPPER(:Prod) ');
       params.parambyname('Prod').AsString := '%' + edit2.Text + '%';
      end;

     //----------------por Fornecedor------------------
     if edit3.Text <> '' then
      begin
       sql.add('and UPPER(a.Nome) LIKE UPPER(:Fornecedor)');
       params.parambyname('Fornecedor').AsString := '%' + edit3.Text + '%';
      end;

     //---------------por fabricante---------------------
     if edit4.Text <> '' then
      begin
       sql.add(' and UPPER(b.Nome) LIKE UPPER(:Fabricante)');
       params.parambyname('Fabricante').AsString := '%' + edit4.Text + '%';
      end;

     //---------------por Grupo---------------------------
     if dblookupcombobox1.keyvalue <> null then
      begin
       sql.add('and (PRODUTOS.Cod_GrupoP = :Grupo)');
       params.parambyname('Grupo').AsInteger := dblookupcombobox1.KeyValue;
      end;
     //---------------por Subgrupo-------------------------
     if dblookupcombobox2.keyvalue <> null then
      begin
       sql.add(' and (PRODUTOS.Cod_subGRUPOP = :Subgrupo)');
       params.parambyname('SubGrupo').AsInteger := dblookupcombobox2.KeyValue;
      end;

     //---------------por ultima compra----------------------------
     if ((length(trim(dateedit1.Text)) >= 8) and (length(trim(dateedit2.Text)) >= 8)) then
      begin
       sql.add(' and (ULT_COMPRA >= :data1) and (ULT_COMPRA <= :data2)');
       Params.ParamByName('data1').AsDateTime :=
         strtodatetime(dateedit1.Text + ' 00:00:00');
       Params.ParamByName('data2').AsDateTime :=
         strtodatetime(dateedit2.Text + ' 23:59:59');
      end;
     sql.add('ORDER BY PRODUTOS.REFERENCIA');
     OrderbyStr := 'ORDER BY PRODUTOS.REFERENCIA';
     Open;
     if CheckBox5.Checked then
      begin
       with QryNumSerie do
        begin
         Close;
         SQL.Clear;
         SQL.Add('select NUM_SERIE,FIM_GARANTIA_FABRICANTE,GARANTIA_POSVENDA from Produtos_NSerie');
         SQL.Add('where');
         SQL.Add('COD_PRODUTOS=:COD_PRODUTOS');
         //----por Garantia Fornecedor
         if CheckBox6.Checked then
          begin
           SQL.Add('and (FIM_GARANTIA_FABRICANTE < :FIM_GARANTIA_FABRICANTE)');
           params.parambyname('FIM_GARANTIA_FABRICANTE').asdatetime := now;
          end;
         Open;
        end;
      end;
    end;
{  if (CheckBox5.Checked) and (QryListProd.RecordCount > 0) then
   begin
    panel9.Visible:=true;
    Splitter1.Visible:=true;
   end
  else
   begin
    panel9.Visible:=false;
    Splitter1.Visible:=false;
   end;                }
   if QryListProd.RecordCount > 0 then
     panel1.Visible := True
   else
    begin
     panel1.Visible := False;
     panel9.Visible := False;
     panel6.Caption := ' Nenhum Produto Encontrado';
    end;
   if QryListProd.Active then
     QryListProd.Tag := 1;
   DM1.DefSenderDtsStateChange(ProdutoListFrm.QryListProd);
   if dbgrid1.CanFocus then
     dbgrid1.SetFocus;
  end;
end;

procedure TProdutoListFrm.FiltroChanged(Sender: TObject);
begin
 if QryListProd.Active then
  begin
   screen.cursor := crhourglass;
   panel6.Caption := 'Listagem de Produtos';
   Dm1.CloseIBArray([QryListProd]);
   DM1.DefSenderDtsStateChange(QryListProd);
   Splitter1.Visible := False;
   panel9.Visible := False;
   panel1.Visible := False;
   screen.cursor := crdefault;
  end;
end;

procedure TProdutoListFrm.Imprimir(Sender: TObject);
begin
 //------Impressao Matricial-------
 if (QryListProd.RecordCount <> 0) and (DBGrid1.Visible = True) then
  begin
   application.CreateForm(TProdutoListSelFrm, ProdutoListSelFrm);
   ProdutoListSelFrm.showmodal;
   ProdutoListSelFrm.Free;
  end
 else
   application.messagebox('Nenhum relatório válido gerado' + #13 +
     'Selecione os filtros desejados e clique em "Gerar"',
     'Atenção', mb_ok + mb_iconinformation);

 //--------Impresao QuickRep---------
{application.CreateForm(tQRProd,Qrprod);
with QrProd do
 begin
  Qrlabel5.caption:=frmprincipal.label1.caption;
  Qrmemo1.lines.clear;
  Qrmemo2.lines.clear;
  if edit1.text<>'' then
   QRMemo1.lines.add('Código(s): '+edit1.text);
 if edit2.text<>'' then
  QRMemo1.lines.add('Produto: '+edit2.text);
 if edit3.text<>'' then
  QRMemo1.lines.add('Fornecedor: '+edit3.text);
 if dblookupcombobox1.text<>'' then
  QRMemo1.lines.add('Grupo: '+dblookupcombobox1.text);
 if dblookupcombobox2.text<>'' then
  QRMemo1.lines.add('Sub-Grupo: '+dblookupcombobox2.text);
 if checkbox1.checked then
  QRMemo2.lines.add('Estoque - Abaixo do Mínimo');
 if checkbox2.checked then
  QRMemo2.lines.add('Estoque - Abaixo do Ideal');
 if checkbox2.checked then
  QRMemo2.lines.add('Estoque - Em Promoção');
 if checkbox2.checked then
  QRMemo2.lines.add('Estoque - Negativo');
 if (dateedit1.text <> '  /  /    ') and (dateedit1.text <> '  /  /  ') then
  QRMemo2.lines.add('Data de Compra entre '+dateedit1.text+' e '+dateedit2.text);
 end;
Qrprod.Quickrep1.preview;
}
end;

//------------------field colors----------------------------
procedure TProdutoListFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
end;

procedure TProdutoListFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TProdutoListFrm.DateEdit1Enter(Sender: TObject);
begin
 Tdateedit(Sender).color := claqua;
end;

procedure TProdutoListFrm.DateEdit1Exit(Sender: TObject);
begin
 Tdateedit(Sender).color := clwindow;
end;

//----------------tab perform--------------------------------------

procedure TProdutoListFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TProdutoListFrm.Edit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
 if key = #27 then
   self.Close;
end;


procedure TProdutoListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := cafree;
 DM1.CloseIBArray([ProdutoListFrm.QryGrupoP, ProdutoListFrm.QrySubGrupoP,
   ProdutoListFrm.QryListProd, ProdutoListFrm.QryNumSerie]);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
end;

procedure TProdutoListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
  begin
   if qrylistprod.RecordCount <> 0 then
    begin
     if not varisnull(qrylistprod['REFERENCIA']) then
      begin
       lockwindowupdate(handle);
       if not PrincipalFrm.addachild(TProdutoCadFrm, ProdutoCadFrm) then
         PrincipalFrm.AddaChild(TProdutoCadFrm, ProdutoCadFrm);

       lockwindowupdate(0);
       ProdutoCadFrm.Edit3.SetFocus;
       ProdutoCadFrm.Edit3.Text := QryListProd['REFERENCIA'];
       ProdutoCadFrm.Edit3KeyDown(ProdutoListFrm, key, shift);      //"press" enter
      end;
    end
   else
     application.MessageBox('Nenhum Produto Selecionado', 'Erro', mb_Ok + mb_iconerror);
  end;

 if key = vk_escape then
   edit1.SetFocus;
end;

procedure TProdutoListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s: string;
begin
 screen.cursor := crHourGlass;
 if TRIM(Column.FieldName) = 'GRUPO' then
  s := 'GRUPOP.NOME'
 else if TRIM(Column.FieldName) = 'SUBGRUPO' then
  s := 'SUBGRUPOP.NOME'
 else if TRIM(Column.FieldName) = 'FORNECEDOR' then
  s := 'a.NOME'
 else if TRIM(Column.FieldName) = 'FABRICANTE' then
  s := 'b.NOME'
 else
  s := 'PRODUTOS.' + Column.FieldName;
 with QryListProd do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 screen.cursor := crDefault;
end;

procedure TProdutoListFrm.DBGrid1DblClick(Sender: TObject);
var
 Key: word;
 Shift: TShiftState;
begin
 key := $0D;
 dbgrid1keydown(self, key, shift);
end;

procedure TProdutoListFrm.BitBtn2Click(Sender: TObject);
begin
 if (BitBtn2.Focused) or (edit3.Focused) then
  begin
   Selectfrm.Caption := 'Selecione o Fornecedor';
   //seta procedure de acao para botao de OK de SelectFrm
   SelectFrm.SpeedButton1.OnClick := Seleciona_Forn;
  end;
 if (BitBtn3.Focused) or (edit4.Focused) then
  begin
   Selectfrm.Caption := 'Selecione o Fabricante';
   //seta procedure de acao para botao de OK de SelectFrm
   SelectFrm.SpeedButton1.OnClick := Seleciona_Fabri;
  end;
 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT CODCLI, NOME');
   IBQuery1.sql.Add('FROM CADASTRO WHERE CODCLI <> 0 and TIPO =' + quotedstr('F'));
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Open;
  end;

 SelectFrm.ShowModal;
end;

procedure TProdutoListFrm.Seleciona_Forn(Sender: TObject);
begin
 edit3.Text := SelectFrm.IBQuery1['NOME'];
 selectFrm.Close;
end;

procedure TProdutoListFrm.Seleciona_Fabri(Sender: TObject);
begin
 edit4.Text := SelectFrm.IBQuery1['NOME'];
 selectFrm.Close;
end;

procedure TProdutoListFrm.Edit3KeyPress(Sender: TObject; var Key: char);
begin
 if key = #$20 then
   BitBtn2.Click;

 if key = #27 then  //escape
   Perform(wm_nextdlgctl, 1,0);

 if key = #13 then // enter
   Perform(wm_nextdlgctl, 0,0);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2.Click;
  end;
end;

procedure TProdutoListFrm.Limpar(Sender: TObject);
begin
 edit1.Clear;
 edit2.Clear;
 edit3.Clear;
 edit4.Clear;
 DBLookupComboBox1.KeyValue := null;
 DBLookupComboBox2.KeyValue := null;
 CheckBox1.Checked := False;
 CheckBox2.Checked := False;
 CheckBox3.Checked := False;
 CheckBox4.Checked := False;
 CheckBox5.Checked := False;
 CheckBox6.Checked := False;
 CheckBox6.Enabled := False;
 CheckBox7.Checked := False;
 CheckBox8.Checked := False;
 DateEdit1.Clear;
 DateEdit2.Clear;
 Splitter1.Visible := False;
 panel9.Visible := False;
 panel1.Visible := False;
 edit1.SetFocus;
 SpeedButton3.Click;
 panel6.Caption := ' Listagem de Produtos';
 DM1.DefSenderDtsStateChange(QryListProd);
end;

procedure TProdutoListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TProdutoListFrm.DateEdit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then
  begin
   key := #0;
   Gerar(Self);
  end;
end;

procedure TProdutoListFrm.ResizeGrid(Sender: TObject);
const
 MaxHeight: integer = 433;
 NormalHeight: integer = 217;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel7.Height - (MaxHeight div 10) >= NormalHeight then
      begin
       panel7.Height := panel7.Height - (MaxHeight div 10);
       panel7.Top := panel7.top + (MaxHeight div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel7.Height + (MaxHeight div 10) <= MaxHeight then
      begin
       panel7.Height := panel7.Height + (MaxHeight div 10);
       panel7.Top := panel7.top - (MaxHeight div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel7.Top := panel7.Top + (panel7.Height - NormalHeight);
     panel7.Height := NormalHeight;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel7.Top := panel7.Top - (MaxHeight - panel7.Height);
     panel7.Height := MaxHeight;
    end;

   speedbutton2.Visible := panel7.Height < MaxHeight;
   AumentarMnu.Enabled := panel7.Height < MaxHeight;

   speedbutton4.Visible := panel7.Height < MaxHeight;
   MaximizarMnu.Enabled := panel7.Height < MaxHeight;

   speedbutton1.Visible := (panel7.Height > NormalHeight);
   DiminuirMnu.Enabled := (panel7.Height > NormalHeight);

   speedbutton3.Visible := (panel7.Height > NormalHeight);
   MinimizarMnu.Enabled := (panel7.Height > NormalHeight);
   lockwindowupdate(0);
  end;
end;

procedure TProdutoListFrm.Label1MouseLeave(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoListFrm.Label3Click(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  begin
   Principalfrm.GrupoProdMnu.click;

   if Dm1.DstGrupoP.state = dsbrowse then
    Dm1.DstGrupoP.Locate('CODGRUPOP', Dblookupcombobox1.keyvalue, []);
  end;  
end;

procedure TProdutoListFrm.Label6Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

procedure TProdutoListFrm.Label8Click(Sender: TObject);
begin
 PrincipalFrm.AddAChild(TClienteCadFrm, ClienteCadFrm);
end;

procedure TProdutoListFrm.Label4Click(Sender: TObject);
begin
 if Principalfrm.SubGrupoProdMnu.visible then
  Principalfrm.SubGrupoProdMnu.click;
end;

procedure TProdutoListFrm.QryGrupoPAfterScroll(DataSet: TDataSet);
begin
 FiltroChanged(self);
end;

procedure TProdutoListFrm.Edit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TProdutoListFrm.CheckBox1Click(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TProdutoListFrm.DateEdit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TProdutoListFrm.DBGrid2DrawColumnCell(Sender: TObject;
 const Rect: TRect; DataCol: integer; Column: TColumn;
 State: TGridDrawState);
begin
 if column.Title.Caption = 'Garantia Fabricante' then
  begin
   if not varisnull(QryNumSerie['FIM_GARANTIA_FABRICANTE']) then
    begin
     if QryNumSerie['FIM_GARANTIA_FABRICANTE'] >=
       strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid2.Canvas.Font.color := clgreen;
       Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'        - Em Garantia -');
      end;
     if QryNumSerie['FIM_GARANTIA_FABRICANTE'] < strtodatetime(datetostr(date) + ' 00:00:00') then
      begin
       Dbgrid2.Canvas.Font.color := clred;
       Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'       - Sem Garantia -');
      end;
    end
   else
    begin
     Dbgrid2.Canvas.Font.color := clred;
     Dbgrid2.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'       - Sem Garantia -');
    end;
  end;
end;

procedure TProdutoListFrm.CheckBox5MouseDown(Sender: TObject;
 Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
 if CheckBox5.Checked then
  begin
   CheckBox6.Checked := False;
   CheckBox6.Enabled := False;
  end
 else
   CheckBox6.Enabled := True;
end;

procedure TProdutoListFrm.CheckBox5KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_space then
  begin
   if CheckBox5.Checked then
    begin
     CheckBox6.Checked := False;
     CheckBox6.Enabled := False;
    end
   else
     CheckBox6.Enabled := True;
  end;
end;

procedure TProdutoListFrm.QryListProdAfterScroll(DataSet: TDataSet);
begin
 if (QryListProd['ENABLE_NUMSERIE'] = 0) then
  begin
   panel9.Visible := False;
   Splitter1.Visible := False;
  end;
 if (QryListProd['ENABLE_NUMSERIE'] = 1) and (checkbox5.Checked) then
  begin
   panel9.Visible := True;
   Splitter1.Visible := True;
  end;
end;

procedure TProdutoListFrm.Label3MouseEnter(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoListFrm.Label4MouseLeave(Sender: TObject);
begin
 if Principalfrm.SubGrupoProdMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TProdutoListFrm.Label4MouseEnter(Sender: TObject);
begin
 if Principalfrm.SubGrupoProdMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoListFrm.Label6MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoListFrm.Label6MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TProdutoListFrm.Label1MouseEnter(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TProdutoListFrm.Label2Click(Sender: TObject);
begin
 if Principalfrm.ProdutosMnu.visible then
  Principalfrm.ProdutosMnu.click;
end;

procedure TProdutoListFrm.Label3MouseLeave(Sender: TObject);
begin
 if Principalfrm.GrupoProdMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

end.
