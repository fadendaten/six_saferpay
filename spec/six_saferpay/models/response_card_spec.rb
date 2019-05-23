require 'spec_helper'

RSpec.describe SixSaferpay::ResponseCard do

  subject { SpinningWheel.create('response_card') }

  let(:hash) {
    {
      masked_number: subject.masked_number,
      exp_year: subject.exp_year,
      exp_month: subject.exp_month,
      holder_name: subject.holder_name,
      holder_segment: subject.holder_segment,
      country_code: subject.country_code,
      hash_value: subject.hash_value,
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the response card' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
