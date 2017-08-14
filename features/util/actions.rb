class Actions
  
  def clickOnButton(id)
    $driver.find_element(id: id).click
  end

  def clickOnElementByIndex(id,index)
    $driver.find_elements(:id, id)[index].click
  end

  def waitAndClickOnButton(id)
    $driver.wait { $driver.find_element(id: id).click}
  end

  def waitElement(id)
    $driver.wait { $driver.find_element(id: id)}
  end

  def waitElementByXpath(xpath)
    $driver.wait { $driver.find_element(xpath: xpath)}
  end

  def waitElementAndClick(id)
    $driver.wait { $driver.find_element(id: id).click}
  end

  def sendKey(id,text)
   $driver.find_element(id: id).send_key(text)
  end

  def waitAndSendKey(id,text)
    $driver.wait { $driver.find_element(id: id).send_key(text)}
  end

  def getText(id)
    $driver.find_element(id: id).text
  end
  
  def keyEvent(element)
    $driver.press_keycode(element)
  end

  def android_start_activity
    $driver.start_activity app_package: "com.android.settings", app_activity: "Settings"

    until exists { $driver.find_element(:id, 'title').text = Location } do
      Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.5, end_y: 0.2, duration: 800).perform
    end
    
  end  
end
