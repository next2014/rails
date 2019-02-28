Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'page#welcome'

  get '/about' => 'page#about'

  # get 'issues' => 'issues#index', :as => 'issues'

  # get '/issues/new' => "issues#new" # 主要这一行要写在 get '/issues/:id' 的上面

  # get '/issues/:id' => "issues#show", :as => "issue"

  # delete 'issues/:id' => 'issues#destroy'
  
  # post 'issues' => 'issues#create'

  # get 'issues/:id/edit' => 'issues#edit', :as => 'edit_issue'

  # patch 'issues/:id' => 'issues#update'

  resources :issues

  # comments
  post '/issues/:issue_id/comments' => "comments#create"

  get "signup" => "users#signup", :as => "signup"

  resources :users, only: [:create]

  get "login" => "users#login", :as => "login"

  post "create_login_session" => "users#create_login_session"

  delete "logout" => "users#logout", :as => "logout"

end
