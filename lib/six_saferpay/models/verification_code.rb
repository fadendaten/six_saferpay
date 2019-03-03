module SixSaferpay
  class VerificationCode

    attr_accessor :code

    def initialize(code: code)
      @code = code
    end

    def to_hash
      {
        VerificationCode: @code
      }
    end
    alias_method :to_h, :to_hash

  end
end
