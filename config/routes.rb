Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :funcionarios
  resources :planos do
    resources :funcionarios
  end
end
