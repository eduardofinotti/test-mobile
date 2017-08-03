#language: pt
@entrar @funcionalidade_baisca
Funcionalidade: Entrar na aplicação
  Como um oficial de justiça
  Eu quero poder acessar a aplicação


  @login_invalido @aceitacao
  Cenário: Tentar acesar com dados inválidos
    Dado que esteja na tela de login
    E preencho todos os campos com dados inválidos
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem 'Dados incorretos: Verifique os dados inseridos'


  @login_valido @aceitacao
  Cenário: Acessar aplicação
    Dado que esteja na tela de login
    E preencho todos os campos com dados válidos
    Quando clicar no botão 'Entrar'
    Então mostrará a tela com inicial do aplicativo