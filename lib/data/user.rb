require 'faker'

module RubyTests
  class User
    attr_accessor :email, :password

    def self.random
      email = Faker::Internet.email
      password = Faker::Internet.password
      User.new(email: email, password: password)
    end

    def initialize(opt)
      @email = opt[:email]
      @password = opt[:password]
    end
  end
end


