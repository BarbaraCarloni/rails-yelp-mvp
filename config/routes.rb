Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants, except: [:destroy, :update] do
    resources :reviews, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
