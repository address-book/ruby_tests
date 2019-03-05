require 'selenium-webdriver'

class LocalDriver
  def create
    puts "Creating Driver"
    @driver = Selenium::WebDriver.for :chrome
  end

  def quit
    puts "Quitting Driver"
    @driver.quit
  end
end

local_driver = LocalDriver.new

local_driver.create

local_driver.quit
# => Quitting Driver
