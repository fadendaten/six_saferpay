module SixSaferpay
  module API
    module PaymentPage
      class Initialize

        attr_accessor(
          :request_header,
          :config_set,
          :terminal_id,
          :payment,
          :payment_methods,
          :wallets,
          :payer,
          :register_alias,
          :return_urls,
          :notification,
          :styling,
          :billing_address_form,
          :delivery_address_form,
          :card_form
        )

        def initialize(request_header: nil,
                       config_set: nil,
                       terminal_id: nil,
                       payment:,
                       payment_methods: nil,
                       wallets: nil,
                       payer:,
                       register_alias: nil,
                       return_urls: nil,
                       notification: nil,
                       styling: nil,
                       billing_address_form: nil,
                       delivery_address_form: nil,
                       card_form: nil
                      )
          @request_header = request_header || SixSaferpay::RequestHeader.new()
          @config_set = config_set
          @terminal_id = terminal_id || SixSamerpay.config.terminal_id
          @payment = payment
          @payment_methods = payment_methods
          @wallets = wallets
          @payer = payer
          @register_alias = register_alias
          @return_urls = return_urls || SixSaferpay::ReturnUrls.new
          @notification = notification
          @styling = styling
          @billing_address_form = billing_address_form
          @delivery_address_form = delivery_address_form
          @card_form = card_form
        end

        def to_hash
          hash = Hash.new
          hash.merge!(RequestHeader: @request_header.to_h)
          hash.merge!(ConfigSet: @config_set) if @config_set
          hash.merge!(TerminalId: @terminal_id)
          hash.merge!(Payment: @payment.to_h)
          hash.merge!(PaymentMethods: @payment_methods) if @payment_methods
          hash.merge!(Wallets: @wallets) if @wallets
          hash.merge!(Payer: @payer.to_h) if @payer
          hash.merge!(RegisterAlias: @register_alias) if @register_alias
          hash.merge!(ReturnUrls: @return_urls.to_h)
          hash.merge!(Notification: @notification.to_h) if @notification
          hash.merge!(Styling: @styling.to_h) if @styling
          hash.merge!(BillingAdderssForm: @billing_address_form.to_h) if @billing_address_form
          hash.merge!(DeliveryAddressForm: @delivery_address_form.to_h) if @delivery_address_form
          hash.merge!(CardForm: @card_form.to_h) if @card_form
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
          SixSaferpay::PaymentPage::InitializeResponse
        end

      end
    end
  end
end
