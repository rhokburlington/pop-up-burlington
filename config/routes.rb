PopUpBurlington::Application.routes.draw do
  namespace :admin do resources :matches end
  namespace :admin do resources :spaces end
  namespace :admin do resources :ideas end

  resources :matches
  resources :spaces
  resources :ideas

  match "about", :to => "static#about"
  match "faq", :to => "static#faq"
  match "privacy", :to => "static#privacy"
  match "terms", :to => "static#terms"


 
 
  root :to => 'matches#index'

end
