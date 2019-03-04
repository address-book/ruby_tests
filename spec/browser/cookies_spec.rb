RSpec.describe Selenium::WebDriver::Driver do
  it "interacts with cookies" do
    @driver.get "http://a.testaddressbook.com"

    cookie = {name: 'name',
              value: 'value',
              path: '/sign_in',
              domain: 'a.testaddressbook.com',
              secure: false,
              expiration: DateTime.new(2039),
              http_only: true}

    @driver.manage.add_cookie cookie

    cookies = @driver.manage.all_cookies
    expect(cookies.size).to eq(1)

    @driver.get "http://a.testaddressbook.com/sign_in"

    cookies = @driver.manage.all_cookies
    expect(cookies.size).to eq(2)
    expect(cookies.last[:name]).to eq('name')
    expect(cookies.last[:value]).to eq('value')

    @driver.manage.delete_cookie(cookie[:name])
    @driver.manage.delete_all_cookies
  end
end
