module SixSaferpay
  class PaymentMeans

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
      body = Hash.new
      body.merge!(Id: @id)
      body.merge!(VerificationCode: @verification_code) if @verification_code
      body
    end
    alias_method :to_h, :to_hash
  end
end
