Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gems, only: %i[index show]
  resources :gem_updates, only: :create

  root to: 'gems#index'
end
