Dado(/^que o oficial de justiça está logado$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Dado(/^tem check\-in realizado$/) do
  
  # liga internet
  if ($driver.get_network_connection) != 6
    fail("Erro! o dispositivo não está conectado a internet!")
  end

  # liga gps
  system("adb shell settings put secure location_providers_allowed +network")
  system("adb shell settings put secure location_providers_allowed +gps")
  
  # Aguarda tela carregar e realiza check-in 
  $action.waitElement("NameLabel")
  
  # Click botão Estou Aqui
  @localizacao_screen_object = $ENV::LocalizacaoScreenElement.new($driver)
  @localizacao_screen_object.clickEstouAqui

  # Verifica se encontrou endereço e clica em Enviar Localizaçao
  @confirmar_local_screen_page = $ENV::ConfirmarLocalScreenElement.new($driver)
  
  if @confirmar_local_screen_page.getEndereco == nil 
    fail("Erro! Não pegou o endereço")
  end
  
  @endereco_checkin = @confirmar_local_screen_page.getEndereco

  @confirmar_local_screen_page.click_enviar_localizacao
  
  @hora_checkin = Time.now

  # Verifica se mensagem de sucesso
  $action.waitElement("ConfirmLocationBtn")

  @local_enviado_screen_page = $ENV::LocalizacaoEnviadaScreenElement.new($driver)

  if @local_enviado_screen_page.get_mensagem != "A sua localização\n foi enviada." 
    fail("Erro! A localização não foi enviada com sucesso!")
  end 

  # click voltar tela inicial
  @local_enviado_screen_page.click_botao_voltar_inicio

end

Quando(/^navegar para Timeline$/) do

  $action.waitElement("NameLabel")
  Appium::TouchAction.new.press({x: 684, y: 570}).move_to({x: -560, y: -11}).release.perform

end

Então(/^deve ser exibido a timeline com check\-ins agrupados por data$/) do
  
  @timeline_screen_page = $ENV::TimelineScreenElement.new($driver)
  
  data_checkin = Time.now

  if (@timeline_screen_page.get_data != data_checkin.strftime("%d/%m/%Y"))
    fail("Erro! A data exibido é diferente da data do check-in!")
  end  

end

Então(/^deve ser exibido a timeline com número do mandado do check\-in$/) do

  if (@timeline_screen_page.get_numero_mandado != "001 2017/0000013-7")
    fail("Erro! O numero do mandado exibido é diferente do numero do mandado do check-in!")
  end

end

Então(/^deve ser exibido a timeline com endereço do check\-in$/) do

  if (@timeline_screen_page.get_endereco != @endereco_checkin)
    fail("Erro! O endereço exibido é diferente do endereço do check-in!")
  end

end

Então(/^deve ser exibido a timeline com hora do check\-in$/) do
    
  if (@timeline_screen_page.get_hora != @hora_checkin.strftime("%H:%M"))
    fail("Erro! A hora exibido é diferente da hora do check-in!")
  end

end

Então(/^deve ser exibido a timeline com status de sincronização do check\-in$/) do
 
  if !@timeline_screen_page.get_status_sinc 
    fail("Erro! Status não está presenete na tela!")
  end

end