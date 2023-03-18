unit FrmEntradaTorasMadeireira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  ComCtrls, DB, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFEntradaTorasMadeireira = class(TForm)
    pgcEntrada: TPageControl;
    tbGrid: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    Grid: TDBGrid;
    tbEdit: TTabSheet;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    Bevel1: TBevel;
    pnlEntradaToras: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtRomaneio: TDBEdit;
    edtCientifico: TDBEdit;
    GridToras: TDBGrid;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    Bevel5: TBevel;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    lblTotalToras: TLabel;
    dsEntrada: TDataSource;
    dsToras: TDataSource;
    popToras: TPopupMenu;
    I1: TMenuItem;
    N1: TMenuItem;
    A1: TMenuItem;
    E1: TMenuItem;
    DBLookupComboBox1: TDBLookupComboBox;
    tbToras: TTabSheet;
    Bevel6: TBevel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Bevel7: TBevel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Bevel8: TBevel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    spbSalvarToras: TSpeedButton;
    spbCancelarToras: TSpeedButton;
    spbEspecie: TSpeedButton;
    DBEdit13: TDBEdit;
    procedure spbIncluirClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spbCancelarTorasClick(Sender: TObject);
    procedure spbSalvarTorasClick(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure spbEspecieClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AlteraEstoqueProduto(ID_PRODUTO,Status: Integer; ESTOQUE: currency);
  end;

var
  FEntradaTorasMadeireira: TFEntradaTorasMadeireira;

implementation

uses uDMMovimentacao, ConsClientes, ModulodeDados, xloc_fornecedor,
  clientes, ConsProdutosVendas;

{$R *.dfm}

procedure TFEntradaTorasMadeireira.spbIncluirClick(Sender: TObject);
begin
  dsEntrada.DataSet.Insert;
  dsToras.DataSet.Open;
  pgcEntrada.ActivePage:= tbEdit;
end;

procedure TFEntradaTorasMadeireira.spbAlterarClick(Sender: TObject);
begin
  if not dsEntrada.DataSet.IsEmpty then
  begin
    dsEntrada.DataSet.Edit;
    dsToras.DataSet.Open;
    pgcEntrada.ActivePage:= tbEdit;
  end;
end;

procedure TFEntradaTorasMadeireira.spbExcluirClick(Sender: TObject);
begin
  try
    if not dsEntrada.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o item selecionado?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsToras.DataSet.Open;
        dsToras.DataSet.First;
        while not dsToras.DataSet.Eof do
        begin
          AlteraEstoqueProduto(dsToras.DataSet.fieldbyname('ID_ESPECIE').AsInteger,0,
          dsToras.DataSet.fieldbyname('M3').AsCurrency);
          dsToras.DataSet.Next;
        end;
        dsEntrada.DataSet.Delete;
        DMMovimentacao.Adapter.ApplyUpdates(0);
        dsEntrada.DataSet.Refresh;
        dsToras.DataSet.Close;
      end;
    end;
  except
    Application.MessageBox('Erro ao tentar excluir!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFEntradaTorasMadeireira.spbCancelarClick(Sender: TObject);
begin
  dsEntrada.DataSet.Cancel;
  dsToras.DataSet.Close;
  pgcEntrada.ActivePage:= tbGrid;
end;

procedure TFEntradaTorasMadeireira.spbSalvarClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(pnlEntradaToras.componentCount) do
  begin
    if pnlEntradaToras.Components[I] is TDBEdit then
    begin
      if (pnlEntradaToras.Components[I] as TDBEdit).Text = '' then
      begin
        Application.MessageBox('Existem campos vazio!','Atenção',MB_ICONWARNING);
        Exit;
      end;
    end;
  end;

  if dsToras.DataSet.IsEmpty then
  begin
    Application.MessageBox('É necessário incluir alguma tora!','Atenção',MB_ICONWARNING);
    Exit;
  end;

  if dsEntrada.DataSet.FieldByName('ID_PATIO').AsInteger < 1 then
  begin
    Application.MessageBox('É necessário preencher o campo Patio','Atenção',MB_ICONWARNING);
    Exit;
  end;

  dsEntrada.DataSet.FieldByName('TOTAL_TORAS').AsInteger:= StrToInt(lblTotalToras.Caption);

  dsToras.DataSet.First;
  while not dsToras.DataSet.Eof do
  begin
    AlteraEstoqueProduto(dsToras.DataSet.fieldbyname('ID_ESPECIE').AsInteger,1,
    dsToras.DataSet.fieldbyname('M3').AsCurrency);
    dsToras.DataSet.Next;
  end;

  dsEntrada.DataSet.Post;
  TFDQuery(dsToras.DataSet).ApplyUpdates(0);
  DMMovimentacao.Adapter.ApplyUpdates(0);
  pgcEntrada.ActivePage:= tbGrid;
  dsToras.DataSet.Close;
end;

procedure TFEntradaTorasMadeireira.SpeedButton3Click(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    dsEntrada.DataSet.FieldByName('ID_MOTORISTA').AsInteger:=
    DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFEntradaTorasMadeireira.SpeedButton2Click(Sender: TObject);
begin
  try
    frmxloc_fornecedor:= Tfrmxloc_fornecedor.Create(nil);
    frmxloc_fornecedor.ShowModal;
  finally
    dsEntrada.DataSet.FieldByName('ID_FORNECEDOR').AsInteger:=
    dm.SDS_Fornecedores.fieldbyname('CODIGO').AsInteger;
    edtCientifico.Text:= dm.SDS_Fornecedores.fieldbyname('NOME').AsString;
    FreeAndNil(frmxloc_fornecedor);
  end;
end;

procedure TFEntradaTorasMadeireira.spbCancelarTorasClick(Sender: TObject);
begin
  dsToras.DataSet.Cancel;
  pgcEntrada.ActivePage:= tbEdit;
end;

procedure TFEntradaTorasMadeireira.spbSalvarTorasClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(tbToras.componentCount) do
  begin
    if tbToras.Components[I] is TDBEdit then
    begin
      if (tbToras.Components[I] as TDBEdit).Text = '' then
      begin
        Application.MessageBox('Existem campos vazio!','Atenção',MB_ICONWARNING);
        Exit;
      end;
    end;
  end;

  if dsToras.DataSet.FieldByName('ID_ESPECIE').AsInteger < 1 then
  begin
    Application.MessageBox('O campo especie não pode ficar vazio!','Atenção',MB_ICONWARNING);
    Exit;
  end;

  dsToras.DataSet.Post;
  lblTotalToras.Caption:= IntToStr(StrToInt(lblTotalToras.Caption) + 1);
  pgcEntrada.ActivePage:= tbEdit;
end;

procedure TFEntradaTorasMadeireira.I1Click(Sender: TObject);
begin
  dsToras.DataSet.Insert;
  pgcEntrada.ActivePage:= tbToras;
end;

procedure TFEntradaTorasMadeireira.A1Click(Sender: TObject);
begin
  if not dsToras.DataSet.IsEmpty then
  begin
    dsToras.DataSet.edit;
    pgcEntrada.ActivePage:= tbToras;
  end;
end;

procedure TFEntradaTorasMadeireira.E1Click(Sender: TObject);
begin
  try
    if not dsToras.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o item selecionado?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsToras.DataSet.Delete;
        lblTotalToras.Caption:= IntToStr(StrToInt(lblTotalToras.Caption) - 1);
      end;
    end;
  except
    Application.MessageBox('Erro ao tentar excluir!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFEntradaTorasMadeireira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsEntrada.DataSet.Close;
  Action:=CaFree;
  FormClientes:=nil;
end;

procedure TFEntradaTorasMadeireira.FormCreate(Sender: TObject);
begin
  dsEntrada.DataSet.Open;
  pgcEntrada.ActivePage:= tbGrid;
end;

procedure TFEntradaTorasMadeireira.DBEdit7Exit(Sender: TObject);
begin
  dsToras.DataSet.FieldByName('M3').AsFloat:=
  (((dsToras.DataSet.FieldByName('COMPRIMENTO').AsFloat *
  dsToras.DataSet.FieldByName('DIAMETRO_PONTA').AsFloat) *
  dsToras.DataSet.FieldByName('DIAMETRO_PONTA').AsFloat) * StrToFloat('0,7854'));
end;

procedure TFEntradaTorasMadeireira.DBEdit12Exit(Sender: TObject);
begin
  dsToras.DataSet.FieldByName('TOTAL').AsFloat:=
  dsToras.DataSet.FieldByName('VALOR_M3').AsFloat *
  dsToras.DataSet.FieldByName('M3').AsFloat;
end;

procedure TFEntradaTorasMadeireira.spbEspecieClick(Sender: TObject);
begin
  try
    FormConsProdutosVendas:= TFormConsProdutosVendas.Create(nil);
    FormConsProdutosVendas.ShowModal;
  finally
    if DM.Sds_produtos_cDESC_UNIDADE.Value = 'M3' then
    begin
      dsToras.DataSet.FieldByName('ID_ESPECIE').AsInteger:= DM.Sds_produtos_cCODIGO.Value;
    end
    else
      Application.MessageBox('A unidade do Produto deve ser M3!','Atenção',MB_ICONWARNING);
      
    FreeAndNil(FormConsProdutosVendas);
  end;
end;

procedure TFEntradaTorasMadeireira.AlteraEstoqueProduto(
  ID_PRODUTO,Status: Integer; ESTOQUE: currency);
var
  qr: TFDQuery;
begin
  // Atualiza preços do custo e venda do imovel
  try
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT ESTOQUE,CODIGO FROM PRODUTOS WHERE CODIGO = :CODPRO');
    qr.Parambyname('CODPRO').AsInteger:= ID_PRODUTO;
    qr.Open;

    if Status = 1 then
      qr.FieldByName('ESTOQUE').AsCurrency:= qr.fieldbyname('ESTOQUE').AsCurrency + ESTOQUE
    else
      qr.FieldByName('ESTOQUE').AsCurrency:= qr.fieldbyname('ESTOQUE').AsCurrency - ESTOQUE;

    qr.Destroy;
  except
    showmessage('Erro ao atualizar o custo do produto');
  end;
end;

end.
