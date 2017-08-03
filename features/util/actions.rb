class Actions
  
  def clickOnButton(id)
    $driver.find_element(id: id).click
  end

  def waitAndClickOnButton(id)
    $driver.wait { $driver.find_element(id: id).click}
  end

  def waitElement(id)
    $driver.wait { $driver.find_element(id: id)}
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
end
