unit ufrmBaseList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBase, System.Actions, Vcl.ActnList,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, svcLibrary;

type
  TfrmBaseList = class(TfrmBase)
    Panel2: TAdvPanel;
    btnexcluir: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnNovo: TAdvGlowButton;
    Action: TActionList;
    act_Incluir: TAction;
    act_Alterar: TAction;
    act_Excluir: TAction;
    DBGrid: TDBGrid;
    fdmt_Base: TFDMemTable;
    ds_Base: TDataSource;
    Bevel1: TBevel;
    lbe_PesquisaRapida: TLabeledEdit;
    act_Exportar: TAction;
    AdvGlowButton1: TAdvGlowButton;
    procedure lbe_PesquisaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure act_AlterarExecute(Sender: TObject);
    procedure act_IncluirExecute(Sender: TObject);
    procedure ActionUpdate(Action: TBasicAction; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    createdFormClass: TFormClass;
    procedure list(search: string); virtual; abstract;
  end;

var
  frmBaseList: TfrmBaseList;

implementation

{$R *.dfm}

procedure TfrmBaseList.ActionUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  act_Alterar.Enabled:= fdmt_Base.RecordCount > 0;
  act_Excluir.Enabled:= fdmt_Base.RecordCount > 0;
  act_Exportar.Enabled:= (fdmt_Base.RecordCount > 0) and (Self.Tag > 0);
  act_Exportar.Visible:= Self.Tag > 0;
end;

procedure TfrmBaseList.act_AlterarExecute(Sender: TObject);
begin
  if fdmt_Base.RecordCount <= 0 then
    exit;

  TLibrary.showForm(createdFormClass);
  list('');
end;

procedure TfrmBaseList.act_IncluirExecute(Sender: TObject);
begin
  TLibrary.showForm(createdFormClass);
  list('');
end;

procedure TfrmBaseList.lbe_PesquisaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN: begin
      if (Trim(TCustomEdit(Sender).Text) <> EmptyStr) then
        list(Trim(TCustomEdit(Sender).Text));
    end;
    38: begin
      fdmt_Base.Prior;
      Key:= 35;
    end;
    40: begin
      fdmt_Base.Next;
      Key:= 35;
    end;
  end;
end;

end.
