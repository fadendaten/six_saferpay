module SixSaferpay
  class PaymentMethodsOptions

    attr_accessor(:alipay)

    def initialize(alipay: nil)
      @alipay = SixSaferpay::Alipay.new(alipay.to_h) if alipay
    end

    def to_hash
      hash = Hash.new
      hash.merge!(alipay: @alipay.to_h) if @alipay
      hash
    end
    alias_method :to_h, :to_hash

  end
end
