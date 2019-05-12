module SixSaferpay
  class Payer

    attr_accessor(:ip_address,
                  :language_code,
                  :delivery_address,
                  :billing_address
                 )


    def initialize(ip_address: nil,
                   language_code: nil,
                   delivery_address: nil,
                   billing_address: nil
                  )
      @ip_address = ip_address
      @language_code = language_code
      @delivery_address = delivery_address
      @billing_address = billing_address
    end

    def to_hash
      body = Hash.new
      body.merge!(IpAddress: @ip_address) if @ip_address
      body.merge!(LanguageCode: @language_code) if @language_code
      body.merge!(DeliveryAddress: @delivery_address) if @delivery_address
      body.merge!(BIllingAddress: @billing_address) if @billing_address
      body
    end
    alias_method :to_h, :to_hash

  end
end
