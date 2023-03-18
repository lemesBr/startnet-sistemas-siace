unit UnitSelect;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 Db, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
 IBCustomDataSet, IBQuery, variants, Placemnt;

type
 TSelectFrm = class(TForm)
   SpeedButton6: TSpeedButton;
   SpeedButton1: TSpeedButton;
   dbgrid1: TDBGrid;
   Panel1: TPanel;
   GroupBox1: TGroupBox;
   Edit1: TEdit;
   DataSource1: TDataSource;
   IBQuery1: TIBQuery;
   FormStorage1: TFormStorage;
   procedure dbgrid1DblClick(Sender: TObject);
   procedure dbgrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1Change(Sender: TObject);
   procedure Query1AfterScroll(DataSet: TDataSet);
   procedure SpeedButton6Click(Sender: TObject);
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SelectFrm: TSelectFrm;
 TECLA_SELECT: char;    //variavel para reeber primeira letra da tela de origem da busca

implementation

uses UnitDataM1;

{$R *.DFM}

procedure TSelectFrm.dbgrid1DblClick(Sender: TObject);
begin
 speedbutton1.click;
end;

procedure TSelectFrm.dbgrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   speedbutton1.click;

 if key = vk_escape then
   self.Close;

 if (key = vk_up) then
   if IBquery1.BOF then edit1.SetFocus;
end;

procedure TSelectFrm.Edit1Change(Sender: TObject);
begin
 if edit1.focused then
   IBquery1.locate('NOME', edit1.Text, [loCaseInsensitive, loPartialKey]);
 //localiza cliente
end;

procedure TSelectFrm.Query1AfterScroll(DataSet: TDataSet);
begin
 if dbgrid1.Focused then
   edit1.Text := IBquery1['NOME'];
end;

procedure TSelectFrm.SpeedButton6Click(Sender: TObject);
begin
 self.Close; //Botao sair - cancelar
end;

procedure TSelectFrm.Edit1Enter(Sender: TObject);
begin
 tedit(Sender).color := claqua;
end;

procedure TSelectFrm.Edit1Exit(Sender: TObject);
begin
 tedit(Sender).color := clwindow;
end;

procedure TSelectFrm.FormShow(Sender: TObject);
begin
 // rotina para receber letra da primeira
 // tecla digitada na tela de origem da busca

 edit1.SetFocus;                       // foco no edit1
 edit1.Text := TECLA_SELECT;           // edit1 recebe primeira letra
 edit1.Perform(wm_keydown, vk_right, 0);
 // move cursor para a direita -> depois da primeira letra
 TECLA_SELECT := #0;                   // limpa variavel global
end;

procedure TSelectFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 edit1.Clear;
end;

procedure TSelectFrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if (key = vk_return) then    //vk_return
   speedbutton1.click;

 if (key = vk_escape) then    //vk_escape
   self.Close;

 if (key = vk_down) then    //vk_down
  begin
   dbgrid1.SetFocus;
   dbgrid1.Perform(wm_keydown, vk_down, 0);
  end;

 if (key = vk_up) then    //vk_up
   edit1.SetFocus;
end;

end.
