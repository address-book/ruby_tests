
require 'selenium-webdriver'

def create_driver
  driver = Selenium::WebDriver.for :chrome
  puts "Created Driver"
  return driver
end

driver = create_driver
# => Created Driver
# => <Selenium::WebDriver::Chrome::Driver:0x..fb01e2a051acdb54a browser=:chrome>

def quit_driver(driver)
  puts "Quitting Driver"
  driver.quit
end

quit_driver(driver)
# => Quitting Driver
# => nil
