Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#page'
  get '/recipe', to "recipe#page"
  get '/convertings?count=:count&from=:convert_from&to=:convert_to', to: "convertings#watch"
  get '/recipe?name=:recipe_name&food=:food_name&convertings=:convert&count=:count', to: "recipe#watch"
end
