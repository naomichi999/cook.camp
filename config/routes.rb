Rails.application.routes.draw do

  namespace :admin do

    resources :admin_users, only: [:index]
    resources :searches, only: [:index]
    resources :rankings, only: [:index]
    resources :comments, only: [:update, :destroy]
    resources :replies, only: [:new, :create]
    resources :inquiries, only: [:index]
    resources :basic_recipes, only: [:index, :show]
    get 'basic_recipes/genre_choice'
    resources :everyone_recipes, only: [:index]
    get 'everyone_recipes/genre_choice'
    resources :want_to_cooks, only: [:index, :destroy]
    resources :curriculums, only: [:index, :new, :show, :edit, :update, :create, :destroy]
    resources :my_recipes, only: [:index, :show, :edit, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    # 論理削除と復元のルーティングはまだです。
  end

  resources :searches, only: [:index]
  resources :rankings, only: [:index]
  resources :leaves, only: [:show, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :inquiries, only: [:new, :create]
  resources :basic_recipes, only: [:index, :show, :create]
  get 'basic_recipes/genre_choice'
  resources :everyone_recipes, only: [:index]
  get 'everyone_recipes/genre_choice'
  resources :want_to_cooks, only: [:index, :destroy]
  resources :curriculums, only: [:index, :show]
  resources :skill_notes, only: [:index, :edit, :update]
  resources :my_recipes, only: [:index, :new, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

  root 'homes#top'
  get 'homes/top'
  get 'homes/about'
  devise_for :admin_users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
