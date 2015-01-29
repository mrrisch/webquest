Rails.application.routes.draw do
  
  resources :webquests

  root "webquests#index"

end
