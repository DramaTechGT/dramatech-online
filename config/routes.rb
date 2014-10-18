Rails.application.routes.draw do
  resources :reservations

  resources :performances

  resources :shows

  # Development Engines
  mount Nkss::Engine => '/styleguides' if Rails.env.development?
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  get '/blog', to: 'posts#blog'
  devise_for :users
  resources :posts
  resources :categories do
    resources :posts
  end
  get '/access_denied', to: 'application#access_denied'
end