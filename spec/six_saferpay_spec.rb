RSpec.describe SixSaferpay do
  it "has a version number" do
    expect(SixSaferpay::VERSION).not_to be nil
  end

  context 'has a configuration' do
    it 'of the type SixSaferpay::Config' do
      expect(subject.config).to be_a(SixSaferpay::Config)
    end

    it 'yields the config block' do
      expect do |b|
        subject.configure(&b)
      end.to yield_with_args
    end

  end
end
