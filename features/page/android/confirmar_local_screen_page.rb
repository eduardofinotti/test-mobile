require './features/page/confirmar_local_screen_page'
module Android

# PO da página de confimar localização do oficial de justiça  
  class ConfirmarLocalScreenElement < ConfirmarLocalScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver
      
      endereco = @driver.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[2]")
      botao_enviar_local = @driver.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup")
      
      super(endereco, botao_enviar_local)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end