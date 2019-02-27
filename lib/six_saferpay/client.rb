module SixSaferpay
  class Client
    attr_accessor :object, :request, :response

    def initialize(object)
      @object = object
    end

    def self.post(object)
      new(object).post
    end

    def post
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      @response = https.request(request)
      @object.response_class.new(JSON.parse(@response.body, symbolize_names: true))
    end

    private

    def request
      request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
      request.body = @object.to_h.to_json
      request.basic_auth(username, password)
      @request = request
    end

    def uri
      URI.parse(base_url + @object.url)
    end

    def base_url
      SixSaferpay.config.base_url
    end

    def username
      SixSaferpay.config.username
    end

    def password
      SixSaferpay.config.password
    end

  end
end
