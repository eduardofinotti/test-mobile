#language: pt
@login @funcionalidade_baisca
Funcionalidade: Entrar na aplicação
  Como um oficial de justiça
  Eu quero poder acessar a aplicação

  @login_invalido
  Cenário: Acessar aplicação com usuário inválido
    Dado que o oficial de justiça esteja na tela de login
    E preencho o campo 'Usuário SAJ' com usuário inválido
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem "Senha ou usuário inválido."

  @login_invalido
  Cenário: Acessar aplicação com senha inválida
    Dado que o oficial de justiça esteja na tela de login
    E preencho o campo 'Senha SAJ' com senha inválida
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem "Senha ou usuário inválido."

  @login_obrigatorio
  Cenário: Acessar aplicação sem preencher campos de login
    Dado que o oficial de justiça esteja na tela de login
    Quando clicar no botão 'Entrar' sem preencher os dados de login
    Então mostrará a mensagem "Usuario e senha obrigatórios"

  @login_valido @basico
  Cenário: Acessar aplicação com dados válidos
    Dado que o oficial de justiça esteja na tela de login
    E informa um usuário e senha do SAJ válidos 
    Quando clicar no botão 'Entrar' permitindo acesso a localização 
    Então mostra a tela principal do OJO e exibi o nome do usuário logado "Oficial O"