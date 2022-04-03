Rails.application.routes.draw do
  root "splash#index"
  get "/splash", to: "splash#index"
  get "/profile/:id", to: "profile#index"
end
