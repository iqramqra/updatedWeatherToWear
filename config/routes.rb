Rails.application.routes.draw do
  
  resources :outfits
  resources :seasons
  resources :users
  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
