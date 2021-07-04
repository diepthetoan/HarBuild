Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope "(:locale)", locale: /en|vi/ do
    root "articles#index"
    get "/articles", to: "articles#index"
  end

  get "/contact", to: "contacts#index"

  post "/create_request", to: "articles#create_request"
end
