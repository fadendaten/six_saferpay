module SixSaferpay
  module SixManagement
    class SecurePayGateOffersResponse
      attr_accessor(:offer_id,
                    :payment_link
                   )

      def initialize(offer_id:,
                     payment_link:
                    )
        @offer_id = offer_id
        @payment_link = payment_link
      end

      def to_hash
        hash = Hash.new
        hash.merge!(offer_id: @offer_id)
        hash.merge!(payment_link: @payment_link)
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
