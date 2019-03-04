module RubyTests
  class SignIn
    attr_reader :driver

    def self.visit(driver)
      driver.get "http://a.testaddressbook.com/sign_in"
      new(driver)
    end

    def initialize(driver)
      @driver = driver
    end

    def sign_in(user)
      driver.find_element(id: 'session_email').send_keys user.email
      driver.find_element(id: 'session_password').send_keys user.password
      driver.find_element(css: "input[data-test='submit']").click
    end

    def success?
      driver.find_elements(css: "span[data-test='current-user']").size > 0
    end
  end
end
