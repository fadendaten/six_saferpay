require 'spec_helper'

RSpec.describe SixSaferpay::Client do

  let(:object) { double('object', url: "", to_h: {}) }

  subject { described_class.new(object) }

  describe '.post' do
    it 'calls post on a new instance of SixSaferpay::Client' do
      expect(described_class).to receive(:new).with(object).and_return(subject)
      expect(subject).to receive(:post)
      described_class.post(object)
    end
  end

  describe '#post' do
    let(:response) { double('response') }

    before do
      allow_any_instance_of(Net::HTTP)
        .to receive(:request).and_return(response)
    end

    it 'returns a Net::HTTP::Response' do
      expect(subject.post).to eq(response)
    end
  end

end
