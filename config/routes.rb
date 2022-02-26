Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :planos, only: %i[index show] do
    resources :funcionarios
  end
end
