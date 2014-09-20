Rails.application.routes.draw do
  comfy_route :cms_admin, :path => '/admin'
  devise_for :users
  root to: 'visitors#index'
  # Make sure this routeset is defined last
  comfy_route :cms, path: '/', sitemap: false
end
