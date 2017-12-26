Dado("que estou na home da aplicação") do
    @home_screen_object = $ENV::HomeScreenElement.new($driver) 
end

Dado("clico em cadastro") do
    @home_screen_object.click_botao_cadastro
end

Dado("preencho todos os campos de cadastro de carro") do
    @cadastro_screen_object = $ENV::CadastroCarroScreenElement.new($driver) 
    @cadastro_screen_object.preenche_modelo_marca('modelox')
    @cadastro_screen_object.preenche_ano('2018')
    @cadastro_screen_object.preenche_placa('aaa-123')
    @cadastro_screen_object.preenche_kilometragem('12345')
    @cadastro_screen_object.preenche_valor('50000')
end

Quando("clico em cadastrar") do
    @cadastro_screen_object.click_botao_cadastrar
end

Então("o carro é salvo e é exibido na lista") do
    pending # Write code here that turns the phrase above into concrete actions
end