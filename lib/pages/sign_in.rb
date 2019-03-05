module RubyTests
  class SignIn < Base
    SESSION_EMAIL = {id: 'session_email'}
    SESSION_PASSWORD = {id: 'session_password'}
    SUBMIT_BUTTON = {css: "input[data-test='submit']"}
    SUCCESS = {css: "span[data-test='current-user']"}

    def self.visit(driver)
      Home.visit(driver).follow_signin

      new(driver)
    end

    def sign_in(user)
      send_keys SESSION_EMAIL, user.email
      send_keys SESSION_PASSWORD, user.password
      click SUBMIT_BUTTON
    end

    def success?
      driver.find_elements(SUCCESS).size > 0
    end

  end
end

