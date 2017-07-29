Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Ckeditor::Engine => '/ckeditor'

  root to: "posts#index"

  resources :posts do
    resources :comments
  end

  get "/:page" => "pages#show"

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

end
