Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#page'
  get '/ricipe', to: "ricipe#page"
  get '/home?count=:count&from=:convert_from&product=:product', to: "home#page"
  get '/ricipe?name=:ricipe_name&food=:food_name&count=:count', to: "ricipe#page"
end