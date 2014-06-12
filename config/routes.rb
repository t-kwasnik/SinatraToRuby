Rails.application.routes.draw do
  resources :articles, except: [:edit, :update, :destroy]


  resources :articles do
    resources :comments, only: :create
  end

end
