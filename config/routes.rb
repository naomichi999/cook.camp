Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/top'
  get 'homes/about'

    devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
    devise_for :admin_users, :controllers => {
    :registrations => 'admin_users/registrations',
    :sessions => 'admin_users/sessions'
  }

  namespace :admin do
    resources :admin_users, only: [:index]
    resources :searches, only: [:index]
    resources :rankings, only: [:index]
    resources :comments, only: [:update, :destroy]
    resources :replies, only: [:new, :create]
    resources :inquiries, only: [:index]
    resources :basic_recipes, only: [:index, :new, :show, :edit, :update, :create, :destroy]
    get 'basic_recipes/genre_list', as:'genre_list'
    resources :everyone_recipes, only: [:index]
    get 'everyone_recipes/meat', as: 'meat'
    get 'everyone_recipes/fish', as: 'fish'
    get 'everyone_recipes/vegetable', as: 'vegetable'
    get 'everyone_recipes/noodle', as: 'noodle'
    get 'everyone_recipes/rice', as: 'rice'
    get 'everyone_recipes/soup', as: 'soup'
    resources :want_to_cooks, only: [:index, :create, :destroy]
    resources :curriculums, only: [:index, :new, :show, :edit, :update, :create, :destroy]
    resources :my_recipes, only: [:index, :show, :edit, :update, :destroy]
    get 'recipe_list/:id' => 'my_recipes#recipe_list', as:'recipe_list'
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    delete 'admin/users/:id' => 'users#restore', as:'restore'
    delete 'admin/user/:id' => 'users#really_destroy', as:'really_destroy'
  end

  resources :searches, only: [:index]
  resources :rankings, only: [:index]
  resources :leaves, only: [:show, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :inquiries, only: [:new, :create]
  resources :basic_recipes, only: [:index, :show, :create]
  get 'basic_recipes/genre_list', as: 'genre_list'
  resources :everyone_recipes, only: [:index]
  get 'everyone_recipes/meat', as: 'meat'
  get 'everyone_recipes/fish', as: 'fish'
  get 'everyone_recipes/vegetable', as: 'vegetable'
  get 'everyone_recipes/noodle', as: 'noodle'
  get 'everyone_recipes/rice', as: 'rice'
  get 'everyone_recipes/soup', as: 'soup'
  resources :want_to_cooks, only: [:index, :create, :destroy]
  resources :curriculums, only: [:index, :show]
  resources :skill_notes, only: [:index, :edit, :update]
  resources :my_recipes, only: [:index, :new, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
