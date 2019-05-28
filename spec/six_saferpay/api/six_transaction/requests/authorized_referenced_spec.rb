require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::AuthorizeReferenced do

  subject { SpinningWheel.create('six_transaction_authorize_referenced') }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      terminal_id: subject.terminal_id,
      payment: subject.payment.to_h,
      transaction_reference: subject.transaction_reference.to_h,
      suppress_dcc: subject.suppress_dcc
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction authorize referenced' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
