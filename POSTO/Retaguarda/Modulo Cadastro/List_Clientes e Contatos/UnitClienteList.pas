unit UnitClienteList;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, DBCtrls, StdCtrls, DB, IBCustomDataSet, IBQuery, Mask, ToolEdit,
 RXDBCtrl, ComCtrls, ExtCtrls, Grids, DBGrids, Placemnt, Buttons;

type
 TClienteListFrm = class(TForm)
   DtsQryClasse: TDataSource;
   QryClasse: TIBQuery;
   QryClientes: TIBQuery;
   DtsQryClientes: TDataSource;
   QryContatos: TIBQuery;
   DtsQryContatos: TDataSource;
   Panel2: TPanel;
   Splitter1: TSplitter;
   Panel6: TPanel;
   DBGrid2: TDBGrid;
   Panel4: TPanel;
   Panel5: TPanel;
   GroupBox1: TGroupBox;
   Label6: TLabel;
   Label7: TLabel;
   Label5: TLabel;
   Label10: TLabel;
   Label11: TLabel;
   Label4: TLabel;
   Label12: TLabel;
   Label1: TLabel;
   Edit3: TEdit;
   DBLookupComboBox1: TDBLookupComboBox;
   ComboBox2: TComboBox;
   Edit6: TEdit;
   Edit2: TEdit;
   Edit1: TEdit;
   GroupBox2: TGroupBox;
   Label2: TLabel;
   Label3: TLabel;
   Label8: TLabel;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   ComboBox1: TComboBox;
   ComboBox3: TComboBox;
   FormStorage1: TFormStorage;
   Panel1: TPanel;
   DBGrid1: TDBGrid;
   Panel3: TPanel;
   Panel7: TPanel;
   SpeedButton4: TSpeedButton;
   SpeedButton2: TSpeedButton;
   SpeedButton1: TSpeedButton;
   SpeedButton3: TSpeedButton;
   procedure FormActivate(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Gerar(Sender: TObject);
   procedure FiltroChanged(Sender: TObject);
   procedure Imprimir(Sender: TObject);

   procedure QryClientesAfterScroll(DataSet: TDataSet);
   procedure Limpar(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure DBGrid1DblClick(Sender: TObject);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit3KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure DateEdit2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Label5Click(Sender: TObject);
   procedure Label5MouseLeave(Sender: TObject);
   procedure Label1Click(Sender: TObject);
   procedure DBLookupComboBox1DropDown(Sender: TObject);
   procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
     DataCol: integer; Column: TColumn; State: TGridDrawState);
   procedure Edit1Change(Sender: TObject);
   procedure QryClasseAfterScroll(DataSet: TDataSet);
   procedure SpeedButton4Click(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label5MouseEnter(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
 private
   { Private declarations }
   OrderbyStr, OrderbyStr_2 : string;
 public
   { Public declarations }
 end;

var
 ClienteListFrm: TClienteListFrm;

implementation

uses UnitDataM1, UnitClienteRep, UnitFrmPrincipal, Unit2, UnitCadClasse;

{$R *.dfm}

procedure TClienteListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([ClienteListFrm.QryClasse]);
 DM1.DefSenderDtsStateChange(ClienteListFrm.QryClientes);
end;

procedure TClienteListFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 Action := cafree;
 DM1.CloseIBArray([ClienteListFrm.QryClasse,
   ClienteListFrm.QryClientes,
   ClienteListFrm.QryContatos]);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);
end;

procedure TClienteListFrm.Gerar(Sender: TObject);
begin
 try
   if (dateedit2.Date < dateedit1.Date) or ((dateedit1.Text = '  /  /    ') and
     (dateedit2.Text <> '  /  /    ')) then
    begin
     application.messagebox('"Data Final" não pode ser menor que "Data Inicial"' + #13 +
       'Entre uma data válida e tente novamente...',
       'Atenção', mb_iconinformation + mb_ok);
    end
   else
    begin
     QryClientes.Tag := 0;
     with QryClientes do
      begin
       Close;
       sql.Clear;
       sql.add('SELECT * FROM CADASTRO');
       sql.add('WHERE CODCLI <> 0');

       {-------------------FILTROS----------------}
       if edit1.Text <> '' then   //filtra por Nome do Cliente
        begin
         sql.add('and upper(CADASTRO.NOME) like upper(:nome)');
         params.parambyname('nome').AsString := '%' + edit1.Text + '%';
        end;

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
         sql.add('and (CADASTRO.UF = :uf)');
         PArams.ParamByName('uf').AsString := combobox1.Text;
        end;

       if dblookupcombobox1.Text <> '' then                              //Filtra Classe
        begin
         sql.add('and (CADASTRO.CODCLASSE = :classe)');
         PArams.ParamByName('classe').AsInteger := QryClasse['CODCLASSE'];
        end;

       if combobox2.Text <> '' then                              //Filtra Tipo
        begin
         if combobox2.ItemIndex = 1 then
          begin
           sql.Add('and (CADASTRO.TIPO like :tipo_cliente)');
           PArams.ParamByName('tipo_cliente').AsString := 'C';
          end;
         if combobox2.ItemIndex = 2 then
          begin
           sql.Add('and (CADASTRO.TIPO like :tipo_fornecedor)');
           PArams.ParamByName('tipo_fornecedor').AsString := 'F';
          end;
        end;

       if combobox3.Text <> '' then                              //Filtra Pessoa
        begin
         sql.add('and (CADASTRO.TIPOPESSOA like :pessoa)');
         params.parambyname('pessoa').AsString := combobox3.Text;
        end;
       //Filtra Datas de Nascimento
       if not ((dateedit1.Text = '  /  /    ') or (dateedit2.Text = '  /  /    ')) then
        begin
         sql.add('and (DATANASCFUND BETWEEN :fromdate and :todate)');
         Params.ParamByName('fromdate').AsDatetime := strtodatetime(dateedit1.text + '00:00:00');
         Params.ParamByName('todate').AsDatetime := strtodatetime(dateedit2.text + '23:59:59');
        end;

       sql.add('ORDER BY CADASTRO.NOME');
       OrderbyStr := 'ORDER BY CADASTRO.NOME';

       DisableControls;
       Prepare;
       Open;
       EnableControls;

       with qrycontatos do
        begin
         DisableControls;
         close;
         sql.clear;
         sql.add('SELECT * FROM CONTATO WHERE CODCLI = :codcli');
         sql.Add('ORDER BY NOME');
         OrderbyStr_2 := 'ORDER BY NOME';
         Prepare;
         Open;
         EnableControls;
        end;

       if qryclientes.RecordCount = 0 then
        begin
         panel1.Visible := False;
         panel6.Visible := False;
         panel4.Visible := False;
         splitter1.Visible := False;
        end
       else
        begin
         panel1.Visible := True;
         panel6.Visible := True;
         Splitter1.Visible := True;
        end;

        if QryClientes.Active then
         QryClientes.Tag := 1;
      end;
    end;
 except
   application.messagebox('Impossível gerar consulta ao banco de dados.' + #13 +
     'Verifique a validade das opções de filtro selecionadas e tente novamente...',
     'Atenção', mb_ok + mb_iconerror);
  end;

 DM1.DefSenderDtsStateChange(QryClientes);
end;

procedure TClienteListFrm.Limpar(Sender: TObject);
begin
 QryClientes.Close;
 QryContatos.Close;
 panel1.Visible := False;
 panel6.Visible := False;
 panel4.Visible := False;
 splitter1.Visible := False;
 edit1.Clear;
 edit3.Clear;
 edit6.Clear;
 edit2.Clear;
 combobox1.ItemIndex := 0;
 combobox2.ItemIndex := 0;
 combobox3.ItemIndex := 0;
 dblookupcombobox1.keyvalue := null;
 dateedit1.Clear;
 dateedit2.Clear;

 edit1.SetFocus;
 DM1.DefSenderDtsStateChange(QryClientes);
end;

procedure TClienteListFrm.FiltroChanged(Sender: TObject);
begin
 if QryClientes.Active then
  begin
   screen.cursor := crhourglass;
   Dm1.CloseIBArray([ClienteListFrm.QryClientes]);
   DM1.DefSenderDtsStateChange(ClienteListFrm.QryClientes);
   panel1.Visible := False;
   panel6.Visible := False;
   panel4.Visible := False;
   screen.cursor := crdefault;
  end;
end;

procedure TClienteListFrm.QryClientesAfterScroll(DataSet: TDataSet);
begin
 if (qryContatos.RecordCount = 0) and (dbgrid2.Visible) then
   panel4.Visible := True
 else
   panel4.Visible := False;
end;

procedure TClienteListFrm.Edit1Enter(Sender: TObject);
begin
 tedit(Sender).color := claqua;
end;

procedure TClienteListFrm.Edit1Exit(Sender: TObject);
begin
 tedit(Sender).color := clwindow;
end;

procedure TClienteListFrm.Imprimir(Sender: TObject);
begin
 if not QryClientes.Active then
  begin
   application.messagebox('Os Clientes/Dependentes ainda não foram listados' + #13 +
     'Clique em "Gerar" para listar os Clientes/Dependentes e tente novamente...',
     'Atenção', mb_ok + mb_iconinformation);
   exit;
  end;

 application.Createform(TClienteRepFrm, ClienteRepFrm);
 with ClienteRepFrm do
  begin
   QRLabel40.Caption := 'O(s) cadastro(s) listado(s) segue(m) o(s) seguinte(s) filtro(s):';
   if edit1.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros que coincidam com Nome "' +
       edit1.Text + '"';
   if edit3.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros que coincidam com Cidade "' +
       edit3.Text + '"';
   if edit6.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros que coincidam com Bairro "' +
       edit6.Text + '"';
   if edit2.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros que coincidam com CEP "' +
       edit2.Text + '"';
   if combobox1.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros de Unidade Federal: ' +
       combobox1.Text;
   if dblookupcombobox1.KeyValue <> null then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros da Classe: ' +
       dblookupcombobox1.Text;
   if combobox2.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros do Tipo: ' + combobox2.Text;
   if combobox3.Text <> '' then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Cadastros de Pessoa: ' + combobox3.Text;
   if (dateedit1.Text <> '  /  /    ') and (dateedit2.Text <> '  /  /    ') then
     QRLabel40.Caption := Qrlabel40.Caption + #13'- Data de Nascimento/Fundação entre ' +
       dateedit1.Text + ' e ' + dateedit2.Text;
  end;
 ClienteRepFrm.QuickRep1.Preview;
end;

procedure TClienteListFrm.DBGrid1DblClick(Sender: TObject);
begin
 PrincipalFrm.AddAChild(TClienteCadFrm, ClienteCadFrm);
 DM1.DstCadastro.Locate('CODCLI', QryClientes['CODCLI'], []);

 ClienteCadFrm.edit1.onchange := nil;
 ClienteCadFrm.edit1.Text := QryClientes['NOME'];
 ClienteCadFrm.edit1.onchange := ClienteCadFrm.edit1change;
 ClienteCadFrm.abilita;
end;

procedure TClienteListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
  DBGrid1DblClick(self);

 if key = vk_escape then
  Perform(wm_nextdlgctl, 1,0);
end;

procedure TClienteListFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);
 if key = vk_escape then
   self.Close;
end;

procedure TClienteListFrm.Edit3KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TClienteListFrm.DateEdit2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   PrincipalFrm.SpeedButton7.Click;
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TClienteListFrm.Label5Click(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  begin
   Principalfrm.ClasseMnu.click;

   if Dm1.DstClasse.state = dsbrowse then
    Dm1.DstClasse.Locate('CODCLASSE', Dblookupcombobox1.keyvalue, []);
  end;
end;

procedure TClienteListFrm.Label5MouseLeave(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TClienteListFrm.Label1Click(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.CadCliMnu.click;
end;

procedure TClienteListFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TClienteListFrm.DBGrid2DrawColumnCell(Sender: TObject;
 const Rect: TRect; DataCol: integer; Column: TColumn;
 State: TGridDrawState);
begin
 if QryContatos.RecordCount > 0 then
   Panel4.Visible := False
 else
   Panel4.Visible := True;
end;

procedure TClienteListFrm.Edit1Change(Sender: TObject);
begin
 FiltroChanged(self);
end;

procedure TClienteListFrm.QryClasseAfterScroll(DataSet: TDataSet);
begin
 FiltroChanged(self);
end;

procedure TClienteListFrm.SpeedButton4Click(Sender: TObject);
const
 MaxWidth: integer = 737;
 NormalWidth: integer = 527;
begin
 if Tspeedbutton(Sender).Visible then
  begin
   lockwindowupdate(handle);
   if Sender = speedbutton1 then       // Diminui visualizacao de grid
    begin
     if panel2.Width - (MaxWidth div 10) >= NormalWidth then
      begin
       panel2.Width := panel2.Width - (MaxWidth div 10);
       panel2.Left := panel2.Left + (MaxWidth div 10);
      end
     else
       Sender := speedbutton3;
    end;

   if Sender = speedbutton2 then       // Aumenta visualizacao de grid
    begin
     if panel2.Width + (MaxWidth div 10) <= MaxWidth then
      begin
       panel2.Width := panel2.Width + (MaxWidth div 10);
       panel2.left := panel2.Left - (MaxWidth div 10);
      end
     else
       Sender := speedbutton4;
    end;

   if Sender = speedbutton3 then       // Minimiza visualizacao de Grid
    begin
     panel2.left := panel2.left + (panel2.Width - NormalWidth);
     panel2.Width := NormalWidth;
    end;

   if Sender = speedbutton4 then       // Maximiza visualizacao de Grid
    begin
     panel2.left := panel2.left - (MaxWidth - panel2.Width);
     panel2.Width := MaxWidth;
    end;

   speedbutton2.Visible := panel2.Width < MaxWidth;
   speedbutton4.Visible := panel2.Width < MaxWidth;
   speedbutton1.Visible := panel2.Width > NormalWidth;
   speedbutton3.Visible := panel2.Width > NormalWidth;
   lockwindowupdate(0);
  end;
end;

procedure TClienteListFrm.Label1MouseLeave(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_Off(sender);
end;

procedure TClienteListFrm.Label1MouseEnter(Sender: TObject);
begin
 if Principalfrm.CadCliMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TClienteListFrm.Label5MouseEnter(Sender: TObject);
begin
 if Principalfrm.ClasseMnu.visible then
  Principalfrm.Hyperlink_On(sender);
end;

procedure TClienteListFrm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TClienteListFrm.DBGrid1TitleClick(Column: TColumn);
var
 s: string;
begin
 screen.cursor := crHourGlass;
 s := Column.FieldName;
 with QryClientes do
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

procedure TClienteListFrm.DBGrid2TitleClick(Column: TColumn);
var
 s: string;
begin
 screen.cursor := crHourGlass;
 s := Column.FieldName;
 with QryContatos do
  begin
   Close;
   SQL.Delete(SQL.IndexOf(OrderbyStr_2));
   if OrderbyStr_2 <> 'ORDER BY ' + s then
    begin
     SQL.Add('ORDER BY ' + s);
     OrderbyStr_2 := 'ORDER BY ' + s;
    end
   else
    begin
     SQL.Add('ORDER BY ' + s + ' DESC');
     OrderbyStr_2 := 'ORDER BY ' + s + ' DESC';
    end;
   Open;
  end;
 screen.cursor := crDefault;

end;

end.
