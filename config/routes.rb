# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: "welcome#index"
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  resources :blogs
end
