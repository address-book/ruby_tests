RSpec.describe Selenium::WebDriver::Driver do
  it "handles alerts" do
    @driver.get "http://a.testaddressbook.com"

    @driver.execute_script("window.prompt('Favorite Programming Language?','Java');")

    alert = @driver.switch_to.alert
    expect(alert.text).to eq "Favorite Programming Language?"

    alert.send_keys('Ruby')
    alert.accept

    @driver.execute_script("alert('Hello World');")
    alert = @driver.switch_to.alert
    alert.dismiss

  end
end
