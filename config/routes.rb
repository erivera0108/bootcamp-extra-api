Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do  
    namespace :v1 do 
      resources :users
    end

    namespace :v1 do 
      resources :posts
    end

    namespace :v1 do 
      resources :comments
    end

    namespace :v1 do 
      resources :topics
    end

    namespace :v1 do 
      resources :tags
    end

  end
end
