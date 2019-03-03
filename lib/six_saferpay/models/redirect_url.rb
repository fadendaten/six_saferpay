module SixSaferpay
  class RedirectUrl

    attr_accessor :redirect_url

    def initialize(redirect_url: redirect_url)
      @redirect_url = redirect_url
    end

    def to_hash
      {
        RedirectUrl: @redirect_url
      }
    end
    alias_method :to_h, :to_hash

  end
end
