require './features/page/confirmar_local_screen_page'
module Android

# PO da página de confimar localização do oficial de justiça  
  class ConfirmarLocalScreenElement < ConfirmarLocalScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver
      
      endereco = @driver.id("ShowLocationSubtitle")
      botao_enviar_local = @driver.id("ShowLocationBtn")
<<<<<<< features/page/android/confirmar_local_screen_page.rb
       
=======
      
>>>>>>> features/page/android/confirmar_local_screen_page.rb
      super(endereco, botao_enviar_local)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end