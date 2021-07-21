module SixSaferpay
  class Marketplace

    attr_accessor(:submerchant_id, :fee, :fee_refund)

    def initialize(submerchant_id: , fee: , fee_refund: )
      @submerchant_id = submerchant_id
      @fee = SixSaferpay::Fee.new(**fee.to_h) if fee
      @fee_refund = SixSaferpay::FeeRefund.new(**fee_refund.to_h) if fee_refund
    end

    def to_hash
      hash = Hash.new
      hash.merge!(submerchant_id: @submerchant_id) if @submerchant_id
      hash.merge!(fee: @fee.to_h) if @fee
      hash.merge!(fee_refund: @fee_refund.to_h) if @fee_refund
      hash
    end
    alias_method :to_h, :to_hash

  end
end
