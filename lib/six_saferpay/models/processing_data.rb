module SixSaferpay
  class ProcessingData

    attr_accessor(:bancontact)

    def initialize(bancontact: nil)
      @bancontact = SixSaferpay::Bancontact.new(bancontact.to_h) if bancontact
    end

    def to_hash
      hash = Hash.new
      hash.merge!(bancontact: @bancontact.to_h) if @bancontact
      hash
    end
    alias_method :to_h, :to_hash

  end
end
