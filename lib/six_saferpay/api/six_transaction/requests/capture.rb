module SixSaferpay
  module API
    module SixTransaction
      class Capture

        attr_accessor(:request_header,
                      :transaction_reference,
                      :amount,
                      :billpay,
                      :pending_notifiction,
                      :marketplace
                     )


        def initialize(request_header: nil,
                       transaction_reference:,
                       amount: nil,
                       billpay: nil,
                       pending_notifiction: nil,
                       marketplace: nil
                      )
          @request_header = request_header || SixSaferpay::RequestHeader.new
          @transaction_reference = transaction_reference
          @amount = amount
          @billpay = billpay
          @pending_notifiction = pending_notifiction
          @marketplace = marketplace
        end

        def to_hash
          hash = Hash.new
          hash.merge!(RequestHeader: @request_header.to_h)
          hash.merge!(TransactionReference: @transaction_reference.to_h)
          hash.merge!(BillPay: @billpay.to_h) if @billpay
          hash.merge!(PendingNotification: @pending_notifiction.to_h) if @pending_notifiction
          hash.merge!(Marketplace: @marketplace.to_h) if @marketplace
          hash
        end
        alias_method :to_h, :to_hash

        def to_json
          to_hash.to_json
        end

        def url
          '/Payment/v1/Transaction/Capture'
        end

        def response_class
          SixSaferpay::SixTransaction::CaptureResponse
        end

      end
    end
  end
end
