Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lectures do
member do
  get :downloadfrompdf
  put "like" => "lectures#upvote"
  put "unlike" => "lectures#downvote"
  post :spam

end  
resources :comments
  end
  devise_for :users
  resources :comments
  resources :courses
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
