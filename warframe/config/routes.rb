Rails.application.routes.draw do
  get 'about/about'
  get 'index' => 'items#index'
  root to: 'items#index'
  get 'items/:id', to: 'items#action', id: /\d+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
