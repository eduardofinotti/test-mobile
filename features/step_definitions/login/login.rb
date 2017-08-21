Dado(/^que oficial de justiça esteja na tela de login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
end

Dado(/^preencho o campo 'Usuário SAJ' com usuário inválido$/) do
  @login_screen_object.send_login_user('xxx')
  @login_screen_object.send_login_password('correct')
end

Dado(/^preencho o campo 'Senha SAJ' com senha inválida$/) do
  @login_screen_object.send_login_user('correct')
  @login_screen_object.send_login_password('zzz')
end

Dado(/^informa um usuário e senha do SAJ válidos$/) do
  LoginActions.new.preencheCamposLogin(@login_screen_object)
end

Quando(/^clicar no botão 'Entrar'$/) do
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Então(/^mostrará a mensagem "([^"]*)"$/) do |mensagem|
  
  if mensagem != "Dados incorretos: Verifique os dados inseridos"
    fail("Erro de validaçao")
  end
  
end

Então(/^mostra a tela principal do OJO e exibi o nome do usuário logado$/) do
  @header_screen_object = $ENV::HeaderScreenElement.new($driver)
  
  if @header_screen_object.getUserName != "João Carlos 2"
    fail("Erro de validaçao")
  end 
   
end