module RubyTests
  class User
    attr_accessor :email, :password

    def initialize(opt)
      @email = opt[:email]
      @password = opt[:password]
    end
  end
end


