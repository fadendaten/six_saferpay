module SixSaferpay
  class Invoice

    attr_accessor(:payee, :reason_for_transfer, :due_date)

    def initialize(payee: nil, reason_for_transfer: nil, due_date: nil)
      @payee = SixSaferpay::Payee.new(payee.to_h) if payee
      @reason_for_transfer = reason_for_transfer
      @due_date = due_date
    end

    def to_hash
      body = Hash.new
      body.merge!(payee: @payee.to_h) if @payee
      body.merge!(reason_for_transfer: @reason_for_transfer) if @reason_for_transfer
      body.merge!(due_date: @due_date) if @due_date
      body
    end
    alias_method :to_h, :to_hash

  end
end
