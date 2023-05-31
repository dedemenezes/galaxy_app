Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :planets, only: [:show] do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: :destroy
end

# /planets/2/aliens
