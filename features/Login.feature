#language: pt
#utf-8

Funcionalidade: Fazer login
Eu como cliente PJ do banco
Quero fazer login no Portal 
Para consultar cambio

Cenario: Login
Dado que esteja na pagina inicial do Portal
Quando efetuar o login com agencia e conta validos
Então apresentara o Portal de cambio
