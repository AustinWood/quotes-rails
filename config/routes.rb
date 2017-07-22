Rails.application.routes.draw do
  scope module: :api do
    namespace :v1, defaults: { format: :json } do
      resources :users, only: [:new, :create, :update, :destroy]
    end
  end
end
