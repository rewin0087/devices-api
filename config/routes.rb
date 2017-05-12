Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :devices, except: [:new, :edit]
    end
  end
end
