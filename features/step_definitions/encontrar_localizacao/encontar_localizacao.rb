Quando(/^realizar o login na aplicação$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Dado(/^que o usuário realizou o login na aplicação$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.clickBotaoEntrar(@login_screen_object)
end

Então(/^deve ser apresentada alerta pedindo autorização de acesso à localização do usuário$/) do
  $action.waitElement("com.android.packageinstaller:id/permission_message")      
end

Dado(/^que o GPS do dispositivo está desabilitado$/) do
  system("adb shell settings put secure location_providers_allowed -network")
  system("adb shell settings put secure location_providers_allowed -gps")
end

Então(/^deve ser exibida a mensagem "([^"]*)"$/) do |mensagem|
  @gps_desativado_screen_object = $ENV::NotificacaoScreenElement.new($driver)
  
  if @gps_desativado_screen_object.getMensagem != mensagem
    fail("Erro: Mensagem de GPS Desativado não está na tela.")
  end 

end

Dado(/^que o usuário logado tenha recusado a autorização de acesso a localização no login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarNaoPermitindoLocalizacao(@login_screen_object)
end

Então(/^deve ser apresentada uma tela com a mensagem "([^"]*)"$/) do |mensagem|
  @sem_permissao_gps_screen_object = $ENV::NotificacaoScreenElement.new($driver)
  
  if @sem_permissao_gps_screen_object.getMensagem != mensagem
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
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Quando(/^o oficial de justiça pressionar o botão Estou aqui$/) do
  @localizacao_screen_object = $ENV::LocalizacaoScreenElement.new($driver)
  @localizacao_screen_object.clickEstouAqui
end

Então(/^deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra$/) do
  @confirmar_local_screen_page = $ENV::ConfirmarLocalScreenElement.new($driver)

  if @confirmar_local_screen_page.getEndereco == nil 
    fail("Erro! Não pegou o endereço")
  end
    
end

Então(/^deve apresentar o botão Enviar localização habilitado$/) do
  
  if !@confirmar_local_screen_page.botaoEnviarLocalHabilitado 
    fail("ERRO! O botão não está habilitado!")
  end

end