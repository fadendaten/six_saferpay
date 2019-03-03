module SixSaferpay
  module API
    module Transaction
      class Cancel

        attr_accessor :request_header, :transaction_reference

        def initialize(transaction_id)
          @request_header = SixSaferpay::RequestHeader.new
          @transaction_reference = SixSaferpay::TransactionReference
            .new(transaction_id)
        end

        def to_hash
          hash = Hash.new
          hash.merge!(@request_header.to_h)
          hash.merge!(@transaction_reference.to_h)
          hash
        end
        alias_method :to_h, :to_hash

        def to_json
          to_hash.to_json
        end

        def url
          '/Payment/v1/Transaction/Cancel'
        end

      end
    end
  end
end
