RSpec.describe Selenium::WebDriver::Driver do
  it "creates on Sauce Labs JWP" do
    sauce = {browser_name: 'chrome',
             platform: "macOS 10.12",
             version: '71',
             selenium_version: '3.141.59',
             username: ENV['SAUCE_USERNAME'],
             access_key: ENV['SAUCE_ACCESS_KEY']}

    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(sauce)
    url = "https://ondemand.saucelabs.com/wd/hub"

    driver = Selenium::WebDriver.for :remote,
                                     desired_capabilities: capabilities,
                                     url: url

    bridge = driver.instance_variable_get('@bridge')
    expect(bridge.http.send(:server_url).to_s).to include("saucelabs")

    driver.quit
  end

  it "creates on Sauce Labs W3C" do
    sauce = {"sauce:options" => {browser_name: 'edge',
                                 platform_name: "Windows 10",
                                 browser_version: '18.17763',
                                 selenium_version: '3.141.59',
                                 username: ENV['SAUCE_USERNAME'],
                                 access_key: ENV['SAUCE_ACCESS_KEY']}}

    capabilities = Selenium::WebDriver::Remote::Capabilities.edge(sauce)

    url = "https://@ondemand.saucelabs.com/wd/hub"

    driver = Selenium::WebDriver.for :remote,
                                     desired_capabilities: capabilities,
                                     url: url

    bridge = driver.instance_variable_get('@bridge')
    expect(bridge.http.send(:server_url).to_s).to include("saucelabs")

    driver.quit
  end
end
