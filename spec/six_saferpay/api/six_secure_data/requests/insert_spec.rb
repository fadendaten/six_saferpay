require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::Insert do

  subject { SpinningWheel.create('six_secure_data_insert') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      register_alias: subject.register_alias.to_h,
      type: subject.type,
      return_urls: subject.return_urls.to_h,
      styling: subject.styling.to_h,
      language_code: subject.language_code,
      check: subject.check.to_h,
      payment_methods: subject.payment_methods,
      card_form: subject.card_form.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure data insert' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
