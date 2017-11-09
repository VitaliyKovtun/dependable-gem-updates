Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gems, param: :name, only: %i[index show] do
    get :dependency_changes, on: :member
  end
  resources :gem_updates, only: :create

  root to: 'gems#index'
end
