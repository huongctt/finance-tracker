class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol) #class method
        client = IEX::Api::Client.new(
                        publishable_token: 'pk_b5a47268d73c4bd4adc80a27f1a2f0f9',
                        secret_token: 'sk_b7eaa17abfe94879ac7c842791f6972d',
                        endpoint: 'https://cloud.iexapis.com/v1'
                        )
        client.quote(ticker_symbol).latest_price
    end
end
