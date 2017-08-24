require './features/page/localizacao_enviada_screen_page'
module Android

# PO da página de confirmaçao de localização enviada pra servidor
  class LocalizacaoEnviadaScreenElement < LocalizacaoEnviadaScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver
      
      mensagem = @driver.id("ConfirmLocationSubtitle")
      botao_voltar_inicio = @driver.id("ConfirmLocationBtn")
      
      super(mensagem, botao_voltar_inicio)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end