Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :expenses

  get 'top' => 'homes#top', as: 'top'
  root to: 'homes#top'
  get 'about' => 'homes#about', as: 'about'
end
