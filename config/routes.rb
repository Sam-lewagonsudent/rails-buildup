Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: "pages#home"
  get  '/pages/profile', to: 'pages#profile', as: 'profile'
  get '/redirection', to: 'pages#redirection', as: 'redirection'

  resources :actions, only: [:index, :show] do
    post 'add_to_challenges', on: :member
    resources :user_challenges, only: [:create]
  end

  resources :user_challenges, only: [:index, :show, :update] do
    member do
      patch 'toggle_complete'
    end
  end

  resources :user_categories
  resources :categories, only: [:index, :show]
end
