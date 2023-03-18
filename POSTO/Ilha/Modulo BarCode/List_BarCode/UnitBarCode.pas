unit UnitBarCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, Printers, StdCtrls, Buttons, ComCtrls,
  Menus, DB, IBCustomDataSet, IBQuery, Spin;

type
  TBarcodeListFrm = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Memo1: TMemo;
    PopupMenu1: TPopupMenu;
    ConfigurarImpressora1: TMenuItem;
    ListView2: TListView;
    Label7: TLabel;
    PopupMenu2: TPopupMenu;
    ExcluirTodos1: TMenuItem;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    QryListProd: TIBQuery;
    DtsQryListProd: TDataSource;
    SpinEdit1: TSpinEdit;
    procedure Gerar(sender:tobject);
    Procedure Limpar (sender: Tobject);
    procedure Imprimir(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfigurarImpressora1Click(Sender: TObject);
    procedure ListView2Click(Sender: TObject);
    procedure ExcluirTodos1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BarcodeListFrm: TBarcodeListFrm;

Type
  TPassThroughData = Record
   nLen: Integer;
   Data: Array [0..2000] of byte;
  end;

implementation

uses UnitDataM1, EPL2_Unit, UnitFrmPrincipal;

{$R *.dfm}

Procedure DirectPrint(s: String);
var
 PTBlock : TPassThroughData;
Begin
 PTBlock.nLen := Length(s);
 StrPCopy(@PTBlock.Data, s);
 Escape(printer.handle, PASSTHROUGH,0,@PTBlock,nil);
end;

Procedure TBarcodeListFrm.Limpar (sender: Tobject);
begin
 edit1.clear;
 edit2.Clear;
 QryListProd.Close;
 QryListProd.Unprepare;

 edit1.setfocus;
 SpinEdit1.Value := 1;
 memo1.Lines.Clear;
 ListView2.Clear;
end;


procedure TBarcodeListFrm.Gerar(sender:tobject);
var
 t,q,z,a,x:integer;
 m,n,p: string;
 list1,list: TStringList;
begin
t:=0;
with QryListProd do
 begin
  close;
  sql.clear;
  sql.add('SELECT cod_produtos, referencia, nome FROM produtos');

  If (edit1.text<>'') or (edit2.text<>'') then                        //coloca o where caso algo seja preenchido
   sql.add(' WHERE');

  //---------------por Código----------------------------
  if edit1.text<>'' then
   begin
    if t=1 then
     sql.add(' and');
    t:=1;

    sql.add( 'UPPER(referencia) LIKE UPPER(:referencia) ');
    params.parambyname('referencia').asstring:= '%' + edit1.text + '%';
   end;

     //---------------Por nome do produto---------------
  if edit2.Text <> '' then
   begin
    if t=1 then
     sql.add(' and');
    t:=1;
    sql.add( 'UPPER(nome) LIKE UPPER(:nome) ');
    params.parambyname('nome').asstring:= '%' + edit2.text + '%';
   end;

  sql.add('ORDER BY referencia');
  prepare;
  open;
 end;

end;

procedure TBarcodeListFrm.Imprimir(Sender: TObject);
var
 x,y: integer;
begin
//--- Impressão de Código de Barras ---
{Impressora de Codigo de Barras Eltron TLP2642 usando linguagem EPL2 em ASCII}
 try
  memo1.Lines.clear;
  if (SpinEdit1.Value > 0) and (Listview2.Items.Count > 0) then
   begin
    memo1.Lines.add('');
    memo1.Lines.add('N');
    if SpinEdit1.Value div 2 = SpinEdit1.Value/2 then  //Se Quantidade de etiquetas PAR
     begin
      for x:=1 to listview2.Items.count do
       begin
        //--- Primeira e Segunda Etiquetas Iguais ---
        memo1.Lines.add('B48,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
        memo1.Lines.add('A48,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0], 0, 28) + '"');
        memo1.Lines.add('B432,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
        memo1.Lines.add('A432,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0], 0, 28) + '"');
        memo1.Lines.add('P' + floattostr(SpinEdit1.Value div 2));    //Numero de linhas a ser impresso
        memo1.Lines.add('N');
       end;
     end
    else
     begin
      if SpinEdit1.Value > 1 then
       begin
        for x:=1 to listview2.Items.Count do    //Se Quantidade de etiquetas IMPAR e > 1
         begin
          if x div 2 = x/2 then                 //Se a posição da etiqueta no total for PAR
           begin
            //--- Primeira e Segunda Etiquetas Iguais ---
            memo1.Lines.add('B48,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
            memo1.Lines.add('A48,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0],0,28) + '"');
            memo1.Lines.add('B432,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
            memo1.Lines.add('A432,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0],0,28) + '"');
            memo1.Lines.add('P' + floattostr((SpinEdit1.Value - 1) div 2));    //Numero de linhas a ser impresso
            memo1.Lines.add('N');
           end
          else                                  //Se a posição da etiqueta no total for IMPAR
           begin
            //--- Primeira e Segunda Etiquetas Iguais ---
            memo1.Lines.add('B48,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
            memo1.Lines.add('A48,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0],0,28) + '"');
            memo1.Lines.add('B432,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
            memo1.Lines.add('A432,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0],0,28) + '"');
            memo1.Lines.add('P' + floattostr((SpinEdit1.Value - 1) div 2));
            memo1.Lines.add('N');

            //--- Primeira e Segunda Etiquetas Diferentes ---
            memo1.Lines.add('B48,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
            memo1.Lines.add('A48,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0],0,28) + '"');
            if x < listview2.Items.Count then
             begin
              memo1.Lines.add('B432,70,0,1,2,5,64,B,"' + listview2.Items.Item[x].Caption + '"');
              memo1.Lines.add('A432,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x].SubItems.Strings[0],0,28) + '"');
             end;
            memo1.Lines.add('P1');
            memo1.Lines.add('N');
           end
         end;
       end
      else                                      //Se Quantidade de etiquetas IMPAR e = 1
       begin
        x:=1;
        while x <= listview2.Items.Count do
         begin
          //--- Primeira e Segunda Etiquetas Diferentes ---
          memo1.Lines.add('B48,70,0,1,2,5,64,B,"' + listview2.Items.Item[x-1].Caption + '"');
          memo1.Lines.add('A48,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x-1].SubItems.Strings[0],0,28) + '"');
          if x < listview2.Items.Count then
           begin
            memo1.Lines.add('B432,70,0,1,2,5,64,B,"' + listview2.Items.Item[x].Caption + '"');
            memo1.Lines.add('A432,175,0,2,1,1,N,"' + copy(listview2.Items.Item[x].SubItems.Strings[0],0,28) + '"');
           end;
          memo1.Lines.add('P1');
          x := x + 2;
          memo1.Lines.add('N');
         end;
       end;
     end;

    Printer.BeginDoc;
    DirectPrint(memo1.Lines.Text);
    Printer.EndDoc;
   end;
 except

 end;
end;

procedure TBarcodeListFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 DM1.CloseIBArray([BarcodeListFrm.QryListProd]);
 Dm1.HandleBtn(False, False, False, False, False, False, False, False, False, False, False);

end;

procedure TBarcodeListFrm.FormActivate(Sender: TObject);
begin
 DM1.OpenIBArray([BarcodeListFrm.QryListProd]);
 DM1.DefSenderDtsStateChange(BarcodeListFrm.QryListProd);

end;

procedure TBarcodeListFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 begin
  self.close;
 end;

if key = vk_return then
 begin
  perform(wm_nextdlgctl,0,0);
 end;
end;

procedure TBarcodeListFrm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
 begin
  perform(wm_nextdlgctl,1,0);
 end;

if key = vk_return then
 begin
  perform(wm_nextdlgctl,0,0);
 end;

end;

procedure TBarcodeListFrm.Edit1Enter(Sender: TObject);
begin
TEdit(sender).color := claqua;
end;

procedure TBarcodeListFrm.Edit1Exit(Sender: TObject);
begin
TEdit(sender).color := clwindow;
end;

procedure TBarcodeListFrm.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_escape then
 begin
  perform(wm_nextdlgctl,1,0);
 end;

if key = vk_return then
 begin
  if principalfrm.speedbutton7.visible then
   principalfrm.SpeedButton7.click;
 end;
end;

procedure TBarcodeListFrm.ConfigurarImpressora1Click(Sender: TObject);
begin
 memo1.Lines.clear;
 memo1.Lines.add('Q224,24');
 memo1.Lines.add('R72,3');
 
 Printer.BeginDoc;
 DirectPrint(memo1.Lines.Text);
 Printer.EndDoc;
end;

procedure TBarcodeListFrm.ListView2Click(Sender: TObject);
begin
 try
  if listview2.Items.Count > 0 then
   begin
    if application.messagebox('Deseja excluir o item da lista?', 'Atenção', mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
     begin
      if not varisnull(listview2.ItemIndex) then
       listview2.Items.Item[listview2.ItemIndex].Delete;
     end;
   end;
 except
 {}
 end;
end;

procedure TBarcodeListFrm.ExcluirTodos1Click(Sender: TObject);
begin
 if application.messagebox('Deseja excluir todos os itens da lista?', 'Atenção', mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
  listview2.Items.Clear;
end;

procedure TBarcodeListFrm.DBGrid1CellClick(Column: TColumn);
begin
try
 if QryListProd.RecordCount > 0 then
  if listview2.Items.count < 11 then
   begin
    listview2.items.Insert(0);
    listview2.items[0].Caption := qrylistprod['Referencia'];
    Listview2.Items.Item[0].SubItems.Insert(0, qrylistprod['nome']);
   end
  else
   application.MessageBox('Impressão de Etiquetas limitada a 10 items por vez...' + #13 +
                          'Referência não adicionada a lista de impressão.',
                          'Atenção', mb_ok+ mb_iconexclamation);
except
end;
end;

procedure TBarcodeListFrm.SpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
 begin
  perform(wm_nextdlgctl,1,0);
 end;

if key = vk_return then
 begin
  if principalFrm.speedbutton7.visible then
   principalFrm.speedbutton7.click;
 end;
end;

end.
