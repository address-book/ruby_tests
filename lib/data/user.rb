require 'faker'

module RubyTests
  class User
    attr_accessor :email, :password

    def self.valid
      email = "user@example.com"
      password = "password"
      new(email: email, password: password)
    end

    def initialize(email: nil, password: nil)
      @email = email || Faker::Internet.email
      @password = password || Faker::Internet.password
    end
  end
end


