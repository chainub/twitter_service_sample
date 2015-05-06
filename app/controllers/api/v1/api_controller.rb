module Api::V1
  class ApiController < ::ApplicationController
    def chainub_action
      SlackBot.notify(
        body: params['body'], 
        bot_name: "chainub-bot"
      )
      render json: { "success" => true }
    end
  end
end
