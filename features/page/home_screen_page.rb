class HomeScreenPage
  
  attr_accessor :user_name, :button_estou_aqui
  
  def initialize(user_name, button_estou_aqui)
    @label_user_name = user_name
    @button_estou_aqui = button_estou_aqui
  end

  def getUserName
    @label_user_name.text
  end

  def clickEstouAqui
    @button_estou_aqui.click
  end  
 
end