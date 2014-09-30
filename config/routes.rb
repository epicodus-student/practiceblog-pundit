Rails.application.routes.draw do

  root to: 'welcome#index'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :posts

  resources :users do
    resources :posts
  end

end
