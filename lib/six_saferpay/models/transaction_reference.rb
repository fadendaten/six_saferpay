module SixSaferpay
  class TransactionReference
    attr_accessor :transaction_id

    def initialize(transaction_id: transaction_id)
      @transaction_id = transaction_id
    end

    def to_hash
      {
        TransactionReference: {
          TransactionId: @transaction_id
        }
      }
    end
    alias_method :to_h, :to_hash

  end
end
