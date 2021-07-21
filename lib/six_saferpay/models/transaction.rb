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
      @amount = SixSaferpay::Amount.new(**amount.to_h)
      @order_id = order_id
      @acquirer_name = acquirer_name
      @acquirer_reference = acquirer_reference
      @six_transaction_reference = six_transaction_reference
      @approval_code = approval_code
      @direct_debit = SixSaferpay::DirectDebit.new(**direct_debit.to_h) if direct_debit
      @invoice = SixSaferpay::Invoice.new(**invoice.to_h) if invoice
    end

    def to_hash
      hash = Hash.new
      hash.merge!(type: @type)
      hash.merge!(status: @status)
      hash.merge!(id: @id)
      hash.merge!(capture_id: @capture_id) if @capture_id
      hash.merge!(date: @date)
      hash.merge!(amount: @amount.to_h)
      hash.merge!(order_id: @order_id) if @order_id
      hash.merge!(acquirer_name: @acquirer_name) if @acquirer_name
      hash.merge!(acquirer_reference: @acquirer_reference) if @acquirer_reference
      hash.merge!(six_transaction_reference: @six_transaction_reference)
      hash.merge!(approval_code: @approval_code) if @approval_code
      hash.merge!(direct_debit: @direct_debit.to_h) if @direct_debit
      hash.merge!(invoice: @invoice.to_h) if @invoice
      hash
    end
    alias_method :to_h, :to_hash

  end
end
