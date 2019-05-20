module SixSaferpay
  class Transaction

    attr_accessor(
                  :type,
                  :status,
                  :id,
                  :capture_id,
                  :date,
                  :amount,
                  :order_id,
                  :acquirer_name,
                  :acquirer_reference,
                  :six_transaction_reference,
                  :approval_code,
                  :direct_debit,
                  :invoice
                 )

    def initialize(type:,
                   status:,
                   id:,
                   capture_id: nil,
                   date:,
                   amount:,
                   order_id: nil,
                   acquirer_name: nil,
                   acquirer_reference: nil,
                   six_transaction_reference:,
                   approval_code: nil,
                   direct_debit: nil,
                   invoice: nil
                  )
      @type = type
      @status = status
      @id = id
      @capture_id = capture_id
      @date = date
      @amount = SixSaferpay::Amount.new(amount)
      @order_id = order_id
      @acquirer_name = acquirer_name
      @acquirer_reference = acquirer_reference
      @six_transaction_reference = six_transaction_reference
      @approval_code = approval_code
      @direct_debit = SixSaferpay::DirectDebit.new(direct_debit) if direct_debit 
      @invoice = SixSaferpay::Invoice.new(invoice) if invoice
    end

    def to_hash
      body = Hash.new
      body.merge!(type: @type)
      body.merge!(status: @status)
      body.merge!(id: @id)
      body.merge!(capture_id: @capture_id) if @capture_id
      body.merge!(date: @date)
      body.merge!(amount: @amount.to_h)
      body.merge!(order_id: @order_id) if @order_id
      body.merge!(acquirer_name: @acquirer_name) if @acquirer_name
      body.merge!(acquirer_reference: @acquirer_reference) if @acquirer_reference
      body.merge!(six_transaction_reference: @six_transaction_reference)
      body.merge!(approval_code: @approval_code) if @approval_code
      body.merge!(direct_debit: @direct_debit.to_h) if @direct_debit
      body.merge!(invoice: @invoice.to_h) if @invoice
      body
    end
    alias_method :to_h, :to_hash

  end
end
