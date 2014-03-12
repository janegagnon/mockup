Fridgentory::Application.routes.draw do
root "pages#home"

  get "/login" => 'sessions#new'
  get "/authenticate" => 'sessions#create'
  get "/logout" => 'sessions#destroy'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/show" => 'users#show'


  get "recipes" => "recipes#index"
  get "recipes/index" => "recipes#index"
  get "recipes/:recipe_id/show" => "recipes#show"
  get "recipes/new" => "recipes#new"
  get "recipes/create" => "recipes#create"
  get "recipes/:recipe_id/edit" => "recipes#edit"

  get "grocery/mylist" => "grocery#mylist"
  get "grocery/myfridge" => "grocery#myfridge"
  get "grocery/dairy" => "grocery#dairy"
  get "grocery/produce" => "grocery#produce"
  get "grocery/meat" => "grocery#meat"
  get "grocery/drygoods" => "grocery#drygoods"

end
