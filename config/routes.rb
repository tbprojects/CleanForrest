Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :events

  resource :my_profile, only: [:show, :edit, :update], controller: 'my_profile'

  comfy_route :cms_admin, :path => '/admin'
  root to: 'visitors#index'
  comfy_route :cms_admin, path: '/admin'
  comfy_route :blog_admin, path: 'admin'

  resource :my_profile, only: [:show, :edit, :update], controller: 'my_profile'  
  root to: 'comfy/blog/posts#index'

  # Make sure this routeset is defined last
  comfy_route :cms, path: '/', sitemap: false
end
