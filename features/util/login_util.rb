class LoginActions

  def verificaSeTelaLogin
    $action.waitElementByXpath("//android.view.ViewGroup[@content-desc=\"Usuário SAJ\"]/android.view.ViewGroup/android.widget.EditText")    
  end

  def preencheCamposLogin(login_screen_object)
    login_screen_object.send_login_user('correct_user')
    login_screen_object.send_login_password('correct_pass')
  end  

  def entrarPermitindoLocalizacao(login_screen_object)
    #login_screen_object.click_login_button
    login_screen_object.click_login_button
    $action.waitElementAndClick("com.android.packageinstaller:id/permission_allow_button")
  end 

   def entrarNaoPermitindoLocalizacao(login_screen_object)
    #login_screen_object.click_login_button
    login_screen_object.click_login_button
    $action.waitElementAndClick("com.android.packageinstaller:id/permission_deny_button")
  end 

  def clickBotaoEntrar(login_screen_object)
    login_screen_object.click_login_button    
  end

end
