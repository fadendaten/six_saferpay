require 'spec_helper'

class ResponseClass
  def initialize(hash)
    @hash = hash
  end
end

RSpec.describe SixSaferpay::Client do

  let(:object) {
    double('object',
           url: "",
           to_h: {},
           response_class: ResponseClass
          )
  }

  subject { described_class.new(object) }

  describe '.post' do
    it 'calls post on a new instance of SixSaferpay::Client' do
      expect(described_class).to receive(:new).with(object).and_return(subject)
      expect(subject).to receive(:post)
      described_class.post(object)
    end
  end

  describe '#post' do
    let(:body) { {"Test": true}.to_json }

    context 'successful' do
      let(:response) { double('response', body: body, code: '200') }

      before do
        allow_any_instance_of(Net::HTTP)
          .to receive(:request).and_return(response)
      end

      it 'returns a ResponseClass' do
        expect(subject.post).to be_a(ResponseClass)
      end
    end

    context 'unsuccessful' do
      let(:body) {
        SpinningWheel.create('error').to_h.to_json
      }
      let(:response) { double('response', body: body, code: '400') }

      before do
        allow_any_instance_of(Net::HTTP)
          .to receive(:request).and_return(response)
      end

      it 'to raise a SixSaferpay::Error' do
        expect{subject.post}.to raise_error(SixSaferpay::Error)
      end
    end
  end

  describe 'header' do
    let(:header) { {'Content-Type'=>'application/json' } }

    it 'returns the basic header' do
      expect(subject.send(:header)).to eq(header)
    end
  end
end
