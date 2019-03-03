module SixSaferpay
  class Token

    attr_accessor :token

    def initialize(token: token)
      @token = token
    end

    def to_hash
      {
        Token: @token
      }
    end
    alias_method :to_h, :to_hash

  end
end
