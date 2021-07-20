module SixSaferpay
  module SixManagement
    class SecurePayGateOffers
      attr_accessor(:payment,
                    :expiration_date,
                    :config_set,
                    :payer,
                    :billing_address_form,
                    :register_alias
                   )

      def initialize(payment:,
                     expiration_date:,
                     config_set: nil,
                     payer:,
                     billing_address_form: nil,
                     register_alias: nil
                    )
        @payment = SixSaferpay::Payment.new(payment.to_h)
        @expiration_date = SixSaferpay::ExpirationDate.new(expiration_date.to_h)
        @config_set = SixSaferpay::ConfigSet.new(config_set.to_h) if config_set
        @payer =  SixSaferpay::Payer.new(payer.to_h)
        if billing_address_form
          @billing_address_form = SixSaferpay::BillingAddressForm.new(billing_address_form.to_h)
        end
        if register_alias
          @register_alias = SixSaferpay::RegisterAlias.new(register_alias.to_h)
        end
      end

      def to_hash
        hash = Hash.new
        hash.merge!(payment: @payment.to_h)
        hash.merge!(expiration_date: @expiration_date.to_h)
        hash.merge!(config_set: @config_set.to_h) if @config_set
        hash.merge!(payer: @payer.to_h)
        if @billing_address_form
          hash.merge!(billing_address_form: @billing_address_form.to_h)
        end
        if @register_alias
          hash.merge!(register_alias: @register_alias.to_h)
        end
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        "/rest/customers/#{customerId}/terminals/#{terminalId}/spg-offers"
      end

      def response_class
        SixSaferpay::SixManagement::SecurePayGateOffersResponse
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
