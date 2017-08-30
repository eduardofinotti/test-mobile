require './features/page/timeline_screen_page'
module Android
  class TimelineScreenElement < TimelineScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver

      data_checkin = @driver.id("TimelineItemDate")
      numero_mandado = @driver.id("TimelineItemCod")
      endereco = @driver.id("TimelineItemAddress")
      hora = @driver.id("TimelineItemTime")
      status_sinc = @driver.xpath("(//android.view.ViewGroup[@content-desc=\"TimelineItem\"])[1]/android.widget.ImageView")
      
      super(data_checkin, numero_mandado, endereco, hora, status_sinc)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end