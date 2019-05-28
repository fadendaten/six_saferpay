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
      hash = @response.body
      hash = JSON.parse(hash, symbolize_names: true)
      hash = hash.deep_transform_keys do |key|
        key = key.to_s.underscore
        key.gsub!(/^alias/,'fd_alias')
        key.gsub!(/^abort/,'fd_abort')
        key.gsub!(/^fail/,'fd_fail')
        key.to_sym
      end
      if @response.code == "200"
        @object.response_class.new(hash)
      else
        raise SixSaferpay::Error.new(hash)
      end
    end

    private

    def request
      request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
      hash = @object.to_h
      hash = hash.deep_transform_keys do |key|
        key = key.to_s.camelize
        key.gsub!('fd_','')
        key.to_sym
      end
      hash = hash.to_json
      request.body = hash
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
