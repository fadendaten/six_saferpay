module SixSaferpay
  class CardForm

    attr_accessor(
      :holder_name,
      :verification_code
    )

    def initialize(
      holder_name: nil,
      verification_code: nil
    )
      @holder_name = holder_name
      @verification_code = verification_code

    end

    def to_hash
      hash = Hash.new
      hash.merge!(holder_name: @holder_name) if @holder_name
      hash.merge!(verification_code: @verification_code) if @verification_code
      hash
    end
    alias_method :to_h, :to_hash

  end
end
