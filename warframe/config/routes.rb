Rails.application.routes.draw do
  get 'about' => 'items#about'
  get 'items/', to: 'items#index' 
  get 'items/:id', to: 'items#action', as: 'items_info', id: /\d+/
  root to: 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
