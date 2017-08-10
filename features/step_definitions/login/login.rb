Dado(/^que oficial de justiça esteja na tela de login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver)
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
  @login_screen_object.send_login_user('correct_user')
  @login_screen_object.send_login_password('correct_pass')
end

Quando(/^clicar no botão 'Entrar'$/) do
  @login_screen_object.click_login_button
  @login_screen_object.click_login_button

  sleep 2

  alert = $driver.switch_to.alert
  
  if alert.text != nil
     alert.accept
  end

end

Então(/^mostrará a mensagem 'Dados incorretos: Verifique os dados inseridos'$/) do
  $driver.find_element(:id, 'id_do_field').displayed?
end

Então(/^mostra a tela principal do OJO e exibi o nome do usuário logado$/) do
  @home_screen_object = $ENV::HomeScreenPage.new($driver)
  #validar nome do usuario logado
  @home_screen_object.checkin_button_is_displayed
end