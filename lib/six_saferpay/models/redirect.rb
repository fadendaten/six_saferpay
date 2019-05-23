module SixSaferpay
  class Redirect
    attr_accessor(:redirect_url,
                  :payment_means_required
                 )

    def initialize(redirect_url:,
                   payment_means_required: )
      @redirect_url = redirect_url
      @payment_means_required = payment_means_required
    end

    def to_hash
      hash = Hash.new
      hash.merge!(redirect_url: @redirect_url) if @redirect_url
      hash.merge!(payment_means_required: @payment_means_required) if !@payment_means_required.nil?
      hash
    end
    alias_method :to_h, :to_hash
  end

end
