module SixSaferpay
  class PendingNotification

    attr_accessor(:merchant_emails, :notify_url)

    def initialize(merchant_emails: nil, notify_url: nil)
      @merchant_emails = merchant_emails
      @notify_url = notify_url
    end

    def to_hash
      hash = Hash.new
      hash.merge!(merchant_emails: @merchant_emails) if @merchant_emails
      hash.merge!(notify_url: @notify_url) if @notify_url
      hash
    end
    alias_method :to_h, :to_hash

  end
end
