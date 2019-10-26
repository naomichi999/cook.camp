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
    resources :replies, only: [:show, :create]
    resources :inquiries, only: [:index]
    get 'basic_recipes/meat', as: 'basic_meat'
    get 'basic_recipes/fish', as: 'basic_fish'
    get 'basic_recipes/vegetable', as: 'basic_vegetable'
    get 'basic_recipes/noodle', as: 'basic_noodle'
    get 'basic_recipes/rice', as: 'basic_rice'
    get 'basic_recipes/soup', as: 'basic_soup'
    resources :basic_recipes, only: [:index, :new, :show, :edit, :update, :create, :destroy]
    get 'everyone_recipes/meat', as: 'everyone_meat'
    get 'everyone_recipes/fish', as: 'everyone_fish'
    get 'everyone_recipes/vegetable', as: 'everyone_vegetable'
    get 'everyone_recipes/noodle', as: 'everyone_noodle'
    get 'everyone_recipes/rice', as: 'everyone_rice'
    get 'everyone_recipes/soup', as: 'everyone_soup'
    resources :everyone_recipes, only: [:index]
    resources :want_to_cooks, only: [:index, :show, :create, :destroy]
    resources :curriculums, only: [:index, :new, :edit, :update, :create, :destroy]
    resources :sections, only: [:new, :show, :edit, :update, :create, :destroy]
    resources :section_content, only: [:update, :create]
    resources :skill_notes, only: [:show, :edit, :update]
    resources :tasks, only: [:new, :show, :edit, :update, :create, :destroy]
    resources :task_content, only: [:update, :create]
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
  get 'basic_recipes/meat', as: 'basic_meat'
  get 'basic_recipes/fish', as: 'basic_fish'
  get 'basic_recipes/vegetable', as: 'basic_vegetable'
  get 'basic_recipes/noodle', as: 'basic_noodle'
  get 'basic_recipes/rice', as: 'basic_rice'
  get 'basic_recipes/soup', as: 'basic_soup'
  resources :basic_recipes, only: [:index, :show]
  get 'everyone_recipes/meat', as: 'everyone_meat'
  get 'everyone_recipes/fish', as: 'everyone_fish'
  get 'everyone_recipes/vegetable', as: 'everyone_vegetable'
  get 'everyone_recipes/noodle', as: 'everyone_noodle'
  get 'everyone_recipes/rice', as: 'everyone_rice'
  get 'everyone_recipes/soup', as: 'everyone_soup'
  resources :everyone_recipes, only: [:index]
  resources :want_to_cooks, only: [:index, :show, :create, :destroy]
  resources :curriculums, only: [:index]
  resources :tasks, only: [:show]
  resources :section_understandings, only: [:update, :create]
  resources :sections, only: [:show, :create, :update]
  resources :skill_notes, only: [:new, :show, :edit, :create, :update, :destroy]
  resources :my_recipes, only: [:index, :new, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
