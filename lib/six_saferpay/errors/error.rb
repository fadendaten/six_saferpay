module SixSaferpay
  class Error < StandardError

    attr_accessor(:response_header,
                  :behavior,
                  :error_name,
                  :error_message,
                  :transaction_id,
                  :error_detail,
                  :processor_name,
                  :processor_result,
                  :processor_message
    )

    def initialize(response_header: ,
                   behavior: ,
                   error_name: ,
                   error_message: ,
                   transaction_id: nil,
                   error_detail: nil,
                   processor_name: nil,
                   processor_result: nil,
                   processor_message: nil
                  )
      @response_header = SixSaferpay::ResponseHeader.new(response_header.to_h) if response_header
      @behavior = behavior
      @error_name = error_name
      @error_message = error_message
      @transaction_id = transaction_id
      @error_detail = error_detail
      @processor_name = processor_name
      @processor_result = processor_result
      @processor_message = processor_message
    end

    def to_hash
      hash = Hash.new
      hash.merge!(response_header: @response_header.to_h) if @response_header
      hash.merge!(behavior: @behavior) if @behavior
      hash.merge!(error_name: @error_name) if @error_name
      hash.merge!(error_message: @error_message) if @error_message
      hash.merge!(transaction_id: @transaction_id) if @transaction_id
      hash.merge!(error_detail: @error_detail) if @error_detail
      hash.merge!(processor_name: @processor_name) if @processor_name
      hash.merge!(processor_result: @processor_result) if @processor_result
      hash.merge!(processor_message: @processor_message) if @processor_message
      hash
    end
    alias_method :to_h, :to_hash

    def full_message
      error = "#{@behavior}: #{@error_name} - #{@error_message}"
      if @error_detail
        @error_detail.each do |detail|
          error << "\n"
          error << detail
        end
      end
      error
    end

    def to_s
      full_message
    end

    def message
      full_message
    end

  end
end
