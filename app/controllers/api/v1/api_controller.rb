module Api::V1
  class ApiController < ::ApplicationController
    def chainub_action
      client = Twitter::REST::Client.new do |config|
        config.consumer_key = YOUR_CONSUMER_KEY
        config.consumer_secret = YOUR_COSUMER_SECRET
        config.access_token = YOUR_ACCESS_TOKEN
        config.access_token_secret = YOUR_ACCESS_TOKEN_SECRET
      end 

      client.update(params['body'])
      render json: { "success" => true }
    end
  end
end
