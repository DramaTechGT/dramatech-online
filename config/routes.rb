Rails.application.routes.draw do
  # Development Engines
  mount Nkss::Engine => '/styleguides' if Rails.env.development?
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  devise_for :users
  resources :posts
  resources :categories do
    resources :posts
  end
end