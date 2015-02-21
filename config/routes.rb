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

  resources :profiles, only: [:new, :create]
end
