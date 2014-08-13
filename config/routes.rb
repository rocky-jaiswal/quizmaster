Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :questions, only: :index
      resources :responses, only: :create
    end
  end
end
