unit FrmNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Grids, DBGrids,
  StdCtrls, ComCtrls, Mask, DBCtrls;

type
  TFNCM = class(TForm)
    qrNCM: TFDQuery;
    dsNCM: TDataSource;
    qrNCMCODIGO_NCM: TStringField;
    qrNCMDESCRICAO: TStringField;
    qrNCMALICOTA: TStringField;
    qrNCMANALITICO: TStringField;
    qrNCMTABELA: TStringField;
    qrNCMALIC_NAC: TBCDField;
    qrNCMALIC_IMP: TBCDField;
    qrNCMALIC_REVENDA: TBCDField;
    pgc: TPageControl;
    tbGrid: TTabSheet;
    tbEdit: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    Grid: TDBGrid;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edtPesquisa: TEdit;
    cbxTipoContrato: TComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    edtNCM: TDBEdit;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbIncluirClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNCM: TFNCM;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TFNCM.FormCreate(Sender: TObject);
begin
  qrNCM.Open;
  pgc.ActivePage:= tbGrid;
end;

procedure TFNCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrNCM.Close;
end;

procedure TFNCM.SpeedButton1Click(Sender: TObject);
begin
  if edtPesquisa.Text <> '' then
  begin
    dsNCM.DataSet.Filter:= cbxTipoContrato.Text + ' LIKE ' + QuotedStr('%'+edtPesquisa.Text);
    dsNCM.DataSet.Filtered:= True;
  end
  else
    dsNCM.DataSet.Filtered:= False;

end;

procedure TFNCM.spbIncluirClick(Sender: TObject);
begin
  qrNCM.insert;
  pgc.ActivePage:= tbEdit;
end;

procedure TFNCM.spbAlterarClick(Sender: TObject);
begin
  if not qrNCM.IsEmpty then
  begin
    qrNCM.Edit;
    pgc.ActivePage:= tbEdit;
  end;
end;

procedure TFNCM.spbExcluirClick(Sender: TObject);
begin
  try
    if not qrNCM.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o NCM selecionado?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        qrNCM.Delete;
      end;
    end;
  except
    Application.MessageBox('Você não pode Excluir esse NCM!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFNCM.spbCancelarClick(Sender: TObject);
begin
  qrNCM.Cancel;
  pgc.ActivePage:= tbGrid;
end;

procedure TFNCM.spbSalvarClick(Sender: TObject);
var
  Erro: string;
begin
  Erro:= '';
  if edtNCM.Text = '' then
  begin
    Erro:= 'É necessário informar o NCM!';
    edtNCM.SetFocus;
  end;

  if edtDescricao.Text = '' then
  begin
    Erro:= 'É necessário informar a Descrição!';
    edtDescricao.SetFocus;
  end;

  if Erro = '' then
  begin
    qrNCM.Post;
    pgc.ActivePage:= tbGrid;
  end
  else
  //  Application.MessageBox(PAnsiChar(Erro),'Atenção',MB_ICONWARNING);
    MessageDlg((Erro), mtInformation,[mbOk], 0);
end;

end.
