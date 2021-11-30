Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/convertings/metric/:metric_name', to: "household#watch"
  post '/convertings/household/:household_name', to: "metric#watch"
  get '/recipe?name=:recipe_name&food=:food_name&count=:metric_count', to: "recipe#watch"
end
