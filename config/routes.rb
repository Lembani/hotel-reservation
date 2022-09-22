Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },
              controllers: {
                  sessions: 'users/sessions',
                  registrations: 'users/registrations'
              }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :hotels
      resources :reservations
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
