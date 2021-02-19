module SixSaferpay
  class FraudPrevention

    attr_accessor(
      :result,
    )

    def initialize(
      result: nil
      )
      @result = result
    end

    def to_hash
      hash = Hash.new
      if @result
        hash.merge!(result: @result)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
