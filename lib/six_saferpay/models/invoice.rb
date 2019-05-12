module SixSaferpay
  class Invoice

    attr_accessor(:payee, :reason_for_transfer, :due_date)

    def initialize(payee: nil, reason_for_transfer: nil, due_date: nil)
      @payee = payee
      @reason_for_transfer = reason_for_transfer
      @due_date = due_date
    end

    def to_hash
      body = Hash.new
      body.merge!(Payee: @payee.to_h)
      body.merge!(ReasonForTransfer: @reason_for_transfer)
      body.merge!(DueDate: @due_date)
      body
    end
    alias_method :to_h, :to_hash

  end
end
