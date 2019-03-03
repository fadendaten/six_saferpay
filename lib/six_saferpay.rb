require 'six_saferpay/api'
require 'six_saferpay/client'
require 'six_saferpay/version'

require 'six_saferpay/models/amount'
require 'six_saferpay/models/expiration'
require 'six_saferpay/models/payer'
require 'six_saferpay/models/payment'
require 'six_saferpay/models/redirect_url'
require 'six_saferpay/models/request_header'
require 'six_saferpay/models/response_header'
require 'six_saferpay/models/return_urls'
require 'six_saferpay/models/styling'
require 'six_saferpay/models/terminal'
require 'six_saferpay/models/token'
require 'six_saferpay/models/transaction'
require 'six_saferpay/models/transaction_reference'
require 'six_saferpay/models/verification_code'

require 'securerandom'
require 'json'
require 'net/http'

module SixSaferpay
  class Error < StandardError; end

  class Config
    attr_accessor :customer_id,        # ID of the Customer by SIX Saferpay
      :terminal_id,                    # ID of the Terminal by SIX Saferpay
      :username,
      :password,
      :success_url,
      :fail_url,
      :base_url,
      :css_url
  end

  # Initialize the config class
  def self.config
    @@config ||= Config.new
  end

  # Set the configs
  def self.configure
    yield self.config
  end
end
