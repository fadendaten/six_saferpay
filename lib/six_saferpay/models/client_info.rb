module SixSaferpay
  class ClientInfo < Model

    attr_accessor :shop_info, :os_info

    def initialize(shop_info:, os_info:)
      @shop_info = shop_info
      @os_info = os_info
    end

    def to_hash
      hash = Hash.new
      hash.merge!(shop_info: @shop_info)
      hash.merge!(os_info: @os_info)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
