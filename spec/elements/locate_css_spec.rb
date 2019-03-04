RSpec.describe Selenium::WebDriver::Element do
  it 'should locate with #find_element' do
    @driver.get("http://a.testaddressbook.com")

    # By ID
    @driver.find_element(:css, "#sign-in")

    # By Class Name
    @driver.find_element(:css, ".nav-item")

    # By Tag Name & Class Name
    @driver.find_element(:css, "a.nav-item")

    # By Multiple Classes
    @driver.find_element(:css, ".nav-item.nav-link")

    # By Attribute
    @driver.find_element(:css, "[data-test=sign-in]")

    # By Multiple Attributes
    @driver.find_element(:css, "[data-test=sign-in][class='nav-item nav-link']")
  end
end
