require "selenium/server"

RSpec.describe Selenium::WebDriver::Driver do
  it "creates with local server" do
    jar = File.expand_path("../../../bin/selenium-server-standalone.jar", __FILE__)
    port = Selenium::WebDriver::PortProber.above(4444)
    @server ||= Selenium::Server.new(jar,
                                     port: port,
                                     background: true,
                                     timeout: 60)
    @server.start
    at_exit { @server.stop }

    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome
    driver = Selenium::WebDriver.for :remote, desired_capabilities: capabilities

    bridge = driver.instance_variable_get('@bridge')
    expect(bridge.http.send(:server_url).to_s).to include("wd/hub")

    driver.quit
  end
end
