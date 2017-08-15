#language: pt
@login @funcionalidade_baisca
Funcionalidade: Entrar na aplicação
  Como um oficial de justiça
  Eu quero poder acessar a aplicação

  @login_invalido 
  Cenário: Acessar aplicação com usuário inválido
    Dado que oficial de justiça esteja na tela de login
    E preencho o campo 'Usuário SAJ' com usuário inválido
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem "Dados incorretos: Verifique os dados inseridos"

  @login_invalido 
  Cenário: Acessar aplicação com senha inválida
    Dado que oficial de justiça esteja na tela de login
    E preencho o campo 'Senha SAJ' com senha inválida
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem "Dados incorretos: Verifique os dados inseridos"

  @login_valido @basico
  Cenário: Acessar aplicação com dados válidos
    Dado que oficial de justiça esteja na tela de login
    E informa um usuário e senha do SAJ válidos 
    Quando clicar no botão 'Entrar'
    Então mostra a tela principal do OJO e exibi o nome do usuário logado