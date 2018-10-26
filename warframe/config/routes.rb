Rails.application.routes.draw do
  get 'index' => 'items#index'
  root to: 'items#index'
  get 'items/action'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
