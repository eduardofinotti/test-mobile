class LoginActions

  def verificaSeTelaLogin
    $action.waitElementByXpath("//android.view.ViewGroup[@content-desc=\"Usuário SAJ\"]/android.view.ViewGroup/android.widget.EditText")    
  end

  def preencheCamposLogin(login_screen_object)
    login_screen_object.send_login_user('oficial')
    login_screen_object.send_login_password('132')
  end  

  def entrarPermitindoLocalizacao(login_screen_object)
    login_screen_object.click_login_button
    $action.waitElementAndClick("com.android.packageinstaller:id/permission_allow_button")
  end 

   def entrarNaoPermitindoLocalizacao(login_screen_object)
    login_screen_object.click_login_button    
    $action.waitElementAndClick("com.android.packageinstaller:id/permission_deny_button")
  end 

  def clickBotaoEntrar(login_screen_object)
    login_screen_object.click_login_button    
  end

end
