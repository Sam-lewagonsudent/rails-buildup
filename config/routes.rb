Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: "pages#home"
  get '/redirection', to: 'pages#redirection', as: 'redirection'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :actions, only: [:index, :show] do
    resources :user_challenges, only: [:create]
  end
  resources :user_challenges, only: [:index, :show, :update]
  resources :user_categories
  resources :categories, only: [:index, :show]
end
