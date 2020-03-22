Rails.application.routes.draw do
  # api/v1/contacts
  namespace :api do
    namespace :v1 do
      resources :prestador
    end
  end
end
