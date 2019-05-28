SpinningWheel.define do
  fabric name: 'check', class_name: 'SixSaferpay::Check' do
    type { 'ONLINE' }
    terminal_id { '12341234' }
  end
end

