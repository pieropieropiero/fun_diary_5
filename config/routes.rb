Rails.application.routes.draw do
  devise_for :users
  root to: 'diaries#index'
  resources :diaries

  get "about" => "diaries#about"
  get "report" => "diaries#report"
end
