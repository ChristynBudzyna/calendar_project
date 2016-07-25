Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :events do
    resources :dates, only: :show
  end

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end
