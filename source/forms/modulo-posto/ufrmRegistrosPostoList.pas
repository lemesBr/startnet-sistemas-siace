unit ufrmRegistrosPostoList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, mPostoRegistro, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FB, FireDAC.Phys.FBDef, svcAuth;

type
  TfrmRegistrosPostoList = class(TfrmBase)
    DBGrid: TDBGrid;
    fdmt_Base: TFDMemTable;
    ds_Base: TDataSource;
    fdmt_BaseID: TStringField;
    fdmt_BaseCODIGO_BICO: TStringField;
    fdmt_BaseVALOR_POR_LITRO: TCurrencyField;
    fdmt_BaseTOTAL_DE_LITRO: TCurrencyField;
    fdmt_BaseVALOR_TOTAL: TCurrencyField;
    fdmt_BaseTEMPO: TStringField;
    fdmt_BaseDATA_HORA: TDateTimeField;
    fdmt_BaseNUMERO_REGISTRO: TIntegerField;
    fdmt_BaseTAG_CARTAO1: TStringField;
    fdmt_BaseTAG_CARTAO2: TStringField;
    fdmt_BaseSTATUS: TStringField;
    fdmt_BaseID_VENDA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistrosPostoList: TfrmRegistrosPostoList;

implementation

{$R *.dfm}

procedure TfrmRegistrosPostoList.DBGridDblClick(Sender: TObject);
begin
  if fdmt_Base.RecordCount <= 0 then
    exit;

  TAuth.PostoRegistroId:= fdmt_BaseID.AsString;
  Close;
end;

procedure TfrmRegistrosPostoList.FormCreate(Sender: TObject);
begin
  TPostoRegistro.list('', 'N' ,fdmt_Base);
end;

end.
