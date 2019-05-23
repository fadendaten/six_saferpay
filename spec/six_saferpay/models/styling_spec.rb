require 'spec_helper'

RSpec.describe SixSaferpay::Styling do

  subject { SpinningWheel.create('styling') }

  let(:hash) {
    {
      css_url: subject.css_url,
      content_security_enabled:  subject.content_security_enabled,
      theme: subject.theme
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the styling' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
