Rails.application.routes.draw do
  get "/", to: "secrets#show"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  post "/destroy", to: "sessions#destroy"
end
