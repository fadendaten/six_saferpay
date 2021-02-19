[![Gem Version](https://badge.fury.io/rb/six_saferpay.svg)](https://badge.fury.io/rb/six_saferpay)
[![Build Status](https://travis-ci.com/fadendaten/six_saferpay.svg?branch=master)](https://travis-ci.com/fadendaten/six_saferpay)
[![Maintainability](https://api.codeclimate.com/v1/badges/76c9d1d0f261c276de96/maintainability)](https://codeclimate.com/github/fadendaten/six_saferpay/maintainability)

# SixSaferpay

## Current API Version

This gem is compatible with the SIX API version: `1.20`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'six_saferpay'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install six_saferpay


## Configuration

Please configure your gem:

```ruby
SixSaferpay.configure do |config|
  config.customer_id = YOUR_SIX_SAFERPAY_CUSTOMER_ID
  config.terminal_id = YOUR_SIX_SAFERPAY_TERMINAL_ID
  config.username = YOUR_SIX_SAFERPAY_USERNAME
  config.password = YOUR_SIX_SAFERPAY_PASSWORD
  config.success_url = YOUR_SIX_SAFERPAY_SUCCESS_URL
  config.fail_url = YOUR_SIX_SAFERPAY_FAIL_URL
  config.base_url = YOUR_SIX_SAFERPAY_BASE_URL
  config.css_url = YOUR_SIX_SAFERPAY_CSS_URL
end

```

## Usage

SIX Saferpay provides multiple interfaces. We give you a short introduction in the usage of the gem by showing you two examples for the initialize requests.

### SIX Saferpay Payment Page

The SIX Saferpay Payment Page is a simple implementation of the payment gateway of SIX.

#### PaymentPage Initialize

Before we start we have to create a two basic objects. The first object is the ```SixSaferpay::Amount```. This object represents the value of your cart in the currency you sell your products. The second object is the ```SixSaferpay::Payment```. This object represents the payment a user of your shop will do. As you can see, the amount object is includes in this object.

```ruby
amount = SixSaferpay::Amount.new(value: 100, currency_code: "CHF")
payment = SixSaferpay::Payment.new(amount: amount, order_id: 1234, description: 'Order #1234')
```

After we create those two objects, we can create the initialize object for the SIX Saferpay Payment Page.

```ruby
initialize = SixSaferpay::SixPaymentPage::Initialize.new(payment: payment)
```

Now we can send the initialize request to the API. We can use the client object to send a post request to the API.

```ruby
initialize_response = SixSaferpay::Client.post(initialize)
```
The client will return a response object. After an initialize request, the client will return you a initialize response object (```SixSaferpay::InitializeResponse```).

If the request goes wrong the client raises a ```SixSaferpay::Error```

#### Other Requests

You will find for all the other requests an predefined object. Feel free to use this according the SIX Saferpay API documentation.

### SIX Saferpay Transaction

TODO

#### SIX Secure PayGate API

If you want to use the SIX Secure PayGate API, you have to use an other Client:

```ruby
create_offer_request = SixSaferpay::SecurePayGateOffer.new(...)
create_offer_response = SixSaferpay::SecurePayGateApi::Client.new(create_offer_request)
```

## Documentation

[SIX Saferpay JSON API](https://saferpay.github.io/jsonapi)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/six_saferpay.

### Implementation Status

#### SIX Payment Page

- [x] Initialize
- [x] Assert

#### SIX Transaction

- [x] Initialize
- [x] Authorize
- [x] QueryPaymentMeans
- [x] AdjustAmount
- [x] AuthorizeDirect
- [x] AuthorizeReferenced
- [x] Capture
- [x] MultipartCapture
- [x] AssertCapture
- [x] MultipartFinalize
- [x] Refund
- [x] AssertRefund
- [x] RefundDirect
- [x] Cancel
- ~~RedirectPayment~~ (Deprecated)
- ~~AssertRedirectPayment~~ (Deprecated)
- [x] Inquire

#### SIX Secure Card Data

- [x] Insert
- [x] AssertInsert
- [x] InsertDirect
- [x] Delete

#### SIX Batch

- [x] Close

#### SIX OmniChannel

- [x] InsertAlias
- [x] AcquireTransaction

#### Secure PayGate API

- [x] CreateOffer

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

