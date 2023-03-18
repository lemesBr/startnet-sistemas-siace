unit FpApartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB;

type
  TF_pApartamento = class(TForm)
    grupo1: TRadioGroup;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Grade1: TDBGrid;
    Panel2: TPanel;
    BtFechar: TBitBtn;
    DataSource1: TDataSource;
    procedure BtFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure Grade1DblClick(Sender: TObject);
    procedure Grade1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Grade1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_pApartamento: TF_pApartamento;

implementation

uses ModuleDados1;

{$R *.dfm}

procedure TF_pApartamento.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_pApartamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //===================================================
  //Mudar o Nome da Tabela e Seus Campos;
  pPADRAO  := '';
  pPADRAO1 := '';
  With DM1.Qry1 Do
  Begin
    If Not Active = False Then
      If Not IsEmpty Then
      Begin
        pPADRAO  :=FieldByName('APA_CodApartamento').AsString;
        pPADRAO1 :=FieldByName('APA_Apartamento')   .AsString;
      End;
    Close;
  End;
  Release;
end;

procedure TF_pApartamento.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  Edit1.Text:='';
end;

procedure TF_pApartamento.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
   { if Edit1.Text = '' then
      Exit
    else   }
      //=========================================
      //Mudar o Nome  da Tabela e Seus Campos;
      With DM1.Qry1 do
      begin
        Close;
        SQL.Clear;

        Case Grupo1.ItemIndex Of
         0 : Begin
               Sql.Add(' SELECT   *                            ');
               Sql.Add(' FROM            Apartamento           ');
               Sql.Add(' WHERE    APA_CodApartamento like :P00 ');
               Sql.Add(' ORDER BY APA_CodApartamento           ');
               Params[00].AsString := '%' + Edit1.Text + '%';
             End;

         1 : Begin
               Sql.Add(' SELECT *                            ');
               Sql.Add(' FROM          Apartamento           ');
               Sql.Add(' WHERE     APA_Apartamento like :P00 ');
               Sql.Add(' ORDER BY  APA_Apartamento           ');
               Params[00].AsString := '%' + Edit1.Text + '%';
             End;
        End;
        Open;
      end;
if key= VK_DOWN then
begin
  Grade1.SetFocus;
end;
end;

procedure TF_pApartamento.FormDestroy(Sender: TObject);
begin
  F_pApartamento := Nil;
end;

procedure TF_pApartamento.Grade1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TF_pApartamento.Grade1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if not Odd(DM1.Qry1.RecNo) then
   if not(gdselected in State) then
   begin
    Grade1.Canvas.Brush.Color := $00FDE2BD;
    Grade1.Canvas.FillRect(rect);
    Grade1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

procedure TF_pApartamento.Grade1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key =#13) or (Key =#27) then
begin
close;
end;
end;

end.
