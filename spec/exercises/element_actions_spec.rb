RSpec.describe 'Element Actions Exercise' do
  before { @driver.get "http://a.testaddressbook.com/sign_in" }

  it 'signs in existing account' do

    email = "user@example.com"
    password = "password"

    # Enter email value using above email variable
    @driver.find_element(:id, "session_email").send_keys email

    # Enter password value using above password variable
    @driver.find_element(:id, "session_password").send_keys password

    # Click Sign In Button
    @driver.find_element(:name, "commit").click



    raise "Form not submitted successfully" unless @driver.current_url == "http://a.testaddressbook.com/"
  end
end
