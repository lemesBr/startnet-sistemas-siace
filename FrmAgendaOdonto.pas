unit FrmAgendaOdonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  DBCtrls, CellEditors, Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, acPNG,
  ImgList, Menus, aDvGlowButton,FileCtrl, rxToolEdit, System.ImageList;

type
  TFAgendaOdonto = class(TForm)
    pgcAgenda: TPageControl;
    tabGrid: TTabSheet;
    TabEdit: TTabSheet;
    pnlNav: TPanel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    pnlPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
    Grid: TDBGrid;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    dsAgenda: TDataSource;
    Bevel1: TBevel;
    lblCliente: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    rgpTipoAgenda: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    cbxStatus: TDBComboBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    edtCliente: TDBLookupComboBox;
    edtDataAgenda: TDateEdit;
    Label1: TLabel;
    Label5: TLabel;
    cbxStatusAgenda: TComboBox;
    spbNomeCliente: TSpeedButton;
    spbResumoPaciente: TSpeedButton;
    tabResumoPaciente: TTabSheet;
    Panel1: TPanel;
    spbVoltar: TSpeedButton;
    pgcResumo: TPageControl;
    tabConsultas: TTabSheet;
    tabAnamnese: TTabSheet;
    tabProcedimentos: TTabSheet;
    tabImagens: TTabSheet;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    dsConsultas: TDataSource;
    sccAnamnese: TScrollBox;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    Label9: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    Label10: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    Label11: TLabel;
    Label12: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label13: TLabel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    DBRadioGroup4: TDBRadioGroup;
    Label15: TLabel;
    Bevel9: TBevel;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    DBRadioGroup5: TDBRadioGroup;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit6: TDBEdit;
    Bevel10: TBevel;
    Bevel11: TBevel;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    Label20: TLabel;
    Bevel12: TBevel;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    DBRadioGroup7: TDBRadioGroup;
    Label22: TLabel;
    DBRadioGroup8: TDBRadioGroup;
    Label23: TLabel;
    DBRadioGroup9: TDBRadioGroup;
    Label24: TLabel;
    Bevel13: TBevel;
    DBRadioGroup10: TDBRadioGroup;
    Label25: TLabel;
    DBRadioGroup11: TDBRadioGroup;
    Label26: TLabel;
    DBRadioGroup12: TDBRadioGroup;
    Label27: TLabel;
    Bevel14: TBevel;
    Label28: TLabel;
    DBRadioGroup13: TDBRadioGroup;
    DBComboBox2: TDBComboBox;
    Label29: TLabel;
    Bevel15: TBevel;
    DBComboBox3: TDBComboBox;
    Label30: TLabel;
    DBMemo2: TDBMemo;
    Label31: TLabel;
    Bevel16: TBevel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    Label32: TLabel;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBEdit9: TDBEdit;
    Label33: TLabel;
    Bevel17: TBevel;
    DBRadioGroup14: TDBRadioGroup;
    Label34: TLabel;
    DBEdit10: TDBEdit;
    Label35: TLabel;
    Panel2: TPanel;
    Bevel18: TBevel;
    dsAnamnese: TDataSource;
    Bevel19: TBevel;
    spbSalvarAnamnese: TSpeedButton;
    spbAlterarAnamnese: TSpeedButton;
    pnlProcedimentoEdit: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Bevel20: TBevel;
    Label36: TLabel;
    Bevel21: TBevel;
    Image1: TImage;
    DBEdit11: TDBEdit;
    Label37: TLabel;
    DBMemo3: TDBMemo;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    spbCancelarProcedimento: TSpeedButton;
    spbSalvarProcedimento: TSpeedButton;
    pnlProcedimentoGrid: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    GridProcedimento: TDBGrid;
    Panel4: TPanel;
    spbIncluirProcidimento: TSpeedButton;
    spbIncluirEvolucoes: TSpeedButton;
    dsProcedimento: TDataSource;
    img: TImageList;
    ppProcedimento: TPopupMenu;
    A1: TMenuItem;
    F1: TMenuItem;
    E1: TMenuItem;
    N1: TMenuItem;
    dsEvolucoes: TDataSource;
    pnlEvolucoesEdit: TPanel;
    DBMemo4: TDBMemo;
    Label41: TLabel;
    spbCancelaEvolucao: TSpeedButton;
    spbSalvaEvolucao: TSpeedButton;
    Bevel23: TBevel;
    DBEdit12: TDBEdit;
    Label42: TLabel;
    popEvolucoes: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    pnlImagensGrid: TPanel;
    Panel5: TPanel;
    spbIncluirImagens: TSpeedButton;
    DBGrid3: TDBGrid;
    dsImagens: TDataSource;
    pnlImagensEdit: TPanel;
    Bevel22: TBevel;
    spbCancelarImagens: TSpeedButton;
    spbSalvarImagens: TSpeedButton;
    DBEdit13: TDBEdit;
    Label43: TLabel;
    Bevel24: TBevel;
    DBImage1: TDBImage;
    FDvGlowButton2: TAdvGlowButton;
    FDvGlowButton3: TAdvGlowButton;
    OpenDialog1: TOpenDialog;
    popImagens: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N2: TMenuItem;
    E2: TMenuItem;
    procedure spbIncluirClick(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure rgpTipoAgendaClick(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tion(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spbNomeClienteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbVoltarClick(Sender: TObject);
    procedure spbResumoPacienteClick(Sender: TObject);
    procedure spbAlterarAnamneseClick(Sender: TObject);
    procedure spbSalvarAnamneseClick(Sender: TObject);
    procedure spbCancelarProcedimentoClick(Sender: TObject);
    procedure spbSalvarProcedimentoClick(Sender: TObject);
    procedure spbIncluirProcidimentoClick(Sender: TObject);
    procedure GridProcedimentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure E1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure spbCancelaEvolucaoClick(Sender: TObject);
    procedure spbSalvaEvolucaoClick(Sender: TObject);
    procedure spbIncluirEvolucoesClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure FDvGlowButton2Click(Sender: TObject);
    procedure FDvGlowButton3Click(Sender: TObject);
    procedure spbCancelarImagensClick(Sender: TObject);
    procedure spbSalvarImagensClick(Sender: TObject);
    procedure spbIncluirImagensClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function SalvaCampos(Tabela, Nome, Condicao,Field: String):Integer;
  end;

var
  FAgendaOdonto: TFAgendaOdonto;

implementation

uses uDMMovimentacao, ConsClientes, ModulodeDados, Principal;

{$R *.dfm}

procedure TFAgendaOdonto.spbIncluirClick(Sender: TObject);
begin
  dsAgenda.DataSet.Insert;
  rgpTipoAgenda.ItemIndex:= 0;
  pgcAgenda.ActivePage:= TabEdit;
end;

procedure TFAgendaOdonto.spbAlterarClick(Sender: TObject);
begin
  if not dsAgenda.DataSet.IsEmpty then
  begin
    if dsAgenda.DataSet.FieldByName('TIPO').AsString = 'Consulta' then
    begin
      lblCliente.Visible:= True;
      edtCliente.Visible:= True;
      cbxStatus.Items.Clear;
      cbxStatus.Items.Add('Agendada');
      cbxStatus.Items.Add('Confirmada');
      cbxStatus.Items.Add('Cancelada');
      cbxStatus.Items.Add('Finalizada');
      cbxStatus.Items.Add('Faltou');
    end
    else
    begin
      lblCliente.Visible:= False;
      edtCliente.Visible:= False;
      cbxStatus.Items.Clear;
      cbxStatus.Items.Add('Normal');
      cbxStatus.Items.Add('Particular');
      cbxStatus.Items.Add('Feriado');
    end;
    dsAgenda.DataSet.Edit;
    pgcAgenda.ActivePage:= TabEdit;
  end;
end;

procedure TFAgendaOdonto.spbExcluirClick(Sender: TObject);
begin
  try
    if not dsAgenda.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir?',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsAgenda.DataSet.Delete;
      end;
    end;
  except
    Application.MessageBox('Error!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFAgendaOdonto.spbCancelarClick(Sender: TObject);
begin
  pgcAgenda.ActivePage:= tabGrid;
  dsAgenda.DataSet.Cancel;
  dsAgenda.DataSet.Filtered:= False;
end;

procedure TFAgendaOdonto.spbSalvarClick(Sender: TObject);
begin
  if rgpTipoAgenda.ItemIndex = 0 then
  begin
    dsAgenda.DataSet.FieldByName('TITULO').AsString:='Consulta de '+ edtCliente.Text;
  end
  else
  begin
    dsAgenda.DataSet.FieldByName('TITULO').AsString:='Compromisso - '+
    cbxStatus.Text;
  end;
  dsAgenda.DataSet.FieldByName('ID_USUARIO').AsInteger:= SalvaCampos('USUARIOS',FormPrincipal.UserLogado,'USUARIO','CODIGO');

  dsAgenda.DataSet.Post;
  pgcAgenda.ActivePage:= tabGrid;
  dsAgenda.DataSet.Filtered:= False;
end;

procedure TFAgendaOdonto.rgpTipoAgendaClick(Sender: TObject);
begin
  if rgpTipoAgenda.ItemIndex = 0 then
  begin
    lblCliente.Visible:= True;
    edtCliente.Visible:= True;
    cbxStatus.Items.Clear;
    cbxStatus.Items.Add('Agendada');
    cbxStatus.Items.Add('Confirmada');
    cbxStatus.Items.Add('Cancelada');
    cbxStatus.Items.Add('Finalizada');
    cbxStatus.Items.Add('Faltou');
    cbxStatus.ItemIndex:= 0;
  end
  else
  begin
    lblCliente.Visible:= False;
    edtCliente.Visible:= False;
    cbxStatus.Items.Clear;
    cbxStatus.Items.Add('Normal');
    cbxStatus.Items.Add('Particular');
    cbxStatus.Items.Add('Feriado');
    cbxStatus.ItemIndex:= 0;
    dsAgenda.DataSet.FieldByName('ID_CLIENTE').Clear;
  end;
end;

procedure TFAgendaOdonto.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger:=
      DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFAgendaOdonto.tion(Sender: TObject;
  var Action: TCloseAction);
begin
  dsAgenda.DataSet.Close;
  Action := caFree;
  FAgendaOdonto := nil;
  end;

procedure TFAgendaOdonto.FormCreate(Sender: TObject);
begin
  dsAgenda.DataSet.OPen;
  pgcAgenda.ActivePage:= tabGrid;
end;

procedure TFAgendaOdonto.spbNomeClienteClick(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    dsAgenda.DataSet.Filter:= 'ID_CLIENTE = '+ IntToStr(
    DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
    dsAgenda.DataSet.Filtered:= True;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFAgendaOdonto.SpeedButton1Click(Sender: TObject);
var
  Comando: string;
begin
  if cbxStatusAgenda.Text = 'Todos' then
  begin
    Comando:= 'DATA = ' + QuotedStr(DateToStr(edtDataAgenda.Date));
    dsAgenda.DataSet.Filter:= Comando;
    dsAgenda.DataSet.Filtered:= True;
  end
  else
  begin
    Comando:= 'DATA = ' + QuotedStr(DateToStr(edtDataAgenda.Date)) +
    'AND STATUS = ' + QuotedStr(cbxStatusAgenda.Text);
    dsAgenda.DataSet.Filter:= Comando;
    dsAgenda.DataSet.Filtered:= True;
  end;
end;

function TFAgendaOdonto.SalvaCampos(Tabela, Nome, Condicao,
  Field: String): Integer;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT * FROM ' + Tabela + ' WHERE '+ Condicao + ' = ' +QuotedStr(Nome));
  qr.Open;
  Result:= qr.FieldByName(Field).AsInteger;
  qr.Destroy;
end;

procedure TFAgendaOdonto.spbVoltarClick(Sender: TObject);
begin
  dsConsultas.DataSet.Close;
  if dsAnamnese.DataSet.State in [dsedit,dsinsert] then
    dsAnamnese.DataSet.Cancel;
  dsAnamnese.DataSet.Close;
  sccAnamnese.Enabled:= False;
  spbAlterarAnamnese.Enabled:= True;
  spbSalvarAnamnese.Enabled:= False;
  if dsProcedimento.DataSet.State in [dsedit,dsinsert] then
  begin
    dsProcedimento.DataSet.Cancel;
    pnlProcedimentoGrid.BringToFront;
  end;
  dsProcedimento.DataSet.Close;
  if dsEvolucoes.DataSet.State in [dsedit,dsinsert] then
  begin
    dsEvolucoes.DataSet.Cancel;
    pnlProcedimentoGrid.BringToFront;
  end;
  dsEvolucoes.DataSet.Close;
  if dsImagens.DataSet.State in [dsedit,dsinsert] then
  begin
    dsImagens.DataSet.Cancel;
    pnlImagensGrid.BringToFront;
  end;
  dsImagens.DataSet.Close;
  pgcAgenda.ActivePage:= tabGrid;
end;

procedure TFAgendaOdonto.spbResumoPacienteClick(Sender: TObject);
begin
  if dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger <> null then
  begin
    TFDQuery(dsConsultas.DataSet).ParamByName('ID').AsInteger:=
    dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
    dsConsultas.DataSet.Open;
    TFDQuery(dsAnamnese.DataSet).ParamByName('ID').AsInteger:=
    dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
    dsAnamnese.DataSet.Open;
    TFDQuery(dsProcedimento.DataSet).ParamByName('ID').AsInteger:=
    dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
    dsProcedimento.DataSet.Open;
    dsEvolucoes.DataSet.Open;
    TFDQuery(dsImagens.DataSet).ParamByName('ID').AsInteger:=
    dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
    dsImagens.DataSet.Open;
    pgcAgenda.ActivePage:= tabResumoPaciente;
    pgcResumo.ActivePage:= tabConsultas;
    pnlProcedimentoGrid.BringToFront;
    pnlImagensGrid.BringToFront;
  end;
end;

procedure TFAgendaOdonto.spbAlterarAnamneseClick(Sender: TObject);
begin
  if dsAnamnese.DataSet.IsEmpty then
  begin
    dsAnamnese.DataSet.Insert;
    dsAnamnese.DataSet.FieldByName('ID_CLIENTE').AsInteger:=
    dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
    sccAnamnese.Enabled:= True;
    spbAlterarAnamnese.Enabled:= False;
    spbSalvarAnamnese.Enabled:= True;
  end
  else
  begin
    dsAnamnese.DataSet.edit;
    sccAnamnese.Enabled:= True;
    spbAlterarAnamnese.Enabled:= False;
    spbSalvarAnamnese.Enabled:= True;
  end;
end;

procedure TFAgendaOdonto.spbSalvarAnamneseClick(Sender: TObject);
begin
  dsAnamnese.DataSet.Post;
  sccAnamnese.Enabled:= False;
  spbAlterarAnamnese.Enabled:= True;
  spbSalvarAnamnese.Enabled:= False;
end;

procedure TFAgendaOdonto.spbCancelarProcedimentoClick(Sender: TObject);
begin
  dsProcedimento.DataSet.Cancel;
  pnlProcedimentoGrid.BringToFront;
end;

procedure TFAgendaOdonto.spbSalvarProcedimentoClick(Sender: TObject);
begin
  dsProcedimento.DataSet.FieldByName('ID_CLIENTE').asinteger:=
  dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
  if dsProcedimento.DataSet.State in [dsinsert] then
    dsProcedimento.DataSet.FieldByName('STATUS').asstring:= 'Andamento';
  dsProcedimento.DataSet.Post;
  pnlProcedimentoGrid.BringToFront;
end;

procedure TFAgendaOdonto.spbIncluirProcidimentoClick(Sender: TObject);
begin
  dsProcedimento.DataSet.Insert;
  pnlProcedimentoEdit.BringToFront;
end;

procedure TFAgendaOdonto.GridProcedimentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'STATUS' then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    if dsProcedimento.DataSet.FieldByName('STATUS').AsString = 'Finalizado' then
      img.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top +1,1)
    else
      img.Draw(TDBGrid(Sender).Canvas, Rect.Left + 1,Rect.Top +1,0);
  end;
end;

procedure TFAgendaOdonto.E1Click(Sender: TObject);
begin
  if not dsProcedimento.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Deseja realmente Excluir?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      dsProcedimento.DataSet.Delete;
    end;
  end;
end;

procedure TFAgendaOdonto.A1Click(Sender: TObject);
begin
  if not dsProcedimento.DataSet.IsEmpty then
  begin
    dsProcedimento.DataSet.Edit;
    pnlProcedimentoEdit.BringToFront;
  end;
end;

procedure TFAgendaOdonto.F1Click(Sender: TObject);
begin
  if not dsProcedimento.DataSet.IsEmpty then
  begin
    if dsProcedimento.DataSet.FieldByName('STATUS').asstring = 'Andamento' then
    begin
      dsProcedimento.DataSet.Edit;
      dsProcedimento.DataSet.FieldByName('STATUS').asstring:= 'Finalizado';
      dsProcedimento.DataSet.Post;
    end
    else
    if dsProcedimento.DataSet.FieldByName('STATUS').asstring = 'Finalizado' then
    begin
      dsProcedimento.DataSet.Edit;
      dsProcedimento.DataSet.FieldByName('STATUS').asstring:= 'Andamento';
      dsProcedimento.DataSet.Post;
    end;
  end;
end;

procedure TFAgendaOdonto.spbCancelaEvolucaoClick(Sender: TObject);
begin
  dsEvolucoes.DataSet.Cancel;
  pnlProcedimentoGrid.BringToFront;
end;

procedure TFAgendaOdonto.spbSalvaEvolucaoClick(Sender: TObject);
begin
  dsEvolucoes.DataSet.Post;
  pnlProcedimentoGrid.BringToFront;
end;

procedure TFAgendaOdonto.spbIncluirEvolucoesClick(Sender: TObject);
begin
  if not dsProcedimento.DataSet.IsEmpty then
  begin
    dsEvolucoes.DataSet.Insert;
    pnlEvolucoesEdit.BringToFront;
  end;
end;

procedure TFAgendaOdonto.MenuItem2Click(Sender: TObject);
begin
  if not dsEvolucoes.DataSet.IsEmpty then
  begin
    dsEvolucoes.DataSet.Edit;
    pnlEvolucoesEdit.BringToFront;
  end;
end;

procedure TFAgendaOdonto.MenuItem1Click(Sender: TObject);
begin
  if not dsEvolucoes.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Deseja realmente Excluir?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      dsEvolucoes.DataSet.Delete;
    end;
  end;
end;

procedure TFAgendaOdonto.FDvGlowButton2Click(Sender: TObject);
var
  S: TStream;
  MS: TMemoryStream;
  selDir: string;
  Char: PAnsiChar;
begin
  try
    MS := TMemoryStream.Create;
    if OpenDialog1.Execute then // Localizar imagem
    try
      S := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
      try
        S.Position := 0;
        MS.LoadFromStream(S);
        MS.Seek(0, soFromBeginning);
        if (MS.Size = 0) then
          Exit;

        TBlobField(dsImagens.DataSet.FieldByName('IMAGEM')).LoadFromStream(MS);
      finally
        S.Free;
      //  qrClientes_Document.ApplyUpdates(0);
      end;
    finally
      MS.Free;
    end;
  except
    ShowMessage('ERROR: Imagem não suportada!');
  end;
end;

procedure TFAgendaOdonto.FDvGlowButton3Click(Sender: TObject);
begin
  dsImagens.DataSet.FieldByName('IMAGEM').Clear;
end;

procedure TFAgendaOdonto.spbCancelarImagensClick(Sender: TObject);
begin
  dsImagens.DataSet.Cancel;
  pnlImagensGrid.BringToFront;
end;

procedure TFAgendaOdonto.spbSalvarImagensClick(Sender: TObject);
begin
  dsImagens.DataSet.FieldByName('ID_CLIENTE').asinteger:=
  dsAgenda.DataSet.FieldByName('ID_CLIENTE').AsInteger;
  dsImagens.DataSet.post;
  pnlImagensGrid.BringToFront;
end;

procedure TFAgendaOdonto.spbIncluirImagensClick(Sender: TObject);
begin
  dsImagens.DataSet.insert;
  pnlImagensEdit.BringToFront;
end;

procedure TFAgendaOdonto.MenuItem3Click(Sender: TObject);
begin
  if not dsImagens.DataSet.IsEmpty then
  begin
    if Application.MESSAGEBOX('Deseja realmente Excluir?',
         'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      dsImagens.DataSet.Delete;
    end;
  end;
end;

procedure TFAgendaOdonto.MenuItem4Click(Sender: TObject);
begin
  if not dsImagens.DataSet.IsEmpty then
  begin
    dsImagens.DataSet.Edit;
    pnlImagensEdit.BringToFront;
  end;
end;

procedure TFAgendaOdonto.E2Click(Sender: TObject);
var
  selDir: string;
begin
  if not dsImagens.DataSet.IsEmpty then
  begin
    if SelectDirectory('Selecione uma pasta', 'C:\', selDir) then
    begin
      TBlobField( dsImagens.DataSet.FieldByName('IMAGEM')).SaveToFile(selDir +'\'+
                dsImagens.DataSet.FieldByName('NOME').AsString+'.JPG');
      Application.MessageBox('Sua imagem foi exportada com sucesso.','Exportação completa',MB_ICONINFORMATION);
    end;
  end;
end;

end.
