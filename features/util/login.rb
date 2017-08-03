class Login
  
  def loginWithFacebook
    $action.clickOnButton("btLoginFacebook")
  end
  def loginWithGoogle
    $action.clickOnButton("btLoginGoogle")
    $action.waitElement("button2")
    if Elements.new.is_element_present("id", "button2") == true
      if $action.getText("com.google.android.gms:id/account_name") == "teste.bravi11@gmail.com"
        $action.clickOnButton("com.google.android.gms:id/account_name")
        $action.waitAndClickOnButton("txtUserName")
      else
        $action.waitAndClickOnButton("button2")
        $action.waitAndClickOnButton("identifierId")
        $action.waitAndSendKey("identifierId","testebravi08@gmail.com")
        $action.waitAndClickOnButton("identifierNext")
        $driver.find_element(class: "android.widget.EditText").send_key("bravi2016")
        $action.waitAndClickOnButton("passwordNext")
        if Elements.new.is_element_present("id", "button2") == true
        
        end
        $action.waitAndClickOnButton("signinconsentNext")
      end
    end
    $action.waitAndClickOnButton("txtUserName")
  end
end