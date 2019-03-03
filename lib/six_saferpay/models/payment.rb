module SixSaferpay
  class Payment
    attr_accessor :value, :currency, :order_id, :description

    def initialize(value: value,
                   currency: currency,
                   order_id: order_id,
                   description: description)
      @value = value
      @currency = currency
      @order_id = order_id
      @description = description
    end

    def to_hash
      {
        Payment: {
          Amount: {
            Value: @value,
            CurrencyCode: @currency
          },
          OrderId: @order_id,
          Description: @description
        }
      }
    end
    alias_method :to_h, :to_hash
  end

end
