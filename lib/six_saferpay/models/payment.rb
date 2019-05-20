module SixSaferpay
  class Payment
    attr_accessor(:amount,
                  :order_id,
                  :description,
                  :payer_note,
                  :mandate_id,
                  :options,
                  :recurring,
                  :installment
                 )

    def initialize(amount:,
                   order_id: nil,
                   description:,
                   payer_note: nil,
                   mandate_id: nil,
                   options: nil,
                   recurring: nil,
                   installment: nil)
      @amount = SixSaferpay::Amount.new(amount.to_h) if amount
      @order_id = order_id
      @description = description
      @payer_note = payer_note
      @mandate_id = mandate_id
      @options = SixSaferpay::Options.new(options.to_h) if options
      @recurring = SixSaferpay.new(recurring.to_h) if recurring
      @installment = SixSaferpay::Installment.new(installment.to_h) if installment
    end

    def to_hash
      hash = Hash.new
      hash.merge!(amount: @amount.to_h)
      hash.merge!(order_id: @order_id) if @order_id
      hash.merge!(description: @description)
      hash.merge!(payer_note: @payer_note) if @payer_note
      hash.merge!(mandate_id: @mandate_id) if @mandate_id
      hash.merge!(options: @options.to_h) if @options
      hash.merge!(recurring: @recurring.to_h) if @recurring
      hash.merge!(installment: @installment.to_h) if @installment
      hash
    end
    alias_method :to_h, :to_hash
  end

end
