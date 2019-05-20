module SixSaferpay
  class Alipay

    attr_accessor(:local_wallet)

    def initialize(local_wallet:)
      @local_wallet = local_wallet
    end

    def to_hash
      hash = Hash.new
      hash.merge!(local_wallet: @local_wallet)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
