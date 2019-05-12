module SixSaferpay
  class Notification

    attr_accessor(:merchant_email,
                  :payer_email,
                  :notify_url
                 )

    def initialize(merchant_email: nil, payer_email: nil, notify_url: nil)
      @merchant_email = merchant_email
      @payer_email = payer_email
      @notify_url = notify_url
    end

    def to_hash
      body = Hash.new
      body.merge!(MerchantMail: @merchant_email) if @merchant_email
      body.merge!(PayerEmail: @payer_email) if @payer_email
      body.merge!(NotifyUrl: @notify_url) if @notify_url
      body
    end
    alias_method :to_h, :to_hash

  end
end

