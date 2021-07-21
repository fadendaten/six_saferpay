module SixSaferpay
  class PaymentMethodsOptions

    attr_accessor(:alipay, :ideal)

    def initialize(alipay: nil, ideal: nil)
      @alipay = SixSaferpay::Alipay.new(**alipay.to_h) if alipay
      @ideal = SixSaferpay::Ideal.new(**ideal.to_h) if ideal
    end

    def to_hash
      hash = Hash.new
      hash.merge!(alipay: @alipay.to_h) if @alipay
      hash.merge!(ideal: @ideal.to_h) if @ideal
      hash
    end
    alias_method :to_h, :to_hash

  end
end
