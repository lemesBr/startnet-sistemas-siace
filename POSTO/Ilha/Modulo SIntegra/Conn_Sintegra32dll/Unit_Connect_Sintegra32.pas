unit Unit_Connect_Sintegra32;

interface

  Procedure Inicia_SIntegra; stdcall; external 'SIntegra32Dll.dll';
  Procedure Finaliza_SIntegra; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
                      Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
                      Cod_Finalidade: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
                      Nome_Contato, Telefone: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      Aliquota, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
                      Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
                      Brancos, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
                      Situacao, Antecipacao,Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
                      Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
                      Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
                      Aliquota_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro55(CNPJ_Subst, Insc_Est_Subst, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
                      Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS, Mes_Ano_Ref,
                      Nro_Convenio: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro56(CNPJ_Adquirente, Modelo, Serie , Nro, CFOP, CST, Nro_Item, Cod_Produto_Servico, Tipo_Operacao,
                      CNPJ_Concessionaria, Aliquota_IPI , Chassi, Brancos : ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60M(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
                       Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
                       Contador_Reinicio, Valor_Venda_Bruta,
                       Valor_Total_Geral, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60M_ECF(arquivo_retorno, modelo_ecf: Shortstring;
                           var Tipo: Shortstring; var SubTipo: Shortstring;
                           var Data_Emissao: Shortstring; var Nro_Serie_Eqp: Shortstring;
                           var Nro_Ordem_Eqp: Shortstring; var Modelo_Doc: Shortstring;
                           var Nro_Contador_Inicio: Shortstring; var Nro_Contador_Fim: Shortstring;
                           var Nro_Contador_Z: Shortstring; var Contador_Reinicio: Shortstring;
                           var Valor_Venda_Bruta: Shortstring; var Valor_Total_Geral: Shortstring;
                           var Brancos: Shortstring): Shortstring; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60A(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial,
                               Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60A_Qnt(arquivo_retorno, modelo_ecf: Shortstring): integer; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60A_ECF(arquivo_retorno, modelo_ecf: ShortString; idx_aliquota: integer;
                           var Tipo: Shortstring; var SubTipo: Shortstring;
                           var Data_Emissao: Shortstring; var Nro_Serie_Eqp: Shortstring;
                           var S_Trib_Aliquota: Shortstring; var Valor_TParcial: Shortstring;
                           var Brancos: Shortstring): Shortstring; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60D(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                                  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60I(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item, Cod_Produto,
                          Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                          Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                                  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
                                  Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
                      Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
                      Isenta, Outras, Aliquota, Branco: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro61R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                       Valor_Bruto_Produto, Base_ICMS, Aliquota_ICMS,
                       Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
                      Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      CIF_FOB, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
                      Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
                      UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
                      Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF, Serie_NF,
                      Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
                      Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor,
                      Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
                      UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
                      Base_ICMS_Subst: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro76(CNPJ, Insc_Est, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                      Data_Emissao_Recebimento, UF_Remetente, Valor_Total_NF, Base_ICMS, Valor_ICMS, Isenta,
                      Outras, Aliquota_ICMS, Situacao_NF: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro77(CNPJ_Tomador, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                      Nro_Item, Cod_Servico, Quantidade, Valor_Servico, Valor_Desconto_Despesa, Base_ICMS,
                      Aliquota_ICMS, CNPJ_Operadora_Destino, Cod_Usuario_Final: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88GT(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                    Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88PN(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                    Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SF(Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie, Sub_Serie,
                    Nro, CFOP, Valor_Total, Valor_ICMS, Valor_ICMS_Retido, SF_RJ, Brancos,
                    Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro90: ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Verifica_Convenio(Cod_Convenio: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Operacao(Cod_Operacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Finalidade(Cod_Finalidade: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Modelo(Cod_Modelo: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Situacao(Situacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Emitente(Emitente: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CST(CST: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CIF_FOB(CIF_FOB: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_NumeroItem(Nro_Item: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Posse(Cod_Posse: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Tipo_Receita(Cod_Tipo_Receita: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Tipo_Informacao(Cod_Tipo_Informacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CEP_UF(cCep:ShortString ; cEstado:ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CEP(cCep:ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_UF(UF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CPF(const CPF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CNPJ(const CGC: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_InscEst(Inscricao, UF: string): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Antecipacao(Antecipacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';

implementation

end.
