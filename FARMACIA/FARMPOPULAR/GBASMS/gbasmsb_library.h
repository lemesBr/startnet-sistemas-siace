#pragma once

const char* IdentificaEstacao();
const char* PegaSolicitacao( const char* CNPJ, const char* CPF, const char* CRM, const char* UF_CRM, const char* DT_EMISSAO );
const char* PegaConfirmacao( const char* CNPJ, const char* NU_AUTORIZACAO, const char* NU_CUPOM_FISCAL );
