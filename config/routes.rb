PopUpBurlington::Application.routes.draw do
  namespace :admin do resources :matches end
  namespace :admin do resources :spaces end
  namespace :admin do resources :ideas end

  resources :matches
  resources :spaces
  resources :ideas
 
 
  root :to => 'matches#index'

end
