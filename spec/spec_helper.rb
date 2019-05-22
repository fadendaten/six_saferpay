require 'simplecov'
SimpleCov.start

require 'dotenv'
Dotenv.load('.test.env')

require "bundler/setup"
require "six_saferpay"
require 'pry'
require 'vcr'
require 'spinning_wheel'

spec = Gem::Specification.find_by_name("six_saferpay")
gem_root = spec.gem_dir

Dir[File.join(gem_root, "spec", "fabrics", "**/*.rb")].sort.each do |file|
  require file
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassetts"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.allow_http_connections_when_no_cassette = true
  config.default_cassette_options = {
    match_requests_on: [:method, :path]
  }
end

SixSaferpay.configure do |config|
  config.customer_id = ENV.fetch('SIX_SAFERPAY_CUSTOMER_ID')
  config.terminal_id = ENV.fetch('SIX_SAFERPAY_TERMINAL_ID')
  config.username = ENV.fetch('SIX_SAFERPAY_USERNAME')
  config.password = ENV.fetch('SIX_SAFERPAY_PASSWORD')
  config.success_url = ENV.fetch('SIX_SAFERPAY_SUCCESS_URL')
  config.fail_url = ENV.fetch('SIX_SAFERPAY_FAIL_URL')
  config.base_url = ENV.fetch('SIX_SAFERPAY_BASE_URL')
  config.css_url = ENV.fetch('SIX_SAFERPAY_CSS_URL')
end
