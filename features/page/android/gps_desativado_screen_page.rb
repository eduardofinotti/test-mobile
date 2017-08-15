require './features/page/gps_desativado_screen_page'
module Android
  class GpsDesativadoScreenElement < GpsDesativadoScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      $driver = driver
      
      mensagem_gps_desativado = $driver.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[2]")

      super(mensagem_gps_desativado)
    end
    
    def error_message
      $driver.id('login_error')
    end
    
  end
end