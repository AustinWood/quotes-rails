Rails.application.routes.draw do
  scope module: :api do
    namespace :v1, defaults: { format: :json } do
      resources :users, only: [:new, :create, :update, :destroy]
      resource :session, only: [:create, :destroy]
      resources :quotes, only: [:index]
    end
  end
end
