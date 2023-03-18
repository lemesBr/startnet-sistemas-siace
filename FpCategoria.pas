unit FpCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, aDvGlowButton;

type
  TF_pCategoria = class(TForm)
    grupo1: TRadioGroup;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Grade1: TDBGrid;
    Panel2: TPanel;
    DataSource1: TDataSource;
    FDvGlowButton6: TAdvGlowButton;
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
  F_pCategoria: TF_pCategoria;

implementation

uses ModuleDados1;

{$R *.dfm}

procedure TF_pCategoria.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_pCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //===================================================
  //Mudar o Nome da Tabela e Seus Campos;
  pPADRAO  := '';
  pPADRAO1 := '';
  With DM1.Categoria Do
  Begin
    If Not Active = False Then
      If Not IsEmpty Then
      Begin
        pPADRAO  :=FieldByName('CAT_CodCategoria').AsString;
        pPADRAO1 :=FieldByName('CAT_Categoria')   .AsString;
      End;
    Close;
    UnPrepare;
  End;
  Release;
end;

procedure TF_pCategoria.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  Edit1.Text:='';
  //===================================
  //Mudar Nome da Tabela
  With DM1.Categoria Do
  Begin
    If Active Then
      Close;

    Prepare;
    Open;

    Close;
  End;
end;

procedure TF_pCategoria.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
   { if Edit1.Text = '' then
      Exit
    else    }
      //=========================================
      //Mudar o Nome  da Tabela e Seus Campos;
      With DM1.Categoria do
      begin
        Close;
        SQL.Clear;

        Case Grupo1.ItemIndex Of
         0 : Begin
               Sql.Add(' SELECT   *                           ');
               Sql.Add(' FROM            Categoria            ');
               Sql.Add(' WHERE    CAT_CodCategoria like :P00  ');
               Sql.Add(' ORDER BY CAT_CodCategoria            ');
               Params[00].AsString := '%' + Edit1.Text + '%';
             End;

         1 : Begin
               Sql.Add(' SELECT *                          ');
               Sql.Add(' FROM          Categoria           ');
               Sql.Add(' WHERE     CAT_Categoria like :P00 ');
               Sql.Add(' ORDER BY  CAT_Categoria           ');
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

procedure TF_pCategoria.FormDestroy(Sender: TObject);
begin
  F_pCategoria := Nil;
end;

procedure TF_pCategoria.Grade1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TF_pCategoria.Grade1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Odd(DM1.Categoria.RecNo) then
   if not(gdselected in State) then
   begin
    Grade1.Canvas.Brush.Color := $00FDE2BD;
    Grade1.Canvas.FillRect(rect);
    Grade1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

procedure TF_pCategoria.Grade1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key =#13) or (Key =#27) then
begin
close;
end;
end;

end.
