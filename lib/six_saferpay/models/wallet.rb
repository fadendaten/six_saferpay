module SixSaferpay
  class Wallet

    attr_accessor(:type,
                  :payment_methods,
                  :request_delivery_address,
                  :enable_amount_adjustment
                 )

    def initialize(type:,
                  payment_methods: nil,
                  request_delivery_address: nil,
                  enable_amount_adjustment: nil
                  )
      @type = type
      @payment_methods = payment_methods
      @request_delivery_address = request_delivery_address
      @enable_amount_adjustment = enable_amount_adjustment
    end

    def to_hash
      body = Hash.new
      body.merge!(Type: @type)
      body.merge!(PaymentMethods: @payment_methods) if @payment_methods
      body.merge!(RequestDeliveryAddress: @request_delivery_address) if @request_delivery_address
      body.merge!(EnableAmountAdjustment: @enable_amount_adjustment) if @enable_amount_adjustment
      body
    end
    alias_method :to_h, :to_hash

  end
end
