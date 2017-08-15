require './features/page/sem_permissao_screen_page'
module Android
  class SemPermissaoScreenElement < SemPermissaoScreenPage
    
    attr_reader :driver
    
    def initialize(driver) 
      $driver = driver
      
      mensagem_sem_permissao = $driver.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[2]")

      super(mensagem_sem_permissao)
    end
    
    def error_message
      $driver.id('login_error')
    end
    
  end
end