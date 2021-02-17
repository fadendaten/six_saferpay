module SixSaferpay
  module SixTransaction
    class AuthorizeDirect

      attr_accessor(:request_header,
                    :terminal_id,
                    :payment,
                    :payment_means,
                    :authentication,
                    :register_alias,
                    :payer
                   )


      def initialize(request_header: nil,
                     terminal_id: nil,
                     payment:,
                     payment_means:,
                     authentication: nil,
                     register_alias: nil,
                     payer: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @terminal_id = SixSaferpay.config.terminal_id || terminal_id
        @payment = SixSaferpay::Payment.new(payment.to_h) if payment
        @payment_means = SixSaferpay::RequestPaymentMeans.new(payment_means.to_h) if payment_means
        @authentication = SixSaferpay::Authentication.new(authentication.to_h) if authentication
        @register_alias = SixSaferpay::RegisterAlias.new(register_alias.to_h) if register_alias
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @register_alias
        hash.merge!(terminal_id: @terminal_id) if @terminal_id
        hash.merge!(payment: @payment.to_h) if @payment
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(authentication: @authentication.to_h) if @authentication
        hash.merge!(register_alias: @register_alias.to_h) if @register_alias
        hash.merge!(payer: @payer.to_h) if @payer
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/AuthorizeDirect'
      end

      def response_class
        SixSaferpay::SixTransaction::AuthorizeDirectResponse
      end
    end
  end
end
