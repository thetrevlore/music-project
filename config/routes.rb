Rails.application.routes.draw do
  resource :user, only: [:create, :new, :show]
  resource :session, only: [:create, :new, :destroy]
  resources :bands, only: [:index, :create, :new, :edit, :show, :update, :destroy]
  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]
end
