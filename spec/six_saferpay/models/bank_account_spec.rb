require 'spec_helper'

RSpec.describe SixSaferpay::BankAccount do

  subject { SpinningWheel.create('bank_account') }

  let(:hash) {
    {
      iban: subject.iban,
      holder_name: subject.holder_name,
      bic: subject.bic,
      bank_name: subject.bank_name,
      country_code: subject.country_code
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the bank account' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
