module SixSaferpay
  class Expiration

    attr_accessor :expiration

    def initialize(expiration: expiration)
      @expiration = expiration
    end

    def to_hash
      {
        Expiration: @expiration
      }
    end
    alias_method :to_h, :to_hash

  end
end
