RSpec.describe Selenium::WebDriver::Element do
  it 'should locate with #find_element' do
    @driver.get("http://a.testaddressbook.com")

    # By ID
    @driver.find_element(:id, "sign-in")

    # By CSS Selector
    @driver.find_element(:css, "a[data-test=sign-in]")

    # By Link Text
    @driver.find_element(:link_text, "Sign in")

    # By Partial Link Text
    @driver.find_element(:partial_link_text, "Sign")

    # By XPath
    @driver.find_element(:xpath, "//a[@data-test='sign-in']")
  end

  it 'should locate with #find_elements' do
    # By Class Name
    @driver.find_elements(:class_name, "nav-item")[1]

    # By Tag Name
    @driver.find_elements(:tag_name, "a")[1]
  end
end
