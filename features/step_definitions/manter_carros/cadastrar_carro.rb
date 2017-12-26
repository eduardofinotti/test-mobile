Dado("que estou na home da aplicação") do
    @home_screen_object = $ENV::HomeScreenElement.new($driver) 
end

Dado("clico em cadastro") do
    @home_screen_object.click_botao_cadastro
end

Dado("preencho todos os campos de cadastro de carro") do

    time = Time.new
    @modelo = time.inspect

    ano = '2018'
    placa = 'abc-123'
    km = '12345'
    valor = '50000'

    @cadastro_screen_object = $ENV::CadastroCarroScreenElement.new($driver) 
    @cadastro_screen_object.preenche_modelo_marca(@modelo)
    @cadastro_screen_object.preenche_ano(ano)
    @cadastro_screen_object.preenche_placa(placa)
    @cadastro_screen_object.preenche_kilometragem(km)
    @cadastro_screen_object.preenche_valor(valor)

    $action.keyEvent(4)
end

Quando("clico em cadastrar") do
    @cadastro_screen_object.click_botao_cadastrar
    sleep 2

    $action.keyEvent(4)
end

Então("o carro é salvo e é exibido na lista") do
    @home_screen_object.click_botao_consulta
    sleep 2
    
    ultimo = ''

    while ultimo != @modelo
        
        Appium::TouchAction.new.press({x: 305, y: 1112}).move_to({x: -3, y: -890}).release.perform

        carro = $driver.find_elements(:id, 'modelo').last
        ultimo = carro.text
    end

end