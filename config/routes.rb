Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :friendships
  resources :users, only: [:index]
  resources :conversations, only: [:index, :create] do
    resources :messages do
      collection do
        post :view_all
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'friendships#index'
end
