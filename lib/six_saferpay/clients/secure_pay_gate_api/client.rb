module SixSaferpay
  module SecurePayGateApi
    class Client < SixSaferpay::Client

      protected

      def header
        super.merge!(
          {
            'Saferpay-ApiVersion' => SixSaferpay::API::VERSION,
            'Saferpay-RequestId' => request_id()
          }
        )
      end

      private

      def request_id
        @request_id ||= SecureRandom.uuid
      end
    end
  end
end
