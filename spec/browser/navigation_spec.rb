RSpec.describe Selenium::WebDriver::Driver do
  it "navigates" do
    @driver.get "http://a.testaddressbook.com"

    @driver.navigate.to "http://google.com"

    @driver.navigate.refresh

    @driver.navigate.back

    @driver.navigate.forward
  end
end
