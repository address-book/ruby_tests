RSpec.describe "Selenium Script" do
  it "opens and closes a Browser" do
    # Start Session (opens browser)
    driver = Selenium::WebDriver.for :chrome

    # Navigate
    driver.get "http://a.testaddressbook.com"

    # Synchronize Browser
    Selenium::WebDriver::Wait.new.until { driver.first :id, "sign-in" }

    # Locate Element
    element = driver.find_element :id, "sign-in"

    # Take Action on Element
    element.click

    # Make Assertion (based on test runner)
    expect(driver.current_url).to eq "http://a.testaddressbook.com/sign_in"

    # Quit Session (closes browser)
    driver.quit
  end
end
