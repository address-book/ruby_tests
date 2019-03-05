
require 'selenium-webdriver'

selenium = "Selenium"
# => "Selenium"

driver = Selenium::WebDriver.for(:chrome)
# => <Selenium::WebDriver::Chrome::Driver:0x..fb01e2a051acdb54a browser=:chrome>

driver
# => <Selenium::WebDriver::Chrome::Driver:0x..fb01e2a051acdb54a browser=:chrome>

driver.quit
