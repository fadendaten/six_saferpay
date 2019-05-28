module SixSaferpay
  class Twint

    attr_accessor(:certificate_expiration_date)

    def initialize(certificate_expiration_date:)
      @certificate_expiration_date = certificate_expiration_date
    end

    def to_hash
      hash = Hash.new
      hash.merge!(certificate_expiration_date: @certificate_expiration_date)
      hash
    end
    alias_method :to_h, :to_hash

  end
end
