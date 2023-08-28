Rails.application.routes.draw do
  get 'user_categories/index'
  get 'user_categories/show'
  get 'user_categories/new'
  get 'user_categories/create'
  get 'user_categories/edit'
  get 'user_categories/update'
  get 'user_categories/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :actions, only: [:index, :show] do
    resources :user_challenges
  end
resources :user_categories
end
