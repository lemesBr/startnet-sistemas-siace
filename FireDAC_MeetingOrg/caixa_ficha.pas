unit caixa_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TFlatPanelUnit, Mask,
  DBCtrls, DB, Menus, aDvGlowButton, RzEdit, RzDBEdit, rxToolEdit, rxCurrEdit,
  Mylabel, frxClass, frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmcaixa_ficha = class(TForm)
    Label5: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label6: TLabel;
    blocconta: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    dscaixa_mov: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Panel1: TPanel;
    Bevel5: TBevel;
    DBEdit1: TEdit;
    econta: TEdit;
    plano_desc: TEdit;
    myLabel3d1: TmyLabel3d;
    ed_valor: TCurrencyEdit;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    CheckBox1: TCheckBox;
    frxReport: TfrxReport;
    qrRel: TfrxDBDataset;
    qrRelLanc: TFDQuery;
    qrRelLancCODIGO: TIntegerField;
    qrRelLancPERIDO: TDateField;
    qrRelLancTIPO: TStringField;
    qrRelLancNOME_PLANO: TStringField;
    qrRelLancHISTORICO: TStringField;
    qrRelLancVALOR: TBCDField;
    qrRelLancLOGO: TBlobField;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure econtaEnter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure ed_valorKeyPress(Sender: TObject; var Key: Char);
    procedure ed_valorExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_ficha: Tfrmcaixa_ficha;
  entrada_original, saida_original : real; // variaveis para pegar o valor da ent e saida, caso o
                                           // lancamento esteja sendo alterado.

implementation

uses caixa, principal, ConsPlanoContas, ModulodeDados;

{$R *.dfm}

procedure Tfrmcaixa_ficha.bcancelarClick(Sender: TObject);
begin
 // FRMCAIXA.QRCAIXA_MOV.CANCEL;
  CLOSE;
end;

procedure Tfrmcaixa_ficha.bgravarClick(Sender: TObject);
var
  VALOR : Double;
  ID_MOVIMENTO: Integer;
begin

 VALOR := ed_valor.value;

  IF ed_valor.value = 0 THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Valor informar um valor válido!','Atenção',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  END;



  IF RADIOBUTTON1.Checked THEN
  BEGIN
        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
    try
      with frmcaixa.InsItem do
         begin
            close;
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
            DM.ProxCod.Open;

            ID_MOVIMENTO:= DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('codigo').AsInteger           := ID_MOVIMENTO;
            parambyname('data').AsDATETIME            := DateEdit1.Date;
            Parambyname('historico').AsString         := DBedit1.text;
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.fieldbyname('codigo').asstring;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring;
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := ed_valor.value;
            Parambyname('VALOR_SAIDA').AsCurrency     := 0;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := DM.SDS_EmpresaCODIGO.AsInteger;
            Parambyname('HORA').Value                 := null;
            Parambyname('DB_CR').AssTRING             := 'C';
            Parambyname('VALOR').AsCurrency           := ed_valor.value;
            Parambyname('TIPO_MOV').AsInteger         := 1;
            if CheckBox1.Checked = True then
             Parambyname('SALDO_INICIAL').AsInteger    := 1
            else
             Parambyname('SALDO_INICIAL').AsInteger    := 0;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
     formprincipal.log(codigo_usuario,'CAIXA',IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1),'INCLUIU',DBEdit1.Text);

    if frmcaixa.Tag = 1 then
    begin
        IF DM.SDS_UsuariosCODIGO.ASINTEGER <> 99 then
        BEGIN
         if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
     try
      with frmcaixa.InsItem do
         begin
            close;
             dm.ProxCod.Close;
             dm.ProxCod.SQL.Clear;
             dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
             DM.ProxCod.Open;
            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := 'Transferncia do Caixa nº '+ DM.SDS_UsuariosCODIGO.Text +'-' + FormPrincipal.UserLogado;
            parambyname('COD_USUARIO').AssTRING       := '99';
            Parambyname('usuario').AssTRING           := 'CAIXA';
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := 0;
            Parambyname('VALOR_SAIDA').AsCurrency     := ed_valor.value;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := iEmp;
            Parambyname('HORA').AsDATETIME            := TIME;
            Parambyname('DB_CR').AssTRING             := 'D';
            Parambyname('VALOR').AsCurrency           := ed_valor.value * (-1);
            Parambyname('TIPO_MOV').AsInteger         := 1;
            Parambyname('SALDO_INICIAL').AsInteger    := 0;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
    end;
    formprincipal.log(codigo_usuario,'CAIXA',IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1),'INCLUIU',DBEdit1.Text);
   end;


   { frmcaixa.RENTRADA.Value := frmcaixa.RENTRADA.Value + frmcaixa.qrcaixa_mov1.fieldbyname('valor_entrada').asfloat-entrada_original;
    frmcaixa.Rsaida.Value := frmcaixa.Rsaida.Value + frmcaixa.qrcaixa_mov1.fieldbyname('valor_saida').asfloat-saida_original;
    frmcaixa.RSALDO.value := frmcaixa.RENTRADA.value - frmcaixa.RSAIDA.value; }

   end;

  IF RADIOBUTTON2.Checked THEN
  BEGIN
        if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
    try
      with frmcaixa.InsItem do
         begin
            close;
            dm.ProxCod.Close;
            dm.ProxCod.SQL.Clear;
            dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
            DM.ProxCod.Open;

            ID_MOVIMENTO:= DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('codigo').AsInteger           := ID_MOVIMENTO;
            parambyname('data').AsDATETIME            := DateEdit1.Date;
            Parambyname('historico').AsString         := DBedit1.text;
            parambyname('COD_USUARIO').AssTRING       := DM.SDS_USUARIOS.fieldbyname('codigo').asstring;
            Parambyname('usuario').AssTRING           := DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring;
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := 0;
            Parambyname('VALOR_SAIDA').AsCurrency     := ed_valor.value;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := DM.SDS_EmpresaCODIGO.AsInteger;
            Parambyname('HORA').Value                 := null;
            Parambyname('DB_CR').AssTRING             := 'C';
            Parambyname('VALOR').AsCurrency           := ed_valor.value;
            Parambyname('TIPO_MOV').AsInteger         := 2;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
     formprincipal.log(codigo_usuario,'CAIXA',IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1),'INCLUIU',DBEdit1.Text);

    if frmcaixa.Tag = 1 then
    begin
        IF DM.SDS_UsuariosCODIGO.ASINTEGER <> 99 then
        BEGIN
         if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
        dm.IBTransaction.StartTransaction;
     try
      with frmcaixa.InsItem do
         begin
            close;
             dm.ProxCod.Close;
             dm.ProxCod.SQL.Clear;
             dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
             DM.ProxCod.Open;
            parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            parambyname('data').AsDATETIME            := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
            Parambyname('historico').AsString         := 'Transferncia do Caixa nº '+ DM.SDS_UsuariosCODIGO.Text +'-' + FormPrincipal.UserLogado;
            parambyname('COD_USUARIO').AssTRING       := '99';
            Parambyname('usuario').AssTRING           := 'CAIXA';
            Parambyname('TIPO').AssTRING              := 'C';
            Parambyname('VALOR_ENTRADA').AsCurrency   := ed_valor.value;
            Parambyname('VALOR_SAIDA').AsCurrency     := 0;
            Parambyname('CODIGO_CC').VALUE            := null;
            parambyname('NUMERO_CC').VALUE            := NULL;
            parambyname('CODIGO_VENDA').vALUE         := null;
            Parambyname('ORIGEM').AssTRING            := 'AVU';
            parambyname('COD_CREDIARIO').Value        := null;
            Parambyname('COD_COMPRA').Value           := null;
            Parambyname('N_CHEQUE').Value             := null;
            DM.SDS_CONFIGURACOES.open;
            Parambyname('COD_PLANO').AsString         := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
            Parambyname('PRE_DATADO').Value           := null;
            Parambyname('NOMINAL').Value              := null;
            parambyname('COMPENSADO').VALUE           := NULL;
            parambyname('COD_CHEQUE').Value           := null;
            Parambyname('COD_CONTAS_PAGAR').Value     := null;
            parambyname('DOC_LAN').Value              := null;
            Parambyname('CONCILIADO').Value           := null;
            Parambyname('COD_DOC').Value              := null;
            Parambyname('DOCUMENTO_LANC').Value       := null;
            Parambyname('COD_EMPRESA').AsInteger      := iEmp;
            Parambyname('HORA').AsDATETIME            := TIME;
            Parambyname('DB_CR').AssTRING             := 'D';
            Parambyname('VALOR').AsCurrency           := ed_valor.value * (-1);
            Parambyname('TIPO_MOV').AsInteger         := 2;
            ExecSQL;
         end;
      dm.IBTransaction.CommitRetaining;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o Lançamento de Caixa, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
    end;
    formprincipal.log(codigo_usuario,'CAIXA',IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1),'INCLUIU',DBEdit1.Text);
   end;
   end;
   
 { IF RADIOBUTTON1.Checked THEN
  BEGIN
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('VALOR_ENTRADA').ASFLOAT := ed_valor.value;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('VALOR_SAIDA').ASFLOAT := 0;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('TIPO_MOV').ASINTEGER := 1;
    frmcaixa.RENTRADA.Value := frmcaixa.RENTRADA.Value + frmcaixa.qrcaixa_mov.fieldbyname('valor_entrada').asfloat-entrada_original;
    frmcaixa.Rsaida.Value := frmcaixa.Rsaida.Value + frmcaixa.qrcaixa_mov.fieldbyname('valor_saida').asfloat-saida_original;
    frmcaixa.RSALDO.value := frmcaixa.RENTRADA.value - frmcaixa.RSAIDA.value;

    FRMCAIXA.QRCAIXA_MOV.POST;
    FRMCAIXA.QRCAIXA_MOV.ApplyUpdates(0);

        if frmcaixa.Tag = 1 then
        begin
        IF DM.SDS_UsuariosCODIGO.ASINTEGER <> 99 then
        BEGIN
         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
         DM.ProxCod.Open;

           frmcaixa.qrcaixa_mov.OPEN;
           frmcaixa.qrcaixa_mov.insert;
           frmcaixa.qrcaixa_mov.FieldByName('codigo').asiNTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
           frmcaixa.qrcaixa_mov.fieldbyname('cod_usuario').asstring := '99';
           frmcaixa.qrcaixa_mov.fieldbyname('usuario').asstring := 'CAIXA';
           frmcaixa.qrcaixa_mov.fieldbyname('data').asstring := DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASSTRING;
           frmcaixa.qrcaixa_mov.fieldbyname('valor_saida').asfloat := VALOR;
           frmcaixa.qrcaixa_mov.fieldbyname('Valor_entrada').asfloat := 0;
           frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat := VALOR * (-1);
           DM.SDS_CONFIGURACOES.open;
           frmcaixa.qrcaixa_mov.fieldbyname('cod_plano').asstring := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
           frmcaixa.qrcaixa_mov.fieldbyname('tipo_mov').asINTEGER := 1;
           frmcaixa.qrcaixa_mov.FieldByName('Tipo').AsString  := 'C';
           frmcaixa.qrcaixa_mov.FieldByName('ORIGEM').AsString  := 'AVU';
           frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring := 'Transferncia do Caixa nº ' +DM.SDS_UsuariosCODIGO.Text +'-' + FormPrincipal.UserLogado;
           frmcaixa.qrcaixa_mov.post;
           frmcaixa.qrcaixa_mov.ApplyUpdates(0);
       end;
       end;

   // ecf_SUPRIMENTOX(ecf_modelo,FORMATFLOAT('##############0.00',ed_valor.value),FDINHEIRO);
  end;  }

{  IF RADIOBUTTON2.Checked THEN
  BEGIN

    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('VALOR_SAIDA').ASFLOAT := ed_valor.value;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('VALOR_ENTRADA').ASFLOAT := 0;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('TIPO_MOV').ASINTEGER := 2;
    ed_valor.value := (ed_valor.value)*(-1);

    frmcaixa.RENTRADA.Value := frmcaixa.RENTRADA.Value + frmcaixa.qrcaixa_mov.fieldbyname('valor_entrada').asfloat-entrada_original;
    frmcaixa.Rsaida.Value := frmcaixa.Rsaida.Value + frmcaixa.qrcaixa_mov.fieldbyname('valor_saida').asfloat-saida_original;
    frmcaixa.RSALDO.value := frmcaixa.RENTRADA.value - frmcaixa.RSAIDA.value;

    FRMCAIXA.QRCAIXA_MOV.POST;
    FRMCAIXA.QRCAIXA_MOV.ApplyUpdates(0);

        if frmcaixa.Tag = 1 then
        begin
        IF DM.SDS_UsuariosCODIGO.ASINTEGER <> 99 then
        BEGIN
         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
         DM.ProxCod.Open;

           frmcaixa.qrcaixa_mov.OPEN;
           frmcaixa.qrcaixa_mov.insert;
           frmcaixa.qrcaixa_mov.FieldByName('codigo').asiNTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
           frmcaixa.qrcaixa_mov.fieldbyname('cod_usuario').asstring := '99';
           frmcaixa.qrcaixa_mov.fieldbyname('usuario').asstring := 'CAIXA';
           frmcaixa.qrcaixa_mov.fieldbyname('data').asstring := DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASSTRING;
           frmcaixa.qrcaixa_mov.fieldbyname('valor_saida').asfloat := 0;
           frmcaixa.qrcaixa_mov.fieldbyname('Valor_entrada').asfloat := VALOR;
           frmcaixa.qrcaixa_mov.fieldbyname('valor').asfloat := VALOR * (-1);
           DM.SDS_CONFIGURACOES.open;
           frmcaixa.qrcaixa_mov.fieldbyname('cod_plano').asstring := DM.SDS_CONFIGURACOES.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
           frmcaixa.qrcaixa_mov.fieldbyname('tipo_mov').asINTEGER := 1;
           frmcaixa.qrcaixa_mov.FieldByName('Tipo').AsString  := 'C';
           frmcaixa.qrcaixa_mov.FieldByName('ORIGEM').AsString  := 'AVU';
           frmcaixa.qrcaixa_mov.fieldbyname('historico').asstring := 'Transferncia do Caixa nº '+ DM.SDS_UsuariosCODIGO.Text +'-' + FormPrincipal.UserLogado;
           frmcaixa.qrcaixa_mov.post;
           frmcaixa.qrcaixa_mov.ApplyUpdates(0);
       end;
       end;

   // ecf_sangriaX(ecf_modelo,FORMATFLOAT('##############0.00',ed_valor.value));
  END;  }


//  FRMCAIXA.qrcaixa_mov.Refresh;

         frmcaixa.qrcaixa_mov1.close;
         frmcaixa.qrcaixa_mov1.SQL.Clear;
         frmcaixa.qrcaixa_mov1.sql.add('select * from v_movimento_diario where data = :data_caixa order by codigo');
        // qrcaixa_mov.DataSet.CommandText:= ('select * from movimento_diario where data = '''+DM.SDS_USUARIOS.fieldbyname('data').Text +''' order by codigo');
         frmcaixa.qrcaixa_mov1.Params.ParamByName('data_caixa').asdatetime := dm.sds_usuarios.fieldbyname('data').asdatetime;
         frmcaixa.qrcaixa_mov1.open;

  if Application.MESSAGEBOX('Deseja Imprimir o Lançamento?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    try
      qrRelLanc.Close;
      qrRelLanc.ParamByName('CODIGO').AsInteger:= ID_MOVIMENTO;
      qrRelLanc.Open;

      frxReport.LoadFromFile('\siace\rel\RelatorioFichaLancamentoCaixa.fr3');
      frxReport.variables['USUARIO']:= QuotedStr(DM.SDS_USUARIOS.fieldbyname('USUARIO').asstring);
      if qrRelLanc.FieldByName('TIPO').AsString = 'C' then
        frxReport.variables['TIPO_LANCAMENTO']:= QuotedStr('Entrada')
      else
        frxReport.variables['TIPO_LANCAMENTO']:= QuotedStr('Saida');
      frxReport.ShowReport;
    except
      ShowMessage('Erro ao Imprimir o Lançamento!');
    end;
  end;

  CLOSE;
end;

procedure Tfrmcaixa_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_ficha.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN econta.setfocus;
end;

procedure Tfrmcaixa_ficha.RadioButton2KeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN econta.setfocus;
end;

procedure Tfrmcaixa_ficha.econtaEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcaixa_ficha.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcaixa_ficha.bloccontaClick(Sender: TObject);
VAR
  ANAL : string;
begin
  ANAL:= 'A';
   dm.SDS_PlContas.Filtered := False;
   dm.SDS_PlContas.Filter := 'INDICADOR ='+QuotedStr(ANAL);
   dm.SDS_PlContas.Filtered := True;

  FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
   FormConsPlanoContas.ShowModal;

 // frmcaixa.qrcaixa_mov.Edit;
  econta.Text := dm.SDS_PlContas.fieldbyname('codigo').asstring;
  
  dbedit1.setfocus;
  dm.SDS_PlContas.Filtered := False;

end;

procedure Tfrmcaixa_ficha.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  {IF (frmcaixa.qrcaixa_mov.state = dsinsert) or (frmcaixa.qrcaixa_mov.State = dsedit) then
  begin
  {  frmcaixa.qrcaixa_mov.fieldbyname('cod_plano').asstring := frmprincipal.zerarcodigo(econta.text,6);
    if econta.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrplano,econta.text,'codigo') then bloccontaclick(frmcaixa_ficha) else dbedit1.setfocus
    else  }
    //      blocconta.SetFocus;
 // end; }
IF econta.Text > '' THEN
begin
If (DM.SDS_PlContas.Locate('CODIGO',VarArrayOf([econta.Text]),[])) then
begin
plano_desc.Text:= DM.SDS_PlContasNome.Text;
DBEdit1.SetFocus;
end;
end;
end;

procedure Tfrmcaixa_ficha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcaixa_ficha.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_valor.setfocus;
end;

procedure Tfrmcaixa_ficha.FormShow(Sender: TObject);
begin
  entrada_original := frmcaixa.qrcaixa_mov1.fieldbyname('Valor_entrada').asfloat;
  saida_original := frmcaixa.qrcaixa_mov1.fieldbyname('Valor_saida').asfloat;

  dbedit1.setfocus;
  RadioButton1.SetFocus;
  DateEdit1.Date := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;

end;

procedure Tfrmcaixa_ficha.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcaixa_ficha.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmcaixa_ficha)
end;

procedure Tfrmcaixa_ficha.ed_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_valor.setfocus;
end;

procedure Tfrmcaixa_ficha.ed_valorExit(Sender: TObject);
begin
bgravar.SetFocus;
end;

procedure Tfrmcaixa_ficha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
iF Key = VK_F11 then
begin
  DateEdit1.Enabled := TRUE;
end;
end;

end.
