Dado(/^que esteja na tela de login$/) do
  @login_screen_object = $ENV::LoginScreenPage.new($driver)
end

Dado(/^preencho todos os campos com dados inválidos$/) do
  @login_screen_object.send_login_user('xxx')
  @login_screen_object.send_login_password('zzz')
end

Quando(/^clicar no botão 'Entrar'$/) do
  @login_screen_object.click_login_button
end

Então(/^mostrará a mensagem 'Dados incorretos: Verifique os dados inseridos'$/) do
  $driver.find_element(:id, 'id_do_field').displayed?
end

Então(/^mostrará a tela com inicial do aplicativo$/) do
  @home_screen_object = $ENV::HomeScreenPage.new($driver)
  @home_screen_object.checkin_button_is_displayed
end

Dado(/^preencho todos os campos com dados válidos$/) do
  @login_screen_object.send_login_user('correct_user')
  @login_screen_object.send_login_password('correct_pass')
end