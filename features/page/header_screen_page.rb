class HeaderScreenPage
  
  attr_accessor :user_name
  
  def initialize(user_name)
    @label_user_name = user_name
  end

  def getUserName
    @label_user_name.text
  end
  
end