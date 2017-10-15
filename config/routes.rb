Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  resources :posts do
    resources :comments
  end
end
