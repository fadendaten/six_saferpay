SpinningWheel.define do
  fabric name: 'invoice', class_name: 'SixSaferpay::Invoice' do
    payee { SpinningWheel.create('payee') }
    reason_for_transfer { 'Reasonfortransfer' }
    due_date { '2011-09-23T14:57:23.023+02.00' }
  end
end
