module SixSaferpay
  class Dcc

    attr_accessor(:payer_amount)

    def initialize(payer_amount:)
      @payer_amount = SixSaferpay::PayerAmount.new(payer_amount.to_h)
    end

    def to_hash
      hash = Hash.new
      hash.merge!(payer_amount: @payer_amount.to_h) if @payer_amount
      hash
    end
    alias_method :to_h, :to_hash

  end
end
