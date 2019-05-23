module SixSaferpay
  class Styling

    attr_accessor(:css_url, :content_security_enabled, :theme)

    def initialize(css_url: nil, content_security_enabled: nil, theme: nil)
      @css_url = css_url || SixSaferpay.config.css_url
      @content_security_enabled = content_security_enabled
      @theme = theme
    end

    def to_hash
      hash = Hash.new
      hash.merge!(css_url: @css_url) if @css_url
      hash.merge!(content_security_enabled: @content_security_enabled) if !@content_security_enabled.nil?
      hash.merge!(theme: @theme) if @theme
      hash
    end
    alias_method :to_h, :to_hash

  end
end
