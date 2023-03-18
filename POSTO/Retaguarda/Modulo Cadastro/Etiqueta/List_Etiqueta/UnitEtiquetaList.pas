unit UnitEtiquetaList;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, RXCtrls, variants,
 DB, IBCustomDataSet, IBQuery, ComCtrls, Menus, Placemnt;

type
 TEtiquetaListFrm = class(TForm)
   GroupBox1: TGroupBox;
   Label6: TLabel;
   Edit3: TEdit;
   Label7: TLabel;
   ComboBox1: TComboBox;
   Label5: TLabel;
   DBLookupComboBox1: TDBLookupComboBox;
   Label10: TLabel;
   ComboBox2: TComboBox;
   Label11: TLabel;
   Edit6: TEdit;
   Label4: TLabel;
   Edit2: TEdit;
   Label1: TLabel;
   Edit1: TEdit;
   Panel3: TPanel;
   DBGrid1: TDBGrid;
   Panel1: TPanel;
   Panel4: TPanel;
   DBGrid2: TDBGrid;
   Panel2: TPanel;
   QryEtiqueta: TIBQuery;
   DtsQryClientes: TDataSource;
   QryClientes: TIBQuery;
   QryClientesCODCLI: TIntegerField;
   QryClientesNOME: TIBStringField;
   QryContatos: TIBQuery;
   QryContatosCODCONT: TIntegerField;
   QryContatosNOME: TIBStringField;
   DtsQryContatos: TDataSource;
   DtsQryEtiqueta: TDataSource;
   Panel5: TPanel;
   Panel6: TPanel;
   DBGrid3: TDBGrid;
   DtsDstClasse: TDataSource;
   Panel7: TPanel;
   ListView1: TListView;
   Panel8: TPanel;
   CheckBox1: TCheckBox;
   PopupMenu1: TPopupMenu;
   SelecionarTodos1: TMenuItem;
   DesmarcarTodos1: TMenuItem;
   QryContatosCODCLI: TIntegerField;
   QryClasse: TIBQuery;
   Timer1: TTimer;
   SpeedButton3: TSpeedButton;
   SpeedButton1: TSpeedButton;
   SpeedButton2: TSpeedButton;
   SpeedButton4: TSpeedButton;
   PopupMenu2: TPopupMenu;
   AumentarMnu: TMenuItem;
   DiminuirMnu: TMenuItem;
   MaximizarMnu: TMenuItem;
   MinimizarMnu: TMenuItem;
   FormStorage1: TFormStorage;
   procedure Edit1Change(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

   procedure procsql2;
   procedure some2(Sender: TObject);

   procedure DBGrid2DblClick(Sender: TObject);
   procedure DBGrid2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure FormCreate(Sender: TObject);
   procedure Edit3Enter(Sender: TObject);
   procedure Edit3Exit(Sender: TObject);
   procedure ComboBox1Enter(Sender: TObject);
   procedure ComboBox1Exit(Sender: TObject);
   procedure Edit5KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DBLookupComboBox1Enter(Sender: TObject);
   procedure DBLookupComboBox1Exit(Sender: TObject);
   procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit4KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CheckBox1Click(Sender: TObject);
   procedure FormActivate(Sender: TObject);

   procedure Gerar(Sender: TObject);
   procedure Imprimir(Sender: TObject);
   procedure Limpar(Sender: TObject);
   procedure FiltroChanged(Sender: TObject);

   procedure Edit1Click(Sender: TObject);
   procedure DBLookupListBox1DragOver(Sender, Source: TObject; X,
     Y: integer; State: TDragState; var Accept: boolean);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure SetColumns(Sender: TObject);
   procedure FillContatos(CodCli: integer);
   procedure CheckAll(Listview: TListview);
   procedure UnCheckAll(Listview: Tlistview);
   procedure SelecionarTodos1Click(Sender: TObject);
   procedure DesmarcarTodos1Click(Sender: TObject);
   procedure ListView1Change(Sender: TObject; Item: TListItem;
     Change: TItemChange);
   procedure Edit1KeyPress(Sender: TObject; var Key: char);
   procedure Timer1Timer(Sender: TObject);
   procedure ListView1KeyPress(Sender: TObject; var Key: char);
   procedure Label1Click(Sender: TObject);
   procedure Label5Click(Sender: TObject);
   procedure Label5MouseLeave(Sender: TObject);
   procedure ResizeGrid(Sender: TObject);
   procedure AumentarMnuClick(Sender: TObject);
   procedure DiminuirMnuClick(Sender: TObject);
   procedure MaximizarMnuClick(Sender: TObject);
   procedure MinimizarMnuClick(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure Edit3Change(Sender: TObject);
   procedure ComboBox2Change(Sender: TObject);
   procedure QryClasseAfterScroll(DataSet: TDataSet);
   procedure ComboBox1Change(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 EtiquetaListFrm: TEtiquetaListFrm;

implementation

uses UnitDataM1, UnitFrmPrincipal, UnitEtiquetaRep, Unit2, UnitCadClasse;

{$R *.DFM}

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

// Retorna total de etiquetas geradas
function CountEtiquetas(Query: TIBQuery): integer;
var 
 cont: integer;
begin
 cont := 0;
 query.DisableControls;
 Query.First;
 while not Query.EOF do
  begin
   inc(cont);
   Query.Next;
  end;
 query.EnableControls;
 Result := cont;
end;

procedure tEtiquetaListFrm.Gerar(Sender: TObject);
var                    // PROCEDURE PARA GERAR AS ETIQUETAS
 x, p: integer;
 st: string;
begin
 try
   speedbutton3.click;
   QryEtiqueta.Tag := 0;
   with QryEtiqueta do
    begin
     Close;
     sql.Clear;
     if checkbox1.Checked = True then
      begin
       EtiquetaRepFrm.qrdbtext2.datafield := 'Contato';
       EtiquetaRepFrm.qrdbtext2.dataset := QryEtiqueta;
       if CheckeditemsCount(listview1) = 0 then
       // Seleciona todos contatos de todas empresas (+ filtros) e todos contatos de uma empresa
        begin
         sql.add('Select CADASTRO.CODCLI Codigo, CADASTRO.NOME Nome,');
         sql.add('CONTATO.NOME Contato, CADASTRO.ENDERECO Endereco, CADASTRO.Referencia Referencia,');
         sql.add('CADASTRO.CIDADE Cidade, CADASTRO.BAIRRO Bairro, CADASTRO.CEP,');
         sql.add('CADASTRO.UF, CADASTRO.CODCLASSE, CADASTRO.TIPO');
         sql.add('from CADASTRO, CONTATO');
         sql.add('where upper(CADASTRO.NOME) like upper(:nome)');
         sql.add('and CADASTRO.CODCLI = CONTATO.CODCLI');
         params.parambyname('nome').AsString := '%' + edit1.Text + '%';
        end
       else
        begin                              // Filtra todos contatos selecionados na listbox
         sql.add('Select CADASTRO.CODCLI Codigo, CADASTRO.NOME Nome,');
         sql.add('CONTATO.NOME Contato, CADASTRO.ENDERECO Endereco,');
         sql.add('CADASTRO.CIDADE Cidade, CADASTRO.BAIRRO Bairro, CADASTRO.CEP, CADASTRO.UF,');
         sql.add('CADASTRO.CODCLASSE, CADASTRO.TIPO');
         Sql.add('from CADASTRO, CONTATO where upper(CADASTRO.NOME) like upper(:nome)');
         sql.add('and CADASTRO.CODCLI = CONTATO.CODCLI and(');
         params.Parambyname('nome').AsString := '%' + edit1.Text + '%';

         listview1.ItemIndex := 0;
         p := 0;
         for x := 0 to listview1.Items.Count - 1 do
         //Loop to travel trought the list and add the names to the query search
          begin
           if p = 0 then
            begin
             if listview1.items[x].Checked then
              begin
               st := Format('CONTATO.CODCONT = (''%s'')', [Listview1.items[x].subitems[0]]);
               p := 1; // para pular para else da proxima vez.. (loop)
              end;
            end
           else if listview1.Items[x].Checked then
             st := st + Format(' or CONTATO.CODCONT = (''%s'')',
               [Listview1.items[x].subitems[0]]);
           // from the second option on we need an "or"   "and(b.nome="VICTORY" or bnome="GILMAR" or...)
          end;
         sql.add(st);                                                                      //Adds the string that the prior loop created according to names in the list
         sql.add(')');
        end;
      end
     else
      begin                                                                                  // Seleciona todas empresas sem especificar contatos
       sql.add('Select CODCLI Codigo, NOME Nome, ENDERECO Endereco, CIDADE Cidade,');
       SQL.add('BAIRRO Bairro, CEP, UF, CODCLASSE, TIPO');
       sql.add('from CADASTRO where upper(NOME) like upper(:nome)');
       params.parambyname('nome').AsString := '%' + edit1.Text + '%';
       EtiquetaRepFrm.qrdbtext2.datafield := '';
       EtiquetaRepFrm.qrdbtext2.dataset := nil;
      end;
     {-------------------FILTROS----------------}
     if edit3.Text <> '' then                              //Filtra Cidades
      begin
       sql.add('and upper(CADASTRO.CIDADE) like upper(:cidade)');
       params.parambyname('cidade').AsString := '%' + edit3.Text + '%';
      end;

     if edit6.Text <> '' then                              //Filtra Bairro
      begin
       sql.add('and upper(CADASTRO.BAIRRO) like upper(:bairro)');
       params.parambyname('bairro').AsString := '%' + edit6.Text + '%';
      end;

     if edit2.Text <> '' then                              //Filtra Cep
      begin
       sql.add('and (CADASTRO.CEP like :cep)');
       PArams.ParamByName('cep').AsString := '%' + edit2.Text + '%';
      end;

     if combobox1.Text <> '' then                              //Filtra UF
      begin
       sql.add('and (CADASTRO.UF = :UF)');
       PArams.ParamByName('UF').AsString := combobox1.Text;
      end;

     if dblookupcombobox1.Text <> '' then                              //Filtra Classe
      begin
       sql.add('and (CADASTRO.CODCLASSE = :classe)');
       PArams.ParamByName('classe').AsInteger := QryClasse['CODCLASSE'];
      end;

     if combobox2.Text <> '' then                              //Filtra Tipo
      begin
       sql.add('and (CADASTRO.TIPO = :tipo)');
       PArams.ParamByName('tipo').AsString := combobox2.Text;
      end;

     sql.add('order by CADASTRO.CODCLI');
     QryEtiqueta.DisableControls;
     Open;

     if QryEtiqueta.RecordCount = 0 then
      panel6.Caption := ' Nenhuma Etiqueta de Endereçamento gerada'
     else
      panel6.Caption := ' Etiqueta(s) de Endereçamento gerada(s)';
      
     QryEtiqueta.EnableControls;
    end;
   SetColumns(EtiquetaListFrm); // define tamanho das colunas do dbgrid
   dbgrid3.Visible := True;
 except
   application.messagebox('Impossível gerar consulta ao banco de dados.' + #13 +
     'Verifique a validade das opções de filtro selecionadas e tente novamente...',
     'Atenção', mb_ok + mb_iconerror)
  end;
 if QryEtiqueta.Active then
   QryEtiqueta.Tag := 1;
 DM1.DefSenderDtsStateChange(QryEtiqueta);
end;

procedure tEtiquetaListFrm.Imprimir(Sender: TObject);
begin
 if not QryEtiqueta.Active then
  begin
   application.messagebox('As Etiquetas ainda não foram listadas' + #13 +
     'Clique em "Gerar" para listar as Etiquetas e tente novamente...',
     'Atenção', mb_ok + mb_iconinformation);
   exit;
  end;

 if CountEtiquetas(QryEtiqueta) > 0 then
   EtiquetaRepFrm.quickrep1.preview;
end;

procedure tEtiquetaListFrm.Limpar(Sender: TObject);
begin
 dbgrid3.Visible := False;
 panel6.Caption := '  Etiquetas de Endereçamento';
 QryEtiqueta.Close;
 checkbox1.Checked := False;
 edit1.Clear;
 edit3.Clear;
 edit6.Clear;
 edit2.Clear;
 combobox1.ItemIndex := 0;
 combobox2.ItemIndex := 0;
 dblookupcombobox1.keyvalue := null;
 SpeedButton3.Click;
 edit1.SetFocus;

 DM1.DefSenderDtsStateChange(QryEtiqueta);
end;

procedure tEtiquetaListFrm.some2(Sender: TObject);
begin
 panel4.Visible := False;
 panel3.Visible := False;
end;

procedure TEtiquetaListFrm.FiltroChanged(Sender: TObject);
begin
 if QryEtiqueta.Active then
  begin
   screen.cursor := crhourglass;
   panel6.Caption := '  Etiquetas de Endereçamento';
   Dm1.CloseIBArray([QryEtiqueta]);
   DM1.DefSenderDtsStateChange(QryEtiqueta);
   dbgrid3.Visible := False;
   screen.cursor := crdefault;
  end;
end;

procedure tEtiquetaListFrm.procsql2;
begin
 with QryClientes do       // search for EMPRESA/PESSOA FISICA matchs
  begin
   Close;
   sql.Clear;
   sql.add('Select NOME, CODCLI from CADASTRO');
   SQL.add('where upper(NOME) like upper(:nome)');
   params.parambyname('nome').AsString := '%' + copy(edit1.Text, 0,46) + '%';
   Open;
  end;

 with QryContatos do         // search for CONTATO matchs
  begin
   Close;
   sql.Clear;
   sql.add('Select NOME, CODCLI, CODCONT from CONTATO');
   sql.add('where upper(NOME) like upper(:nome)');
   params.parambyname('nome').AsString := '%' + edit1.Text + '%';
   Open;
  end;

 if QryClientes.RecordCount <> 0 then
   Panel4.Visible := True;

 if QryContatos.RecordCount <> 0 then
   panel3.Visible := True;
end;

procedure TEtiquetaListFrm.Edit1Change(Sender: TObject);
begin
 if edit1.Text <> '' then
  begin
   timer1.Enabled := False;
   timer1.Enabled := True;
  end
 else
  begin
   Listview1.Items.Clear;
   some2(self);
  end;
 groupbox1.Enabled := edit1.Text = '';
 edit2.Clear;
 edit3.Clear;
 edit6.Clear;
 dblookupcombobox1.keyvalue := null;
 FiltroChanged(self);
end;

procedure TEtiquetaListFrm.Edit1Enter(Sender: TObject);
begin
 edit1.color := claqua;
 edit1.selectall;
end;

procedure TEtiquetaListFrm.Edit1Exit(Sender: TObject);
begin
 edit1.color := clwindow;
end;

procedure TEtiquetaListFrm.DBGrid1DblClick(Sender: TObject);
begin
 if QryContatos.active then
   if QryContatos.RecordCount > 0 then
    begin
     some2(EtiquetaListFrm);
     with QryClientes do
      begin
       Close;
       sql.Clear;
       sql.Add('SELECT * FROM CADASTRO WHERE CODCLI = :codcli');
       params.ParamByName('codcli').AsInteger := QryContatos['CODCLI'];
       Open;
      end;

     edit1.OnChange := nil;
     if not varisnull(QryClientes['NOME']) then
       edit1.Text := QryClientes['NOME'];
     edit1.OnChange := Edit1change;
     FillContatos(QryContatos['CODCLI']);
     edit1.SetFocus;
     edit1.SelectAll;
    end;
end;

procedure TEtiquetaListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_right then
   if dbgrid2.Visible = True then
     dbgrid2.SetFocus;

 if key = vk_escape then
   edit1.SetFocus;

 if key = vk_return then
   dbgrid1dblclick(self);
end;

procedure TEtiquetaListFrm.DBGrid2DblClick(Sender: TObject);
begin
 if QryClientes.active then
   if QryClientes.RecordCount > 0 then
    begin
     some2(EtiquetaListFrm);
     edit1.OnChange := nil;
     edit1.Text := QryClientes['NOME'];
     edit1.OnChange := edit1change;
     FillContatos(QryClientes['CODCLI']);
     edit1.SetFocus;
     edit1.SelectAll;
    end;
end;

procedure TEtiquetaListFrm.DBGrid2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_left then
   if dbgrid1.Visible = True then
     dbgrid1.SetFocus;

 if key = vk_escape then
   edit1.SetFocus;

 if key = vk_return then
   dbgrid2dblclick(EtiquetaListFrm);
end;

procedure TEtiquetaListFrm.FormCreate(Sender: TObject);
begin
 timer1.Enabled := false;
 timer1.Interval := Tempo_Digitacao;

 panel3.width := Edit1.Width div 2;
 panel3.left := Edit1.Left;
 panel3.Top  := (Edit1.Top + Edit1.Height) + 1;
 DBgrid1.Columns[0].Width := Panel3.Width - 24;

 panel4.width := panel3.width;
 panel4.left := Edit1.Left + Panel3.Width;
 panel4.Top  := Panel3.Top;
 DBgrid2.Columns[0].Width := DBgrid1.Columns[0].Width;

 application.createform(tEtiquetaRepFrm, EtiquetaRepFrm);
end;

procedure TEtiquetaListFrm.Edit3Enter(Sender: TObject);
begin
 (Sender as Tedit).color := claqua;
end;

procedure TEtiquetaListFrm.Edit3Exit(Sender: TObject);
begin
 (Sender as Tedit).color := clwindow;
end;

procedure TEtiquetaListFrm.ComboBox1Enter(Sender: TObject);
begin
 (Sender as TCombobox).color := claqua;
end;

procedure TEtiquetaListFrm.ComboBox1Exit(Sender: TObject);
begin
 (Sender as TCombobox).color := clwindow;
end;

procedure TEtiquetaListFrm.Edit5KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TEtiquetaListFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 dblookupcombobox1.color := claqua;
end;

procedure TEtiquetaListFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 dblookupcombobox1.color := clwindow;
end;

procedure TEtiquetaListFrm.DBLookupComboBox1KeyDown(Sender: TObject;
 var Key: word; Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TEtiquetaListFrm.Edit4KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
   edit1.SetFocus;
end;

procedure TEtiquetaListFrm.CheckBox1Click(Sender: TObject);
begin
 if not checkbox1.Checked then
   UncheckAll(Listview1)
 else
   CheckAll(Listview1);
end;

procedure TEtiquetaListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([EtiquetaListFrm.QryClasse]);
 DM1.DefSenderDtsStateChange(QryEtiqueta);
end;

procedure TEtiquetaListFrm.Edit1Click(Sender: TObject);
begin
 edit1.selectall;
end;

procedure TEtiquetaListFrm.DBLookupListBox1DragOver(Sender, Source: TObject; X,
 Y: integer; State: TDragState; var Accept: boolean);
begin
 accept := True;
end;

procedure TEtiquetaListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 DM1.CloseIBArray([EtiquetaListFrm.QryClasse]);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
 Principalfrm.StatusBar1.Panels[0].Text := '';
 Principalfrm.StatusBar1.Panels[1].Text := '';
end;

procedure TEtiquetaListFrm.SetColumns(Sender: TObject);
var 
 x: integer;
begin
 //tamanho das colunas do dbgrid de etiquetas
 dbgrid3.Columns[0].Width := 61;
 dbgrid3.Columns[1].Width := 131;
 dbgrid3.Columns[2].Width := 159;
 dbgrid3.Columns[3].Width := 157;
 dbgrid3.Columns[4].Width := 98;
 dbgrid3.Columns[5].Width := 68;
 dbgrid3.Columns[6].Width := 214;
 dbgrid3.Columns[7].Width := 85;
 dbgrid3.Columns[8].Width := 85;

 // loop para esconder colunas que nao devem aparecer na listagem
 for x := 0 to dbgrid3.FieldCount - 1 do  // make visible false fields listed below
   with Dbgrid3.Columns[x] do
     if (FieldName = 'TIPO') or (Fieldname = 'CODCLASSE') or (Fieldname = 'CODIGO') then
       Visible := False;
end;

procedure TEtiquetaListFrm.FillContatos(CodCli: integer);
var
 Aquery: TIBquery;
begin               //preenche campos do listview com nome e codigo dos contatos do cliente selecionado
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

procedure TEtiquetaListFrm.CheckAll(Listview: TListview);
var 
 x: integer;      //seleciona todos os contatos no listview
begin
 for x := 0 to listview.Items.Count - 1 do
   listview.Items[x].Checked := True;
end;

procedure TEtiquetaListFrm.UnCheckAll(Listview: Tlistview);
var 
 x: integer;      //desmarca todos os contatos no listview
begin
 for x := 0 to listview.Items.Count - 1 do
   listview.Items[x].Checked := False;
end;

procedure TEtiquetaListFrm.SelecionarTodos1Click(Sender: TObject);
begin
 CheckAll(Listview1);
end;

procedure TEtiquetaListFrm.DesmarcarTodos1Click(Sender: TObject);
begin
 UnCheckAll(Listview1);
end;

procedure TEtiquetaListFrm.ListView1Change(Sender: TObject; Item: TListItem;
 Change: TItemChange);    //controla estado do checkbox1 ("por contato")
begin
 if CheckedItemsCount(Listview1) >= 1 then
  begin
   checkbox1.OnClick := nil;
   checkbox1.Checked := True;
   checkbox1.OnClick := CheckBox1Click;
  end
 else
   checkbox1.Checked := False;
end;

procedure TEtiquetaListFrm.ResizeGrid(Sender: TObject);
const
 MaxHeight: integer = 433;
 NormalHeight: integer = 153;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel5.Height - (MaxHeight div 10) >= NormalHeight then
      begin
       panel5.Height := panel5.Height - (MaxHeight div 10);
       panel5.Top := panel5.top + (MaxHeight div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel5.Height + (MaxHeight div 10) <= MaxHeight then
      begin
       panel5.Height := panel5.Height + (MaxHeight div 10);
       panel5.Top := panel5.top - (MaxHeight div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel5.Top := panel5.Top + (panel5.Height - NormalHeight);
     panel5.Height := NormalHeight;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel5.Top := panel5.Top - (MaxHeight - panel5.Height);
     panel5.Height := MaxHeight;
    end;

   speedbutton2.Visible := panel5.Height < MaxHeight;
   AumentarMnu.Enabled := panel5.Height < MaxHeight;

   speedbutton4.Visible := panel5.Height < MaxHeight;
   MaximizarMnu.Enabled := panel5.Height < MaxHeight;

   speedbutton1.Visible := (panel5.Height > NormalHeight);
   DiminuirMnu.Enabled := (panel5.Height > NormalHeight);

   speedbutton3.Visible := (panel5.Height > NormalHeight);
   MinimizarMnu.Enabled := (panel5.Height > NormalHeight);
   lockwindowupdate(0);
  end; 
end;

procedure TEtiquetaListFrm.Edit1KeyPress(Sender: TObject; var Key: char);
begin
 if key = #27 then          // vk_escape
  begin
   if (panel3.Visible) or (panel4.Visible) then
    begin
     panel3.Visible := False;
     panel4.Visible := False;
    end
   else
     self.Close;
  end;

 if key = #13 then          // vk_return
  begin
   if (QryContatos.RecordCount = 0) and (QryClientes.RecordCount = 0) then
    begin
     application.MessageBox('Nenhum Empresa/Pessoa Física encontrada...',
       'Atenção', mb_Ok + mb_iconinformation);
     edit1.SetFocus;
    end
   else if (QryContatos.RecordCount = 1) and (QryClientes.RecordCount = 0) then
     DBGrid1DblClick(Self)     // grid1 só com 1 reg -> abre este reg
   else if (QryContatos.RecordCount = 0) and (QryClientes.RecordCount = 1) then
     DBGrid2DblClick(Self)     // grid2 só com 1 reg -> abre este reg
   else if (QryContatos.RecordCount = 0) and (QryClientes.RecordCount > 1) then
     (if dbgrid2.canfocus then DBGrid2.SetFocus)
     else
       (if dbgrid1.CanFocus then DBGrid1.SetFocus);
  end;
end;

procedure TEtiquetaListFrm.Timer1Timer(Sender: TObject);
begin
 if edit1.Text <> '' then
  begin
   procsql2;
   Listview1.Clear
  end;
 timer1.Enabled := False;
end;

procedure TEtiquetaListFrm.ListView1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = #27 then
   edit1.SetFocus;
end;

procedure TEtiquetaListFrm.Label1Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.Click;
end;

procedure TEtiquetaListFrm.Label5Click(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  begin
   Principalfrm.ClasseMnu.click;

   if Dm1.DstClasse.state = dsbrowse then
    Dm1.DstClasse.Locate('CODCLASSE', Dblookupcombobox1.keyvalue, []);
  end;
end;

procedure TEtiquetaListFrm.Label5MouseLeave(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TEtiquetaListFrm.AumentarMnuClick(Sender: TObject);
begin
 speedbutton2.click;
end;

procedure TEtiquetaListFrm.DiminuirMnuClick(Sender: TObject);
begin
 speedbutton1.click;
end;

procedure TEtiquetaListFrm.MaximizarMnuClick(Sender: TObject);
begin
 speedbutton4.click;
end;

procedure TEtiquetaListFrm.MinimizarMnuClick(Sender: TObject);
begin
 speedbutton3.click;
end;

procedure TEtiquetaListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TEtiquetaListFrm.Edit3Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TEtiquetaListFrm.ComboBox2Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TEtiquetaListFrm.QryClasseAfterScroll(DataSet: TDataSet);
begin
 FiltroChanged(self);
end;

procedure TEtiquetaListFrm.ComboBox1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TEtiquetaListFrm.Label1MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TEtiquetaListFrm.Label5MouseEnter(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TEtiquetaListFrm.Label1MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TEtiquetaListFrm.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0); 
end;

end.
