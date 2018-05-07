Rails.application.routes.draw do
  resources :lectures do
member do
  get :downloadfrompdf
end 
  end
  devise_for :users
  resources :courses
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
