module SixSaferpay
  class PendingNotification

    attr_accessor(:merchant_email, :notify_url)

    def initialize(merchant_email: nil, notify_url: nil)
      @merchant_email = merchant_email
      @notify_url = notify_url
    end

    def to_hash
      hash = Hash.new
      hash.merge!(merchant_email: @merchant_email) if @merchant_email
      hash.merge!(notify_url: @notify_url) if @notify_url
      hash
    end
    alias_method :to_h, :to_hash

  end
end
