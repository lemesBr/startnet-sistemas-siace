unit ufrmPostoFrentistasList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseList, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, AdvPanel,
  mPostoFrentista, svcAuth;

type
  TfrmPostoFrentistasList = class(TfrmBaseList)
    fdmt_BaseID: TStringField;
    fdmt_BaseID_CARTAO: TStringField;
    fdmt_BaseNOME: TStringField;
    fdmt_BaseDESCRICAO: TStringField;
    fdmt_BaseCOMISSAO: TCurrencyField;
    fdmt_BaseSTATUS: TStringField;
    fdmt_BaseCARTAO: TStringField;
    fdmt_BaseSTATUS_NAME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure act_IncluirExecute(Sender: TObject);
    procedure act_AlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure list(search: string); override;
  end;

var
  frmPostoFrentistasList: TfrmPostoFrentistasList;

implementation

{$R *.dfm}

uses ufrmPostoFrentistasCreatedEdit;

{ TfrmPostoFrentistasList }

procedure TfrmPostoFrentistasList.act_AlterarExecute(Sender: TObject);
begin
  TAuth.PostoFrentistaId:= fdmt_BaseID.AsString;
  inherited;
end;

procedure TfrmPostoFrentistasList.act_IncluirExecute(Sender: TObject);
begin
  TAuth.PostoFrentistaId:= EmptyStr;
  inherited;
end;

procedure TfrmPostoFrentistasList.FormCreate(Sender: TObject);
begin
  inherited;
  createdFormClass:= TfrmPostoFrentistasCreatedEdit;
  list('');
end;

procedure TfrmPostoFrentistasList.list(search: string);
begin
  inherited;
  TPostoFrentista.list(search, fdmt_Base);
end;

end.
