Fridgentory::Application.routes.draw do

  get "recipes/index" => "recipes#index"
  get "recipes/show" => "recipes#show"
  get "grocery/mylist" => "grocery#mylist"

end
