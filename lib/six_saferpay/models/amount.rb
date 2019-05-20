module SixSaferpay
  class Amount

    attr_accessor :value, :currency_code

    def initialize(value:, currency_code:)
      @value = value
      @currency_code = currency_code
    end

    def to_hash
      body = Hash.new
      body.merge!(value: @value)
      body.merge!(currency_code: @currency_code)
    end
    alias_method :to_h, :to_hash

  end
end
