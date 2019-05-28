module SixSaferpay
  module SixPaymentPage
    class Initialize

      attr_accessor(
        :request_header,
        :config_set,
        :terminal_id,
        :payment,
        :payment_methods,
        :payment_methods_options,
        :wallets,
        :payer,
        :register_alias,
        :return_urls,
        :notification,
        :styling,
        :billing_address_form,
        :delivery_address_form,
        :card_form,
        :condition
      )

      def initialize(request_header: nil,
                     config_set: nil,
                     terminal_id: nil,
                     payment:,
                     payment_methods: nil,
                     payment_methods_options: nil,
                     wallets: nil,
                     payer: nil,
                     register_alias: nil,
                     return_urls: nil,
                     notification: nil,
                     styling: nil,
                     billing_address_form: nil,
                     delivery_address_form: nil,
                     card_form: nil,
                     condition: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @config_set = config_set
        @terminal_id = terminal_id || SixSaferpay.config.terminal_id
        @payment = SixSaferpay::Payment.new(payment.to_h) if payment
        @payment_methods = payment_methods
        @payment_methods_options = SixSaferpay::PaymentMethodsOptions.new(payment_methods_options.to_h) if payment_methods_options
        @wallets = wallets
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @register_alias = SixSaferpay::RegisterAlias.new(register_alias.to_h) if register_alias
        @return_urls = return_urls || SixSaferpay::ReturnUrls.new()
        @notification = SixSaferpay::Notification.new(notification.to_h) if notification
        @styling = SixSaferpay::Styling.new(styling.to_h) if styling
        @billing_address_form = SixSaferpay::BillingAddressForm.new(billing_address_form.to_h) if billing_address_form
        @delivery_address_form = SixSaferpay::DeliveryAddressForm.new(delivery_address_form.to_h) if delivery_address_form
        @card_form = SixSaferpay::CardForm.new(card_form.to_h) if card_form
        @condition = condition
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h)
        hash.merge!(config_set: @config_set) if @config_set
        hash.merge!(terminal_id: @terminal_id)
        hash.merge!(payment: @payment.to_h)
        hash.merge!(payment_methods: @payment_methods) if @payment_methods
        hash.merge!(payment_methods_options: @payment_methods_options.to_h) if @payment_methods_options
        hash.merge!(wallets: @wallets) if @wallets
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(register_alias: @register_alias.to_h) if @register_alias
        hash.merge!(return_urls: @return_urls.to_h)
        hash.merge!(notification: @notification.to_h) if @notification
        hash.merge!(styling: @styling.to_h) if @styling
        hash.merge!(billing_address_form: @billing_address_form.to_h) if @billing_address_form
        hash.merge!(delivery_address_form: @delivery_address_form.to_h) if @delivery_address_form
        hash.merge!(card_form: @card_form.to_h) if @card_form
        hash.merge!(condition: @condition) if @condition
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/PaymentPage/Initialize'
      end

      def response_class
        SixSaferpay::SixPaymentPage::InitializeResponse
      end

    end
  end
end
