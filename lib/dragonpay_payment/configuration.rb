module DragonpayPayment
  class Configuration
    attr_accessor :merchant_id, :secret_key

    def initialize
      @merchant_id
      @secret_key
    end
  end
end
