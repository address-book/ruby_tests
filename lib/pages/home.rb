module RubyTests
  class Home
    attr_reader :driver

    SIGN_IN_LINK = {id: "sign-in"}

    def self.visit(driver)
      driver.get "http://a.testaddressbook.com"
      new(driver)
    end

    def initialize(driver)
      @driver = driver
    end

    def follow_signin
      driver.find_element(SIGN_IN_LINK).click
    end
  end
end

