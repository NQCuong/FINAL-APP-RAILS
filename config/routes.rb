Rails.application.routes.draw do
  root  'feed#index'
  as :user do
    get 'users' => "devise/registrations#new"
    post 'signup' => "devise/registrations#create"
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end

  devise_for :users
  resources :feed
  resources :profile
  resources :photos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
