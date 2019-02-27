module SixSaferpay
  class VerificationCode

    attr_accessor :code

    def initialize(code)
      @code = code
    end

    def to_hash
      {
        "VerificationCode": @code
      }
    end
  end
end
