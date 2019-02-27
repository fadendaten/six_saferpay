require 'spec_helper'

RSpec.describe 'PaymentPageInitialize' do

  let(:value) { '100' }
  let(:currency) { 'CHF' }
  let(:order_id) { 'R123456789' }
  let(:description) { "Order #{order_id}" }

  let(:payment_page_initialize) {
    SixSaferpay::PaymentPage::Initialize
      .new(value, currency, order_id, description)
  }

  let(:client) {
    SixSaferpay::Client
  }


  context 'response' do
    before do
      @response = client.post(payment_page_initialize)
      require 'pry'; binding.pry
    end

    describe 'type' do
      it 'is a NET::HTTPOK object' do
        # expect(@response.response).to be_a(Net::HTTPOK)
      end

      # it 'is a NET::HTTPResponse object' do
      #   # expect(@response.response).to be_a_kind_of(Net::HTTPResponse)
      # end
    end

  end
end
