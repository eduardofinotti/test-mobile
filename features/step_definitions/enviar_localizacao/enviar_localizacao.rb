Dado(/^que o oficial de justiça esteja logado no OJO com permissao a Localização$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Dado(/^que o dispositivo móvel tem conexão com a internet$/) do
  
  status = $action.get_conection_status

  if (status) != 6
    fail("Erro! o dispositivo não está conectado a internet!")
  end

end

Dado(/^que o dispositivo móvel esteja com o GPS ativo$/) do
  system("adb shell settings put secure location_providers_allowed +network")
  system("adb shell settings put secure location_providers_allowed +gps")
end

Quando(/^o oficial de justiça pressionar o botão 'Enviar localização'$/) do
  
  # Aguarda tela carregar e vai para a aba Localização
  $action.waitElement("NameLabel")
  Appium::TouchAction.new.press({x: 684, y: 570}).move_to({x: -560, y: -11}).release.perform

  # Click botão Estou Aqui
  @localizacao_screen_object = $ENV::LocalizacaoScreenElement.new($driver)
  @localizacao_screen_object.clickEstouAqui

  # Verifica se encontrou endereço e clica em Enviar Localizaçao
  @confirmar_local_screen_page = $ENV::ConfirmarLocalScreenElement.new($driver)
  
  if @confirmar_local_screen_page.getEndereco == nil 
    fail("Erro! Não pegou o endereço")
  end

  @confirmar_local_screen_page.click_enviar_localizacao

end

Então(/^deve ser enviada sua localização para o servidor \(backend\) do OJO e exibir uma mensagem de sucesso$/) do
  # Verifica se mensagem de sucesso
  $action.waitElement("ConfirmLocationBtn")
  @localizacao_enviada_screen_page = $ENV::LocalizacaoEnviadaScreenElement.new($driver)

  if @localizacao_enviada_screen_page.get_mensagem != "A sua localização\n foi enviada." 
    fail("Erro! A localização não foi enviada com sucesso!")
  end 
  
end

Quando(/^o oficial de justiça pressionar o botão 'Enviar localização' sem conexão com a internet$/) do
  
  # Aguarda tela carregar e vai para a aba Localização
  $action.waitElement("NameLabel")
  Appium::TouchAction.new.press({x: 684, y: 570}).move_to({x: -560, y: -11}).release.perform

  # Click botão Estou Aqui
  @localizacao_screen_object = $ENV::LocalizacaoScreenElement.new($driver)
  @localizacao_screen_object.clickEstouAqui

  # Verifica se encontrou endereço e clica em Enviar Localizaçao
  @confirmar_local_screen_page = $ENV::ConfirmarLocalScreenElement.new($driver)
  
  if @confirmar_local_screen_page.getEndereco == nil 
    fail("Erro! Não pegou o endereço")
  end

  status = $action.get_conection_status

  # if (status) != 0
  #   $action.android_wifi_off
  # end

  @confirmar_local_screen_page.click_enviar_localizacao

end

Então(/^deve ser exibida uma mensagem informando que não há conexão com a internet e que não foi possível enviar a localização$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
