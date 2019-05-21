require 'spec_helper'

RSpec.describe SixSaferpay::Payee do

  let(:payee) { SpinningWheel.create('bank_account') }

  let(:hash) {
    {
      IBAN: payee.iban,
      holder_name: payee.holder_name,
      BIC: payee.bic,
      bank_name: payee.bank_name,
      country_code: payee.country_code
    }
  }

  subject { payee }

  describe 'to_hash' do
    it 'returns the hash representation of the payee' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
