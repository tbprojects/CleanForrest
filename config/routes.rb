Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  comfy_route :cms_admin, :path => '/admin'
  root to: 'visitors#index'
  # Make sure this routeset is defined last
  comfy_route :cms, path: '/', sitemap: false
end
