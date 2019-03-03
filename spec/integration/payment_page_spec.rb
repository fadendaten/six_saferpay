require 'spec_helper'
require 'vcr_helper'
require 'date'
require 'tty-prompt'

RSpec.describe 'PaymentPage' do

  before(:all) do

    @value = 100
    @currency = 'CHF'
    @order_id = 'R123456789'
    @description = 'Order R123456789'

    cassette_exists = !(VCR::Helper.cassette_exists?('payment_page_initialize'))

    # Initialize Request
    VCR.use_cassette('payment_page_initialize') do
      @initialize = SixSaferpay::PaymentPage::Initialize.new(value: @value,
                                                            currency: @currency,
                                                            order_id: @order_id,
                                                            description: @description)
      @initialize_response = SixSaferpay::Client.post(@initialize)
    end

    if cassette_exists
      loop do
        prompt = TTY::Prompt.new
        puts "Please visit the redirect url and confirm the payment:\n"
        puts @initialize_response.redirect_url + "\n"
        ok = prompt.yes?('Are you finished filling in the payment info?')
        break if ok
      end
    end

    # Assert Request
    VCR.use_cassette('payment_page_assert') do
      @assert = SixSaferpay::PaymentPage::Assert.new(token: @initialize_response.token)
      @assert_response = SixSaferpay::Client.post(@assert)
    end
  end

  describe 'initialize', :vcr do
    it 'should return a SixSaferpay::PaymentPage::InitializeResponse' do
      expect(@initialize_response)
        .to be_a(SixSaferpay::PaymentPage::InitializeResponse)
    end

    it 'should hold a token of the size 25' do
      expect(@initialize_response.token.length).to be(25)
    end

    it 'should hold a expiration date' do
      expiration = DateTime.parse(@initialize_response.expiration)
      expect(expiration).to be_a(DateTime)
    end

    it 'should hold a redirect url' do
      redirect_url = URI.parse(@initialize_response.redirect_url)
      expect(redirect_url).to be_a(URI)
      expect(redirect_url.port).to be(443)
    end
  end

end
