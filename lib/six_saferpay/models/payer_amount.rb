module SixSaferpay
  class PayerAmount

    attr_accessor(:value,
                  :currency_code
                 )

    def initialize(value: , currency_code: )
      @value = value
      @currency_code = @currency_code
    end

    def to_hash
      hash = Hash.new
      hash.merge!(Value: @value) if @value
      hash.merge!(CurrencyCode: @currency_code) if @currency_code
      hash
    end
    alias_method :to_h, :to_hash

  end
end
