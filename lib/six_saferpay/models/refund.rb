module SixSaferpay
  class Refund 

    attr_accessor(:amount,
                  :order_id,
                  :description
                 )

    def initialize(amount:,
                   order_id: nil,
                   description: nil)
      @amount = SixSaferpay::Amount.new(amount.to_h) if amount
      @order_id = order_id
      @description = description
    end

    def to_hash
      hash = Hash.new
      hash.merge!(amount: @amount.to_h) if @amount
      hash.merge!(order_id: @order_id) if @order_id
      hash.merge!(description: @description) if @description
      hash
    end
    alias_method :to_h, :to_hash
  end

end
