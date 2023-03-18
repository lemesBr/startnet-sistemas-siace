unit UnitDiscadorList;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Mask, ToolEdit, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB,
 IBCustomDataSet, IBQuery, ComCtrls, Menus, Buttons, Placemnt;

type
 TDiscadorListFrm = class(TForm)
   Panel2: TPanel;
   Panel3: TPanel;
   DBGrid1: TDBGrid;
   QrySetor: TIBQuery;
   QrySetorUser: TIBQuery;
   DtsQrySetor: TDataSource;
   DtsQrySetorUser: TDataSource;
   QryChamadas: TIBQuery;
   DtsQryChamadas: TDataSource;
   Query1Cad: TIBQuery;
   Query2Cont: TIBQuery;
   DtsQuery1Cad: TDataSource;
   DtsQuery2Cont: TDataSource;
   Panel4: TPanel;
   DBGrid2: TDBGrid;
   Panel5: TPanel;
   SpeedButton2: TSpeedButton;
   SpeedButton1: TSpeedButton;
   QryCallSolicitante: TIBQuery;
   DtsQryCallSolicitante: TDataSource;
   SpeedButton3: TSpeedButton;
   SpeedButton4: TSpeedButton;
   PopupMenu2: TPopupMenu;
   AumentarMnu: TMenuItem;
   DiminuirMnu: TMenuItem;
   MaximizarMnu: TMenuItem;
   MinimizarMnu: TMenuItem;
   GroupBox6: TGroupBox;
   GroupBox2: TGroupBox;
   Label2: TLabel;
   Label3: TLabel;
   Label8: TLabel;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   DBLookupComboBox3: TDBLookupComboBox;
   Label10: TLabel;
   DBLookupComboBox2: TDBLookupComboBox;
   Label6: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   Label1: TLabel;
   Panel8: TPanel;
   ListView1: TListView;
   Panel9: TPanel;
   CheckBox5: TCheckBox;
   Label9: TLabel;
   Label4: TLabel;
   GroupBox3: TGroupBox;
   Label5: TLabel;
   CheckBox1: TCheckBox;
   CheckBox2: TCheckBox;
   GroupBox4: TGroupBox;
   Label7: TLabel;
   CheckBox3: TCheckBox;
   CheckBox4: TCheckBox;
   Edit2: TEdit;
   Timer1: TTimer;
   PopupMenu1: TPopupMenu;
   SelecionarTodos1: TMenuItem;
   DesmarcarTodos1: TMenuItem;
   FormStorage1: TFormStorage;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Panel7: TPanel;
    Edit1: TEdit;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure FormActivate(Sender: TObject);

   procedure ProcSql;
   procedure Gerar(Sender: TObject);
   procedure Limpar(Sender: TObject);
   procedure Imprimir(Sender: TObject);
   procedure FiltroChanged(Sender: TObject);

   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure Edit2Enter(Sender: TObject);
   procedure Edit2Exit(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure Edit1Change(Sender: TObject);
   procedure Timer1Timer(Sender: TObject);
   procedure Edit1Click(Sender: TObject);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid3DblClick(Sender: TObject);
   procedure DBGrid3Enter(Sender: TObject);
   procedure DBGrid3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid3KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid2DblClick(Sender: TObject);
   procedure DBGrid2Enter(Sender: TObject);
   procedure DBGrid2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBGrid2KeyPress(Sender: TObject; var Key: char);
   procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: integer; Column: TColumn; State: TGridDrawState);
   procedure CheckAll(Listview: TListview);
   procedure UnCheckAll(Listview: TListview);
   procedure SelecionarTodos1Click(Sender: TObject);
   procedure DesmarcarTodos1Click(Sender: TObject);
   procedure CheckBox5Click(Sender: TObject);
   procedure FillContatos(CodCli: integer);
   procedure ListView1Change(Sender: TObject; Item: TListItem;
     Change: TItemChange);
   procedure ResizeGrid(Sender: TObject);
   procedure DBGrid1TitleClick(Column: TColumn);
   procedure ListView1InfoTip(Sender: TObject; Item: TListItem;
     var InfoTip: string);
   procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: char);
   procedure DateEdit1KeyPress(Sender: TObject; var Key: char);
   procedure Label1Click(Sender: TObject);
   procedure Label6Click(Sender: TObject);
   procedure Label10Click(Sender: TObject);
   procedure Label9Click(Sender: TObject);
   procedure Label1MouseLeave(Sender: TObject);
   procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
     Y: integer);
   procedure Label9MouseLeave(Sender: TObject);
   procedure MinimizarMnuClick(Sender: TObject);
   procedure DiminuirMnuClick(Sender: TObject);
   procedure MaximizarMnuClick(Sender: TObject);
   procedure AumentarMnuClick(Sender: TObject);
   procedure Edit2KeyPress(Sender: TObject; var Key: char);
   procedure DateEdit1Change(Sender: TObject);
   procedure QrySetorAfterScroll(DataSet: TDataSet);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label10MouseEnter(Sender: TObject);
    procedure Label10MouseLeave(Sender: TObject);
    procedure Label9MouseEnter(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 DiscadorListFrm: TDiscadorListFrm;
 ORDERBYSTR: string;          // usada para ordenar linhas no dbgrid

implementation

uses UnitDataM1, UnitDiscadorRep, UnitClienteRep, UnitFrmPrincipal,
 UnitSetor, UnitCallSolicitante, Unit2, UnitCad_Usuario;

{$R *.dfm}

// retorna numero de itens selecionados no listview
function CheckedItemsCount(Listview: TListview): integer;
var 
 x, cont: integer;
begin
 cont := 0;
 for x := 0 to listview.Items.Count - 1 do
  begin
   if Listview.Items[x].Checked then
     inc(cont);
  end;
 Result := cont;
end;

procedure TDiscadorListFrm.CheckAll(Listview: TListview);
var 
 x: integer;      //seleciona todos os contatos no listview
begin
 for x := 0 to listview.Items.Count - 1 do
   listview.Items[x].Checked := True;
end;                                            

procedure TDiscadorListFrm.UnCheckAll(Listview: Tlistview);
var 
 x: integer;      //desmarca todos os contatos no listview
begin
 for x := 0 to listview.Items.Count - 1 do
   listview.Items[x].Checked := False;
end;

procedure TDiscadorListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := cafree;
 DM1.CloseIBArray([DiscadorListFrm.QrySetor,
   DiscadorListFrm.QrySetorUser,
   DiscadorListFrm.QryCallSolicitante,
   DiscadorListFrm.QryChamadas]);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
 Principalfrm.StatusBar1.Panels[0].Text := '';
 Principalfrm.StatusBar1.Panels[1].Text := '';
end;

procedure TDiscadorListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([DiscadorListFrm.QrySetor,
   DiscadorListFrm.QrySetorUser,
   DiscadorlistFrm.QryCallSolicitante]);
 DM1.DefSenderDtsStateChange(QryChamadas);
end;

procedure TDiscadorListFrm.Gerar(Sender: TObject);
var
 p, x: integer;
 st: string;
begin
 try
   if (dateedit2.Date < dateedit1.Date) then
     application.messagebox('"Data Final" não pode ser menor que "Data Inicial"' + #13 +
       'Entre uma data válida e tente novamente...',
       'Atenção', mb_iconinformation + mb_ok)
   else
    begin
     speedbutton3.click;
     if (not checkbox1.Checked) and (not checkbox2.Checked) then
       application.messagebox('"Discagem Manual" e/ou "Discagem Automática" deve ser selecionada' +
         #13 +
         'Selecione as opções indicadas e tente novamente...',
         'Atenção', mb_iconinformation + mb_ok)
     else if (not checkbox3.Checked) and (not checkbox4.Checked) then
       application.messagebox('"Chamadas Efetuadas" e/ou "Chamadas Bloqueadas" deve ser selecionada' +
         #13 +
         'Selecione as opções indicadas e tente novamente...',
         'Atenção', mb_iconinformation + mb_ok)
     else
      begin
       QryChamadas.Tag := 0;
       speedbutton3.click;
       with QryChamadas do
        begin
         Close;
         SQL.Clear;
         SQL.add('Select CODCALLLOG, (SETOR.NOME || '' > '' || SETORUSER.NOME) AS SETOR_USUARIO,');
         sql.add('CALLLOG.CODCLI, CALLLOG.CODCONT, CALLLOG.DISCAGEMMANUAL, CALLLOG.EFETUADA,');
         SQL.add('CODCALLSOLICITANTE, CALLSOLICITANTE.NOME AS SOLICITANTE,');
         SQL.Add('CADASTRO.NOME CLIENTE, CONTATO.NOME CONTATO,');
         SQL.add('NUMERO, DATAHORASTART, DATAHORAEND');
         SQL.add('from CALLLOG');
         SQL.add('left outer join SETOR on (CALLLOG.CODSETOR = SETOR.CODSETOR)');
         SQL.add('left outer join SETORUSER on (CALLLOG.CODSETORUSER = SETORUSER.CODSETORUSER)');
         SQL.Add('left outer join CADASTRO on (CALLLOG.CODCLI = CADASTRO.CODCLI)');
         SQL.Add('left outer join CONTATO on (CALLLOG.CODCONT = CONTATO.CODCONT)');
         sql.add('left outer join CALLSOLICITANTE on (CALLLOG.CODCALLSOLICITANTE = CALLSOLICITANTE.CODCALLSOLICITANTE)');
         SQL.add('WHERE (CODCALLLOG <> 0)');

         //FILTRA CLIENTE
         if trim(edit1.Text) <> '' then
          begin
           sql.add('and (CADASTRO.NOME LIKE :cliente)');
           params.ParamByName('cliente').AsString := edit1.Text;
          end;

         //---loop para contatos de cliente-----------
         if (checkbox5.Checked = True) and (CheckeditemsCount(listview1) <> 0) then
          begin
           sql.add('and (');
           listview1.ItemIndex := 0;
           p := 0;
           for x := 0 to listview1.Items.Count - 1 do
            begin
             if p = 0 then
              begin
               if listview1.items[x].Checked then
                begin
                 st := Format('CALLLOG.CODCONT = (''%s'')',
                   [Listview1.items[x].subitems[0]]);
                 p := 1; // para pular para else da proxima vez.. (loop)
                end;
              end
             else if listview1.Items[x].Checked then
               st := st + Format(' or CALLLOG.CODCONT = (''%s'')',
                 [Listview1.items[x].subitems[0]]);
            end;
           sql.add(st);
           sql.add(')');
          end;
         //--fim loop de contatos de clientes--------------

         //FILTRA SETOR
         if not varisnull(dblookupcombobox1.keyvalue) then
          begin
           sql.add('and (SETOR.CODSETOR = :setor)');
           Params.ParamByName('setor').AsInteger := DBLookupComboBox1.keyvalue;
          end;

         //FILTRA SETORUSER
         if not varisnull(dblookupcombobox2.Keyvalue) then
          begin
           sql.add('and (SETORUSER.CODSETORUSER = :setoruser)');
           Params.ParamByName('setoruser').AsInteger := dblookupcombobox2.keyvalue;
          end;

         //FILTRA SOLICITANTE
         if not varisnull(dblookupcombobox3.Keyvalue) then
          begin
           sql.add('and (CALLLOG.CODCALLSOLICITANTE = :codcallsolicitante)');
           Params.ParamByName('codcallsolicitante').AsInteger :=
             dblookupcombobox3.keyvalue;
          end;

         //FILTRA NÚMERO DE CHAMADA
         if trim(edit2.Text) <> '' then
          begin
           sql.add('and (upper(NUMERO) LIKE upper(:numero))');
           Params.ParamByName('numero').AsString := edit2.Text + '%';
          end;

         //FILTRA DATAS
         if not ((dateedit1.Text = '  /  /    ') or (dateedit2.Text = '  /  /    ')) then
          begin
           sql.add('and (DATAHORASTART BETWEEN :fromdate and :todate)');
           Params.ParamByName('fromdate').AsDatetime := strtodatetime(dateedit1.text + '00:00:00');
           Params.ParamByName('todate').AsDatetime := strtodatetime(dateedit2.text + '23:59:59');
          end;

         //FILTRA TIPO DE DISCAGEM - MANUAL E OU AUTOMATICA
         if (checkbox1.Checked) and (checkbox2.Checked) then
           SQL.Add('and (DISCAGEMMANUAL = 1 OR DISCAGEMMANUAL = 0)')
         else if checkbox1.Checked then sql.Add('and (DISCAGEMMANUAL = 1)')
         else if checkbox2.Checked then sql.add('and (DISCAGEMMANUAL = 0)');

         //FILTRA CHAMADA EFETUADA E OU BLOQUEADA
         if (checkbox3.Checked) and (checkbox4.Checked) then
           SQL.Add('and (EFETUADA = 1 OR EFETUADA = 0)')
         else if checkbox3.Checked then sql.Add('and (EFETUADA = 1)')
         else if checkbox4.Checked then sql.add('and (EFETUADA = 0)');

         sql.add('ORDER BY CALLLOG.DATAHORASTART');
         ORDERBYSTR := 'ORDER BY CALLLOG.DATAHORASTART';
         QryChamadas.DisableControls;
         Open;

         if QryChamadas.RecordCount = 0 then
          begin
           panel3.Caption := ' Nenhum Registro de Chamada encontrado';
           dbgrid1.Visible := False;
          end
         else
          begin
           dbgrid1.Visible := True;
           panel3.Caption := ' Listagem de Chamadas Efetuadas';
          end;

         QryChamadas.EnableControls;
         if QryChamadas.Active then
           QryChamadas.Tag := 1;
        end;
      end;
    end;
 except
   application.messagebox('Impossível gerar consulta ao banco de dados.' + #13 +
     'Verifique a validade das opções de filtro selecionadas e tente novamente...',
     'Atenção', mb_ok + mb_iconerror)
  end;

 DM1.DefSenderDtsStateChange(QryChamadas);
end;

procedure TDiscadorListFrm.Limpar(Sender: TObject);
begin
 QryChamadas.Close;
 dbgrid1.Visible := False;
 panel3.Caption := '  Chamadas Efetuadas';
 //---Origem-------
 DBLookupcombobox1.KeyValue := null;
 dblookupcombobox2.KeyValue := null;
 dblookupcombobox3.KeyValue := null;
 QrySetor.Close;
 QrySetor.Open;
 QrySetorUser.Close;
 QrySetorUser.Open;
 //--Destino--------
 edit1.Clear;
 checkbox5.Checked := False;
 listview1.Clear;
 //-----------------
 edit2.Clear;
 dateedit1.Clear;
 dateedit2.Clear;
 CheckBox1.Checked := True;
 checkbox2.Checked := True;
 checkbox3.Checked := True;
 CheckBox3.Checked := True;
 checkbox4.Checked := True;
 speedbutton3.click; //volta ao tamanho normal do dbgrid

 if dblookupcombobox1.CanFocus then
   dblookupcombobox1.SetFocus;

 DM1.DefSenderDtsStateChange(QryChamadas);
end;

procedure TDiscadorListFrm.FiltroChanged(Sender: TObject);
begin
 if QryChamadas.Active then
  begin
   screen.cursor := crhourglass;
   Dm1.CloseIBArray([QryChamadas]);
   DM1.DefSenderDtsStateChange(QryChamadas);
   dbgrid1.Visible := False;
   panel6.Visible := False;
   panel4.Visible := False;
   screen.cursor := crdefault;
  end;
end;

procedure TDiscadorListFrm.Imprimir(Sender: TObject);
var
 x: integer;
begin
 if not QryChamadas.Active then
  begin
   application.messagebox('O Log de Chamadas Telefônicas ainda não foi listado' + #13 +
     'Clique em "Gerar" para listar o Log de Chamadas Telefônicas e tente novamente...',
     'Atenção', mb_ok + mb_iconinformation);
   exit;
  end;

 application.Createform(TDiscadorRepFrm, DiscadorRepFrm);
 with DiscadorRepFrm do
  begin
   qrlabel1.Caption := principalfrm.logolabel.Caption; //nome do cliente registrado
   qrmemo1.Lines.Add('A(s) chamada(s) efetuada(s) segue(m) o(s) seguinte(s) filtro(s):');

   if trim(edit1.Text) <> '' then
     qrmemo1.Lines.Add('- Cliente: ' + edit1.Text);

   //----loop para imprimir contatos selecionados
   if CheckedItemsCount(ListView1) <> 0 then
    begin
     qrmemo1.Lines.Add('   Contatos:');
     for x := 0 to listview1.Items.Count - 1 do
       if listview1.items[x].Checked then
         qrmemo1.Lines.Add('       - ' + listview1.Items[x].Caption);
    end;
   //--------------------------------------------

   if dblookupcombobox1.KeyValue <> null then
     qrmemo1.Lines.add('- Setor: ' + dblookupcombobox1.Text);
   if dblookupcombobox2.KeyValue <> null then
     qrmemo1.Lines.add('- Usuário: ' + dblookupcombobox2.Text);
   if dblookupcombobox3.KeyValue <> null then
     qrmemo1.Lines.add('- Solicitante: ' + dblookupcombobox3.Text);
   if edit2.Text <> '' then
     qrmemo1.Lines.add('- Número: ' + edit2.Text);
   if (dateedit1.Text <> '  /  /    ') and (dateedit2.Text <> '  /  /    ') then
     qrmemo1.Lines.add('- Datas entre ' + dateedit1.Text + ' e ' + dateedit2.Text);
  end;
 DiscadorRepFrm.QuickRep1.Preview;
end;

procedure TDiscadorListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TDiscadorListFrm.Edit2Enter(Sender: TObject);
begin
 Tedit(Sender).Color := claqua;
end;

procedure TDiscadorListFrm.Edit2Exit(Sender: TObject);
begin
 Tedit(Sender).Color := clwindow;
end;

procedure TDiscadorListFrm.FormCreate(Sender: TObject);
begin
 timer1.Enabled := false;
 timer1.Interval := Tempo_Digitacao;
 
 panel6.width := Edit1.Width div 2;
 panel6.left := Edit1.Left;
 panel6.Top  := (Edit1.Top + Edit1.Height) + 1;
 DBgrid1.Columns[0].Width := Panel6.Width - 24;

 panel4.width := panel6.width;
 panel4.left := Edit1.Left + Panel6.Width;
 panel4.Top  := Panel6.Top;
 DBgrid2.Columns[0].Width := DBgrid1.Columns[0].Width;
end;

procedure TDiscadorListFrm.Edit1Change(Sender: TObject);
begin
 if edit1.Text <> '' then
  begin
   timer1.Enabled := False;
   timer1.Enabled := True;
  end
 else
  begin
   Listview1.Items.Clear;
   panel4.Visible := False;
   panel6.Visible := False;
  end;
 FiltroChanged(self); 
end;

procedure TDiscadorListFrm.Timer1Timer(Sender: TObject);
begin
 if edit1.Text <> '' then
  begin
   procsql;
   Listview1.Clear
  end;
 timer1.Enabled := False;
end;

procedure TDiscadorListFrm.ProcSql;
begin
 screen.cursor := crhourglass;

 with query1Cad do       // search for EMPRESA/PESSOA FISICA matchs
  begin
   Close;
   sql.Clear;
   sql.add('Select NOME, CODCLI from CADASTRO where UPPER(NOME) LIKE UPPER(:1)');
   sql.Add('order by NOME');
   params[0].AsString := '%' + edit1.Text + '%';
   Open;
  end;

 with query2Cont do         // search for CONTATO matchs
  begin
   Close;
   sql.Clear;
   sql.add('Select NOME, CODCLI, CODCONT from CONTATO where UPPER(NOME) LIKE UPPER(:1)');
   sql.Add('order by NOME');
   params[0].AsString := '%' + edit1.Text + '%';
   Open;
  end;

 if query1Cad.RecordCount <> 0 then
   panel4.Visible := True;                        //shows the EMPRESA dbgrid

 if query2Cont.RecordCount <> 0 then
   panel6.Visible := True;                       //shows the CONTATO dbgrid

 screen.cursor := crdefault;
end;

procedure TDiscadorListFrm.FillContatos(CodCli: integer);
var
 Aquery: TIBquery;
begin
 //preenche campos do listview com nome e codigo dos contatos do cliente selecionado
 screen.cursor := crhourglass;

 Listview1.Clear;
 Aquery := TIBquery.Create(Aquery);
 Aquery.Database := Dm1.IBDatabase1;
 Aquery.transaction := Dm1.IBTransaction1;

 with Aquery do     //procura sql de contatos do cliente selecionado
  begin
   sql.Clear;
   sql.Add('SELECT CODCONT, NOME FROM CONTATO');
   sql.add('WHERE CODCLI = :codcli');
   sql.Add('ORDER BY NOME');
   params.ParamByName('codcli').AsInteger := CodCli;
   Open;
  end;

 while not Aquery.EOF do //lista contatos do cliente selecionado no listview
  begin
   Listview1.Items.Add.Caption := Aquery['NOME'];
   Listview1.items.item[listview1.Items.Count - 1].SubItems.Add(Aquery['CODCONT']);
   //modificado
   Aquery.Next;
  end;

 Aquery.Free;  //libera variavel da memoria

 screen.cursor := crdefault;
end;


procedure TDiscadorListFrm.Edit1Click(Sender: TObject);
begin
 edit1.selectall;
end;

procedure TDiscadorListFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   if (panel4.Visible) or (panel6.Visible) then
    begin
     panel4.Visible := False;
     panel6.Visible := False;
    end
   else
     Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
   if (query2cont.RecordCount = 0) and (query1Cad.RecordCount = 0) then
    begin
     if edit1.Text = '' then
       Perform(wm_nextdlgctl, 0,0)
     else
      begin
       application.MessageBox('Nenhuma Empresa/Pessoa Física encontrada...',
         'Atenção', mb_Ok + mb_iconinformation);
       edit1.SetFocus;
      end;
    end
   else
    begin
     if (query2cont.RecordCount = 1) and (query1Cad.RecordCount = 0) then
       DBGrid3DblClick(Self)     // grid1 só com 1 reg -> abre este reg
     else if (query2cont.RecordCount = 0) and (query1Cad.RecordCount = 1) then
       DBGrid2DblClick(Self)     // grid2 só com 1 reg -> abre este reg
     else if (query2cont.RecordCount = 0) and (query1Cad.RecordCount > 1) then
      begin
       if DBGrid2.CanFocus then
         DBGrid2.SetFocus
      end
     else
      begin
       if DBGrid3.CanFocus then
         DBGrid3.SetFocus
      end;
     if (panel4.Visible = False) and (panel6.Visible = False) then
       Perform(wm_nextdlgctl, 0,0)
    end;
end;

procedure TDiscadorListFrm.DBGrid3DblClick(Sender: TObject);
begin
 screen.Cursor := crhourglass;
 if query2cont.active then
   if query2cont.RecordCount > 0 then
    begin
     with Query1Cad do
      begin
       Close;
       sql.Clear;
       sql.Add('SELECT * FROM CADASTRO WHERE CODCLI = :codcli');
       params.ParamByName('codcli').AsInteger := query2cont['CODCLI'];
       Open;
      end;

     edit1.onchange := nil;
     if not varisnull(Query1Cad['NOME']) then
       edit1.Text := Query1Cad['NOME'];
     edit1.onchange := edit1change;
     timer1.Enabled := False;
     panel4.Visible := False;
     panel6.Visible := False;
     FillContatos(query2cont['CODCLI']);
     checkbox2.Checked := True;
     //seleciona discagem automatica pois acabou de selecionar cliente/contato
     edit1.SetFocus;
     edit1.SelectAll;
     screen.Cursor := crdefault;
    end;
end;

procedure TDiscadorListFrm.DBGrid3Enter(Sender: TObject);
begin
 edit1.Color := claqua;
end;

procedure TDiscadorListFrm.DBGrid3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_right then
   if panel4.Visible = True then
     dbgrid2.SetFocus;
end;

procedure TDiscadorListFrm.DBGrid3KeyPress(Sender: TObject; var Key: char);
begin
 if key in ['a'..'z', 'A'..'Z'] then
   Query2cont.Locatenext('NOME', key, [lopartialkey, locaseinsensitive]);

 if key = #27 then
   edit1.SetFocus;

 if key = #13 then
   dbgrid3dblclick(Self);
end;

procedure TDiscadorListFrm.DBGrid2DblClick(Sender: TObject);
begin
 if Query1Cad.active then
   if Query1Cad.RecordCount > 0 then
    begin
     screen.Cursor := crHourGlass;
     edit1.onchange := nil;
     if not varisnull(Query1Cad['NOME']) then
       edit1.Text := Query1cad['NOME'];
     edit1.onchange := edit1change;
     timer1.Enabled := False;
     panel4.Visible := False;
     panel6.Visible := False;
     FillContatos(query1cad['CODCLI']);
     checkbox2.Checked := True;
     //seleciona discagem automatica pois acabou de selecionar cliente/contato
     edit1.SetFocus;
     edit1.selectall;
     screen.Cursor := crdefault;
    end;
end;

procedure TDiscadorListFrm.DBGrid2Enter(Sender: TObject);
begin
 edit1.Color := claqua;
end;

procedure TDiscadorListFrm.DBGrid2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_left then
   if panel6.Visible = True then
     dbgrid3.SetFocus;
end;

procedure TDiscadorListFrm.DBGrid2KeyPress(Sender: TObject; var Key: char);
begin
 if key in ['a'..'z', 'A'..'Z'] then
   Query1cad.Locatenext('NOME', key, [lopartialkey, locaseinsensitive]);

 if key = #27 then
   edit1.SetFocus;

 if key = #13 then
   dbgrid2dblclick(Self);
end;

procedure TDiscadorListFrm.DBGrid1DrawColumnCell(Sender: TObject;
 const Rect: TRect; DataCol: integer; Column: TColumn;
 State: TGridDrawState);
begin
 Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

 dbgrid1.Canvas.Font.Size := 8;

 if (Column.FieldName = 'DISCAGEMMANUAL') then
  begin
   if qrychamadas['DISCAGEMMANUAL'] = 0 then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'Automática');
   if qrychamadas['DISCAGEMMANUAL'] = 1 then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'Manual');
  end;

 if (Column.FieldName = 'EFETUADA') then
  begin
   if qrychamadas['EFETUADA'] = 0 then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'        X        ');
   if qrychamadas['EFETUADA'] = 1 then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'                 ');
  end;

 dbgrid1.Canvas.Font.Color := clred;

 if (Column.title.Caption = 'Setor > Usuário') then
   if varisnull(qrychamadas['SETOR_USUARIO']) then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'(Setor > Usuário Excluído)');

 if (column.Title.Caption = 'Cliente') then
   if (qrychamadas['DISCAGEMMANUAL'] = 0) and VARISNULL(qrychamadas['CLIENTE']) then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'(Cliente Excluído)');

 if (column.Title.Caption = 'Contato') then
   if (qrychamadas['DISCAGEMMANUAL'] = 0) and (qrychamadas['CODCONT'] <> 0) and
     VARISNULL(qrychamadas['CONTATO']) then
     Dbgrid1.Canvas.TextRect(rect, rect.Left + 3, rect.Top + 3,'(Contato Excluído)');
end;

procedure TDiscadorListFrm.SelecionarTodos1Click(Sender: TObject);
begin
 CheckAll(Listview1);
end;

procedure TDiscadorListFrm.DesmarcarTodos1Click(Sender: TObject);
begin
 UnCheckAll(Listview1);
end;

procedure TDiscadorListFrm.CheckBox5Click(Sender: TObject);
begin
 if not checkbox5.Checked then
   UncheckAll(Listview1)
 else
   CheckAll(Listview1);
end;

procedure TDiscadorListFrm.ListView1Change(Sender: TObject;
 Item: TListItem; Change: TItemChange);
begin
 if CheckedItemsCount(Listview1) >= 1 then
  begin
   checkbox5.OnClick := nil;
   checkbox5.Checked := True;
   checkbox5.OnClick := CheckBox5Click;
  end
 else
   checkbox5.Checked := False;
end;

procedure TDiscadorListFrm.ResizeGrid(Sender: TObject);
const
 MaxHeight: integer = 433;
 NormalHeight: integer = 161;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel2.Height - (MaxHeight div 10) >= NormalHeight then
      begin
       panel2.Height := panel2.Height - (MaxHeight div 10);
       panel2.Top := panel2.top + (MaxHeight div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel2.Height + (MaxHeight div 10) <= MaxHeight then
      begin
       panel2.Height := panel2.Height + (MaxHeight div 10);
       panel2.Top := panel2.top - (MaxHeight div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel2.Top := panel2.Top + (panel2.Height - NormalHeight);
     panel2.Height := NormalHeight;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel2.Top := panel2.Top - (MaxHeight - panel2.Height);
     panel2.Height := MaxHeight;
    end;

   speedbutton2.Visible := panel2.Height < MaxHeight;
   AumentarMnu.Enabled := panel2.Height < MaxHeight;

   speedbutton4.Visible := panel2.Height < MaxHeight;
   MaximizarMnu.Enabled := panel2.Height < MaxHeight;

   speedbutton1.Visible := (panel2.Height > NormalHeight);
   DiminuirMnu.Enabled := (panel2.Height > NormalHeight);

   speedbutton3.Visible := (panel2.Height > NormalHeight);
   MinimizarMnu.Enabled := (panel2.Height > NormalHeight);
   lockwindowupdate(0);
  end;
end;


procedure TDiscadorListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s: string;
begin
 screen.cursor := crHourGlass;
 if column.fieldname = 'SETOR_USUARIO' then
  s := 'SETOR.NOME, SETORUSER.NOME'
 else if column.fieldname = 'CLIENTE' then
  s := 'CADASTRO.NOME'
 else if column.fieldname = 'CONTATO' then
  s := 'CONTATO.NOME'
 else
  s := Column.fieldname;

 with QryChamadas do
  begin
   Close;
   sql.Delete(sql.IndexOf(OrderbyStr));  //deleta linha do sql statement
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

procedure TDiscadorListFrm.ListView1InfoTip(Sender: TObject;
 Item: TListItem; var InfoTip: string);
begin
 Infotip := Infotip;
end;

procedure TDiscadorListFrm.DBLookupComboBox1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   self.Close;
  end;
 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TDiscadorListFrm.DateEdit1KeyPress(Sender: TObject;
 var Key: char);
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

procedure TDiscadorListFrm.Label1Click(Sender: TObject);
begin
 if Principalfrm.ModuloLoginMnu.visible then
  begin
   PrincipalFrm.AddAChild(TSetorCadFrm, SetorCadFrm);

   if Dm1.DstSetor.state = dsbrowse then
    Dm1.DstSetor.Locate('CODSETORUSER', Dblookupcombobox1.keyvalue, []);
  end;
end;

procedure TDiscadorListFrm.Label6Click(Sender: TObject);
begin
 if Principalfrm.ModuloLoginMnu.visible then
  PrincipalFrm.AddAChild(TUsuarioCadFrm, UsuarioCadFrm);
end;

procedure TDiscadorListFrm.Label10Click(Sender: TObject);
begin
 if Principalfrm.CallSolicitanteMnu.visible then
  begin
   Principalfrm.CallSolicitanteMnu.Click;

   if Dm1.DstCallSolicitante.state = dsbrowse then
    Dm1.DstCallSolicitante.Locate('CODCALLSOLICITANTE', Dblookupcombobox3.keyvalue, []);
  end;
end;

procedure TDiscadorListFrm.Label9Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

procedure TDiscadorListFrm.Label1MouseLeave(Sender: TObject);
begin
 if Principalfrm.ModuloLoginMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TDiscadorListFrm.Label1MouseMove(Sender: TObject;
 Shift: TShiftState; X, Y: integer);
begin
 if CodSetorUser = 0 then
  begin
   TLabel(Sender).Font.Color := clBlue;
   TLabel(Sender).Font.Style := [FsUnderline];
   TLabel(Sender).Cursor := crHandpoint;
  end;
end;

procedure TDiscadorListFrm.Label9MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TDiscadorListFrm.MinimizarMnuClick(Sender: TObject);
begin
 speedbutton3.click;
end;

procedure TDiscadorListFrm.DiminuirMnuClick(Sender: TObject);
begin
 speedbutton1.click;
end;

procedure TDiscadorListFrm.MaximizarMnuClick(Sender: TObject);
begin
 speedbutton4.click;
end;

procedure TDiscadorListFrm.AumentarMnuClick(Sender: TObject);
begin
 speedbutton2.click;
end;

procedure TDiscadorListFrm.Edit2KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;
 if key = #13 then
  begin
   key := #0;
   Gerar(DiscadorListFrm);
  end;
end;

procedure TDiscadorListFrm.DateEdit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TDiscadorListFrm.QrySetorAfterScroll(DataSet: TDataSet);
begin
 FiltroChanged(self);
end;

procedure TDiscadorListFrm.Label1MouseEnter(Sender: TObject);
begin
 if Principalfrm.ModuloLoginMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TDiscadorListFrm.Label10MouseEnter(Sender: TObject);
begin
 if Principalfrm.CallSolicitanteMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TDiscadorListFrm.Label10MouseLeave(Sender: TObject);
begin
 if Principalfrm.CallSolicitanteMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TDiscadorListFrm.Label9MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

end.
