module SixSaferpay
  class Amount

    attr_accessor :value, :currency_code

    def initialize(value:, currency_code:)
      @value = value
      @currency_code = currency_code
    end

    def to_hash
      hash = Hash.new
      hash.merge!(value: @value)
      hash.merge!(currency_code: @currency_code)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
