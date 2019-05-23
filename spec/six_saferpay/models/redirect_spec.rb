require 'spec_helper'

RSpec.describe SixSaferpay::Redirect do

  subject { SpinningWheel.create('redirect') }

  let(:hash) {
    {
      redirect_url: subject.redirect_url,
      payment_means_required: subject.payment_means_required
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the redirect' do
      expect(subject.to_hash).to eq(hash)
    end
  end

end
