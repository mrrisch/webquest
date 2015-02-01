Rails.application.routes.draw do
  
  devise_for :lehrers
  resources :webquests

  root "webquests#index"

end
