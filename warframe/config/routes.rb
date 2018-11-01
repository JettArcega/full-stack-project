Rails.application.routes.draw do
  resources :items, only: [:index, :action]
  get 'items/', to: 'items#index' 
  root to: 'items#index'
  get 'about' => 'items#about'
  get 'items/:id', to: 'items#action', as: 'items_info', id: /\d+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
