require './features/page/notificacao_screen_page'
module Android
  class NotificacaoScreenElement < NotificacaoScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      $driver = driver
      
      mensagem = $driver.id("ModalErrorMessage")

      super(mensagem)
    end
    
    def error_message
      $driver.id('login_error')
    end
    
  end
end