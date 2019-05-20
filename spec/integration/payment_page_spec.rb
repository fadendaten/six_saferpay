require 'spec_helper'
require 'vcr_helper'
require 'date'
require 'tty-prompt'

RSpec.describe 'SixPaymentPage' do

  before(:all) do

    @amount = 100
    @currency = 'CHF'
    @order_id = 'R123456789'
    @description = 'Order R123456789'
    @amount = SixSaferpay::Amount.new(value: @value, currency_code: @currency)
    @payment = SixSaferpay::Payment.new(
      amount: @amount, order_id: @order_id, description: @description)

    cassette_exists = !(VCR::Helper.cassette_exists?('payment_page_initialize'))

    # Initialize Request
    VCR.use_cassette('payment_page_initialize') do
      @initialize = SixSaferpay::SixPaymentPage::Initialize.new(payment: @payment)
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
      @assert = SixSaferpay::SixPaymentPage::Assert.new(token: @initialize_response.token)
      @assert_response = SixSaferpay::Client.post(@assert)
      @transaction = @assert_response.transaction
    end

    # Capture Request
    VCR.use_cassette('transaction_capture') do
      @transaction_reference = SixSaferpay::TransactionReference.new(transaction_id: @transaction.id)
      @capture = SixSaferpay::SixTransaction::Capture.new(transaction_reference: @transaction_reference)
      @capture_response = SixSaferpay::Client.post(@capture)
    end
  end

  describe 'initialize' do
    it 'should return a SixSaferpay::SixPaymentPage::InitializeResponse' do
      expect(@initialize_response)
        .to be_a(SixSaferpay::SixPaymentPage::InitializeResponse)
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

  describe 'assert' do
    it 'should return a SixSaferpay::SixPaymentPage::AssertResponse' do
      expect(@assert_response)
        .to be_a(SixSaferpay::SixPaymentPage::AssertResponse)
    end

    it 'should hold a response header' do
      response_header = @assert_response.response_header
      expect(response_header).to be_a(SixSaferpay::ResponseHeader)
    end

    it 'should hold a transaction' do
      transaction = @assert_response.transaction
      expect(transaction).to be_a(SixSaferpay::Transaction)
    end

    it 'should hold a payer' do
      payer = @assert_response.payer
      expect(payer).to be_a(SixSaferpay::Payer)
    end

    it 'should hold the payment_means' do
      payment_means = @assert_response.payment_means
      expect(payment_means).to be_a(SixSaferpay::PaymentMeans)
    end

    it 'should hold a liability' do
      liability = @assert_response.liability
      expect(liability).to be_a(SixSaferpay::Liability)
    end
  end

  describe 'capture' do
    it 'sould return a SixSaferpay::SixTransaction::CaptureResponse' do
      expect(@capture_response)
        .to be_a(SixSaferpay::SixTransaction::CaptureResponse)
    end

    it 'should hold a response header' do
      require 'pry'; binding.pry
      response_header = @capture_response.response_header
      expect(response_header).to be_a(SixSaferpay::ResponseHeader)
    end

    it 'should hold a capture_id' do
      capture_id = @capture_response.capture_id
      expect(capture_id).to be_a(String)
      expect(capture_id).to be('dd')
    end
  end

end
