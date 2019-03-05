module RubyTests
  class SignUp
    attr_reader :driver

    # Define elements as class constants
    USER_EMAIL = {id: 'user_email'}
    USER_PASSWORD = {id: 'user_password'}
    SUBMIT_BUTTON = {css: "input[data-test='submit']"}
    SUCCESS = {css: "span[data-test='current-user']"}

    # Define visit
    def self.visit(driver)
      driver.get "http://a.testaddressbook.com/sign_up"
      new(driver)
    end

    def initialize(driver)
      @driver = driver
    end

    # Define necessary methods
    def sign_up(user = User.new)
      @driver.find_element(USER_EMAIL).send_keys user.email
      @driver.find_element(USER_PASSWORD).send_keys user.password
      @driver.find_element(SUBMIT_BUTTON).click
    end

    def success?
      driver.find_elements(SUCCESS).size > 0
    end
  end
end

