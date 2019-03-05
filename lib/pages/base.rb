module RubyTests
  class Base
    attr_reader :driver

    def initialize(driver)
      @driver = driver
    end

    def click(locator)
      Selenium::WebDriver::Wait.new.until { @element = driver.find_element(locator) }
      @element.click
    end

    def send_keys(locator, string)
      Selenium::WebDriver::Wait.new.until { @element = driver.find_element(locator) }
      @element.send_keys(string)
    end
  end
end
