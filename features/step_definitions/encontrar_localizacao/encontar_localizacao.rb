Quando(/^realizar o login na aplicação$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Dado(/^que o GPS do dispositivo está desabilitado$/) do
  system("adb shell settings put secure location_providers_allowed -network")
  system("adb shell settings put secure location_providers_allowed -gps")
end

Então(/^deve ser exibida uma mensagem pedindo para o usuário habilitar o GPS antes de prosseguir$/) do
  @gps_desativado_screen_object = $ENV::GpsDesativadoScreenElement.new($driver)

  if @gps_desativado_screen_object.getMensagemGSPDesativado != "Por favor, ative o gps e tente novamente."
    fail("Erro: Mensagem de GPS Desativado não está na tela.")
  end 
  
end

Dado(/^que o usuário logado tenha recusado a autorização de acesso a localização no login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarNaoPermitindoLocalizacao(@login_screen_object)
end

Então(/^deve ser apresentada uma tela pedindo autorização de acesso à localização do usuário$/) do
  @sem_permissao_gps_screen_object = $ENV::SemPermissaoGPSScreenElement.new($driver)

  if @sem_permissao_gps_screen_object.getMensagemSemPermissaoGPS != "Por favor, de permissão para posseguir."
    fail("Erro: Mensagem de Sem Permissao de Localizacao não está na tela.")
  end

end

Dado(/^GPS do dispositivo móvel está habilitado$/) do
  system("adb shell settings put secure location_providers_allowed +network")
  system("adb shell settings put secure location_providers_allowed +gps")
end

Quando(/^realizar o login na aplicação permitindo acesso à localização do dispositivo móvel$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  #LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Quando(/^navegar ate a aba de Localização$/) do
  Appium::TouchAction
  .new
  .press({x: 684, y: 570})
  .move_to({x: -560, y: -11})
  .release
  .perform
end

Quando(/^o oficial de justiça pressionar o botão Estou aqui$/) do
  @home_screen_object = $ENV::HomeScreenElement.new($driver)
  @home_screen_object.clickEstouAqui
end

Então(/^deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra$/) do
  @confirmar_local_screen_page = $ENV::ConfirmarLocalScreenElement.new($driver)
  endenreco = @confirmar_local_screen_page.getEndereco

  if endereço == entrarNaoPermitindoLocalizacao 
    fail("Erro: Nao pegou o endereço")
  end
    
end

Então(/^deve apresentar o botão Enviar localização habilitado$/) do
  @confirmar_local_screen_page.botaoEnviarLocalHabilitado
end