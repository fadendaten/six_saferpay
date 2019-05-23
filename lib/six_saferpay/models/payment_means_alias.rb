module SixSaferpay
  class PaymentMeansAlias

    attr_accessor(:id,
                  :verification_code
                 )

    def initialize(id:,
                   verification_code: nil
                  )
      @id = id
      @verification_code = verification_code
    end

    def to_hash
      hash = Hash.new
      hash.merge!(id: @id) if @id
      hash.merge!(verification_code: @verification_code) if @verification_code
      hash
    end
    alias_method :to_h, :to_hash
  end
end
