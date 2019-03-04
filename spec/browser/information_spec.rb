RSpec.describe Selenium::WebDriver::Driver do
  it "gets Browser Information" do
    @driver.get "http://a.testaddressbook.com"

    # "Address Book"
    @driver.title

    # "http://a.testaddressbook.com"
    @driver.current_url

    # "<html>...</html>"
    @driver.page_source
  end
end
