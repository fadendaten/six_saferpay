module SixSaferpay
  class DirectDebit

    attr_accessor(:mandate_id, :creditor_id)

    def initialize(mandate_id:, creditor_id:)
      @mandate_id = mandate_id
      @creditor_id = creditor_id
    end

    def to_hash
      hash = Hash.new
      hash.merge!(mandate_id: @mandate_id) if @mandate_id
      hash.merge!(creditor_id: @creditor_id) if @creditor_id
      hash
    end
    alias_method :to_h, :to_hash

  end
end
