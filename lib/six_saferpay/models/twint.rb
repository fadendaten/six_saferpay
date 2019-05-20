module SixSaferpay
  class Twint

    attr_accessor(:certificate_expiration_date)

    def initialize(certificate_expiration_date:)
      @certificate_expiration_date = certificate_expiration_date
    end

    def to_hash
      body = Hash.new
      body.merge!(certificate_expiration_date: @certificate_expiration_date)
      body
    end
    alias_method :to_h, :to_hash

  end
end
