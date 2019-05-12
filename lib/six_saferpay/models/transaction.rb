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
                  :approval_code,
                  :direct_debit,
                  :invoice
                 )

    def initialize(type:,
                   status:,
                   id:,
                   date:,
                   amount:,
                   order_id: nil,
                   acquire_name: nil,
                   acquire_reference: nil,
                   six_transaction_reference:,
                   approval_code:,
                   direct_debit:,
                   invoice:
                  )
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
      @direct_debit = direct_debit
      @invoice = invoice
    end

    def to_hash
      body = Hash.new
      body.merge!(Type: @type)
      body.merge!(Status: @status)
      body.merge!(Id: @id)
      body.merge!(Date: @date)
      body.merge!(Amount: @amount.to_h)
      body.merge!(OrderId: @order_id) if @order_id
      body.merge!(AcquirerName: @acquire_name) if @acquire_name
      body.merge!(AcquirerReference: @acquire_reference) if @acquire_reference
      body.merge!(SixTransactionReference: @six_transaction_reference)
      body.merge!(ApprovalCode: @approval_code) if @approval_code
      body.merge!(DirectDebit: @direct_debit.to_h) if @direct_debit
      body.merge!(Invoice: @invoice.to_h) if @invoice
      body
    end
    alias_method :to_h, :to_hash

  end
end
