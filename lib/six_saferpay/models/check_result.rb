module SixSaferpay
  class CheckResult

    attr_accessor(:result,
                  :message
                 )

    def initialize(result:,
                   message: )
      @result = result
      @message = message
    end

    def to_hash
      hash = Hash.new
      hash.merge!(result: @result) if @result
      hash.merge!(message: @message) if @message
      hash
    end
    alias_method :to_h, :to_hash

  end
end
