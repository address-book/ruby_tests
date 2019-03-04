RSpec.describe "Authentication" do
  let(:driver) { @driver }

  it 'logs in user' do
    driver.navigate.to 'http://a.testaddressbook.com/sign-in'

    user = User.new(email: 'user@example.com',
                    password: 'password')

    driver.find_element(id: 'session_email').send_keys user.email
    driver.find_element(id: 'session_password').send_keys user.password
    driver.find_element(css: "input[data-test='submit']").click
  end
end
