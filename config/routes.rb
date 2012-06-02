PopUpBurlington::Application.routes.draw do
  resources :matches
  resources :spaces
  resources :ideas
 
  root :to => 'matches#index'

end
