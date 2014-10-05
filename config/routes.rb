Rails.application.routes.draw do
  if Rails.env.development? do
    mount JasmineRails::Engine => '/specs'
  end
  devise_for :users
  resources :posts
end
