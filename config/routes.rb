Rails.application.routes.draw do
  root 'billboards'

  resources :billboards
  resources :artists do
    resources :songs, only: [:index, :new, :create, :destroy :controller]
  end
end
