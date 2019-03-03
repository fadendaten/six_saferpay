module SixSaferpay
  module API
    module PaymentPages
      class AssertResponse

        def initialize(hash)
          transaction = hash[:Transaction]
          amount = transaction[:Amount]
          @response_header = SixSaferpay::ResponseHeader.new(hash[:ResponseHeader])
          @transaction = SixSaferpay::Transaction.new(
            type: transaction[:Type],
            status: transaction[:Status],
            id: transaction[:Id],
            date: transaction[:Date],
            amount: SixSaferpay::Amount.new(
              value: amount[:Value], currency: amount[:CurrencyCode]),
            order_id: transaction[:OrderId],
            acquire_name: transaction[:AcquirerName],
            acquire_reference: transaction[:AcquirerReference],
            six_transaction_reference: transaction[:SixTransactionReference],
            approval_code: transaction[:ApprovalCode]
          ).to_h

        end

        def to_hash
          hash = Hash.new
          # hash.merge!(@request_header.to_h)
          # hash.merge!(@token.to_h)
          # hash.merge!(@expiration.to_h)
          # hash.merge!(@redirect_url.to_h)
          hash
        end
        alias_method :to_h, :to_hash

      end
    end
  end
end
