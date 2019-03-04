RSpec.describe Selenium::WebDriver::Driver do
  it "injects JavaScript" do
    @driver.get "http://a.testaddressbook.com"

    element = @driver.find_element(:id, "sign-in")

    @driver.execute_script("arguments[0].click();", element)

    @driver.execute_script("window.scrollBy(0,50);")
  end
end
