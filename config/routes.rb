Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope defaults: {format: :json} do
    resources :users
  end
end
