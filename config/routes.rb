#This is your app's routing file which holds entries in a special DSL that tells Rails how to connect incoming requests to controllers and actions.


Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  root 'welcome#index'
  #root 'welcome#index' tells Rails to map requests to the root of the app to the welcome controller's index action and get 'welcome/index' tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action.
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
