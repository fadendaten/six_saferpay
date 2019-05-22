require 'spec_helper'

RSpec.describe SixSaferpay::BankAccount do

  let(:bank_account) { SpinningWheel.create('bank_account') }

  let(:hash) {
    {
      IBAN: bank_account.iban,
      holder_name: bank_account.holder_name,
      BIC: bank_account.bic,
      bank_name: bank_account.bank_name,
      country_code: bank_account.country_code
    }
  }

  subject { bank_account }

  describe 'to_hash' do
    it 'returns the hash representation of the bank account' do
      expect(subject.to_hash).to eq(hash)
    end
  end
end
