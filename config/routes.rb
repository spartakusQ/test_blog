Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'


    # get    'posts/:id(.:format)'  =>   'posts#show'
    # get   '/posts(.:format)'     =>       'articles#index'





  resources :posts


end
