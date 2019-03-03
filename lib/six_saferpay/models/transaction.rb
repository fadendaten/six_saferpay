module SixSaferpay
  class Transaction

    attr_accessor(
                  :type,
                  :status,
                  :id,
                  :date,
                  :amount,
                  :order_id,
                  :acquire_name,
                  :acquire_reference,
                  :six_transaction_reference,
                  :approval_code
                 )

    def initialize(type: type,
                   status: status,
                   id: id,
                   date: date,
                   amount: amount,
                   order_id: order_id,
                   acquire_name: acquire_name,
                   acquire_reference: acquire_reference,
                   six_transaction_reference: six_transaction_reference,
                   approval_code: approval_code)
      @type = type
      @status = status
      @id = id
      @date = date
      @amount = amount
      @order_id = order_id
      @acquire_name = acquire_name
      @acquire_reference = acquire_reference
      @six_transaction_reference = six_transaction_reference
      @approval_code = approval_code
    end

    def to_hash
      {
        Type: @type,
        Status: @status,
        Id: @id,
        Date: @date,
        Amount: @amount,
        OrderId: @order_id,
        AcquirerName: @acquire_name,
        AcquirerReference: @acquire_reference,
        SixTransactionReference: @six_transaction_reference,
        ApprovalCode: @approval_code
      }
    end
    alias_method :to_h, :to_hash

  end
end
