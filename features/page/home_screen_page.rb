class HomeScreenPage
  
  attr_accessor :checkin_button
  
  def initialize(checkin_button)
    @checkin_button = checkin_button
  end

  def checkin_button_is_displayed
    @checkin_button.displayed?
  end
 
end