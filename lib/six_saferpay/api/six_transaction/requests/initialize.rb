module SixSaferpay
  module API
    module SixTransactions
      class Initialize

        attr_accessor(
          :request_header,
          :config_set,
          :terminal_id,
          :payment,
          :payment_means,
          :payer,
          :return_urls,
          :styling,
          :wallet,
          :payment_methods,
          :card_form
          )


        def initialize(request_header: nil,
                       config_set: nil,
                       terminal_id: nil,
                       payment:,
                       payment_means: nil,
                       payer: nil,
                       return_urls: nil,
                       styling: nil,
                       wallet: nil,
                       payment_methods: nil,
                       card_form: nil
                      )
          @request_header = request_header || SixSaferpay::RequestHeader.new()
          @config_set = config_set
          @terminal_id = terminal_id || SixSaferpay.config.terminal_id
          @payment = payment
          @payment_means = payment_means
          @return_urls = return_urls || SixSaferpay::ReturnUrls.new()
          @styling = styling
          @wallet = wallet
          @payment_methods = payment_methods
          @card_form = card_form
        end

        def to_hash
          hash = Hash.new
          hash.merge!(RequestHeader: @request_header.to_h)
          hash.merge!(ConfigSet: @config_set) if @config_set
          hash.merge!(TerminalID: @terminal_id)
          hash.merge!(Payment: @payment.to_h)
          hash.merge!(PaymentMeans: @payment_means.to_h) if @payment_means
          hash.merge!(Payer: @payer.to_h) if @payer
          hash.merge!(ReturnUrls: @return_urls.to_h ) if @return_urls
          hash.merge!(Styling: @styling.to_h) if @styling
          hash.merge!(Wallet: @wallet.to_h) if @wallet
          hash.merge!(PaymentMethods: @payment_methods) if @payment_methods
          hash.merge!(CardForm: @card_form.to_h) if @card_form
          hash
        end
        alias_method :to_h, :to_hash

        def to_json
          to_hash.to_json
        end

        def url
          '/Payment/v1/Transaction/Initialize'
        end

      end
    end
  end
end
