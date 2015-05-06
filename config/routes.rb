Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      match "/chainub_action" => "api#chainub_action", :as => :chainub_action, :via => :post
    end
  end

end
