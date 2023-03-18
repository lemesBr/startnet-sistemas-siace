unit fEntraHospede;

interface

uses
  Windows, Messages, FListApartamento, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Buttons, Spin, Mask,
  ComCtrls, ExtCtrls, Menus, aDvGlowButton, ImgList, acAlphaImageList, SHELLAPI,
  System.ImageList, RxToolEdit, RxCurrEdit;

type
  TF_EntraHospede = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    CadastraNovoHospede1: TMenuItem;
    N1: TMenuItem;
    SobreSistema1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Grupo1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdApartamento: TEdit;
    EdCodApartamento: TComboEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Grupo2: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdHospede: TEdit;
    EdCodHospede: TComboEdit;
    EdQtdAdultos: TRxCalcEdit;
    EdQtdCriancas: TRxCalcEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdData1: TDateEdit;
    EdPrevisao: TDateEdit;
    EdHora: TDateTimePicker;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdQtdPagantes: TRxCalcEdit;
    EdQtdExtra: TRxCalcEdit;
    EdVlrExtra: TRxCalcEdit;
    EdTotalExtra: TRxCalcEdit;
    EdQtdNormal: TRxCalcEdit;
    EdVlrNormal: TRxCalcEdit;
    EdTotalNormal: TRxCalcEdit;
    EdTotalGeral: TRxCalcEdit;
    EdDescAcresc: TRxCalcEdit;
    EdSubTotal: TRxCalcEdit;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    TabSheet3: TTabSheet;
    Memo2: TMemo;
    Bevel1: TBevel;
    ImageList3: TsAlphaImageList;
    BtGravar: TAdvGlowButton;
    BtCancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdCodHospedeExit(Sender: TObject);
    procedure EdCodHospedeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodHospedeButtonClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtFecharClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure EdQtdPagantesExit(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure CadastraNovoHospede1Click(Sender: TObject);
    procedure SobreSistema1Click(Sender: TObject);
    procedure EdPrevisaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_EntraHospede: TF_EntraHospede;
  Botao: string;

implementation

uses
  ModulodeDados, ModuleDados1, ConsClientes, clientes, Configuracoes,
  FrmCadastroSNRHOS;

{$R *.dfm}

procedure Normal;
begin
  with F_EntraHospede do
  begin
    EdCodApartamento.Text := '';
    EdApartamento.Text := '';
    EdCodHospede.Text := '';
    EdHospede.Text := '';
    EdQtdAdultos.Value := 0;
    EdQtdCriancas.Value := 0;
    EdQtdPagantes.Value := 0;
    EdQtdNormal.Value := 0;
    EdVlrNormal.Value := 0;
    EdTotalNormal.Value := 0;
    EdQtdExtra.Value := 0;
    EdVlrExtra.Value := 0;
    EdTotalExtra.Value := 0;
    EdSubTotal.Value := 0;
    EdDescAcresc.Value := 0;
    EdTotalGeral.Value := 0;
    EdData1.Date := Date;
    EdHora.Time := Time;
    EdPrevisao.Text := '  /  /    ';
    EdCodHospede.SetFocus;
  end;
end;

function Validacao: Boolean;
begin
  Result := False;

  //===========================================//
  // Verifica se o Cód do Hospede foi preenchido
  if F_EntraHospede.EdCodHospede.Text = '' then
  begin
    MessageDlg('O Campo Hospede não pode ficar em branco.', MtInformation, [MbOk], 0);
    F_EntraHospede.EdCodHospede.SetFocus;
    Exit;
  end;

  //===========================================//
  // Verifica se a Previsão foi preenchida
  if F_EntraHospede.EdPrevisao.Text = '  /  /    ' then
  begin
    MessageDlg('A Previsão de Saída não pode ficar em branco.', MtInformation, [MbOk], 0);
    F_EntraHospede.EdPrevisao.SetFocus;
    Exit;
  end;

  //===========================================//
  // Verifica se o Qtd. Pagantes foi preenchido
  if F_EntraHospede.EdQtdPagantes.Value <= 0 then
  begin
    MessageDlg('O Campo Qtd. Pagantes não pode ser igual ou menor que Zero.', MtInformation, [MbOk], 0);
    F_EntraHospede.EdQtdPagantes.SetFocus;
    Exit;
  end;

  //===========================================//
  // Verifica se a Data foi preenchido
  if F_EntraHospede.EdData1.Text = '  /  /    ' then
  begin
    MessageDlg('A Data da Entrada não pode ficar em branco.', MtInformation, [MbOk], 0);
    F_EntraHospede.EdData1.SetFocus;
    Exit;
  end;

  Result := True;
end;

procedure TF_EntraHospede.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Botao <> 'G' then
    DM.IBTransaction.Rollback;
  Release;
end;

procedure TF_EntraHospede.FormDestroy(Sender: TObject);
begin
  F_EntraHospede := Nil;
end;

procedure TF_EntraHospede.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    Key := Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TF_EntraHospede.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := #0;

  if Key = #27 then
    Close;
end;

procedure TF_EntraHospede.FormShow(Sender: TObject);
begin
  if Situacao = 'LIVRE' then
  begin
    Normal;
    Edit1.Text := '000000';
    EdCodApartamento.Text := CodApartamento;
    EdApartamento.Text := Apartamento;
  end
  else if Situacao = 'OCUPADO' then
  begin
    DM1.Qry0.Close;
    DM1.Qry0.SQL.Clear;
    DM1.Qry0.SQL.Add(' Select * From EntraHospede, Clientes  ');
    DM1.Qry0.SQL.Add(' Where   ');
    DM1.Qry0.SQL.Add(' ENT_CodHospede = Codigo And  ');
    DM1.Qry0.SQL.Add(' ENT_CodEntrada =:P00                 ');
    DM1.Qry0.Params[00].AsString := CodEntrada;
    DM1.Qry0.Open;

    EdCodApartamento.Text := DM1.Qry0.FieldByName('ENT_CodApartamento').AsString;
    EdApartamento.Text := Apartamento;
    EdCodHospede.Text := DM1.Qry0.FieldByName('Codigo').AsString;
    EdHospede.Text := DM1.Qry0.FieldByName('NOME_RS').AsString;
    EdQtdAdultos.Value := DM1.Qry0.FieldByName('ENT_QtdAdultos').AsInteger;
    EdQtdCriancas.Value := DM1.Qry0.FieldByName('ENT_QtdCriancas').AsInteger;
    EdQtdPagantes.Value := DM1.Qry0.FieldByName('ENT_QtdPagantes').AsInteger;
    EdQtdNormal.Value := DM1.Qry0.FieldByName('ENT_QtdNormal').AsInteger;
    EdVlrNormal.Value := DM1.Qry0.FieldByName('ENT_VlrNormal').AsFloat;
    //EdTotalNormal.Value   := DM1.Qry0.FieldByName('ENT_TotalNormal').AsFloat;
    EdQtdExtra.Value := DM1.Qry0.FieldByName('ENT_QtdExtra').AsInteger;
    EdVlrExtra.Value := DM1.Qry0.FieldByName('ENT_VlrExtra').AsFloat;
    //EdTotalExtra.Value    := DM1.Qry0.FieldByName('ENT_TotalExtra' ).AsFloat;
    EdSubTotal.Value := DM1.Qry0.FieldByName('ENT_SubTotal').AsFloat;
    EdDescAcresc.Value := DM1.Qry0.FieldByName('ENT_DescAcresc').AsFloat;
    EdTotalGeral.Value := DM1.Qry0.FieldByName('ENT_ValorDiaria').AsFloat;
    EdData1.Date := DM1.Qry0.FieldByName('ENT_DataEntrada').AsDateTime;
    EdHora.Time := DM1.Qry0.FieldByName('ENT_HoraEntrada').AsDateTime;
    EdPrevisao.Text := DM1.Qry0.FieldByName('ENT_Previsao').AsString;
    Edit1.Text := CodEntrada;
    EdCodHospede.SetFocus;
  end
  else
    Close;
end;

procedure TF_EntraHospede.EdCodHospedeExit(Sender: TObject);
begin
  if EdCodHospede.Text = '' then
  begin
    EdHospede.Text := '';
    Exit;
  end;
  //===========================================//
  // PROCURA POR Hospede DE ACORDO COM CÓDIGO
//  EdCodHospede.Text := EdCodHospede.Text;

{  DM1.Hospede.Close;
  DM1.Hospede.SQL.Clear;
  DM1.Hospede.SQL.Add('SELECT * FROM clientes      ' +
                      'WHERE Codigo = :P00');
  DM1.Hospede.Params[00].AsInteger:=StrToInt(EdCodHospede.Text);
  DM1.Hospede.Open;  }

  DM.SDS_Clientes.Active := False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.SQL.Add('select * from clientes where codigo =' + EdCodHospede.Text + 'order by NOME_RS ASC');
  DM.SDS_Clientes.Active := True;

  if DM.SDS_Clientes.IsEmpty then
  begin
    MessageDlg('O Código não foi encontrado.', MtInformation, [MbOk], 0);
    EdCodHospede.SetFocus;
    Exit;
  end
  else
  begin
    EdHospede.Text := DM.SDS_ClientesNOME_RS.Text;
  end;
 // DM1.Hospede.Close;
end;

procedure TF_EntraHospede.EdCodHospedeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_F2 then
    EdCodHospede.OnDblClick(Sender);
end;

procedure TF_EntraHospede.EdCodHospedeButtonClick(Sender: TObject);
begin
  //============================================
  //PROCURA POR Categoria
  DM.SDS_Clientes.Active := False;
  dm.SDS_Clientes.SQL.Clear;
  DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <' + '-1' + 'order by NOME_RS ASC');
  DM.SDS_Clientes.Active := True;

  if formconsclientes = Nil then
    Application.CreateForm(Tformconsclientes, formconsclientes);
  formconsclientes.BitBtn2.Enabled := False;
  formconsclientes.ShowModal;

  EdCodHospede.Text := DM.SDS_ClientesCODIGO.text;
  EdHospede.Text := DM.SDS_ClientesNOME_RS.Text;

  if EdCodHospede.Text <> '' then
    EdCodHospede.OnExit(Sender);
end;

procedure TF_EntraHospede.BtCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_EntraHospede.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_EntraHospede.BtGravarClick(Sender: TObject);
begin
  if Validacao = False then
    Exit;

  try
    if Situacao = 'LIVRE' then
    begin
      if DM.IBTransaction.Active then
        DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;

      //============================================
      //Insere os dados da Entrada
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('INSERT INTO EntraHospede              ' + '(ENT_CodApartamento, ENT_CodHospede,  ' + ' ENT_DataEntrada   , ENT_HoraEntrada, ' + ' ENT_QTDAdultos    , ENT_QtdCriancas, ' + ' ENT_QtdPagantes   , ENT_ValorDiaria, ' + ' ENT_QtdNormal     , ENT_VlrNormal  , ' + ' ENT_QtdExtra      , ENT_VlrExtra   , ' + ' ENT_SubTotal      , ENT_DescAcresc , ' + ' ENT_Previsao                       , ' + ' ENT_CodEntrada                      )' + 'VALUES                                ' + '(:P00, :P01, :P02, :P03, :P04, :P05,  ' + ' :P06, :P07, :P08, :P09, :P10, :P11,  ' + ' :P12, :P13, :P14, :P15 )   ');
      DM1.IBS1.Params[00].AsString := CodApartamento;
      DM1.IBS1.Params[01].AsString := EdCodHospede.Text;
      DM1.IBS1.Params[02].AsDate := EdData1.Date;
      DM1.IBS1.Params[03].AsTime := EdHora.Time;
      DM1.IBS1.Params[04].AsString := EdQtdAdultos.Text;
      DM1.IBS1.Params[05].AsString := EdQtdCriancas.Text;
      DM1.IBS1.Params[06].AsString := EdQtdPagantes.Text;
      DM1.IBS1.Params[07].AsFloat := EdTotalGeral.Value;
      DM1.IBS1.Params[08].AsFloat := EdQtdNormal.Value;
      DM1.IBS1.Params[09].AsFloat := EdVlrNormal.Value;
      DM1.IBS1.Params[10].AsFloat := EdQtdExtra.Value;
      DM1.IBS1.Params[11].AsFloat := EdVlrExtra.Value;
      DM1.IBS1.Params[12].AsFloat := EdSubTotal.Value;
      DM1.IBS1.Params[13].AsFloat := EdDescAcresc.Value;
      DM1.IBS1.Params[14].AsString := EdPrevisao.Text;

      DM1.SP1.StoredProcName := 'SP_GeraCodEntrada';
      DM1.SP1.ExecProc;
      DM1.SP1.ParamByName('CodEntrada').AsInteger;

      Edit1.Text := RetZero(IntToStr(DM1.SP1.ParamByName('CodEntrada').AsInteger), 6);
      DM1.IBS1.Params[15].AsString := Edit1.Text;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;

      if DM.IBTransaction.Active then
        DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      //============================================
      //Atualiza Apartamento
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE Apartamento        ' + 'SET                       ' + 'APA_Situacao   =:P00,     ' + 'APA_CodEntrada =:P01      ' + 'WHERE                     ' + 'APA_CodApartamento = :P02 ');
      DM1.IBS1.Params[00].AsString := 'OCUPADO';
      DM1.IBS1.Params[01].AsString := Edit1.Text;
      DM1.IBS1.Params[02].AsString := CodApartamento;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;
      Close;
    end
    else
    begin

      if DM.IBTransaction.Active then
        DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      //============================================
      //Atualiza os dados da Entrada
      DM1.IBS1.Close;
      DM1.IBS1.SQL.Clear;
      DM1.IBS1.SQL.Add('UPDATE EntraHospede              ' + 'SET                              ' + ' ENT_CodApartamento =:P00, ENT_CodHospede  =:P01, ' + ' ENT_DataEntrada    =:P02, ENT_HoraEntrada =:P03, ' + ' ENT_QTDAdultos     =:P04, ENT_QtdCriancas =:P05, ' + ' ENT_QtdPagantes    =:P06, ENT_ValorDiaria =:P07, ' + ' ENT_QtdNormal      =:P08, ENT_VlrNormal   =:P09, ' + ' ENT_QtdExtra       =:P10, ENT_VlrExtra    =:P11, ' + ' ENT_SubTotal       =:P12, ENT_DescAcresc  =:P13, ' + ' ENT_Previsao       =:P14                         ' + 'WHERE                 ' + ' ENT_CodEntrada =:P15 ');
      DM1.IBS1.Params[00].AsString := CodApartamento;
      DM1.IBS1.Params[01].AsString := EdCodHospede.Text;
      DM1.IBS1.Params[02].AsDate := EdData1.Date;
      DM1.IBS1.Params[03].AsTime := EdHora.Time;
      DM1.IBS1.Params[04].AsString := EdQtdAdultos.Text;
      DM1.IBS1.Params[05].AsString := EdQtdCriancas.Text;
      DM1.IBS1.Params[06].AsString := EdQtdPagantes.Text;
      DM1.IBS1.Params[07].AsFloat := EdTotalGeral.Value;
      DM1.IBS1.Params[08].AsFloat := EdQtdNormal.Value;
      DM1.IBS1.Params[09].AsFloat := EdVlrNormal.Value;
      DM1.IBS1.Params[10].AsFloat := EdQtdExtra.Value;
      DM1.IBS1.Params[11].AsFloat := EdVlrExtra.Value;
      DM1.IBS1.Params[12].AsFloat := EdSubTotal.Value;
      DM1.IBS1.Params[13].AsFloat := EdDescAcresc.Value;
      DM1.IBS1.Params[14].AsString := EdPrevisao.Text;
      DM1.IBS1.Params[15].AsString := Edit1.Text;
      DM1.IBS1.ExecSQL;
      DM.IBTransaction.CommitRetaining;
      Botao := 'G';
      Close;
    end;

    if Application.MESSAGEBOX('Deseja enviar Checkin para snrhos hospedagem turismo?',
    'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      { FCadastroSNRHOS:= TFCadastroSNRHOS.Create(nil);
        FCadastroSNRHOS.ShowModal; }

        ShellExecute(Handle,'open','C:\Siace\SiaceHotelUp.exe',nil,nil,SW_NORMAL);

      //  FreeAndNil(FCadastroSNRHOS);

    end;
  except
    MessageDlg('Tabela em uso exclusivo no momento.', Mterror, [MbOk], 0);
    DM.IBTransaction.RollbackRetaining;
    Close;
  end;
end;

procedure TF_EntraHospede.EdQtdPagantesExit(Sender: TObject);
begin
  EdQtdNormal.Value := 0;
  EdVlrNormal.Value := 0;
  EdTotalNormal.Value := 0;
  EdQtdExtra.Value := 0;
  EdVlrExtra.Value := 0;
  EdTotalExtra.Value := 0;

 // DM1.Conf.Open;

  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add(' Select * From Apartamento, Categoria      ');
  DM1.Qry0.SQL.Add(' Where APA_CodCategoria = CAT_CodCategoria ');
  DM1.Qry0.SQL.Add(' And APA_CodApartamento =:P00 ');
  DM1.Qry0.Params[00].AsString := CodApartamento;
  DM1.Qry0.Open;

  if EdQtdPagantes.Value = 1 {DM1.Qry0.FieldByName('CAT_AtePessoas').AsInteger} then
  begin
    EdQtdNormal.Value := 1;
    EdVlrNormal.Value := DM1.Qry0.FieldByName('CAT_ValorDiaria1').AsFloat;
    EdTotalNormal.Value := EdVlrNormal.Value;
  end
  else if EdQtdPagantes.Value = 2 {DM1.Qry0.FieldByName('CAT_AtePessoas').AsInteger} then
  begin
    EdQtdNormal.Value := 1;
    EdVlrNormal.Value := DM1.Qry0.FieldByName('CAT_ValorDiaria2').AsFloat;
    EdTotalNormal.Value := EdVlrNormal.Value;
  end
  else if EdQtdPagantes.Value = 3 {DM1.Qry0.FieldByName('CAT_AtePessoas').AsInteger} then
  begin
    EdQtdNormal.Value := 1;
    EdVlrNormal.Value := DM1.Qry0.FieldByName('CAT_ValorDiaria3').AsFloat;
    EdTotalNormal.Value := EdVlrNormal.Value;
  end
  else if EdQtdPagantes.Value = 4 {DM1.Qry0.FieldByName('CAT_AtePessoas').AsInteger} then
  begin
    EdQtdNormal.Value := 1;
    EdVlrNormal.Value := DM1.Qry0.FieldByName('CAT_ValorDiaria4').AsFloat;
    EdTotalNormal.Value := EdVlrNormal.Value;
  end
  else if EdQtdPagantes.Value > DM1.Qry0.FieldByName('CAT_AtePessoas').AsInteger then
  begin
    EdQtdNormal.Value := 1;
    EdVlrNormal.Value := DM1.Qry0.FieldByName('CAT_ValorDiaria4').AsFloat;
    EdTotalNormal.Value := EdVlrNormal.Value;

    if DM.SDS_CONFIGURACOESCON_CCEXTRA.Value = 'SIM' then
    begin
      EdQtdExtra.Value := EdQtdPagantes.Value - DM1.Qry0.FieldByName('CAT_AtePessoas').AsInteger;
      EdVlrExtra.Text := DM.SDS_CONFIGURACOESCON_VALORCEXTRA.text;
      EdTotalExtra.Value := EdQtdExtra.Value * EdVlrExtra.Value;
    end
    else
    begin
      EdQtdExtra.Value := 0;
      EdVlrExtra.Value := 0;
      EdTotalExtra.Value := 0;
    end;
  end;

  EdSubTotal.Value := EdTotalNormal.Value + EdTotalExtra.Value;
  EdTotalGeral.Value := EdSubTotal.Value + EdDescAcresc.Value;

end;

procedure TF_EntraHospede.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TF_EntraHospede.CadastraNovoHospede1Click(Sender: TObject);
begin
  if FormClientes = Nil then
    Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
end;

procedure TF_EntraHospede.SobreSistema1Click(Sender: TObject);
begin
  if FormConfiguracoes = Nil then
    Application.CreateForm(TFormConfiguracoes, FormConfiguracoes);
  FormConfiguracoes.ShowModal;
end;

procedure TF_EntraHospede.EdPrevisaoExit(Sender: TObject);
begin
  if EdPrevisao.Date < EdData1.Date then
  begin
    ShowMessage('Data da Previsão de saida deve ser maior que a de Entrada');
    EdPrevisao.SetFocus;
  end;
  BtGravar.SetFocus;
end;

end.

