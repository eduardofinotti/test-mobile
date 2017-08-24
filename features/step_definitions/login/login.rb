Dado(/^que o oficial de justiça esteja na tela de login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
end

Dado(/^preencho o campo 'Usuário SAJ' com usuário inválido$/) do
  @login_screen_object.send_login_user('xxx')
  @login_screen_object.send_login_password('132')
end

Dado(/^preencho o campo 'Senha SAJ' com senha inválida$/) do
  @login_screen_object.send_login_user('oficial')
  @login_screen_object.send_login_password('zzz')
end

Dado(/^informa um usuário e senha do SAJ válidos$/) do
  LoginActions.new.preencheCamposLogin(@login_screen_object)
end

Quando(/^clicar no botão 'Entrar'$/) do
  LoginActions.new.clickBotaoEntrar(@login_screen_object)
end

Quando(/^clicar no botão 'Entrar' permitindo acesso a localização$/) do
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Então(/^mostrará a mensagem "([^"]*)"$/) do |mensagem|
  
  @login_errado = $ENV::NotificacaoScreenElement.new($driver)
  @mensagem = @login_errado.getMensagem

  if @mensagem != mensagem
    fail("Erro! O teste falhou!")
  end 
  
end

Então(/^mostra a tela principal do OJO e exibi o nome do usuário logado "([^"]*)"$/) do |nome|
  @header_screen_object = $ENV::HeaderScreenElement.new($driver)
  
  if @header_screen_object.getUserName != nome
    fail("Erro de validaçao")
  end 

end

Quando(/^clicar no botão 'Entrar' sem preencher os dados de login$/) do
  LoginActions.new.clickBotaoEntrar(@login_screen_object) 
end