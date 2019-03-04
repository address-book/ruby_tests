RSpec.describe Selenium::WebDriver::Driver do
  it "creates with specified driver location" do
    path = File.expand_path("../../../bin/chromedriver",  __FILE__)
    driver = Selenium::WebDriver.for :chrome, driver_path: path
    driver.quit
  end

  it "creates from PATH" do
    path = File.expand_path("../../bin/chromedriver",  __FILE__)
    ENV['PATH'] = "#{ENV['PATH']}:#{path}"

    driver = Selenium::WebDriver.for :chrome
    driver.quit
  end

  it "creates automatically from webdrivers gem" do
    require "webdrivers"

    driver = Selenium::WebDriver.for :chrome
    driver.quit
  end
end
