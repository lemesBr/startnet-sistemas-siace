unit fListCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FR1, Buttons, ExtCtrls, ADvGlowButton, ImgList,
  acAlphaImageList, System.ImageList;

type
  TF_ListCategoria = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grupo1: TRadioGroup;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    ImageList3: TsAlphaImageList;
    BtCancelar: TAdvGlowButton;
    BtImprimir: TAdvGlowButton;
    BtVisualizar: TAdvGlowButton;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Function Validacao : Boolean;
  public
    { Public declarations }
  end;

var
  F_ListCategoria: TF_ListCategoria;

implementation

uses ModuleDados1;


{$R *.dfm}

Function TF_ListCategoria.Validacao : Boolean;
Begin
  Result := False;
  
  DM1.Categoria.Close;
  DM1.Categoria.SQL.Clear;
  DM1.Categoria.SQL.Add( ' Select * From Categoria     ' );
  If Grupo1.ItemIndex = 0 Then
    DM1.Categoria.SQL.Add( ' Order By CAT_CODCategoria ' )
  Else
    DM1.Categoria.SQL.Add( ' Order By CAT_Categoria ' );
  DM1.Categoria.Open;

  If DM1.Categoria.IsEmpty Then
  Begin
    MessageDlg('Dados não encontrados para o relatório.',MtInformation,[MbOk],0);
    Exit;
  End;

  Result := True;
End;

procedure TF_ListCategoria.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListCategoria.BtVisualizarClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R1= Nil Then
     Application.CreateForm(TF_R1,F_R1);
    F_R1.ListCategoria.Preview;
  End;
end;

procedure TF_ListCategoria.BtImprimirClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R1= Nil Then
     Application.CreateForm(TF_R1,F_R1);
    F_R1.ListCategoria.Print;
  End;
end;

procedure TF_ListCategoria.FormDestroy(Sender: TObject);
begin
  F_ListCategoria := Nil;
end;

procedure TF_ListCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

end.
