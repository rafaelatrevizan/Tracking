#language: pt
#utf-8

Funcionalidade: Tracking
Eu como cliente PJ do banco
Quero fazer login no Portal 
Para consultar minhas negociações no Tracking

Contexto: Usuário acessa o Portal
Dado que esteja na pagina inicial do Portal
Quando efetuar o login com agencia e conta validos
Então apresentara o Portal de cambio
E clico no Menu "Acompanhe suas negociações" e no sub-menu "Acompanhar"

Cenario: Entrar no Tracking
Então apresentara a tela do Tracking

Cenario: Validar abas
Então deverá ser exibido as abas Pesquisa por data e Pesquisa por número do comprovante

Cenario: Validar os campos na aba Pesquisa por data
Quando clicar na aba "Pesquisa por data"
Então deverá ser exibido os campos "Tipo da operação" e "Status da negociação"

Cenario: Validar os campos na aba Pesquisa por número do comprovante
Quando clicar na aba "Pesquisa por número do comprovante"
Então deverá ser exibido o campo "Número do comprovante" e o botão "Consultar"

Cenario: Validar combo Tipo da operação
Quando clicar no combo Tipo da operação 
Então deverá ser exibido as opções
|Operação   |
|Todos      |
|Compra     |
|Venda      |


Cenario: Validar combo Status da negociação
Quando clicar no combo Status da negociação
Então deverá ser exibido a opção 
| Status                                    |
|Selecione                                  |
|Em Processamento                           |
|Com impedimento para processar             |
|Gerando contrato(s)                        |
|Contrato(s) com impedimento para gerar     |
|Contrato(s) em liquidação                  |
|Contrato(s) com impedimento para liquidar  |
|Contrato(s) Liquidado(s)                   |


Cenario: Validar botoes de data
Então devera ser exibido os botoes de data
|Data               |     
|Hoje               |
|7 Dias             |
|15 Dias            |
|30 Dias            |
|60 Dias            |
|90 Dias            |
|Outros Períodos    |
@teste
Cenario: Validar na aba Pesquisa por número do comprovante o botão Consultar
Quando clicar na aba "Pesquisa por número do comprovante"
Então deverá ser exibido o botão "Consultar" desabilitado
