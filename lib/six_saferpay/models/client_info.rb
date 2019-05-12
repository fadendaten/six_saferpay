module SixSaferpay
  class ClientInfo < Model

    attr_accessor :shop_info, :os_info

    def initialize(shop_info:, os_info:)
      @shop_info = shop_info
      @os_info = os_info
    end

    def to_hash
      body = Hash.new
      body.merge!(ShopInfo: @shop_info)
      body.merge!(OsInfo: @os_info)
      body
    end
    alias_method :to_h, :to_hash

  end
end
