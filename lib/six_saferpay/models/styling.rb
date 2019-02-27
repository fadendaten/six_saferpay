module SixSaferpay
  class Styling

    def initialize
      @css_url = SixSaferpay.config.css_url || ''
    end

    def to_hash
      {
        'Styling': {
          'CssUrl': @css_url
        }
      }
    end
    alias_method :to_h, :to_hash
  end
end
