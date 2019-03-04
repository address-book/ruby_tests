require "ruby_tests"
require "selenium-webdriver"
require "rspec"

# Make sure there is a chromedriver on PATH
path = File.expand_path("../../bin/chromedriver",  __FILE__)
ENV['PATH'] = "#{ENV['PATH']}:#{path}"

include RubyTests

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before do
    @driver = Selenium::WebDriver.for :chrome
  end

  config.after do
    @driver.quit
  end
end
