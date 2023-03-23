unit ufrmPostoBombaList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseList, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, AdvPanel,
  mPostoBomba, svcAuth;

type
  TfrmPostoBombaList = class(TfrmBaseList)
    fdmt_BaseID: TStringField;
    fdmt_BaseNUMERO: TIntegerField;
    fdmt_BaseDESCRICAO: TStringField;
    fdmt_BaseMODELO: TStringField;
    fdmt_BaseSERIE: TStringField;
    fdmt_BaseFABRICANTE: TStringField;
    fdmt_BaseAUTO_AUTORIZAR: TStringField;
    DBGrid1: TDBGrid;
    fdmt_Bico: TFDMemTable;
    fdmt_BicoID_BICO: TStringField;
    fdmt_BicoID_TANQUE: TStringField;
    fdmt_BicoBICO: TStringField;
    fdmt_BicoTANQUE: TStringField;
    fdmt_BicoPRODUTO: TStringField;
    ds_Bico: TDataSource;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure act_IncluirExecute(Sender: TObject);
    procedure act_AlterarExecute(Sender: TObject);
    procedure ds_BaseDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure list(search: string); override;
  end;

var
  frmPostoBombaList: TfrmPostoBombaList;

implementation

{$R *.dfm}

uses ufrmPostoBombaCreatedEdit;

{ TfrmPostoBombaList }

procedure TfrmPostoBombaList.act_AlterarExecute(Sender: TObject);
begin
  TAuth.PostoBombaId:= fdmt_BaseID.AsString;
  inherited;
end;

procedure TfrmPostoBombaList.act_IncluirExecute(Sender: TObject);
begin
  TAuth.PostoBombaId:= EmptyStr;
  inherited;
end;

procedure TfrmPostoBombaList.ds_BaseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if fdmt_Base.RecordCount >= 1 then
    TPostoBomba.listBicos(fdmt_BaseID.AsString, fdmt_bico);
end;

procedure TfrmPostoBombaList.FormCreate(Sender: TObject);
begin
  inherited;
  createdFormClass:= TfrmPostoBombaCreatedEdit;
  list('');
end;

procedure TfrmPostoBombaList.list(search: string);
begin
  inherited;
  TPostoBomba.list(search, fdmt_Base);
end;

end.
