RSpec.describe 'Element Actions Exercise' do
  before { @driver.get "http://a.testaddressbook.com/sign_in" }

  it 'signs in existing account' do

    email = "user@example.com"
    password = "password"

    # Enter email value using above email variable

    # Enter password value using above password variable

    # Click Sign In Button



    raise "Form not submitted successfully" unless @driver.current_url == "http://a.testaddressbook.com/"
  end
end
