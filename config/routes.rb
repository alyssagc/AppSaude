Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :empresas, only: %i[show] do
    resources :funcionarios
  end
end
