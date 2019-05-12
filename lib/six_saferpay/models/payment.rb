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
      @amount = amount
      @order_id = SixSaferpay::Ororder_id
      @description = description
      @payer_note = payer_note
      @mandate_id = mandate_id
      @options = options
      @recurring = recurring
      @installment = installment
    end

    def to_hash
      body = Hash.new
      body.merge!(Amount: @amount.to_h)
      body.merge!(OrderId: @order_id) if @order_id
      body.merge!(Description: @description)
      body.merge!(PayerNote: @payer_note) if @payer_note
      body.merge!(MandateId: @mandate_id) if @mandate_id
      body.merge!(Options: @options.to_h) if @options
      body.merge!(Recurring: @recurring.to_h) if @recurring
      body.merge!(Installment: @installment.to_h) if @installment
      body
    end
    alias_method :to_h, :to_hash
  end

end
