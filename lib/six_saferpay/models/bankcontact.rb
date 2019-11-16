module SixSaferpay
  class Bankcontact

    attr_accessor(:app_default_redirect_url,
                  :app_completion_redirect_url)

    def initialize(app_default_redirect_url: nil, app_completion_redirect_url: nil)
      @app_default_redirect_url = app_default_redirect_url
      @app_completion_redirect_url = app_completion_redirect_url
    end

    def to_hash
      hash = Hash.new
      hash.merge!(app_default_redirect_url: @app_default_redirect_url) if @app_default_redirect_url
      hash.merge!(app_completion_redirect_url: @app_completion_redirect_url) if @app_completion_redirect_url
      hash
    end
    alias_method :to_h, :to_hash

  end
end
