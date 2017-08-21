require 'dragonpay_payment/configuration'
require 'dragonpay_payment/merchant'
require 'dragonpay_payment/version'

module DragonpayPayment
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
