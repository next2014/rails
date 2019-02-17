Rails.application.routes.draw do

  get 'users/signup'

  root 'page#index'

  get '/about' => 'page#about'

  get '/index'  => 'articles#index'

  # get 'issues' => 'issues#index', :as => 'issues'

  # post 'issues' => 'issues#create'

  # get '/issues/new' => "issues#new"

  # get '/issues/:id' => "issues#show", :as => "issue"

  # get 'issues/:id/edit' => 'issues#edit', :as => 'edit_issue'

  # patch 'issues/:id' => 'issues#update'

  # delete 'issues/:id' => 'issues#destroy'

  resources :issues

  # comments
  post '/issues/:issue_id/comments' => "comments#create"
  
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :articles do
  #   resources :comments
  # end

  # post '/issues/:issue_id/comments' => 'comments#create'

  # root 'welcome#index'

  get "signup" => "users#signup", :as => "signup"

  resources :users, only: [:create]

  # post "create_login_session" => "users#create_login_session"
 
end