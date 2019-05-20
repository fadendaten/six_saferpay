module SixSaferpay
  class TransactionReference

    attr_accessor(:transaction_id,
                  :order_id
                 )

    def initialize(transaction_id: nil, order_id: nil)
      @transaction_id = transaction_id
      @order_id = order_id
    end

    def to_hash
      hash = Hash.new
      hash.merge!(transaction_id: @transaction_id) if @transaction_id
      hash.merge!(order_id: @order_id) if @order_id
      hash
    end
    alias_method :to_h, :to_hash

  end
end
