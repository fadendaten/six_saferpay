module SixSaferpay
  class Payer

    attr_accessor(
                  :id,
                  :ip_address,
                  :ip_location,
                  :language_code,
                  :delivery_address,
                  :billing_address
                 )


    def initialize(
                   id: nil,
                   ip_address: nil,
                   ip_location: nil,
                   language_code: nil,
                   delivery_address: nil,
                   billing_address: nil
                  )
      @id = id
      @ip_address = ip_address
      @ip_location = ip_location
      @language_code = language_code
      @delivery_address = SixSaferpay::DeliveryAddress.new(**delivery_address.to_h) if delivery_address
      @billing_address = SixSaferpay::BillingAddress.new(**billing_address.to_h) if billing_address
    end

    def to_hash
      hash = Hash.new
      hash.merge!(id: @id) if @id
      hash.merge!(ip_address: @ip_address) if @ip_address
      hash.merge!(ip_location: @ip_location) if @ip_location
      hash.merge!(language_code: @language_code) if @language_code
      hash.merge!(delivery_address: @delivery_address.to_h) if @delivery_address
      hash.merge!(billing_address: @billing_address.to_h) if @billing_address
      hash
    end
    alias_method :to_h, :to_hash

  end
end
