module RubyTests
  class SignIn
    attr_reader :driver

    SESSION_EMAIL = {id: 'session_email'}
    SESSION_PASSWORD = {id: 'session_password'}
    SUBMIT_BUTTON = {css: "input[data-test='submit']"}
    SUCCESS = {css: "span[data-test='current-user']"}

    def self.visit(driver)
      driver.get "http://a.testaddressbook.com/sign_in"
      new(driver)
    end

    def initialize(driver)
      @driver = driver
    end

    def sign_in(user)
      @driver.find_element(SESSION_EMAIL).send_keys user.email
      @driver.find_element(SESSION_PASSWORD).send_keys user.password
      @driver.find_element(SUBMIT_BUTTON).click
    end

    def success?
      driver.find_elements(SUCCESS).size > 0
    end

  end
end

