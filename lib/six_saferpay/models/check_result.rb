module SixSaferpay
  class CheckResult

    attr_accessor(:result,
                  :message,
                  :authentication
                 )

    def initialize(result:,
                   message: ,
                  authentication: nil)
      @result = result
      @message = message
      @authentication = authentication
    end

    def to_hash
      hash = Hash.new
      hash.merge!(result: @result) if @result
      hash.merge!(message: @message) if @message
      hash.merge!(authentication: @authentication.to_h) if @authentication
      hash
    end
    alias_method :to_h, :to_hash

  end
end
