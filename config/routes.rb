Rails.application.routes.draw do
  root "balances#index"
  resources :balances do
  	resources :issues
  end
end
