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

Dado(/^que o usuário logado tenha recusado a autorizaçao de acesso a localizacao no login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarNaoPermitindoLocalizacao(@login_screen_object)
end

Então(/^deve ser apresentada uma tela pedindo autorização de acesso à localização do usuário$/) do
  @sem_permissao_localizacao_screen_object = $ENV::SemPermissaoLocalizacaoScreenElement.new($driver)

  if @sem_permissao_localizacao_screen_object.getMensageSemPermissaoLocalizacao != "Por favor, de permissão para posseguir."
    fail("Erro: Mensagem de Sem Permissao de Localizacao não está na tela.")
  end 
end

Dado(/^GPS do dispositivo móvel está habilitado$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado(/^o OJO possui permissão de acesso à localização do dispositivo móvel$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^o oficial de justiça pressionar o botão Estou aqui$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^deve ser apresentada a tela com o endereço onde ele se encontra e o botão Enviar localização habilitado$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^deve apresentar o botão Enviar localização habilitado$/) do
  pending # Write code here that turns the phrase above into concrete actions
end