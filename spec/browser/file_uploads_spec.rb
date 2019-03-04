RSpec.describe Selenium::WebDriver::Driver do
  it "uploads files" do
    @driver.get "http://the-internet.herokuapp.com/upload"

    element = @driver.find_element(:id, "file-upload")
    file = File.expand_path("../../../bin/selenium-server-standalone.jar", __FILE__)

    element.send_keys(file)

    expect(element.attribute('value')).to include 'selenium-server-standalone.jar'
  end
end
