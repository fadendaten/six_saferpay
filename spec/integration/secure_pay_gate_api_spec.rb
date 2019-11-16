require 'spec_helper'
require 'vcr_helper'
require 'date'


RSpec.describe 'SixSecurePayGateApi' do

  before(:all) do
    @value = 100
    @currency_code = 'CHF'
    @order_id = 'R123456789'
    @description = 'Order R123456789'
    @amount = SixSaferpay::Amount.new(
      value: @value, currency_code: @currency_code)
    @payment = SixSaferpay::Payment.new(
      amount: @amount, order_id: @order_id, description: @description)
    @expiration_date = Date.today
    @ip_address = '127.0.0.1'
    @language_code = 'de-ch'
    @billing_address = SpinningWheel.create('address')
    @payer = SixSaferpay::Payer.new(
      ip_address: @ip_address,
      language_code: @language_code,
      billing_address: @billing_address
    )

    # Create Offer
    VCR.use_cassette('secure_pay_gate_create_offer') do
      @create_offer = SixSaferpay::SixSecurePayGateOffer::CreateOffer
        .new(payment: @payment,
             expiration_date: @expiration_date,
             payer: @payer
            )
      @create_offer_response = SixSaferpay::SecurePayGateApi::Client
        .post(@create_offer)
    end
  end

  describe 'create offer' do
    it 'should return a SixSaferpay::SixSecurePayGateOffer::CreateOfferResponse' do
      expect(@create_offer_response)
        .to be_a(SixSaferpay::SixSecurePayGateOffer::CreateOfferResponse)
    end

    it 'should hold an offer id' do
      expect(@create_offer_response.offer_id).to be_a(String)
    end

    it 'should hold a payment link' do 
      expect(@create_offer_response.payment_link).to be_a(String)
      expect(@create_offer_response.payment_link)
        .to match(/^https:\/\/test.saferpay.com\/SecurePayGate\/Payment\/.*$/)
    end

  end
end
