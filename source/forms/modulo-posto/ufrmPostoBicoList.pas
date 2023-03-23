unit ufrmPostoBicoList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseList, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, AdvPanel,
  mPostoBico, svcAuth;

type
  TfrmPostoBicoList = class(TfrmBaseList)
    fdmt_BaseID: TStringField;
    fdmt_BaseID_TANQUE: TStringField;
    fdmt_BaseCODIGO_BICO: TStringField;
    fdmt_BasePOSICAO: TStringField;
    fdmt_BaseDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure act_IncluirExecute(Sender: TObject);
    procedure act_AlterarExecute(Sender: TObject);
    procedure act_ExportarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure list(search: string); override;
  end;

var
  frmPostoBicoList: TfrmPostoBicoList;

implementation

{$R *.dfm}

uses ufrmPostoBicoCreatedEdit;

{ TfrmPostoBicoList }

procedure TfrmPostoBicoList.act_AlterarExecute(Sender: TObject);
begin
  TAuth.PostoBicoId:= fdmt_BaseID.AsString;
  inherited;
end;

procedure TfrmPostoBicoList.act_ExportarExecute(Sender: TObject);
begin
  inherited;
  TAuth.PostoBicoId:= fdmt_BaseID.AsString;
  Close;
end;

procedure TfrmPostoBicoList.act_IncluirExecute(Sender: TObject);
begin
  TAuth.PostoBicoId:= EmptyStr;
  inherited;
end;

procedure TfrmPostoBicoList.FormCreate(Sender: TObject);
begin
  inherited;
  createdFormClass:= TfrmPostoBicoCreatedEdit;
  list('');
end;

procedure TfrmPostoBicoList.list(search: string);
begin
  inherited;
  TPostoBico.list(search, fdmt_Base);
end;

end.
