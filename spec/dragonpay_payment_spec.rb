require "spec_helper"

RSpec.describe DragonpayPayment do
  before do
    DragonpayPayment.configure do |config|
      config.merchant_id = 'your_merchant_id'
      config.secret_key = 'your_secret_key'
    end
    @transaction = DragonpayPayment::Merchant.new(
        amount: '500.00',
        ccy: 'PHP',
        description: 'Test payment',
        email: 'testpayment@dispostable.com'
      )
  end

  it "has a version number" do
    expect(DragonpayPayment::VERSION).not_to be nil
  end

  describe 'configure method' do
    it 'will set configuration' do
      config = DragonpayPayment.configuration
      expect(config.merchant_id).to eq 'your_merchant_id'
      expect(config.secret_key).to eq 'your_secret_key'
    end
  end

  describe 'initializing' do
    it 'will set payment details' do
      expect(@transaction.amount).to eq '500.00'
      expect(@transaction.ccy).to eq 'PHP'
      expect(@transaction.description).to eq 'Test payment'
      expect(@transaction.email).to eq 'testpayment@dispostable.com'
    end
  end

  describe 'sending payment' do
    it 'will generate payment url' do
      expect(@transaction.pay).to include 'merchantid=your_merchant_id'
      expect(@transaction.pay).to include 'amount=500.00'
      expect(@transaction.pay).to include 'ccy=PHP'
      expect(@transaction.pay).to include 'description=Test payment'
      expect(@transaction.pay).to include 'email=testpayment@dispostable.com'
    end
  end
end
