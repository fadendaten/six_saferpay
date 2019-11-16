require 'spec_helper'

RSpec.describe SixSaferpay::SecurePayGateApi::Client do

  subject { described_class.new(object) }

  let(:object) {
    double('object',
           url: "",
           to_h: {},
          )
  }

  let(:request_id) { subject.send(:request_id) }

  describe 'header' do
    let(:basic_header) { {'Content-Type' => 'application/json' } }
    let(:extended_header) {
      {
        'Saferpay-ApiVersion' => SixSaferpay::API::VERSION,
        'Saferpay-RequestId' => request_id
      }
    }
    let(:header) { basic_header.merge!(extended_header) }

    it 'returns the header' do
      expect(subject.send(:header)).to eq(header)
    end
  end
end
