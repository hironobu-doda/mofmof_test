Rails.application.routes.draw do
  get 'properties/index'

  # resources :properties

  resources :properties

  # resources :nearest_stations do
  #   collection do
  #     post :confirm
  #   end
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
