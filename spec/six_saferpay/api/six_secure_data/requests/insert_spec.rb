require 'spec_helper'

RSpec.describe SixSaferpay::SixSecureData::Insert do

  subject { SpinningWheel.create('six_secure_data_insert') }

  let(:url) { '/Payment/v1/Alias/Insert' }
  let(:response_class) { SixSaferpay::SixSecureData::InsertResponse }

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
      card_form: subject.card_form.to_h,
      payment_means: subject.payment_means.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six secure data insert' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
