module SixSaferpay
  module SixSecurePayGateOffer
    class CreateOffer

      attr_accessor(:payment,
                    :expiration_date,
                    :config_set,
                    :payer,
                    :billing_address_form
                   )

      def initialize(payment: ,
                     expiration_date: ,
                     config_set: nil,
                     payer: ,
                     billing_address_form: 
                    )

        @payment = SixSaferpay::Payment.new(payment.to_h) if payment
        @expiration_date = expiration_date if expiration_date
        @config_set = config_set if config_set
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @billing_address_form = SixSaferpay::BillingAddressForm.new(billing_address_form) if billing_address_form
      end

      def to_hash
        hash = Hash.new
        hash.merge!(payment: @payment.to_h) if @payment
        hash.merge!(expiration_date: @expiration_date) if @expiration_date
        hash.merge!(config_set: @config_set) if @config_set
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(billing_address_form: @billing_address_form.to_h) if @billing_address_form
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        "/rest/customers/#{customer_id}/terminals/#{terminal_id}/spg-offers"
      end

      def response_class
        SixSaferpay::SixSecurePayGateOffer::CreateOfferResponse
      end

      private

      def customer_id
        SixSaferpay.config.customer_id
      end

      def terminal_id
        SixSaferpay.config.terminal_id
      end
    end
  end
end
