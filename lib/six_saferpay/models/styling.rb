module SixSaferpay
  class Styling

    attr_accessor(:css_url, :content_security_enabled, :theme)

    def initialize(css_url: nil, content_security_enabled: nil, theme: nil)
      @css_url = css_url || SixSaferpay.config.css_url
      @content_security_enabled = content_security_enabled
      @theme = @theme
    end

    def to_hash
      body = Hash.new
      body.merge!(CssUrl: @css_url) if @css_url
      body.merge!(ContentSecurityEnabled: @content_security_enabled) if @content_security_enabled
      body.merge!(Theme: @theme) if @theme
      body
    end
    alias_method :to_h, :to_hash

  end
end
