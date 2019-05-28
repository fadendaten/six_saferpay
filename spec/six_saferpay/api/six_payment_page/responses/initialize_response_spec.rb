require 'spec_helper'

RSpec.describe SixSaferpay::SixPaymentPage::InitializeResponse do

  subject { SpinningWheel.create('six_payment_page_initialize_response') }

  let(:hash) {
    {
      response_header: subject.response_header.to_h,
      token: subject.token,
      redirect_url: subject.redirect_url,
      expiration: subject.expiration,
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the six payment page initialize response' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
