require './features/page/home_screen_page'
module Android
  class HomeScreenElement < HomeScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      $driver = driver
      
      checkin_button = $driver.id('btnTopic')

      super(checkin_button)
    end
    
    def error_message
      $driver.id('login_error')
    end
  end
end