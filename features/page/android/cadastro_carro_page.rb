require './features/page/cadastro_carro_page'
module Android

# PO da página de confimar localização do oficial de justiça  
  class CadastroCarroScreenElement < CadastroCarroScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver
      
      endereco = @driver.id("ShowLocationSubtitle")
      botao_enviar_local = @driver.id("ShowLocationBtn")

      super(endereco, botao_enviar_local)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end