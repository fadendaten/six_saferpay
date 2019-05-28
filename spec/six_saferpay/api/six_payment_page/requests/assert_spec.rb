require 'spec_helper'

RSpec.describe SixSaferpay::SixPaymentPage::Assert do

  subject { SpinningWheel.create('six_payment_page_assert') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      token: subject.token
    }
  }


  describe 'to_hash' do
    it 'returns the hash representation of the six payment page assert' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
