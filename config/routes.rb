Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :planets, only: [:show] do
    resources :aliens, only: [:create]
  end
  resources :aliens, only: :destroy do
    resources :alien_powers, only: [:new, :create]
  end
end

# /planets/2/aliens
