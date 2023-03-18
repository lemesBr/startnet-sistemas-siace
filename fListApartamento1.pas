unit fListApartamento1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FR1, Buttons, ExtCtrls, aDvGlowButton, ImgList,
  acAlphaImageList, System.ImageList;

type
  TF_ListApartamento1 = class(TForm)
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
  F_ListApartamento1: TF_ListApartamento1;

implementation

uses ModuleDados1;


{$R *.dfm}

Function TF_ListApartamento1.Validacao : Boolean;
Begin
  Result := False;
  
  DM1.Apartamentol.Close;
  DM1.Apartamentol.SQL.Clear;
  DM1.Apartamentol.SQL.Add( ' Select * From Apartamento, Categoria      ' );
  DM1.Apartamentol.SQL.Add( ' Where APA_CodCategoria = CAT_CodCategoria ' );
  If Grupo1.ItemIndex = 0 Then
    DM1.Apartamentol.SQL.Add( ' Order By APA_CODApartamento ' )
  Else
    DM1.Apartamentol.SQL.Add( ' Order By APA_Apartamento ' );
  DM1.Apartamentol.Open;

  If DM1.Apartamentol.IsEmpty Then
  Begin
    MessageDlg('Dados não encontrados para o relatório.',MtInformation,[MbOk],0);
    Exit;
  End;

  Result := True;
End;

procedure TF_ListApartamento1.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListApartamento1.BtVisualizarClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R1= Nil Then
     Application.CreateForm(TF_R1,F_R1);
    F_R1.ListApartamento.Preview;
  End;
end;

procedure TF_ListApartamento1.BtImprimirClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R1= Nil Then
     Application.CreateForm(TF_R1,F_R1);
    F_R1.ListApartamento.Print;
  End;
end;

procedure TF_ListApartamento1.FormDestroy(Sender: TObject);
begin
  F_ListApartamento1 := Nil;
end;

procedure TF_ListApartamento1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

end.
