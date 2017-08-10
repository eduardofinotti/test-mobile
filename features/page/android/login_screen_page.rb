require './features/page/login_screen_page'
module Android
  class LoginScreenElement < LoginScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      $driver = driver
      
      login_user = $driver.xpath('//android.view.ViewGroup[@content-desc=\"LoginView\"]/android.view.ViewGroup[1]/android.widget.EditText')
      login_password = $driver.xpath('//android.view.ViewGroup[@content-desc=\"LoginView\"]/android.view.ViewGroup[2]/android.widget.EditText')
      login_button = $driver.xpath('//android.view.ViewGroup[@content-desc=\"LoginView\"]/android.view.ViewGroup[3]/android.view.ViewGroup')
      
      super(login_user, login_password, login_button)
    end
    
    def error_message
      $driver.id('login_error')
    end
  end
end