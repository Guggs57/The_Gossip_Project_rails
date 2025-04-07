Rails.application.routes.draw do
  # Routes pour afficher les utilisateurs et leurs profils
  resources :users, only: [:new, :create, :show]

  # Routes pour les potins (gossips)
  resources :gossips, only: [:show, :new, :create]
  

  # Route racine (page d'accueil)
  root 'home#index'

  # Autres pages statiques
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'

  # Route pour la page d'accueil personnalisée en fonction du prénom
  get 'welcome/:first_name', to: 'welcome#show', as: 'welcome'
end
