Rails.application.routes.draw do
  devise_for :users
  scope "/admin" do
    resources :users
  end
  resources :contacts
  get 'contact_us', to: 'contacts#new'
  get 'about_us', to: 'about#index' 

  resources :news do
    collection do
      post 'manage'
    end
  end

  resources :media
  get 'home/index'
  get 'home/calculator'
  root 'news#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
