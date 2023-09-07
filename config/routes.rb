Rails.application.routes.draw do
  get 'rewards/new'
  get 'rewards/create'
  get 'achievements/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: "pages#welcome"
  get 'pages/home', to: 'pages#home', as: 'home'
  get '/pages/welcome', to: 'pages#welcome', as: 'welcome'
  get '/achievements', to: 'achievements#index', as: 'achievements'
  get '/pages/profile', to: 'pages#profile', as: 'profile'
  get '/pages/profil', to: 'pages#profil', as: 'profil'
  get '/redirection', to: 'pages#redirection', as: 'redirection'
  get '/pages/impact', to: 'pages#impact', as: 'impact'
  get '/pages/convertisseur', to: 'pages#convertisseur', as: 'convertisseur'

  resources :actions, only: [:index, :show] do
    post 'add_to_challenges', on: :member
    resources :user_challenges, only: [:create]
  end

  resources :rewards, only: [:new, :create]

  resources :user_challenges, only: [:index, :show, :update] do
    member do
      patch 'toggle_complete'
    end
  end

  resources :user_categories, only: [:index, :show, :new, :create, :destroy]
  get '/edit_user_category', to: 'user_categories#edit', as: 'edit_user_category'
  patch '/user_category', to: 'user_categories#update', as: 'update_user_category'
  resources :categories, only: [:index, :show]
end
