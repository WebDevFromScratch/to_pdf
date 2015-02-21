Rails.application.routes.draw do
  devise_for :accounts

  devise_scope :account do
    authenticated :account do
      root to: 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # get '/accounts/profile/:id', to: 'profiles#show', as: :show_profile

  resources :profiles, only: [:new, :create, :edit, :update, :show]
end
