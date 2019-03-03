module SixSaferpay
  class Amount

    attr_accessor :value, :currency

    def initialize(value: value, currency: currency)
      @value = value
      @currency = currency
    end

    def to_hash
      {
        Amount: {
          Value: @value,
          CurrencyCode: @currency
        }
      }
    end
    alias_method :to_h, :to_hash

  end
end
