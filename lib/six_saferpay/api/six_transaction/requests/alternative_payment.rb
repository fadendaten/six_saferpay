module SixSaferpay
  module SixTransaction
    class AlternativePayment

      attr_accessor(:request_header,
                    :terminal_id,
                    :payment,
                    :payment_method,
                    :payment_method_options,
                    :payer,
                    :notification,
                    :order,
                    :risk_factors,
                   )



      def initialize(request_header: nil,
                     terminal_id:,
                     payment:,
                     payment_method:,
                     payment_method_options: nil,
                     payer: nil,
                     notification:,
                     order: nil,
                     risk_factors: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @terminal_id = terminal_id
        @payment = SixSaferpay::Payment.new(payment.to_h)
        @payment_method = payment_method
        @payment_method_options = SixSaferpay::PaymentMethodOptions.new(payment_method_options.to_h) if payment_method_options
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @notification = SixSaferpay::Notification.new(notification.to_h)
        @order = SixSaferpay::Order.new(order.to_h) if order
        @risk_factors = SixSaferpay::RiskFactors.new(risk_factors.to_h) if risk_factors
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(terminal_id: @terminal_id)
        hash.merge!(payment: @payment.to_h)
        hash.merge!(payment_method: @payment_method)
        hash.merge!(payment_method_options: @payment_method_options.to_h) if @payment_method_options
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(notification: @notification.to_h)
        hash.merge!(order: @order.to_h) if @order
        hash.merge!(risk_factors: @risk_factors.to_h) if @risk_factors
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Transaction/AlternativePayment'
      end

      def response_class
        SixSaferpay::SixTransaction::AlternativePaymentResponse
      end

    end
  end
end
