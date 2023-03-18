unit fListProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,FR1, Buttons, ExtCtrls, aDvGlowButton, ImgList,
  acAlphaImageList, System.ImageList;

type
  TF_ListProduto = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Function Validacao : Boolean;
  public
    { Public declarations }
  end;

var
  F_ListProduto: TF_ListProduto;

implementation

uses ModuleDados1;


{$R *.dfm}

Function TF_ListProduto.Validacao : Boolean;
Begin
  Result := False;
  
  DM1.Produto.Close;
  DM1.Produto.SQL.Clear;
  DM1.Produto.SQL.Add( ' Select * From Produtos  ' );
  If Grupo1.ItemIndex = 0 Then
    DM1.Produto.SQL.Add( ' Order By Codigo ' )
  Else
    DM1.Produto.SQL.Add( ' Order By Descricao ' );
  DM1.Produto.Open;

  If DM1.Produto.IsEmpty Then
  Begin
    MessageDlg('Dados não encontrados para o relatório.',MtInformation,[MbOk],0);
    Exit;
  End;

  Result := True;
End;

procedure TF_ListProduto.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ListProduto.BtVisualizarClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R1= Nil Then
     Application.CreateForm(TF_R1,F_R1);
    F_R1.ListProduto.Preview;
  End;
end;

procedure TF_ListProduto.BtImprimirClick(Sender: TObject);
begin
  If Validacao Then
  Begin
    If F_R1= Nil Then
     Application.CreateForm(TF_R1,F_R1);
    F_R1.ListProduto.Print;
  End;
end;

procedure TF_ListProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TF_ListProduto.FormDestroy(Sender: TObject);
begin
  F_ListProduto := Nil;
end;

end.
