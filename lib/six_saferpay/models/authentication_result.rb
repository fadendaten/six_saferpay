module SixSaferpay
  class AuthenticationResult

    attr_accessor :result, :message

    def initialize(result:, message:)
      @result = result
      @message = message
    end

    def to_hash
      hash = Hash.new
      hash.merge!(result: @result)
      hash.merge!(message: @message)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
