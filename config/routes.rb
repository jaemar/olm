Olm::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  resources :products do
    collection do
      get :search
    end
  end
end
