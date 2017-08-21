# DragonpayPayment

Dragonpay API payment integration.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dragonpay_payment'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dragonpay_payment

## Configuration

```ruby
# config/initializers/dragonpay_payment.rb

DragonpayPayment.configure do |config|
  config.merchant_id = 'your_merchant_id'
  config.secret_key = 'your_secret_key'
end
```

## Usage

```ruby
  @process_payment = DragonpayPayment::Merchant.new(
    amount: '500.00',
    ccy: 'PHP',
    description: 'Test Payment',
    email: 'testpayment@payment.com'
  )
  
  @process_payment.pay
```

The ```pay``` method will generate the dragonpay url it will not redirect you to the dragonpay website.

## Contributing

Bug reports and pull requests are welcome. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DragonpayPayment project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dragonpay_payment/blob/master/CODE_OF_CONDUCT.md).
