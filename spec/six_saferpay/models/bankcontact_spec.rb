require 'spec_helper'

RSpec.describe SixSaferpay::Bankcontact do

  subject { SpinningWheel.create('bankcontact') }

  let(:hash) {
    {
      app_default_redirect_url: subject.app_default_redirect_url,
      app_completion_redirect_url: subject.app_completion_redirect_url
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the bankcontact' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
