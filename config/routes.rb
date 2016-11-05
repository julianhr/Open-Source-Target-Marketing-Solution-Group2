Rails.application.routes.draw do
  resources :block_groups
  resources :demographics
  resources :geoid2010s
  get 'general/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'general#index'
end
