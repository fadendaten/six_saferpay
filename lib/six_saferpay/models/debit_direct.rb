module SixSaferpay
  class DebitDirect

    attr_accessor(:mandate_id, :creditor_id)

    def invoice(mandate_id:, creditor_id:)
      @mandate_id = mandate_id
      @creditor_id = creditor_id
    end

    def to_hash
      body = Hash.new
      body.merge!(MandateId: @mandate_id)
      body.merge!(CreditorId: @creditor_id)
      body
    end
    alias_method :to_h, :to_hash

  end
end
