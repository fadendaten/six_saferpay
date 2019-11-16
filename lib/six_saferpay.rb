require 'active_support/core_ext/hash'
require 'active_support/core_ext/string'
require 'securerandom'
require 'json'
require 'net/http'

spec = Gem::Specification.find_by_name("six_saferpay")
gem_root = spec.gem_dir


Dir[File.join(gem_root, "lib", "six_saferpay", "**/*.rb")].sort.each do |file|
  require file
end

module SixSaferpay

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
