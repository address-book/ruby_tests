RSpec.describe Selenium::WebDriver::Driver do
  it "change default browser options" do
    opts = Selenium::WebDriver::Chrome::Options.new(args: ['--disable-infobars'])

    driver = Selenium::WebDriver.for :chrome, options: opts
    driver.quit
  end
end
