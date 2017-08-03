require_relative "test_helper"
require_relative "../../common/common"
include Common

class Hooks < AppiumTest


  def before_all
    if $driver == nil?
      puts("Driver is running")
    else
      $driver.start_driver
      $action = Actions.new()
      puts("Driver starting")
    end
    $driver.wait{10}
    if Elements.new.is_element_present("id","innerTextView") == true
      SkipOnBoarding.new.skipOnBoardingScreen
    end
    if Elements.new.is_element_present("id","btLoginGoogle") == true
      Login.new.loginWithGoogle
    end
  end

  def after_all
    dump_logs
    $driver.driver_quit
  end
  
  def after
    After do |scenario|
      if scenario.respond_to?('scenario_outline') then
        scenario = scenario.scenario_outline
      end
      if scenario.failed?
        unless File.directory?("screenshots")
          FileUtils.mkdir_p("screenshots")
        end
        time_stamp = Time.now.strftime("%d-%m-%Y_%H.%M.%S")
        screenshot_name = "#{time_stamp}.png"
        screenshot_file = File.join("screenshots", screenshot_name)
        $driver.screenshot(screenshot_file)
        embed("data:image/png;base64,#{screenshot_file}", 'image/png')
      end
    end
  end
  

  def after_setup
    FileUtils.rm_r("screenshots") if File.directory?("screenshots")
  end

end
