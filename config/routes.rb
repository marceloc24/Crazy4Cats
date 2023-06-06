Rails.application.routes.draw do
  resources :posts
  resources :comments, only: [:create]
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
  get '/posts', to: 'posts#index', as: 'user_root'
  post '/new_user_reaction', to: 'reactions#new_user_reaction', as:
  'new_user_reaction'
end
