Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'my_page' => 'users#show', as: 'my_page'
  resources :users, only: [:edit, :update]
  resources :expenses
  resources :incomes
  resources :reports
  resources :categories, only: [:index, :create]


  get 'top' => 'homes#top', as: 'top'
  root to: 'homes#top'
  get 'about' => 'homes#about', as: 'about'
end
