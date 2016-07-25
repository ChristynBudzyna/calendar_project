Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :events do
    resources :dates, only: :show
  end
end
