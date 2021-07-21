module SixSaferpay
  module SixSecureData
    class Insert

      attr_accessor(:request_header,
                    :register_alias,
                    :type,
                    :return_urls,
                    :styling,
                    :language_code,
                    :check,
                    :payment_methods,
                    :card_form,
                    :payment_means
                   )

      def initialize(request_header: nil,
                     register_alias:,
                     type:,
                     return_urls:,
                     styling: nil,
                     language_code: nil,
                     check: nil,
                     payment_methods: nil,
                     card_form: nil,
                     payment_means: nil
                    )
        @request_header = request_header || SixSaferpay::RequestHeader.new()
        @register_alias = SixSaferpay::RegisterAlias.new(**register_alias.to_h) if register_alias
        @type = type
        @return_urls = SixSaferpay::ReturnUrls.new(**return_urls.to_h) if return_urls
        @styling = SixSaferpay::Styling.new(**styling.to_h) if styling
        @language_code = language_code
        @check = SixSaferpay::Check.new(**check.to_h) if check
        @payment_methods = payment_methods
        @card_form = SixSaferpay::CardForm.new(**card_form.to_h) if card_form
        @payment_means = SixSaferpay::RequestPaymentMeans.new(**payment_means.to_h) if payment_means
      end

      def to_hash
        hash = Hash.new
        hash.merge!(request_header: @request_header.to_h) if @request_header
        hash.merge!(register_alias: @register_alias.to_h) if @register_alias
        hash.merge!(type: @type) if @type
        hash.merge!(return_urls: @return_urls.to_h) if @return_urls
        hash.merge!(styling: @styling.to_h) if @styling
        hash.merge!(language_code: @language_code) if @language_code
        hash.merge!(check: @check.to_h) if @check
        hash.merge!(payment_methods: @payment_methods) if @payment_methods
        hash.merge!(card_form: @card_form.to_h) if @card_form
        hash.merge!(payment_means: @payment_means.to_h) if @payment_means
        hash
      end
      alias_method :to_h, :to_hash

      def to_json
        to_hash.to_json
      end

      def url
        '/Payment/v1/Alias/Insert'
      end

      def response_class
        SixSaferpay::SixSecureData::InsertResponse
      end

    end
  end
end
