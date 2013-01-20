Chatter::Application.routes.draw do
  resources :messages do
    collection { get :events }
  end
  root to: 'messages#index'
end
