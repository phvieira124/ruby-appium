#language: pt

Funcionalidade: Cadastro

  @ct01
  Cenário: Validar tutorial para o cliente
    Dado que o cliente acesse o aplicativo food delivery
    Quando navegar pelo tuturial
    Então o cliente visualiza a home

  @ct02
  Cenário: Validar direcionamento para tela create account
    Dado que o cliente está na home
    Quando acessar i am new
    Então o cliente visualiza create account

  @ct03
  Cenário: Validar layout da tela create account
    Dado que o cliente está na home
    Quando acessar i am new
    Então o cliente visualiza o layout de create account

  @ct04
  Cenário: Cadastrar usuário
    Dado que o cliente está em create account
    Quando ele cadastrar conta
    Então o cliente visuliza Categories e Popular






