ActionController::Routing::Routes.draw do |map|
  map.resources :venues
  map.resources :sessions
  map.root :controller => "venues"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
