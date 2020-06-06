Dado('que o cliente acesse o aplicativo food delivery') do
  @cadastro = Cadastro.new
    #@cadastro.aguardaIniciar
end

Quando('navegar pelo tuturial') do
  @cadastro.clicaNext
end

Então('o cliente visualiza a home') do
  @cadastro.validaIAmNew
end

Dado('que o cliente está na home') do
  @cadastro = Cadastro.new
  #@cadastro.aguardaIniciar
  @cadastro.clicaSkip
end

Quando('acessar i am new') do
  @cadastro.clicaIAmNew
end

Então('o cliente visualiza create account') do
  @cadastro.validaDirecionamentoCrateAccount
end

Então('o cliente visualiza o layout de create account') do
  @cadastro.validaTelaCadastro
end

Dado('que o cliente está em create account') do
  @cadastro = Cadastro.new
  #@cadastro.aguardaIniciar
  @cadastro.clicaSkip
  @cadastro.clicaIAmNew
end

Quando('ele cadastrar conta') do
  @cadastro.preecherCadastro
  @cadastro.clicaCriarConta
  @cadastro.preecherPim
end

Então('o cliente visuliza Categories e Popular') do
  @cadastro.validaHomeLogada
end
