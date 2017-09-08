class LoginScreenPage
  
  attr_accessor :login_user, :login_password, :login_button
  
  def initialize(login_user, login_password, login_button)
    @login_user = login_user
    @login_password = login_password
    @login_button = login_button
  end
  
  def send_login_user(user)
    @login_user.send_key(user)
  end
  
  def send_login_password(password)
    @login_password.send_key(password)
  end
  
  def click_login_button
    @login_button.click
  end  
 
end