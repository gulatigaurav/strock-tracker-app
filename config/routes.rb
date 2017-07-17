Rails.application.routes.draw do
 devise_for :users
 resources :user_stocks, except: [:edit, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
get 'welcome' ,to: 'welcome#index'
get 'myportfolio', to: 'users#my_portfolio'

get 'search_stocks', to: 'stocks#search'


end
