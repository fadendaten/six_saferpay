module SixSaferpay
  module SecurePayGateApi
    class Client < SixSaferpay::Client

      protected

      def header
        header = super.header()
        header.merge!(
          {
            'Saferpay-ApiVersion': SixSaferpay::API::VERSION,
            'Saferpay-RequestId': request_id()
          }
        )
      end

      private

      def request_id
        SecureRandom.uuid
      end
    end
  end
end
