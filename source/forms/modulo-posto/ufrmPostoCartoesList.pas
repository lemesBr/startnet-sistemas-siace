unit ufrmPostoCartoesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseList, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, AdvPanel,
  mPostoCartao, svcAuth;

type
  TfrmPostoCartoesList = class(TfrmBaseList)
    fdmt_BaseID: TStringField;
    fdmt_BaseCODIGO: TStringField;
    fdmt_BaseCONTROLE: TIntegerField;
    fdmt_BaseLIBERA_BOMBA_ABASTECIMENTO: TStringField;
    fdmt_BaseACEITA_SOMENTE_TURNO_ESPECIFICO: TStringField;
    fdmt_BaseCONTROLE_STR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure act_IncluirExecute(Sender: TObject);
    procedure act_AlterarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure list(search: string); override;
  public
    { Public declarations }
  end;

var
  frmPostoCartoesList: TfrmPostoCartoesList;

implementation

{$R *.dfm}

uses ufrmPostoCartoesCreatedEdit;

{ TfrmPostoCartoesList }

procedure TfrmPostoCartoesList.act_AlterarExecute(Sender: TObject);
begin
  TAuth.PostoCartaoId:= fdmt_BaseID.AsString;
  inherited;
end;

procedure TfrmPostoCartoesList.act_IncluirExecute(Sender: TObject);
begin
  TAuth.PostoCartaoId:= EmptyStr;
  inherited;
end;

procedure TfrmPostoCartoesList.FormCreate(Sender: TObject);
begin
  inherited;
  createdFormClass:= TfrmPostoCartoesCreatedEdit;
  list('');
end;

procedure TfrmPostoCartoesList.list(search: string);
begin
  inherited;
  TPostoCartao.list(search, fdmt_Base);
end;

end.
