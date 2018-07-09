Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'top', to: 'top#index'

get 'tasks', to: 'list#index'
get 'tasks/new', to: 'list#new'
post 'tasks' , to: 'list#create'

get 'select', to: 'select#index'
post 'select', to: 'select#create'

get 'today', to: 'today#index'

end
