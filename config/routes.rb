Rails.application.routes.draw do
  get '/assurances/immovable_all', to:'assurances#immovable_all'
  get '/assurances/car_all', to:'assurances#car_all'
  get '/assurances/agricultural_all', to:'assurances#agricultural_all'
  root 'assurances#index'
  resources :assurances
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
