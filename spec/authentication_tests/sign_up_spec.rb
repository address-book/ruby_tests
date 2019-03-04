RSpec.describe "Authentication" do
  let(:driver) { @driver }
  let(:driver) { @driver }
  let(:wait) { Selenium::WebDriver::Wait.new(timeout: 10) }
  let(:select) { Selenium::WebDriver::Support::Select }

  it 'signs up user' do
    driver.navigate.to 'http://a.testaddressbook.com/sign_up'

    user = User.new

    driver.find_element(id: 'user_email').send_keys user.email
    driver.find_element(id: 'user_password').send_keys user.password
    driver.find_element(css: "input[data-test='submit']").click
  end
end
