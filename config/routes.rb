Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: "pages#home"
  get  '/pages/profile', to: 'pages#profile', as: 'profile'
  get '/redirection', to: 'pages#redirection', as: 'redirection'
  get '/bootstrap', to: 'pages#bootstrap', as: 'bootstrap'
  get '/pages/impact', to: 'pages#impact', as: 'impact'
  get '/pages/convertisseur', to: 'pages#convertisseur', as: 'convertisseur'
  resources :actions, only: [:index, :show] do
    post 'add_to_challenges', on: :member
    resources :user_challenges, only: [:create]
  end

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
