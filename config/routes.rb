Rails.application.routes.draw do
  devise_for :users, path: 'auth', controllers: {
    sessions: 'auth/sessions',
    registrations: 'auth/registrations',
    passwords: 'auth/passwords'
  }

  resources :works

  resource :profile, only: [:edit, :update]
  get ':handle', to: 'profiles#show', as: :show_profile

  root 'pages#home'
end
