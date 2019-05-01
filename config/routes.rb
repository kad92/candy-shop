Rails.application.routes.draw do
  root 'candy_shops#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :candy_shops do
  	resources :shelves 
  	resources :candies
  end
end
