module SixSaferpay
  module SixTransaction
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
        @payment = SixSaferpay::Payment.new(payment.to_h) if payment
        @payment_means = SixSaferpay::RequestPaymentMeans.new(payment_means.to_h) if payment_means
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @return_urls = return_urls || SixSaferpay::ReturnUrls.new()
        @styling = SixSaferpay::Styling.new(styling.to_h) if styling
        @wallet = SixSaferpay::Wallet.new(wallet.to_h) if wallet
        @payment_methods = payment_methods
        @card_form = SixSaferpay::CardForm.new(card_form.to_h) if card_form
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(config_set: @config_set) if @config_set
        hash.merge!(terminal_id: @terminal_id) if @terminal_id
        hash.merge!(payment: @payment.to_h) if @payment
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(return_urls: @return_urls.to_h ) if @return_urls
        hash.merge!(styling: @styling.to_h) if @styling
        hash.merge!(wallet: @wallet.to_h) if @wallet
        hash.merge!(payment_methods: @payment_methods) if @payment_methods
        hash.merge!(card_form: @card_form.to_h) if @card_form
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/Initialize'
      end

      def response_class
        SixSaferpay::SixTransaction::InitializeResponse
      end

    end
  end
end
