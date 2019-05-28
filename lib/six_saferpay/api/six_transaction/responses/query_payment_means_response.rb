module SixSaferpay
  module SixTransaction
    class QueryPaymentMeansResponse

      attr_accessor(:response_header,
                    :payment_means,
                    :payer,
                    :redirect_required,
                    :redirect_url
                   )

      def initialize(response_header: ,
                     payment_means: ,
                     payer: nil,
                     redirect_required: ,
                     redirect_url:)

        @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
        @payment_means = SixSaferpay::ResponsePaymentMeans.new(payment_means.to_h) if payment_means
        @payer = SixSaferpay::Payer.new(payer.to_h) if payer
        @redirect_required = redirect_required
        @redirect_url = redirect_url
      end

      def to_hash
        hash = Hash.new
        hash.merge!(response_header: @response_header.to_h) if @response_header
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash.merge!(payer: @payer.to_h) if @payer
        hash.merge!(redirect_required: @redirect_required) if !@redirect_required.nil?
        hash.merge!(redirect_url: @redirect_url) if @redirect_url
        hash
      end
      alias_method :to_h, :to_hash

    end
  end
end
