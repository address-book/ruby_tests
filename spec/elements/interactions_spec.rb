RSpec.describe Selenium::WebDriver::Element do
  it 'interacts with an element' do
    @driver.get("http://a.testaddressbook.com")

    sign_in = @driver.find_element(:id, "sign-in")
    expect(sign_in.text).to eq "Sign in"
    sign_in.click

    session_email = @driver.find_element(:id, "session_email")
    expect(session_email.tag_name).to eq "input"
    session_email.send_keys("user@example.com")

    session_password = @driver.find_element(:id, "session_password")
    expect(session_password.attribute("data-test")).to eq "password"
    session_password.send_keys("password")

    form = @driver.find_element(:tag_name, "form")
    expect(form.displayed?).to eq true
    expect(form.enabled?).to eq true
    form.submit
  end
end
