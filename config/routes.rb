Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :companies, only: %i[index show]
    end
  end
end
