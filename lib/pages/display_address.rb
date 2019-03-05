module RubyTests
  class DisplayAddress < Base
    def self.visit(driver)
      new(driver)
    end

    def valid?(address)
    end
  end
end

