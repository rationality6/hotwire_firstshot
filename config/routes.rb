Rails.application.routes.draw do

  root "rooms#index"

  resources :rooms do
    resources :messages
  end

  resources :blogs do
    resources :blog_messages
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
