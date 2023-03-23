unit ufrmPostoTanqueList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseList, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, AdvPanel,
  mPostoTanque, svcAuth;

type
  TfrmPostoTanqueList = class(TfrmBaseList)
    fdmt_BaseID: TStringField;
    fdmt_BaseID_PRODUTO: TStringField;
    fdmt_BaseNUMERO: TIntegerField;
    fdmt_BaseVOLUME_ATUAL: TCurrencyField;
    fdmt_BaseCAPACIDADE: TCurrencyField;
    fdmt_BaseDESCRICAO: TStringField;
    fdmt_BasePRODUTO: TStringField;
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
  frmPostoTanqueList: TfrmPostoTanqueList;

implementation

{$R *.dfm}

uses ufrmPostoTanqueCreatedEdit;

{ TfrmPostoTanqueList }

procedure TfrmPostoTanqueList.act_AlterarExecute(Sender: TObject);
begin
  TAuth.PostoTanqueId:= fdmt_BaseID.AsString;
  inherited;
end;

procedure TfrmPostoTanqueList.act_IncluirExecute(Sender: TObject);
begin
  TAuth.PostoTanqueId:= EmptyStr;
  inherited;
end;

procedure TfrmPostoTanqueList.FormCreate(Sender: TObject);
begin
  inherited;
  createdFormClass:= TfrmPostoTanqueCreatedEdit;
  list('');
end;

procedure TfrmPostoTanqueList.list(search: string);
begin
  inherited;
  TPostoTanque.list(search, fdmt_Base);
end;

end.
