Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articles#index"

  get "/articles", to: "articles#index"

  get "/contact", to: "contacts#index"
end
