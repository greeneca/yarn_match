YarnMatch::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  scope '/admin' do
    resources :users
  end
end
