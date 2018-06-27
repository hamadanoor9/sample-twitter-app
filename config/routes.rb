Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'
  

  resources :users
  
  get "/follow/:id" => "users#follow", as: :follow
  get "/unfollow/:id" => "users#unfollow", as: :unfollow
  
  post "/messages" => "messages#create", as: :messages
  delete "/message/:id" => "messages#destroy"
end
