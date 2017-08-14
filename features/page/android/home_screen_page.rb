require './features/page/home_screen_page'
module Android
  class HomeScreenElement < HomeScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      $driver = driver
      
      user_name = $driver.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[1]")
      button_estou_aqui = $driver.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView")
     
      super(user_name, button_estou_aqui)
    end
    
    def error_message
      $driver.id('login_error')
    end
  end
end