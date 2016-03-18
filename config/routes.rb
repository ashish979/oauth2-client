Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root "home#index"
  match "/auth/twitter/callback", to: "home#callback", via: [:get, :post]
  match "/auth/doorkeeper/callback", to: "home#doorkeeper_callback", via: [:get, :post]
  get "/home/sign_out", to: "home#sign_out", as: "sign_out"
end
