require './features/page/localizacao_screen_page'
module Android
  class LocalizacaoScreenElement < LocalizacaoScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      $driver = driver 
      
      #button_estou_aqui = $driver.xpath("//android.view.ViewGroup[@content-desc=\"FindLocationBtn\"]")
      button_estou_aqui = $driver.id("FindLocationBtn")

      super(button_estou_aqui)
    end
    
    def error_message
      $driver.id('login_error')
    end
  end
end