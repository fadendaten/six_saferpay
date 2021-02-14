require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AuthorizeReferenced do

  subject { SpinningWheel.create('six_transaction_authorize_referenced') }

  let(:url) { '/Payment/v1/Transaction/AuthorizeReferenced' }
  let(:response_class) { SixSaferpay::SixTransaction::AuthorizeReferencedResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      transaction_reference: subject.transaction_reference.to_h,
      authentication: subject.authentication.to_h,
      suppress_dcc: subject.suppress_dcc
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction authorize referenced' do
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
