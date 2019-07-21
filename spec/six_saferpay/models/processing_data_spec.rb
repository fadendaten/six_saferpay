require 'spec_helper'

RSpec.describe SixSaferpay::ProcessingData do

  subject { SpinningWheel.create('processing_data') }

  let(:hash) {
    {
      bancontact: subject.bancontact.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the processing data' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
