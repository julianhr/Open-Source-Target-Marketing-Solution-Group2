Rails.application.routes.draw do
  get 'general/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'general#index'
end
