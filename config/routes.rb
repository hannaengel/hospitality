Rails.application.routes.draw do
  resources :comments
  resources :agenda_items
  resources :action_items
  resources :meetings
  resources :users
  # get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
end
