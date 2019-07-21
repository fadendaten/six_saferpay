require 'spec_helper'

RSpec.describe SixSaferpay::Bancontact do

  subject { SpinningWheel.create('bancontact') }

  let(:hash) {
    {
      qr_code_data: subject.qr_code_data,
      intent_url: subject.intent_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the bancontact' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
