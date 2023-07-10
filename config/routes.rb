Rails.application.routes.draw do

    root 'users#index'
     get 'staticPages/home'=>'staticpage#home',as: 'staticpage_home'
     get'staticPages/help'=>'staticpage#help',as: 'staticpage_help'
     get 'sessions/new'=> 'sessions#new',as: 'sessions_new'
     get 'users/new'=>'users#new',as: 'users_new'
     get 'users/:id/edit'=>'users#edit',as: 'users_edit'
     patch 'users/:id/update'=> 'users#update',as: 'users_update'
     post 'users/create'=> 'users#create',as: 'users_create'
     get 'users/:id'=>'users#show',as: 'users'
     post'sessions/create'=>'sessions#create',as: 'sessions_create'
     delete 'sessions/delete'=>'sessions#delete',as: 'sessions_delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
