Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'new_session'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  # Routes pour les utilisateurs
  resources :users, only: [:new, :create, :show]

  # Routes pour les potins (gossips)
  resources :gossips do 
    resources :likes 
  end


  # Route racine (page d'accueil)
  root 'home#index'

  # Autres pages statiques
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
end
