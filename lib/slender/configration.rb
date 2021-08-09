module Slender
  module Configuration
    attr_accessor :max_string_length
    def configure
      yield self
    end
    def reset
      self.max_string_length = 500
    end
    def self.extended(base)
      base.reset
    end
  end
end
