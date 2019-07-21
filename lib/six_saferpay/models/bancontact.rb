module SixSaferpay
  class Bancontact

    attr_accessor :qr_code_data, :intent_url

    def initialize(qr_code_data: nil, intent_url: nil)
      @qr_code_data = qr_code_data
      @intent_url = intent_url
    end

    def to_hash
      hash = Hash.new
      hash.merge!(qr_code_data: @qr_code_data) if @qr_code_data
      hash.merge!(intent_url: @intent_url) if @intent_url
      hash
    end
    alias_method :to_h, :to_hash

  end
end
