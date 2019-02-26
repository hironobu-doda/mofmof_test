Rails.application.routes.draw do
  get 'properties/index'

  # resources :properties

  resources :properties do
    collection do
      post :confirm
    end
  end

  resources :nearest_stations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
