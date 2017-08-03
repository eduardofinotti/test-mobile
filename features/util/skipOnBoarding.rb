class SkipOnBoarding
  def skipOnBoardingScreen
    $driver.find_element(id: "innerTextView").click
  end
end
