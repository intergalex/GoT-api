Rails.application.routes.draw do
  
  resources :characters

  namespace :api do

    namespace :v1 do
      get 'characters' => 'characters#index'
      get 'characters/:id' => 'characters#show', :as => :character
      post 'characters' => 'characters#create'
    end
      
    namespace :v2 do 
      get 'characters' => 'characters#index'
      get 'characters/:id' => 'characters#show', :as => :character
      post 'characters' => 'characters#create'
    end
  end   
end
